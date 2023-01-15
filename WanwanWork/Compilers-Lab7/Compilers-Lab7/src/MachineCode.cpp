#include "MachineCode.h"
#include <iostream>
#include "Type.h"
extern FILE* yyout;

int MachineBlock::label = 0;

MachineOperand::MachineOperand(int tp, int val) {
    this->type = tp;
    if (tp == MachineOperand::IMM)
        this->val = val;
    else
        this->reg_no = val;
}

MachineOperand::MachineOperand(std::string label) {
    this->type = MachineOperand::LABEL;
    this->label = label;
}

bool MachineOperand::operator==(const MachineOperand& a) const {
    if (this->type != a.type)
        return false;
    if (this->type == IMM)
        return this->val == a.val;
    return this->reg_no == a.reg_no;
}

bool MachineOperand::operator<(const MachineOperand& a) const {
    if (this->type == a.type) {
        if (this->type == IMM)
            return this->val < a.val;
        return this->reg_no < a.reg_no;
    }
    return this->type < a.type;

    if (this->type != a.type)
        return false;
    if (this->type == IMM)
        return this->val == a.val;
    return this->reg_no == a.reg_no;
}

void MachineOperand::PrintReg() {
    switch (reg_no) {
        case 11:
            fprintf(yyout, "fp");
            break;
        case 13:
            fprintf(yyout, "sp");
            break;
        case 14:
            fprintf(yyout, "lr");
            break;
        case 15:
            fprintf(yyout, "pc");
            break;
        default:
            fprintf(yyout, "r%d", reg_no);
            break;
    }
}

void MachineOperand::output() {
    /* HINT：print operand
     * Example:
     * immediate num 1 -> print #1;
     * register 1 -> print r1;
     * lable addr_a -> print addr_a; */
    switch (this->type) {
        case IMM:
            fprintf(yyout, "#%d", this->val);
            break;
        case VREG:
            fprintf(yyout, "v%d", this->reg_no);
            break;
        case REG:
            PrintReg();
            break;
        case LABEL:
            if (this->label.substr(0, 2) == ".L")
                fprintf(yyout, "%s", this->label.c_str());
            else if (this->label.substr(0, 1) == "@")
                fprintf(yyout, "%s", this->label.c_str() + 1);
            else
                fprintf(yyout, "addr_%s%d", this->label.c_str(), parent->getParent()->getParent()->getParent()->getN());
        default:
            break;
    }
}

void MachineInstruction::PrintCond() {
    switch (cond) {
        case EQ:
            fprintf(yyout, "eq");
            break;
        case NE:
            fprintf(yyout, "ne");
            break;
        case LT:
            fprintf(yyout, "lt");
            break;
        case LE:
            fprintf(yyout, "le");
            break;
        case GT:
            fprintf(yyout, "gt");
            break;
        case GE:
            fprintf(yyout, "ge");
            break;
        default:
            break;
    }
}

void MachineInstruction::insertBefore(MachineInstruction* inst) {
    auto& instructions = parent->getInsts();
    auto it = std::find(instructions.begin(), instructions.end(), this);
    instructions.insert(it, inst);
}

void MachineInstruction::insertAfter(MachineInstruction* inst) {
    auto& instructions = parent->getInsts();
    auto it = std::find(instructions.begin(), instructions.end(), this);
    instructions.insert(++it, inst);
}

BinaryMInstruction::BinaryMInstruction(MachineBlock* p, int op, MachineOperand* dst, MachineOperand* src1, MachineOperand* src2, int cond) {
    this->op = op;
    this->parent = p;
    this->cond = cond;
    this->type = MachineInstruction::BINARY;
    this->def_list.push_back(dst);
    this->use_list.push_back(src1);
    this->use_list.push_back(src2);
    dst->setParent(this);
    src1->setParent(this);
    src2->setParent(this);
}

void BinaryMInstruction::output() {
    switch (this->op) {
        case BinaryMInstruction::ADD:
            fprintf(yyout, "\tadd ");
            this->PrintCond();
            this->def_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[1]->output();
            fprintf(yyout, "\n");
            break;
        case BinaryMInstruction::SUB:
            fprintf(yyout, "\tsub ");
            this->PrintCond();
            this->def_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[1]->output();
            fprintf(yyout, "\n");
            break;
        case BinaryMInstruction::DIV:
            fprintf(yyout, "\tsdiv ");
            this->PrintCond();
            this->def_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[1]->output();
            fprintf(yyout, "\n");
            break;        
        case BinaryMInstruction::MUL:
            fprintf(yyout, "\tmul ");
            this->PrintCond();
            this->def_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[1]->output();
            fprintf(yyout, "\n");
            break;
        case BinaryMInstruction::OR:
            fprintf(yyout, "\torr ");
            this->PrintCond();
            this->def_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[1]->output();
            fprintf(yyout, "\n");
            break;
        case BinaryMInstruction::AND:
            fprintf(yyout, "\tand ");
            this->PrintCond();
            this->def_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[0]->output();
            fprintf(yyout, ", ");
            this->use_list[1]->output();
            fprintf(yyout, "\n");
            break;
        default:
            break;
    }
}

LoadMInstruction::LoadMInstruction(MachineBlock* p, MachineOperand* dst, MachineOperand* src1, MachineOperand* src2, int cond) {
    this->op = -1;
    this->parent = p;
    this->cond = cond;
    this->type = MachineInstruction::LOAD;
    this->def_list.push_back(dst);
    this->use_list.push_back(src1);
    if (src2)
        this->use_list.push_back(src2);
    dst->setParent(this);
    src1->setParent(this);
    if (src2)
        src2->setParent(this);
}

void LoadMInstruction::output() {
    fprintf(yyout, "\tldr ");
    this->def_list[0]->output();
    fprintf(yyout, ", ");

    // Load immediate num, eg: ldr r1, =8
    if (this->use_list[0]->isImm()) {
        fprintf(yyout, "=%d\n", this->use_list[0]->getVal());
        return;
    }

    // Load address
    if (this->use_list[0]->isReg() || this->use_list[0]->isVReg())
        fprintf(yyout, "[");

    this->use_list[0]->output();
    if (this->use_list.size() > 1) {
        fprintf(yyout, ", ");
        this->use_list[1]->output();
    }

    if (this->use_list[0]->isReg() || this->use_list[0]->isVReg())
        fprintf(yyout, "]");
    fprintf(yyout, "\n");
}
//here
StoreMInstruction::StoreMInstruction(MachineBlock* p, MachineOperand* src1, MachineOperand* src2, MachineOperand* src3, int cond) {
    this->op = -1;
    this->parent = p;
    this->cond = cond;
    this->type = MachineInstruction::STORE;
    this->use_list.push_back(src1);
    this->use_list.push_back(src2);
    if (src3)
        this->use_list.push_back(src3);

    src1->setParent(this);
    src2->setParent(this);

    if (src3)
        src3->setParent(this);
}

void StoreMInstruction::output() {
    fprintf(yyout, "\tstr ");
    this->use_list[0]->output();
    fprintf(yyout, ", ");

    // store address
    if (this->use_list[1]->isReg() || this->use_list[1]->isVReg())
        fprintf(yyout, "[");

    this->use_list[1]->output();
    if (this->use_list.size() > 2) {
        fprintf(yyout, ", ");
        this->use_list[2]->output();
    }

    if (this->use_list[1]->isReg() || this->use_list[1]->isVReg())
        fprintf(yyout, "]");
    fprintf(yyout, "\n");
}

MovMInstruction::MovMInstruction(MachineBlock* p, int op, MachineOperand* dst, MachineOperand* src, int cond) {
    this->op = op;
    this->parent = p;
    this->cond = cond;
    this->type = MachineInstruction::MOV;
    this->def_list.push_back(dst);
    this->use_list.push_back(src);
    dst->setParent(this);
    src->setParent(this);
}

void MovMInstruction::output() {
    fprintf(yyout, "\tmov");
    PrintCond();
    fprintf(yyout, " ");
    this->def_list[0]->output();
    fprintf(yyout, ", ");
    this->use_list[0]->output();
    fprintf(yyout, "\n");
}

BranchMInstruction::BranchMInstruction(MachineBlock* p, int op, MachineOperand* dst, int cond) {
    this->op = op;
    this->parent = p;
    this->cond = cond;
    this->type = MachineInstruction::BRANCH;
    this->use_list.push_back(dst);
    dst->setParent(this);
}

void BranchMInstruction::output() {
    if(op == B){
        fprintf(yyout, "\tb");
    } else if(op == BX){
        fprintf(yyout, "\tbx");
    } else if(op == BL){
        fprintf(yyout, "\tbl");
    }
    PrintCond();
    fprintf(yyout, " ");
    this->use_list[0]->output();
    fprintf(yyout, "\n");
}

CmpMInstruction::CmpMInstruction(MachineBlock* p, MachineOperand* src1, MachineOperand* src2, int cond) {
    this->op = -1;
    this->parent = p;
    this->cond = cond;
    this->type = MachineInstruction::CMP;
    p->setCmpCond(cond);
    this->use_list.push_back(src1);
    this->use_list.push_back(src2);
    src1->setParent(this);
    src2->setParent(this);
}

void CmpMInstruction::output() {
    fprintf(yyout, "\tcmp ");
    this->use_list[0]->output();
    fprintf(yyout, ", ");
    this->use_list[1]->output();
    fprintf(yyout, "\n");
}

StackMInstrcuton::StackMInstrcuton(MachineBlock* p, int op, std::vector<MachineOperand*> srcs, MachineOperand* src, MachineOperand* src1, int cond) {
    this->op = op;
    this->parent = p;
    this->cond = cond;
    this->type = MachineInstruction::STACK;
    if (srcs.size()!=0){
        for (auto it : srcs){
            this->use_list.push_back(it);
        }
    }
    this->use_list.push_back(src);
    src->setParent(this);
    if (src1) {
        this->use_list.push_back(src1);
        src1->setParent(this);
    }
}

void StackMInstrcuton::output() {
    if(op == PUSH){
        fprintf(yyout, "\tpush ");
    }else {
        fprintf(yyout, "\tpop ");
    }
    fprintf(yyout, "{");
    this->use_list[0]->output();
    for (long unsigned int i = 1; i < use_list.size(); i++) {
        fprintf(yyout, ", ");
        this->use_list[i]->output();
    }
    fprintf(yyout, "}\n");
}

MachineFunction::MachineFunction(MachineUnit* p, SymbolEntry* sym_ptr) {
    this->parent = p;
    this->stack_size = 0;
    this->sym_ptr = sym_ptr;
    FunctionType* funct = (FunctionType*)sym_ptr->getType();
    this->paramsNum = funct->getParamsSe().size();
};
//here
void MachineBlock::output() {
    if (inst_list.empty()){
        return ;
    }
    // 多参数时 r3 寄存器检查
    bool r3use = true;
    bool r3check = parent->getParamsNum() > 4; 
    // 为fp lr 以及 savedRegs 分配的空间大小
    int offset = (parent->getSavedRegs().size() + 2) * 4;
    int count = 0;
    // 遍历指令列表进行打印
    fprintf(yyout, ".L%d:\n", this->no);
    for (long unsigned int i = 0; i < inst_list.size(); i++){
        if (r3check && inst_list[i]->isStore()) {// r3 存储多个参数
            MachineOperand* operand = inst_list[i]->getUse()[0];
            if (operand->isReg() && operand->getReg() == 3) { // store to r3 
                if (r3use) { // 未使用过
                    r3use = false;
                } else { // 移动 r3 位置存储更多参数
                    auto r3 = new MachineOperand(MachineOperand::REG, 3); // r3
                    auto fp = new MachineOperand(MachineOperand::REG, 11); // fp
                    auto off = new MachineOperand(MachineOperand::IMM, offset); //off
                    // 移动r3位置 用于存储更多参数
                    auto cur_inst = new LoadMInstruction(this, r3, fp, off);
                    cur_inst->output();
                    offset += 4;
                }
            }
        }
        else if (inst_list[i]->isBX()) {// BX 带状态切换跳转指令 保存 fp 和 lr 寄存器
            auto fp = new MachineOperand(MachineOperand::REG, 11); // fp
            auto lr = new MachineOperand(MachineOperand::REG, 14); // lr
            auto cur_inst = new StackMInstrcuton(this, StackMInstrcuton::POP, parent->getSavedRegs(), fp, lr);// pop 保存状态
            cur_inst->output();
        }
        else if(inst_list[i]->isAdd()){// r13 通常用做栈指针
            // 处理器的每种运行模式均有自己独立的物理寄存器R13
            // 在用户应用程序的初始化部分 一般都要初始化每种模式下的R13 使其指向该运行模式的栈空间
            // 这样，当程序的运行进入异常模式时，可以将需要保护的寄存器放入R13所指向的堆栈
            // 而当程序从异常模式返回时，则从对应的堆栈中恢复，采用这种方式可以保证异常发生后程序的正常执行。
            auto dst = inst_list[i]->getDef()[0];
            auto src1 = inst_list[i]->getUse()[0];
            if (dst->isReg() && dst->getReg() == 13 && src1->isReg() && src1->getReg() == 13 && inst_list[i+1]->isBX()) {
                // 如果对 r13 进行操作且之后有 BX
                int off = parent->AllocSpace(0);// 获取当前栈帧
                if(abs(off)>255){ //是否load
                    auto r1 = new MachineOperand(MachineOperand::REG, 1);
                    auto offsize = new MachineOperand(MachineOperand::IMM, off);
                    auto load = new LoadMInstruction(nullptr, r1, offsize);
                    load->output();
                    inst_list[i]->getUse()[1]->setReg(1);
                } else{
                    inst_list[i]->getUse()[1]->setVal(off);
                }
            }
        }
        inst_list[i]->output();// 打印指令
        count++;
        if (count % 500 == 0) {
            fprintf(yyout, "\tb .B%d\n", label);
            fprintf(yyout, ".LTORG\n");
            parent->getParent()->printBridgeTag();
            fprintf(yyout, ".B%d:\n", label++);
        }
        // 使用LDR等指令 数据缓冲池的使用可能越界 
        // 为防止越界发生 可使用LTORG伪操作定义数据缓冲池
        // 通常大的代码段可以使用多个数据缓冲池
        // ARM汇编编译器一般把数据缓冲池放在代码段的最后面，即下一代码段开始之前，或者END伪操作之前
        // LTORG伪操作通常放在无条件跳转指令之后，或者子程序返回指令之后
        // 这样处理器就不会错误的将数据缓冲池中的数据当作指令来执行

        // 使用LDR指令必须保证文字池的位置在其可以访问的地址范围之内
        // 对于ARM指令集来说就是4KB，如果偏移地址大于4k空间，LDR指令会出错(因为LDR的相对偏移地址为12-bit的值)
        // 所以必须在LDR指令前后4KB的范围内用LTORG显式地在代码段中添加一个文字池。
    }
}

// 函数开头需要进行准备工作:
// 1. 生成 PUSH 指令保存 FP 寄存器及一些 Callee Saved 寄存器
// 2. 生成 MOV 指令令 FP 寄存器指向新的栈底
// 3. 生成 SUB 指令为局部变量分配栈内空间

// 分配栈空间时需要注意，一定要在完成寄存器分配后再确定实际的函数栈空间
// 因为有可能会有某些虚拟寄存器被溢出到栈中
// 一种思路是不在目标代码生成时插入 SUB 指令
// 而是在后续调用 output() 函数打印目标代码时直接将该条指令打印出来
// 因为在打印时已经可以获取到实际的栈内空间大小
// 另一种思路是先记录操作数还没有确定的指令，在指令的操作数确定后进行设置1
// 至此，就可以继续转换函数中对应的其他指令了
void MachineFunction::output() {
    fprintf(yyout, "\t.global %s\n", this->sym_ptr->toStr().c_str() + 1);
    fprintf(yyout, "\t.type %s , %%function\n", this->sym_ptr->toStr().c_str() + 1);
    fprintf(yyout, "%s:\n", this->sym_ptr->toStr().c_str() + 1);
    // TODO
    /* Hint:
        * 1. 保存fp fp = sp
        * 2. 保存callee保存的寄存器
        * 3. 为本地变量分配堆栈空间 */
  
    auto fp = new MachineOperand(MachineOperand::REG, 11);// floor pointer 栈顶 记录起始 (栈向下生长,实际是栈底)
    auto sp = new MachineOperand(MachineOperand::REG, 13);// stack pointer 栈指针 即当前栈位置
    auto lr = new MachineOperand(MachineOperand::REG, 14);// link register 记录返回地址
    // 生成 PUSH 指令保存 FP 寄存器及一些 Callee Saved 寄存器
    auto push = new StackMInstrcuton(nullptr, StackMInstrcuton::PUSH, getSavedRegs(), fp, lr);
    push->output();
    // 生成 MOV 指令令 FP 寄存器指向新的栈底
    auto movsp = new MovMInstruction(nullptr, MovMInstruction::MOV, fp, sp);
    movsp->output();
    
    // 生成 SUB 指令为局部变量分配栈内空间
    int off = AllocSpace(0);// 获得栈空间
    auto offsize = new MachineOperand(MachineOperand::IMM, off);
    if(abs(off)>255){// 是否需要load
        auto temp = new MachineOperand(MachineOperand::REG, 4);
        auto load = new LoadMInstruction(nullptr, temp, offsize);
        load->output();
        auto sub = new BinaryMInstruction(nullptr, BinaryMInstruction::SUB, sp, sp, temp);
        sub->output();
    } else { // 直接sub
        auto sub = new BinaryMInstruction(nullptr, BinaryMInstruction::SUB, sp, sp, offsize);
        sub->output();
    }
    // 遍历block_list中的所有块以打印程序汇编代码 
    // 使用LDR等指令 数据缓冲池的使用可能越界 
    // 为防止越界发生 可使用LTORG伪操作定义数据缓冲池
    // 通常大的代码段可以使用多个数据缓冲池
    // ARM汇编编译器一般把数据缓冲池放在代码段的最后面，即下一代码段开始之前，或者END伪操作之前
    // LTORG伪操作通常放在无条件跳转指令之后，或者子程序返回指令之后
    // 这样处理器就不会错误的将数据缓冲池中的数据当作指令来执行

    // 使用LDR指令必须保证文字池的位置在其可以访问的地址范围之内
    // 对于ARM指令集来说就是4KB，如果偏移地址大于4k空间，LDR指令会出错(因为LDR的相对偏移地址为12-bit的值)
    // 所以必须在LDR指令前后4KB的范围内用LTORG显式地在代码段中添加一个文字池。
    int count = 0;
    for (auto block : block_list) {
        block->output();// 打印block
        count += block->getSize();
        if(count > 200){
            fprintf(yyout, "\tb .F%d\n", parent->getN());
            fprintf(yyout, ".LTORG\n");
            parent->printBridgeTag();
            fprintf(yyout, ".F%d:\n", parent->getN()-1);
            count = 0;
        }
    }
    fprintf(yyout, "\n");
}

std::vector<MachineOperand*> MachineFunction::getSavedRegs() {
    std::vector<MachineOperand*> regs;
    for (auto it = saved_regs.begin(); it != saved_regs.end(); it++) {
        auto reg = new MachineOperand(MachineOperand::REG, *it);
        regs.push_back(reg);
    }
    return regs;
}

void MachineUnit::PrintGlobalDecl() {
    std::vector<int> constDecl;
    if (!global_list.empty()){
        fprintf(yyout, "\t.data\n");
        
        for (long unsigned int i = 0; i < global_list.size(); i++) {
            IdentifierSymbolEntry* se = (IdentifierSymbolEntry*)global_list[i];
            if (se->getConst()) {
                constDecl.push_back(i);
                continue;
            }
            fprintf(yyout, "\t.global %s\n", se->toStr().c_str());
            fprintf(yyout, "\t.align 4\n");
            fprintf(yyout, "\t.size %s, %d\n", se->toStr().c_str(), se->getType()->getSize() / 8);
            fprintf(yyout, "%s:\n", se->toStr().c_str());
            if (se->getType()->isArray()) {
                int n = se->getType()->getSize() / 32;
                int* p = se->getArrayValue();
                for (int i = 0; i < n; i++) {
                    fprintf(yyout, "\t.word %d\n", p[i]);
                }

            } else {
                fprintf(yyout, "\t.word %d\n", se->getValue());
            }
        }
    }

    if (!constDecl.empty()) {
        fprintf(yyout, "\t.section .rodata\n");
        for (auto i : constDecl) {
            IdentifierSymbolEntry* se = (IdentifierSymbolEntry*)global_list[i];
            fprintf(yyout, "\t.global %s\n", se->toStr().c_str());
            fprintf(yyout, "\t.align 4\n");
            fprintf(yyout, "\t.size %s, %d\n", se->toStr().c_str(), se->getType()->getSize() / 8);
            fprintf(yyout, "%s:\n", se->toStr().c_str());
            if (se->getType()->isArray()) {
                int n = se->getType()->getSize() / 32;
                int* p = se->getArrayValue();
                for (int i = 0; i < n; i++) {
                    fprintf(yyout, "\t.word %d\n", p[i]);
                }                
            } else {
                fprintf(yyout, "\t.word %d\n", se->getValue());
            }
        }
    }
}

void MachineUnit::printBridgeTag(){
    for (auto se : global_list) {
        fprintf(yyout, "addr_%s%d:\n", se->toStr().c_str(), n);
        fprintf(yyout, "\t.word %s\n", se->toStr().c_str());
    }
    n++;
};

void MachineUnit::output() {
    // TODO
    /* Hint:
     * 1. 打印全局变量/常量的声明代码
     * 2. 遍历func_list中所有函数打印汇编代码
     * 3. 在汇编代码的末尾打印桥接标签 */
    fprintf(yyout, "\t.arch armv8-a\n");
    fprintf(yyout, "\t.arch_extension crc\n");
    fprintf(yyout, "\t.arm\n");
    PrintGlobalDecl();
    fprintf(yyout, "\t.text\n");
    for (auto iter : func_list)
        iter->output();
    printBridgeTag();
}

