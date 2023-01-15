#include "Instruction.h"
#include <iostream>
#include <sstream>
#include "BasicBlock.h"
#include "Function.h"
#include "Type.h"
extern FILE *yyout;

Instruction::Instruction(unsigned instType, BasicBlock *insert_bb)
{
    prev = next = this;
    opcode = -1;
    this->instType = instType;
    if (insert_bb != nullptr)
    {
        insert_bb->insertBack(this);
        parent = insert_bb;
    }
}

Instruction::~Instruction()
{
    parent->remove(this);
}

BinaryInstruction::BinaryInstruction(unsigned opcode,Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb):Instruction(BINARY, insert_bb)
{
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src1);
    operands.push_back(src2);

    dst->setDef(this);
    src1->addUse(this);
    src2->addUse(this);
}

BinaryInstruction::~BinaryInstruction()
{
    operands[0]->setDef(nullptr);
    if (operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
    operands[2]->removeUse(this);
}

void BinaryInstruction::output() const
{
    std::string s1 = operands[0]->toStr();
    std::string s2 = operands[1]->toStr();
    std::string s3 = operands[2]->toStr();
    std::string type = operands[0]->getType()->toStr();
    std::string op;
    if(opcode == ADD){
        op = "add";
    }
    else if(opcode == SUB){
        op = "sub";
    }
    else if(opcode == MUL){
        op = "mul";
    }
    else if(opcode == DIV){
        op = "sdiv";
    }
    else if(opcode == MOD){
        op = "srem";
    }
    fprintf(yyout, "  %s = %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
}

CmpInstruction::CmpInstruction(unsigned opcode, Operand *dst, Operand *src1, Operand *src2, BasicBlock *insert_bb) : Instruction(CMP, insert_bb)
{
    this->opcode = opcode;
    operands.push_back(dst);
    operands.push_back(src1);
    operands.push_back(src2);
    dst->setDef(this);
    src1->addUse(this);
    src2->addUse(this);
}

CmpInstruction::~CmpInstruction()
{
    operands[0]->setDef(nullptr);
    if (operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
    operands[2]->removeUse(this);
}

void CmpInstruction::output() const
{
    std::string s1, s2, s3, op, type;
    s1 = operands[0]->toStr();
    s2 = operands[1]->toStr();
    s3 = operands[2]->toStr();
    type = operands[1]->getType()->toStr();
    switch (opcode)
    {
    case E:
        op = "eq";
        break;
    case NE:
        op = "ne";
        break;
    case L:
        op = "slt";
        break;
    case LE:
        op = "sle";
        break;
    case G:
        op = "sgt";
        break;
    case GE:
        op = "sge";
        break;
    default:
        op = "";
        break;
    }

    fprintf(yyout, "  %s = icmp %s %s %s, %s\n", s1.c_str(), op.c_str(), type.c_str(), s2.c_str(), s3.c_str());
}

UncondBrInstruction::UncondBrInstruction(BasicBlock *to, BasicBlock *insert_bb)
    : Instruction(UNCOND, insert_bb)
{
    branch = to;
}

void UncondBrInstruction::output() const
{
    fprintf(yyout, "  br label %%B%d\n", branch->getNo());
}

void UncondBrInstruction::setBranch(BasicBlock *bb)
{
    branch = bb;
}

BasicBlock *UncondBrInstruction::getBranch()
{
    return branch;
}

CondBrInstruction::CondBrInstruction(BasicBlock *true_branch, BasicBlock *false_branch, Operand *cond, BasicBlock *insert_bb)
    : Instruction(COND, insert_bb)
{
    this->true_branch = true_branch;
    this->false_branch = false_branch;
    cond->addUse(this);
    operands.push_back(cond);
}

CondBrInstruction::~CondBrInstruction()
{
    operands[0]->removeUse(this);
}

void CondBrInstruction::output() const
{
    std::string cond, type;
    cond = operands[0]->toStr();
    type = operands[0]->getType()->toStr();
    int true_label = true_branch->getNo();
    int false_label = false_branch->getNo();
    fprintf(yyout, "  br %s %s, label %%B%d, label %%B%d\n", type.c_str(),
            cond.c_str(), true_label, false_label);
}

void CondBrInstruction::setFalseBranch(BasicBlock *bb)
{
    false_branch = bb;
}

BasicBlock *CondBrInstruction::getFalseBranch()
{
    return false_branch;
}

void CondBrInstruction::setTrueBranch(BasicBlock *bb)
{
    true_branch = bb;
}

BasicBlock *CondBrInstruction::getTrueBranch()
{
    return true_branch;
}

RetInstruction::RetInstruction(Operand *src, BasicBlock *insert_bb)
    : Instruction(RET, insert_bb)
{
    if (src != nullptr)
    {
        operands.push_back(src);
        src->addUse(this);
    }
}

RetInstruction::~RetInstruction()
{
    if (!operands.empty())
        operands[0]->removeUse(this);
}
// 判断返回情况
void RetInstruction::output() const
{
    if (operands.empty())
    {
        fprintf(yyout, "  ret void\n");
    }
    else
    {
        std::string ret, type;
        ret = operands[0]->toStr();
        type = operands[0]->getType()->toStr();
        fprintf(yyout, "  ret %s %s\n", type.c_str(), ret.c_str());
    }
}

AllocaInstruction::AllocaInstruction(Operand *dst, SymbolEntry *se, BasicBlock *insert_bb)
    : Instruction(ALLOCA, insert_bb)
{
    operands.push_back(dst);
    dst->setDef(this);
    this->se = se;
}

AllocaInstruction::~AllocaInstruction()
{
    operands[0]->setDef(nullptr);
    if (operands[0]->usersNum() == 0)
        delete operands[0];
}

void AllocaInstruction::output() const
{
    std::string dst, type;
    dst = operands[0]->toStr();
    type = se->getType()->toStr();
    fprintf(yyout, "  %s = alloca %s, align 4\n", dst.c_str(),
            type.c_str());
}

LoadInstruction::LoadInstruction(Operand *dst,
                                 Operand *src_addr,
                                 BasicBlock *insert_bb)
    : Instruction(LOAD, insert_bb)
{
    operands.push_back(dst);
    operands.push_back(src_addr);
    dst->setDef(this);
    src_addr->addUse(this);
}

LoadInstruction::~LoadInstruction()
{
    operands[0]->setDef(nullptr);
    if (operands[0]->usersNum() == 0)
        delete operands[0];
    operands[1]->removeUse(this);
}

void LoadInstruction::output() const
{
    std::string dst = operands[0]->toStr();
    std::string src = operands[1]->toStr();
    std::string src_type;
    std::string dst_type;
    dst_type = operands[0]->getType()->toStr();
    src_type = operands[1]->getType()->toStr();
    fprintf(yyout, "  %s = load %s, %s %s, align 4\n", dst.c_str(),
            dst_type.c_str(), src_type.c_str(), src.c_str());
}

StoreInstruction::StoreInstruction(Operand *dst_addr,
                                   Operand *src,
                                   BasicBlock *insert_bb)
    : Instruction(STORE, insert_bb)
{
    operands.push_back(dst_addr);
    operands.push_back(src);
    dst_addr->addUse(this);
    src->addUse(this);
}

StoreInstruction::~StoreInstruction()
{
    operands[0]->removeUse(this);
    operands[1]->removeUse(this);
}

void StoreInstruction::output() const
{
    std::string dst = operands[0]->toStr();
    std::string src = operands[1]->toStr();
    std::string dst_type = operands[0]->getType()->toStr();
    std::string src_type = operands[1]->getType()->toStr();

    fprintf(yyout, "  store %s %s, %s %s, align 4\n", src_type.c_str(),
            src.c_str(), dst_type.c_str(), dst.c_str());
}

MachineOperand *Instruction::genMachineOperand(Operand *ope)
{
    auto se = ope->getEntry();
    MachineOperand *mope = nullptr;
    if (se->isConstant())
        mope = new MachineOperand(MachineOperand::IMM,dynamic_cast<ConstantSymbolEntry *>(se)->getValue());
    else if (se->isTemporary())
        mope = new MachineOperand(MachineOperand::VREG,dynamic_cast<TemporarySymbolEntry *>(se)->getLabel());
    else if (se->isVariable())
    {
        auto id_se = dynamic_cast<IdentifierSymbolEntry *>(se);
        if (id_se->isGlobal()){
            mope = new MachineOperand(id_se->toStr().c_str());
        }
        else if (id_se->isParam()){
            if (id_se->getParamNum() < 4){
                mope = new MachineOperand(MachineOperand::REG,id_se->getParamNum());
            }
            else{
                mope = new MachineOperand(MachineOperand::REG, 3);
            }
        }
        else
            exit(0);
    }
    return mope;
}

MachineOperand *Instruction::genMachineReg(int reg)
{
    return new MachineOperand(MachineOperand::REG, reg);
}

MachineOperand *Instruction::genMachineVReg()
{
    return new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
}

MachineOperand *Instruction::genMachineImm(int val)
{
    return new MachineOperand(MachineOperand::IMM, val);
}

MachineOperand *Instruction::genMachineLabel(int block_no)
{
    std::ostringstream buf;
    buf << ".L" << block_no;
    std::string label = buf.str();
    return new MachineOperand(label);
}

void AllocaInstruction::genMachineCode(AsmBuilder *builder)
{
    auto cur_func = builder->getFunction();
    int size = se->getType()->getSize() / 8;
    // 默认4字节
    size = size >= 0 ? size : 4;
    int offset = cur_func->AllocSpace(size);
    // 设置相对于FP的位置偏移
    dynamic_cast<TemporarySymbolEntry *>(operands[0]->getEntry())->setOffset(-offset);
}
// 样例
void LoadInstruction::genMachineCode(AsmBuilder *builder)
{
    auto cur_block = builder->getBlock();
    MachineInstruction *cur_inst = nullptr;
    // Load global operand
    if (operands[1]->getEntry()->isVariable() && dynamic_cast<IdentifierSymbolEntry *>(operands[1]->getEntry())->isGlobal())
    {
        auto dst = genMachineOperand(operands[0]);
        auto reg_load1 = genMachineVReg();
        auto reg_load2 = new MachineOperand(*reg_load1);
        auto src = genMachineOperand(operands[1]);
        // example: load r0, addr_a
        cur_inst = new LoadMInstruction(cur_block, reg_load1, src);
        cur_block->InsertInst(cur_inst);
        // example: load r1, [r0]
        cur_inst = new LoadMInstruction(cur_block, dst, reg_load2);
        cur_block->InsertInst(cur_inst);
    }
    // Load local operand
    else if (operands[1]->getEntry()->isTemporary() && operands[1]->getDef() && operands[1]->getDef()->isAlloc())
    {
        // example: load r1, [r0, #4]
        auto dst = genMachineOperand(operands[0]);
        auto src1 = genMachineReg(11);
        int off = dynamic_cast<TemporarySymbolEntry *>(operands[1]->getEntry())->getOffset();
        auto src2 = genMachineImm(off);
        // 超出寻址范围   先加载到虚拟寄存器 再加载到对应寄存器
        if (off > 255 || off < -255){
            auto operand = genMachineVReg();
            cur_block->InsertInst(new LoadMInstruction(cur_block, operand, src2));
            src2 = operand;
        }
        cur_inst = new LoadMInstruction(cur_block, dst, src1, src2);
        cur_block->InsertInst(cur_inst);
    }
    // Load operand from temporary variable
    else
    {
        // example: load r1, [r0]
        auto dst = genMachineOperand(operands[0]);
        auto src = genMachineOperand(operands[1]);
        cur_inst = new LoadMInstruction(cur_block, dst, src);
        cur_block->InsertInst(cur_inst);
    }
}

void StoreInstruction::genMachineCode(AsmBuilder *builder)
{
    auto cur_block = builder->getBlock();
    MachineInstruction *cur_inst = nullptr;
    auto src = genMachineOperand(operands[1]);
    // 处理立即数
    if (operands[1]->getEntry()->isConstant()) {
        auto imm = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, imm, src);
        cur_block->InsertInst(cur_inst);
        src = new MachineOperand(*imm);
    }
    // 全局变量
    if (operands[0]->getEntry()->isVariable() && dynamic_cast<IdentifierSymbolEntry *>(operands[0]->getEntry())->isGlobal()) {
        auto dst = genMachineOperand(operands[0]);
        auto reg_load1 = genMachineVReg();
        // example: store r0, addr_a
        cur_inst = new LoadMInstruction(cur_block, reg_load1, dst);
        cur_block->InsertInst(cur_inst);
        // example: store r1, [r0]
        cur_inst = new StoreMInstruction(cur_block, src, reg_load1);
        cur_block->InsertInst(cur_inst);
    }
    // 局部变量
    else if (operands[0]->getEntry()->isTemporary() && operands[0]->getDef() && operands[0]->getDef()->isAlloc()){
        auto dst = genMachineOperand(operands[0]);
        auto src1 = genMachineReg(11);
        int off = dynamic_cast<TemporarySymbolEntry *>(operands[0]->getEntry())->getOffset();
        auto src2 = genMachineImm(off);
        // 超出寻址范围 先加载到虚拟寄存器 再加载到对应寄存器
        if (abs(off) > 255){
            auto operand = genMachineVReg();
            cur_block->InsertInst((new LoadMInstruction(cur_block, operand, src2)));
            src2 = operand;
        }
        cur_inst = new StoreMInstruction(cur_block, src, src1, src2);
        cur_block->InsertInst(cur_inst);
    }
    else { // 地址
        auto dst = genMachineOperand(operands[0]);
        cur_inst = new StoreMInstruction(cur_block, src, dst);
        cur_block->InsertInst(cur_inst);
    }
}
// 额外注意 取模的情况 arm不能直接取模
void BinaryInstruction::genMachineCode(AsmBuilder *builder)
{
    // complete other instructions
    auto cur_block = builder->getBlock();
    auto dst = genMachineOperand(operands[0]);
    auto src1 = genMachineOperand(operands[1]);
    auto src2 = genMachineOperand(operands[2]);
    /* 提示。
     * ir代码中ADD指令的源操作数都可以是立即数
     * 但是在汇编代码中，这是不允许的。所以你需要插入
     * LOAD/MOV指令，将即时的num载入寄存器中。至于其他
     * 指令，如MUL、CMP，你需要处理这种情况。
     * 也是如此。 */
    MachineInstruction *cur_inst = nullptr;
    if (src1->isImm()){
        auto reg_load = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, reg_load, src1);
        cur_block->InsertInst(cur_inst);
        src1 = new MachineOperand(*reg_load);
    }
    // 乘除模 不允许第二个源操作数为立即数 需先加载到寄存器中
    // 第二个源操作数为立即数时  arm汇编其范围有着严格要求，若第二个源操作数为立即数
    // 且超出规定的范围（[-255,255]），则也需要将其加载到寄存器中再使用。
    if (opcode==BinaryInstruction::MUL || opcode==BinaryInstruction::DIV || opcode==BinaryInstruction::MOD){
        if(src2->isImm()){
            auto reg_load = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, reg_load, src2);
            cur_block->InsertInst(cur_inst);
            src2 = new MachineOperand(*reg_load);
        }
    }else {
        if(src2->isImm()&& abs(src2->getVal())>255){
            auto reg_load = genMachineVReg();
            cur_inst = new LoadMInstruction(cur_block, reg_load, src2);
            cur_block->InsertInst(cur_inst);
            src2 = new MachineOperand(*reg_load);
        }
    }
    switch (opcode)
    {
    case ADD:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, dst, src1, src2);
        break;
    case SUB:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::SUB, dst, src1, src2);
        break;
    case AND:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::AND, dst, src1, src2);
        break;
    case OR:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::OR, dst, src1, src2);
        break;
    case MUL:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::MUL, dst, src1, src2);
        break;
    case DIV:
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::DIV, dst, src1, src2);
        break;
    case MOD:
    {
        // 先除 再乘回去 去掉余数部分
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::DIV, dst, src1, src2);
        MachineOperand *dst1 = new MachineOperand(*dst);
        src1 = new MachineOperand(*src1);
        src2 = new MachineOperand(*src2);
        cur_block->InsertInst(cur_inst);

        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::MUL, dst1, dst, src2);
        cur_block->InsertInst(cur_inst);
        dst = new MachineOperand(*dst1);

        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::SUB, dst, src1, dst1);
        break;
    }
    default:
        break;
    }
    cur_block->InsertInst(cur_inst);
}
// done
void CmpInstruction::genMachineCode(AsmBuilder *builder)
{
    // TODO
    auto cur_block = builder->getBlock();
    auto src1 = genMachineOperand(operands[1]);
    auto src2 = genMachineOperand(operands[2]);
    MachineInstruction *cur_inst = nullptr;
    // 立即数要load一下
    if (src1->isImm()){
        auto reg_load = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, reg_load, src1);
        cur_block->InsertInst(cur_inst);
        src1 = new MachineOperand(*reg_load);
    }
    if (src2->isImm()){
        auto reg_load = genMachineVReg();
        cur_inst = new LoadMInstruction(cur_block, reg_load, src2);
        cur_block->InsertInst(cur_inst);
        src2 = new MachineOperand(*reg_load);
    }
    cur_inst = new CmpMInstruction(cur_block, src1, src2, opcode);
    cur_block->InsertInst(cur_inst);
    cur_block->setCond(opcode);
    // 采用条件存储的方式将 1/0 存储到 dst 中
    auto dst = genMachineOperand(operands[0]);
    auto trueOperand = genMachineImm(1);
    auto falseOperand = genMachineImm(0);
    cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, trueOperand, opcode);
    cur_block->InsertInst(cur_inst);
    int fopcode;
    switch (opcode)
    {
    case E:
        fopcode = NE;
        break;
    case NE:
        fopcode = E;
        break;
    case L:
        fopcode = GE;
        break;
    case GE:
        fopcode = L;
        break;
    case G:
        fopcode = LE;
        break;
    case LE:
        fopcode = G;
        break;
    default:
        break;
    }
    cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, falseOperand, fopcode);
    cur_block->InsertInst(cur_inst);
}

void UncondBrInstruction::genMachineCode(AsmBuilder *builder)
{
    // TODO
    // 只需生成一条无条件跳转指令
    // 参数为目的基本块号

    auto cur_block = builder->getBlock();
    auto dst = genMachineLabel(branch->getNo());
    auto cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::B, dst);
    cur_block->InsertInst(cur_inst);
}

void CondBrInstruction::genMachineCode(AsmBuilder *builder)
{    
    // TODO
    // 在中间代码中该指令一定位于 CmpInstruction 之后，
    // 对 CmpInstruction 的翻译比较简单
    // 对 CondBrInstruction，首先需要在 AsmBuilder 中添加成员以记录
    // 前一条 CmpInstruction 的条件码，从而在遇到 CondBrInstruction 时
    // 生成对应的条件跳转指令跳转到 True Branch，之后需要生成一条无条件跳转指令跳转到 False Branch
    auto cur_block = builder->getBlock();
    //True Branch
   
    auto dst_t = genMachineLabel(true_branch->getNo());
    auto cur_inst_t = new BranchMInstruction(cur_block, BranchMInstruction::B, dst_t, cur_block->getCond());
    cur_block->InsertInst(cur_inst_t);
    //False Branch
    auto dst_f = genMachineLabel(false_branch->getNo());
    auto cur_inst_f = new BranchMInstruction(cur_block, BranchMInstruction::B, dst_f);
    cur_block->InsertInst(cur_inst_f);
}

void RetInstruction::genMachineCode(AsmBuilder *builder)
{
    // TODO
    // 生成 MOV 指令，将返回值保存在 R0 寄存器中
    // 生成 ADD 指令来恢复栈帧
    // 生成跳转指令来返回到 Caller。
    auto cur_block = builder->getBlock();
    // 返回值放到r0中 MOV指令
    if (!operands.empty()) {
        auto src = genMachineOperand (operands[0]);
        auto dst = new MachineOperand(MachineOperand::REG, 0);
        if(src->isImm()){
            auto reg_load = genMachineVReg();
            auto cur_inst = new LoadMInstruction (cur_block ,reg_load , src) ;
            cur_block->InsertInst(cur_inst);
            src = new MachineOperand (*reg_load) ;
        }
        auto cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, src);
        cur_block->InsertInst(cur_inst);
    }
    auto sp = new MachineOperand(MachineOperand::REG, 13); // sp   
    auto lr = new MachineOperand(MachineOperand::REG, 14); // lr
    // 恢复栈空间 ADD指令 sp移动
    // 此处不实现 后续完成
    
    // 跳转到lr寄存器 ret
    auto cur_inst2 = new BranchMInstruction(cur_block, BranchMInstruction::BX, lr);
    cur_block->InsertInst(cur_inst2);
}

void CallInstruction::genMachineCode(AsmBuilder *builder)
{
    // 在进行函数调用时，对于含参函数，需要使用 R0-R3 寄存器传递参数
    // 如果参数个数大于四个 需要生成 PUSH 指令来传递参数
    // 之后生成跳转指令来进入 Callee 函数
    // 在此之后，需要进行现场恢复的工作
    // 如果之前通过压栈的方式传递了参数，需要恢复 SP 寄存器
    // 最后，如果函数执行结果被用到，还需要保存 R0 寄存器中的返回值
    auto cur_block = builder->getBlock();
    MachineOperand *operand; 
    MachineInstruction *cur_inst;
    //r0-r3能存储的参数
    for (int i = 1; i < operands.size() && i < 5; i++){
        operand = genMachineReg(i-1);
        auto src = genMachineOperand(operands[i]);
        if(!src->isImm() || src->getVal() < 256){
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, operand, src);
        }
        else if (src->isImm() && src->getVal() >= 256){
            cur_inst = new LoadMInstruction(cur_block, operand, src);
        }
        cur_block->InsertInst(cur_inst);
    }
    //第5个及之后的参数
    for (int i = operands.size() - 1; i > 4; i--) { 
        operand = genMachineOperand(operands[i]);
        std::vector<MachineOperand *> params_vec;
        if (operand->isImm()) {
            auto temp = genMachineVReg();
            if (operand->getVal() >= 255){ //需要load
                cur_inst = new LoadMInstruction(cur_block, temp, operand);
            }
            else {
                cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, temp, operand);
            }
            cur_block->InsertInst(cur_inst);
            operand = temp;
        }
        //参数压入栈中 push指令
        cur_inst = new StackMInstrcution(cur_block, StackMInstrcution::PUSH, params_vec, operand);
        cur_block->InsertInst(cur_inst);
    }
    //跳转指令
    auto label = new MachineOperand(func->toStr().c_str());
    cur_inst = new BranchMInstruction(cur_block, BranchMInstruction::BL, label);
    cur_block->InsertInst(cur_inst);

    if (operands.size() > 5) { //参数超过5个需要push  push之后调整sp位置
        auto off = genMachineImm((operands.size() - 5) * 4);
        auto sp = new MachineOperand(MachineOperand::REG, 13);
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, sp, sp, off);
        cur_block->InsertInst(cur_inst);
    }
    //如果函数执行结果被用到，保存 R0 寄存器中的返回值
    if (dst){
        operand = genMachineOperand(dst);
        auto r0 = new MachineOperand(MachineOperand::REG, 0);
        cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, operand, r0);
        cur_block->InsertInst(cur_inst);
    }
}

// 用于not取反 和0比较 相等为1 不相等为0
void NotInstruction::genMachineCode(AsmBuilder *builder){
    auto cur_block = builder->getBlock();
    auto dst = genMachineOperand(operands[0]);
    auto trueOperand = genMachineImm(1);
    auto cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, trueOperand, MachineInstruction::EQ);
    cur_block->InsertInst(cur_inst);
    auto falseOperand = genMachineImm(0);
    cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, dst, falseOperand, MachineInstruction::NE);
    cur_block->InsertInst(cur_inst);
}

void GepInstruction::genMachineCode(AsmBuilder *builder)
{
    MachineInstruction *cur_inst = nullptr;
    MachineOperand *base = nullptr;
    auto cur_block = builder->getBlock();
    auto dst = genMachineOperand(operands[0]);

    //如果是init
    if (init){ 
        auto base = genMachineOperand(init);
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, dst, base, genMachineImm(4));
        cur_block->InsertInst(cur_inst);
        return;
    }

    // 获取索引idx的Operand
    auto reg_load = genMachineVReg();
    auto idx = genMachineOperand(operands[2]);
    if (idx->isImm()) { //加载索引idx到寄存器中 是否需要load 
        if (abs(idx->getVal()) > 255) {
            cur_inst = new LoadMInstruction(cur_block, reg_load, idx);
        }
        else {
            cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, reg_load, idx);
        }
        idx = new MachineOperand(*reg_load);
        cur_block->InsertInst(cur_inst);
    }

    //获取类型大小size 并load/mov 到 size_f
    auto size_f = genMachineVReg();
    cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, size_f,genMachineImm(4));
    cur_block->InsertInst(cur_inst);
    // 根据 type size 和 index 计算相对基址的偏移 off
    auto off = genMachineVReg();// 获取实际的偏移 即索引乘类型大小 off = typeSize * index 
    cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::MUL, off, idx, size_f);// off = typeSize * index 
    cur_block->InsertInst(cur_inst);

    if(param) { // 数组作为参数 直接通过 addr + off 寻址
        auto arr = genMachineOperand(operands[1]);
        cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, dst, arr, off);
        cur_block->InsertInst(cur_inst);
    } else { // 需要先获取数组基址base
        auto base = genMachineVReg(); //将数组基址加载到寄存器中
        IdentifierSymbolEntry* arr = (IdentifierSymbolEntry*)operands[1]->getEntry();
        if(arr->isGlobal() && arr->isVariable()){   // 如果是全局变量 获取桥接标签
            // 加载基址base
            auto src = genMachineOperand(operands[1]); // 获取arr
            cur_inst = new LoadMInstruction(cur_block, base, src); // 加载到base中
            cur_block->InsertInst(cur_inst);
            // 基址加偏移 base + off 寻址
            cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, dst, base, off);//
            cur_block->InsertInst(cur_inst);
        }
        else{ // 存储在栈内 获取栈内偏移offset
            int offset = ((TemporarySymbolEntry *)(operands[1]->getEntry()))->getOffset();
            if (abs(offset) > 255){ // 将offset立即数加载到base中
                cur_inst = new LoadMInstruction(cur_block, base, genMachineImm(offset));
            }
            else {
                cur_inst = new MovMInstruction(cur_block, MovMInstruction::MOV, base, genMachineImm(offset));
            }
            cur_block->InsertInst(cur_inst);
            // 通过站内偏移offset计算栈内地址
            auto fp = genMachineReg(11);
            auto addr = genMachineVReg();
            // base + off 寻址(此处实际得到相对fp的偏移地址)
            cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, addr, base, off);
            cur_block->InsertInst(cur_inst);
            // fp + addr 得到实际栈中地址
            cur_inst = new BinaryMInstruction(cur_block, BinaryMInstruction::ADD, dst, fp, addr);   
            cur_block->InsertInst(cur_inst);
        }
    }
}
