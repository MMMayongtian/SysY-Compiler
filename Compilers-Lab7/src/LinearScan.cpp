#include "LinearScan.h"
#include <algorithm>
#include <iostream>
#include "LiveVariableAnalysis.h"
#include "MachineCode.h"

LinearScan::LinearScan(MachineUnit* unit) {
    this->unit = unit;
    //可分配寄存器为4-10
    for (int i = 4; i < 11; i++)
        regs.push_back(i);
}

//遍历每个函数 获得虚拟寄存器对应的物理寄存器
void LinearScan::allocateRegisters() {
    //遍历unit下的每个func
    for (auto& f : unit->getFuncs()) {
        func = f;
        //用success判断何时完成分配
        bool success;
        success = false;
        while (!success)  // repeat until all vregs can be mapped
        {
            //旧区间重构，重分配原来的寄存器
            computeLiveIntervals();
            success = linearScanRegisterAllocation();
            //有溢出情况 生成溢出代码 否则直接调整寄存器
            if (success)  // all vregs can be mapped to real regs
                modifyCode();//没有溢出 修改寄存器映射即可退出
            else  // spill vregs that can't be mapped to real regs
                genSpillCode();//生成溢出代码 然后继续循环
        }
    }
}

void LinearScan::makeDuChains() {
    LiveVariableAnalysis lva;
    lva.pass(func);//遍历函数 添加使用和定义变量，分配寄存器
    du_chains.clear();
    int i = 0;
    std::map<MachineOperand, std::set<MachineOperand*>> liveVar;
    //遍历函数每个MachineBlock
    for (auto& bb : func->getBlocks()) {
        liveVar.clear();
        //放入不活跃的变量
        for (auto& t : bb->getLiveOut())
            liveVar[*t].insert(t);
        int no;
        no = i = bb->getInsts().size() + i;
         //为了对于标号 逆序遍历
        for (auto inst = bb->getInsts().rbegin(); inst != bb->getInsts().rend();
             inst++) {
            (*inst)->setNo(no--);
            //遍历指令定义的操作数
            //将虚拟寄存器的变量
            for (auto& def : (*inst)->getDef()) {
                if (def->isVReg()) {
                    //获取定义变量的活跃寄存器
                    auto& uses = liveVar[*def];//对应变量的集合
                    //集合插入du_chains
                    du_chains[def].insert(uses.begin(), uses.end());
                    auto& kill = lva.getAllUses()[*def];
                    std::set<MachineOperand*> res;
                    set_difference(uses.begin(), uses.end(), kill.begin(),
                                   kill.end(), inserter(res, res.end()));
                    liveVar[*def] = res;
                }
            }
            for (auto& use : (*inst)->getUse()) {
                if (use->isVReg())
                    liveVar[*use].insert(use);
            }
        }
    }
}

//计算活跃区间
void LinearScan::computeLiveIntervals() {
    makeDuChains();
    intervals.clear();
    for (auto& du_chain : du_chains) {
        int t = -1;
        for (auto& use : du_chain.second)
            t = std::max(t, use->getParent()->getNo());
        Interval* interval = new Interval({du_chain.first->getParent()->getNo(), t, false, 0, 0, {du_chain.first}, du_chain.second});
        intervals.push_back(interval);
    }
    bool change;
    change = true;
    while (change) {
        change = false;
        std::vector<Interval*> t(intervals.begin(), intervals.end());
        for (size_t i = 0; i < t.size(); i++)
            for (size_t j = i + 1; j < t.size(); j++) {
                Interval* w1 = t[i];
                Interval* w2 = t[j];
                if (**w1->defs.begin() == **w2->defs.begin()) {
                    std::set<MachineOperand*> temp;
                    set_intersection(w1->uses.begin(), w1->uses.end(), w2->uses.begin(), w2->uses.end(), inserter(temp, temp.end()));
                    if (!temp.empty()) {
                        change = true;
                        w1->defs.insert(w2->defs.begin(), w2->defs.end());
                        w1->uses.insert(w2->uses.begin(), w2->uses.end());
                        w1->start = std::min(w1->start, w2->start);
                        w1->end = std::max(w1->end, w2->end);
                        auto it = std::find(intervals.begin(), intervals.end(), w2);
                        if (it != intervals.end())
                            intervals.erase(it);
                    }
                }
            }
    }
    sort(intervals.begin(), intervals.end(), compareStart);
}

// TODO from here  over
bool LinearScan::linearScanRegisterAllocation() {
    // Todo
    regs.clear(); // 初始化
    active.clear(); // 初始化
    // 初始放入可用分配寄存器
    for (int i = 10; i >=4; i--)
        regs.push_back(i);

    // 遍历每个 unhandled interval 没有分配寄存器的活跃区间
    for (int i = 0; i < intervals.size(); i++){
        // 遍历 active 列表，看该列表中是否存在结束时间早于 
        // unhandled interval 的 interval
        // 主要用于回收可用寄存器
        expireOldIntervals(intervals[i]);
        if (regs.empty()) {// 没有可分配的寄存器 溢出
            spillAtInterval(intervals[i]);//溢出操作
            return false; // 分配失败
        } else {// 进行寄存器分配  
            intervals[i]->rreg = regs[0]; // 分配寄存器
            regs.erase(regs.begin()); // 删除已经分配的寄存器
            active.push_back(intervals[i]); // 将区间intervals[i]加入active列表
            sort(active.begin(), active.end(),compareEnd);// 活跃区间active 按结束时间升序排列
        }
    }
    return true; //分配成功
}

//没有溢出情况 ---已经实现
void LinearScan::modifyCode() {
       //遍历每个区间
    for (auto& interval : intervals) {
        //添加此函数使用的寄存器
        func->addSavedRegs(interval->rreg);
        //将用到的寄存器放入区间的use和def中
        for (auto def : interval->defs)
            def->setReg(interval->rreg);
        for (auto use : interval->uses)
            use->setReg(interval->rreg);
    }
}

// 若有溢出 需要在操作该临时变量时插入对应的 
// LoadMInstruction 和 StoreMInstruction
// 其起到的实际效果就是将该临时变量的活跃区间进行了切分
// 以便重新为其进行寄存器分配
void LinearScan::genSpillCode() {
    for (auto& interval : intervals) {
        if (!interval->spill) // 若无溢出 跳过
            continue;
        // TODO
        // HINT: 将寄存器里的内容溢出到内存中
        // 插入 LoadMInstruction 和 StoreMInstruction

        // 1. 为其在栈内分配空间，获取当前在栈内相对 FP 的偏移
        // 2. 遍历其 USE 指令的列表，在 USE 指令前插入 LoadMInstruction，将其从栈内加载到目前的虚拟寄存器中
        // 3. 遍历其 DEF 指令的列表，在 DEF 指令后插入 StoreMInstruction，将其从目前的虚拟寄存器中存到栈内

        // 获取栈内相对偏移
        // 注意是负的 以FP为基准
        interval->disp = -func->AllocSpace(4);
        // 获取偏移和FP寄存器的值
        auto off = new MachineOperand(MachineOperand::IMM, interval->disp);
        auto fp = new MachineOperand(MachineOperand::REG, 11);
        // 遍历 use 指令列表 并在之前插入 LoadMInstruction 
        // 将其从栈内加载到目的虚拟寄存器中
        for (auto use : interval->uses) {
            // 在use之前插入load指令
            auto temp = new MachineOperand(*use);
            // 判断当前数据地址是否超过寻址空间
            if (abs(interval->disp) > 255) { // 超出寻址空间 不能直接加载 要分两步
                // 首先加载到虚拟寄存器 ldr v1,off
                auto operand = new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
                auto ldrV = new LoadMInstruction(use->getParent()->getParent(), operand, off);
                use->getParent()->insertBefore(ldrV);// use指令前插入load指令
                // 超出寻址空间 第二步ldr r0,[fp,v1] 
                auto load = new LoadMInstruction(use->getParent()->getParent(), temp, fp, operand);
                use->getParent()->insertBefore(load);// use指令前插入load指令
            } else {// 未超出寻址空间 直接从fp-off处加载
                auto load = new LoadMInstruction(use->getParent()->getParent(), temp, fp, off);
                use->getParent()->insertBefore(load);
            }
        }
        // 遍历 def 指令列表 并在之后插入 StoreMInstruction
        // 将其从目前的虚拟寄存器中存到栈内
        for (auto def : interval->defs) {
            // 在def之后插入store指令
            auto temp = new MachineOperand(*def);
            // MachineOperand* operand = nullptr;
            // MachineInstruction *inst1 = nullptr, *inst = nullptr;
            // 同样要考虑寻址空间
            if (abs(interval->disp) > 255) { // 超出寻址空间 不能直接加载 要分两步
                // 首先加载到虚拟寄存器 ldr v1,off
                auto operand = new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
                auto ldrV = new LoadMInstruction(def->getParent()->getParent(), operand, off);
                // 超出寻址空间 第二步 str r0,[fp,v1] 
                auto inst = new StoreMInstruction(def->getParent()->getParent(), temp, fp, operand);
                // 按顺序 ldrV->inst->def 插入 需要先插入inst再插入ldrV 
                def->getParent()->insertAfter(inst);
                def->getParent()->insertAfter(ldrV);
            } else {// 未超出寻址空间 直接从fp-off处加载
                auto inst = new StoreMInstruction(def->getParent()->getParent(), temp, fp, off);
                def->getParent()->insertAfter(inst);
            }
        }
    }
}

// 看 active 中是否存在结束时间早于 unhandled interval 的 interval
// 即与当前 unhandled interval 的活跃区间不冲突
// 若有，则说明此时为其分配的物理寄存器可以回收
// 可以用于后续的分配，需要将其在 active 列表删除；
void LinearScan::expireOldIntervals(Interval* interval) {
    // Todo
    // active 按照 end 时间升序排列，所以只用看头部
    // 头部如果大于 那么直接返回
    // 头部小于 那么 active 的寄存器可以回收
    int i = 0 ;
    while(i<active.size()){
        if(active[i]->end>=interval->start){
            sort(regs.begin(),regs.end());
            return ;
        }
        regs.push_back(active[i]->rreg);
        active.erase(active.begin()+i);
    }
}

// 寄存器溢出操作
// 选择 'active列表末尾' 和 '当前unhandled interval' 中的一个溢出到栈中
// 选择策略就是看谁的活跃区间结束时间更晚
void LinearScan::spillAtInterval(Interval* interval) {
    // Todo
    
    // 若 unhandled interval 结束时间更晚，只需置位 spill 标志位

    // 若 active列表末尾结束时间更晚，需置位其 spill 标志位
    // 并将其占用的寄存器分配给 unhandled interval
    // 再按照 unhandled interval 活跃区间结束位置，将其插入到 active 列表

    // 选择active列表末尾与当前unhandled的一个溢出到栈中
    auto last = active[active.size()-1];
    if(last->end > interval->end){
        last->spill = true; // spill置位
        interval->rreg = last->rreg; // 占用寄存器分配
        func->addSavedRegs(interval->rreg); // 溢出到栈中
        active.push_back(interval); // 加入到active列表
        sort(active.begin(),active.end(),compareEnd); // active按照结束时间排序
    }
    else {
        interval->spill = true; // spill置位
    }
}

bool LinearScan::compareStart(Interval* a, Interval* b) {
    return a->start < b->start;
}

bool LinearScan::compareEnd(Interval* a, Interval* b) {
    return a->end < b->end;
}