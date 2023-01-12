#include "Ast.h"
#include <stack>
#include <string>
#include "IRBuilder.h"
#include "Instruction.h"
#include "SymbolTable.h"
#include "Type.h"
#include "Unit.h"
extern Unit unit;
extern MachineUnit mUnit;

#include <iostream>

extern FILE *yyout;
int Node::counter = 0;
IRBuilder *Node::builder;

Node::Node()
{
    seq = counter++;
    next = nullptr;
}
// 链式存储
void Node::setNext(Node *node)
{
    Node *n = this;
    while (n->getNext())
    {
        n = n->getNext();
    }
    if (n == this)
    {
        this->next = node;
    }
    else
    {
        n->setNext(node);
    }
}

void Node::backPatch(std::vector<Instruction *> &list, BasicBlock *bb)
{
    for (auto &inst : list)
    {
        if (inst->isUncond())
            dynamic_cast<UncondBrInstruction *>(inst)->setBranch(bb);
        else if (inst->isCond())
            dynamic_cast<CondBrInstruction *>(inst)->setTrueBranch(bb);
    }
}

std::vector<Instruction *> Node::merge(std::vector<Instruction *> &list1, std::vector<Instruction *> &list2)
{
    std::vector<Instruction *> res(list1);
    res.insert(res.end(), list2.begin(), list2.end());
    return res;
}

BinaryExpr::BinaryExpr(SymbolEntry *se, int op, ExprNode *expr1, ExprNode *expr2) : ExprNode(se), op(op), expr1(expr1), expr2(expr2)
{
    dst = new Operand(se);
    std::string op_str;
    switch (op)
    {
    case ADD:
        op_str = "+";
        break;
    case SUB:
        op_str = "-";
        break;
    case MUL:
        op_str = "*";
        break;
    case DIV:
        op_str = "/";
        break;
    case MOD:
        op_str = "%";
        break;
    case AND:
        op_str = "&&";
        break;
    case OR:
        op_str = "||";
        break;
    case NOTEQUAL:
        op_str = "!=";
        break;
    case EQUAL:
        op_str = "==";
        break;        
    case LESSEQUAL:
        op_str = "<=";
        break;        
    case LESS:
        op_str = "<";
        break;
    case GREATEREQUAL:
        op_str = ">=";
        break;
    case GREATER:
        op_str = ">";
        break;
    }
    // 对于cond需要隐式转换
    if (op >= BinaryExpr::AND && op <= BinaryExpr::NOTEQUAL)
    {
        type = TypeSystem::boolType;
        if (op == BinaryExpr::AND || op == BinaryExpr::OR){
            if (expr1->getType()->getSize() != 1){
                //this->expr1 = new BinaryExpr(new TemporarySymbolEntry(type, SymbolTable::getLabel()), BinaryExpr::NOTEQUAL, expr1, new Constant(new ConstantSymbolEntry(expr1->getType(), 0)));
                this->expr1 = new ImplictCastExpr(expr1);
            }
            if (expr2->getType()->getSize() != 1){
                //this->expr2 = new BinaryExpr(new TemporarySymbolEntry(type, SymbolTable::getLabel()), BinaryExpr::NOTEQUAL, expr2, new Constant(new ConstantSymbolEntry(expr2->getType(), 0)));
                this->expr2 = new ImplictCastExpr(expr2);
            }
        }
    }
    else{
        type = TypeSystem::intType;
    }
        
};
AssignStmt::AssignStmt(ExprNode *lval, ExprNode *expr) : lval(lval), expr(expr)
{
    Type *type = ((Id *)lval)->getType();
    SymbolEntry *se = lval->getSymbolEntry();
}
CallExpr::CallExpr(SymbolEntry *se, ExprNode *param) : ExprNode(se), param(param)
{
    // 参数检查
    dst = nullptr;
    SymbolEntry *s = se;
    int paramCnt = 0;
    ExprNode *temp = param;
    while (temp)
    {
        paramCnt++;
        temp = (ExprNode *)(temp->getNext());
    }
    while (s)
    {
        Type *type = s->getType();
        std::vector<Type *> params = ((FunctionType *)type)->getParamsType();
        if ((long unsigned int)paramCnt == params.size())
        {
            this->symbolEntry = s;
            break;
        }
        s = s->getNext();
    }
    if (symbolEntry)
    {
        Type *type = symbolEntry->getType();
        this->type = ((FunctionType *)type)->getRetType();
        if (this->type != TypeSystem::voidType)
        {
            SymbolEntry *se =
                new TemporarySymbolEntry(this->type, SymbolTable::getLabel());
            dst = new Operand(se);
        }
        std::vector<Type *> params = ((FunctionType *)type)->getParamsType();
        ExprNode *temp = param;
    }
}
UnaryExpr::UnaryExpr(SymbolEntry *se, int op, ExprNode *expr) : ExprNode(se, UNARYEXPR), op(op), expr(expr)
{
    
    std::string op_str;
    switch(op){
        case UnaryExpr::NOT: 
        {
            op_str = "!"; 
            type = TypeSystem::intType;
            dst = new Operand(se);
            if (expr->isUnaryExpr()){
                UnaryExpr *ue = (UnaryExpr *)expr;
                if (ue->getOp() == UnaryExpr::NOT){
                    if (ue->getType() == TypeSystem::intType)
                        ue->setType(TypeSystem::boolType);
                }
            }
            break;
        }
        case UnaryExpr::SUB: 
        {
            op_str = "-"; 
            type = TypeSystem::intType;
            dst = new Operand(se);
            if (expr->isUnaryExpr()){
                UnaryExpr *ue = (UnaryExpr *)expr;
                if (ue->getOp() == UnaryExpr::NOT)
                    if (ue->getType() == TypeSystem::intType)
                        ue->setType(TypeSystem::boolType);
            }
            break;
        }
    }
};

void Ast::genCode(Unit *unit)
{
    IRBuilder *builder = new IRBuilder(unit);
    Node::setIRBuilder(builder);
    root->genCode();
}
void FunctionDef::genCode()
{
    Unit *unit = builder->getUnit();
    Function *func = new Function(unit, se);
    BasicBlock *entry = func->getEntry();
    builder->setInsertBB(entry);
    if (decl)
        decl->genCode();
    // function中的stmt节点是用compoundstmt进行初始化的
    if (stmt)
        stmt->genCode();
    for (auto block = func->begin(); block != func->end(); block++){
        // 获取该块的最后一条指令
        Instruction *last = (*block)->rbegin();
        Instruction *ins = (*block)->begin();
        while (ins != last) { //删除只有一句无条件跳转的基本块
            if (ins->isUncond() || ins->isCond()) {
                (*block)->remove(ins);
            }
            ins = ins->getNext();
        }
        if (last->isCond()){
            CondBrInstruction *br = dynamic_cast<CondBrInstruction *>(last);
            BasicBlock *truebranch = br->getTrueBranch();
            BasicBlock *falsebranch = br->getFalseBranch();
            (*block)->addSucc(truebranch);
            (*block)->addSucc(falsebranch);
            truebranch->addPred(*block);
            falsebranch->addPred(*block);
        }
        else if (last->isUncond()) // 无条件跳转指令可获取跳转的目标块
        {
            UncondBrInstruction *br = dynamic_cast<UncondBrInstruction *>(last);
            BasicBlock *succ = br->getBranch();
            (*block)->addSucc(succ);
            succ->addPred(*block);
        }
        // 没有返回或者跳转的语句 插入空返回
        else if (!last->isRet()){
            RetInstruction* r = new RetInstruction(nullptr, *block);
        }
    }
}
void BinaryExpr::genCode()
{
    //得到后续生成的指令要插入的基本快bb
    BasicBlock *bb = builder->getInsertBB();
    Function *func = bb->getParent();
    if (op == AND){
        BasicBlock *trueBB = new BasicBlock(func);
        expr1->genCode();
        backPatch(expr1->trueList(), trueBB);
        builder->setInsertBB(trueBB);
        expr2->genCode();
        true_list = expr2->trueList();
        false_list = merge(expr1->falseList(), expr2->falseList());
    }
    else if (op == OR){
        // Todo
        BasicBlock *trueBB = new BasicBlock(func);
        expr1->genCode();
        backPatch(expr1->falseList(), trueBB);
        builder->setInsertBB(trueBB);
        expr2->genCode();
        true_list = merge(expr1->trueList(), expr2->trueList());
        false_list = expr2->falseList();
    }
    else if (op >= LESS && op <= NOTEQUAL){
        // Todo
        expr1->genCode();
        expr2->genCode();
        Operand *src1 = expr1->getOperand();
        Operand *src2 = expr2->getOperand();
        if (src1->getType()->getSize() != 32){
            src1 = new Operand(new ConstantSymbolEntry(TypeSystem::intType, expr1->getValue()));
            expr1->setOperand(src1);
        }
        if (src2->getType()->getSize() != 32){
            src2 = new Operand(new ConstantSymbolEntry(TypeSystem::intType, expr2->getValue()));
            expr2->setOperand(src2);
        }
        int cmpopcode = -1;
        switch (op)
        {
        case LESS:
            cmpopcode = CmpInstruction::L;
            break;
        case LESSEQUAL:
            cmpopcode = CmpInstruction::LE;
            break;
        case GREATER:
            cmpopcode = CmpInstruction::G;
            break;
        case GREATEREQUAL:
            cmpopcode = CmpInstruction::GE;
            break;
        case EQUAL:
            cmpopcode = CmpInstruction::E;
            break;
        case NOTEQUAL:
            cmpopcode = CmpInstruction::NE;
            break;
        }
        new CmpInstruction(cmpopcode, dst, src1, src2, bb);
        BasicBlock *truebb, *falsebb, *tempbb;
        // 临时假块
        truebb = new BasicBlock(func);
        falsebb = new BasicBlock(func);
        tempbb = new BasicBlock(func);
        true_list.push_back(new CondBrInstruction(truebb, tempbb, dst, bb));
        false_list.push_back(new UncondBrInstruction(falsebb, tempbb));
    }
    else if (op >= ADD && op <= MOD){
        expr1->genCode();
        expr2->genCode();
        Operand *src1 = expr1->getOperand();
        Operand *src2 = expr2->getOperand();
        int opcode = -1;
        switch (op)
        {
        case ADD:
            opcode = BinaryInstruction::ADD;
            break;
        case SUB:
            opcode = BinaryInstruction::SUB;
            break;
        case MUL:
            opcode = BinaryInstruction::MUL;
            break;
        case DIV:
            opcode = BinaryInstruction::DIV;
            break;
        case MOD:
            opcode = BinaryInstruction::MOD;
            break;
        }
        new BinaryInstruction(opcode, dst, src1, src2, bb);
    }
}
void Id::genCode()
{
    BasicBlock *bb = builder->getInsertBB();
    Operand *addr = dynamic_cast<IdentifierSymbolEntry *>(symbolEntry)->getAddr();
    if (!type->isArray()){
        LoadInstruction* load = new LoadInstruction(dst, addr, bb);
    }
    // 针对数组
    // 主要思想就是多维的 先把上一维度的地址找到 然后根据下标找下一个维度
    else {
        // 遍历维度 arrIdx存储索引 a[3][2][4]的 3->2->4
        if (arrIdx){
            // 获取当前类型和元素类型
            ArrayType *arrType = (ArrayType *)this->type;
            Type *type = arrType->getElementType();
            Operand *tempSrc = addr;
            Operand *tempDst = dst;
            ExprNode *arrayIndex = arrIdx;
            // 标识GepInstruction的paramFirst
            // 主要是用于区分函数参数a[][3]的情况
            bool flag = false;
            bool pointer = false;
            bool firstFlag = true;
            while (true){
                // 针对参数是数组的情况  a[][3]
                // 把基址加载到tempSrc
                if ((arrType)->getLength() == -1){
                    Operand *dst1 = new Operand(new TemporarySymbolEntry(new PointerType(type), SymbolTable::getLabel()));
                    LoadInstruction* load = new LoadInstruction(dst1, addr, bb);
                    tempSrc = dst1; // 中间变量
                    firstFlag = false;
                    flag = true;
                }
                // 如果维度遍历结束 将对应数组值传递到dst 然后退出
                if (!arrayIndex){
                    Operand *dst1 = new Operand(new TemporarySymbolEntry(new PointerType(type), SymbolTable::getLabel()));
                    Operand *arrayIndex = new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0));
                    GepInstruction* gep = new GepInstruction(dst1, tempSrc, arrayIndex, bb);
                    tempDst = dst1;
                    pointer = true;
                    break;
                }
                // 生成维度
                arrayIndex->genCode();
                // 用于维度寻址 将tempSrc[arrayIndex]的值加载到tempDst
                auto gep = new GepInstruction(tempDst, tempSrc, arrayIndex->getOperand(), bb, flag);
                // 如果当前不是a[][3]这种情况
                // 并且是第一个维度寻址
                if (!flag && firstFlag){
                    gep->setFirst();
                    firstFlag = false;
                }
                // flag每个参数都要重置
                if (flag){
                    flag = false;
                }
                // 维度要全部换成整数的维度
                if (type == TypeSystem::intType || type == TypeSystem::constIntType){
                    break;
                }
                type = ((ArrayType *)type)->getElementType();
                arrType = (ArrayType *)arrType->getElementType();
                tempSrc = tempDst;
                tempDst = new Operand(new TemporarySymbolEntry(new PointerType(type), SymbolTable::getLabel()));
                arrayIndex = (ExprNode *)(arrayIndex->getNext());
            }
            dst = tempDst;
            // 如果此ID是右值 需要再次load
            if (!left && !pointer){
                Operand *dst1 = new Operand(new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel()));
                LoadInstruction* load = new LoadInstruction(dst1, dst, bb);
                dst = dst1;
            }
        }
        else { // 针对声明数组的情况 和上面类似
            if (((ArrayType *)(this->type))->getLength() == -1){
                Operand *dst1 = new Operand(new TemporarySymbolEntry(new PointerType(((ArrayType *)(this->type))->getElementType()),SymbolTable::getLabel()));
                LoadInstruction*load = new LoadInstruction(dst1, addr, bb);
                dst = dst1;
            }
            else{
                Operand *arrayIndex = new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0));
                auto gep = new GepInstruction(dst, addr, arrayIndex, bb);
                gep->setFirst();
            }
        }
    }
}
void IfStmt::genCode()
{
    Function* func = builder->getInsertBB()->getParent();
    BasicBlock* then_bb = new BasicBlock(func);
    BasicBlock* end_bb = new BasicBlock(func);

    cond->genCode();

    backPatch(cond->trueList(), then_bb);
    backPatch(cond->falseList(), end_bb);

    builder->setInsertBB(then_bb);
    thenStmt->genCode();
    then_bb = builder->getInsertBB();
    UncondBrInstruction* uncond = new UncondBrInstruction(end_bb, then_bb);

    builder->setInsertBB(end_bb);
}
void IfElseStmt::genCode()
{
    Function* func = builder->getInsertBB()->getParent();
    BasicBlock* then_bb = new BasicBlock(func);
    BasicBlock* else_bb = new BasicBlock(func);
    BasicBlock* end_bb = new BasicBlock(func);

    cond->genCode();
    backPatch(cond->trueList(), then_bb);
    backPatch(cond->falseList(), else_bb);

    builder->setInsertBB(then_bb);
    thenStmt->genCode();
    then_bb = builder->getInsertBB();
    UncondBrInstruction* uncond = new UncondBrInstruction(end_bb, then_bb);

    builder->setInsertBB(else_bb);
    elseStmt->genCode();
    else_bb = builder->getInsertBB();
    uncond = new UncondBrInstruction(end_bb, else_bb);

    builder->setInsertBB(end_bb);
}
void CompoundStmt::genCode()
{
    // Todo
    if (stmt)
        stmt->genCode();
}
void SeqNode::genCode()
{
    // Todo
    stmt1->genCode();
    stmt2->genCode();
}
void DeclStmt::genCode()
{
    IdentifierSymbolEntry *se = dynamic_cast<IdentifierSymbolEntry *>(id->getSymbolEntry());
    // 全局变量插入unit中
    if (se->isGlobal()){
        SymbolEntry *addr_se = new IdentifierSymbolEntry(*se);
        addr_se->setType(new PointerType(se->getType()));
        Operand *addr = new Operand(addr_se);
        se->setAddr(addr);
        unit.insertGlobal(se);
        mUnit.insertGlobal(se);
    }
    else {// 对于局部变量或者参数     
        // 要先分配空间AllocaInstructions
        Function *func = builder->getInsertBB()->getParent();
        BasicBlock *entry = func->getEntry();
        Type *type = new PointerType(se->getType());
        SymbolEntry *addr_se = new TemporarySymbolEntry(type, SymbolTable::getLabel());
        Operand *addr = new Operand(addr_se);
        Instruction *alloca = new AllocaInstruction(addr, se);
        // 分配空间指令插到块入口
        entry->insertFront(alloca);
        // 如果是参数还需要stroe
        Operand *temp = nullptr;
        if (se->isParam()){
            temp = se->getAddr();
        }
        se->setAddr(addr); //存储地址
        // 如果有初始值 需要再插入store
        // 数组需要Gep指令  指针计算语句，本身并不进行任何数据的访问或修改，修改计算后指针的类型。
        // GetElementPtr至少有两个参数，第一个参数为要进行计算的原始指针，往往是一个结构体指针，或数组首地址指针。
        // 第二个参数及以后的参数，都称为indices，表示要进行计算的参数，如结构体的第几个元素，数组的第几个元素。
        // 下面我们结合示例，来对应看一下是如何工作的：
        if (expr){
            //if (expr->isInitValueListExpr()) {
            if(!se->getType()->isArray()){ // 不是数组
                BasicBlock *bb = builder->getInsertBB();
                expr->genCode();
                Operand *src = expr->getOperand();
                new StoreInstruction(addr, src, bb);
            } 
            else {
                Operand *init = nullptr;// 记录上次初始化的位置 如果再次Gep用于初始化 需要add 4
                BasicBlock *bb = builder->getInsertBB();
                ExprNode *temp = expr;
                std::stack<ExprNode *> stk;
                std::vector<int> arrayIndex;
                arrayIndex.push_back(0);
                while (temp) { // temp存储当前已被出栈并进行处理的InitListExp(找到最低维度后变为Exp)
                    if (temp->isInitValueListExpr()){ // 找到最低维度
                        stk.push(temp); // 深度优先搜索
                        arrayIndex.push_back(0); // 放入索引0开始 a[0][0][0]
                        temp = ((InitValueListExpr *)temp)->getExpr();
                        continue;
                    }
                    else {
                        temp->genCode();
                        Type *type = ((ArrayType *)(se->getType()))->getElementType(); // type存储当前元素类型
                        // %tmp9 = getelementptr %ptrType %ptrBase, indexType index, indexType index
                        Operand *tempSrc = addr; // 第2个操作数 是GEP指令开始的指针 即要被修改的基地址(数组开头的指针)
                        Operand *tempDst;   // 第1个操作数 是指针类型 存入基址偏移index后的新地址
                        Operand *index;     // 第3个操作数 Gep指令的索引 根据基址寻址
                                            // 即 tempDst = tempSrc[index]
                        bool flag = true;
                        int i = 1;
                        while (true) { 
                            tempDst = new Operand(new TemporarySymbolEntry(new PointerType(type), SymbolTable::getLabel()));
                            index = (new Constant(new ConstantSymbolEntry(TypeSystem::intType, arrayIndex[i++])))->getOperand();
                            auto gep = new GepInstruction(tempDst, tempSrc, index, bb);
                            gep->setInit(init);
                            // 多维数组 需要多次寻址找到第1个元素位置 多次Gep
                            if (flag){ //当前元素的第1条Gep指令
                                gep->setFirst();
                                flag = false;
                            }
                            if(!type->isArray()) {//最后1条Gep指令
                                // gep->setLast();
                                // init = tempDst;
                                break;
                            }
                            type = ((ArrayType *)type)->getElementType();// 准备进入下一维度 更新当前元素类型
                            tempSrc = tempDst; // 上次Gep的新地址当作下次Gep的基址  a->a[0]  a[0]->a[0][0]
                        }
                        // while得到多个Gep指令 取到要被赋值元素的地址tempDest => a[i][j][k] = ?
                        StoreInstruction* storeIns = new StoreInstruction(tempDst, temp->getOperand(), bb); // store 赋值
                    }
                    while (true){
                        if (temp->getNext()){//若当前分岔节点仍有IntType未被遍历到 则最低维的Index++ 继续赋值
                            temp = (ExprNode *)(temp->getNext());
                            arrayIndex[arrayIndex.size() - 1]++;
                            break;
                        }
                        else{// 否则弹出新InitListExp进行处理 遍历到Exp
                            temp = stk.top(); //获取top
                            stk.pop(); //出栈
                            arrayIndex.pop_back(); //索引出栈
                            if (stk.empty()) {//栈空 结束
                                break;
                            }
                        }
                    }
                    if (stk.empty()) {//栈空 结束
                        break;
                    }
                }                
            }
        }
        if (se->isParam()){
            BasicBlock *bb = builder->getInsertBB();
            new StoreInstruction(addr, temp, bb);
        }
    }
    // 参数时需要使用next去下一个参数
    if (this->getNext()){
        this->getNext()->genCode();
    }
}
void ReturnStmt::genCode()
{
    // Todo
    BasicBlock *bb = builder->getInsertBB();
    Function *func = bb->getParent();
    BasicBlock *next_bb = new BasicBlock(func);
    Operand *src = nullptr;
    if (retValue){
        retValue->genCode();
        src = retValue->getOperand();
    }
    new RetInstruction(src, bb);

    builder->setInsertBB(next_bb);
}
void ExprStmt::genCode()
{
    // Todo
    expr->genCode();
}
void ContinueStmt::genCode()
{
    // Todo
    Function *func = builder->getInsertBB()->getParent();
    BasicBlock *bb = builder->getInsertBB();
    UncondBrInstruction* uncond = new UncondBrInstruction(((WhileStmt *)whileStmt)->get_cond_bb(), bb);
    BasicBlock *continue_next_bb = new BasicBlock(func);
    builder->setInsertBB(continue_next_bb);
}
void BreakStmt::genCode()
{
    // Todo
    Function *func = builder->getInsertBB()->getParent();
    BasicBlock *bb = builder->getInsertBB();
    UncondBrInstruction* uncond = new UncondBrInstruction(((WhileStmt *)whileStmt)->get_end_bb(), bb);
    BasicBlock *break_next_bb = new BasicBlock(func);
    builder->setInsertBB(break_next_bb);
}
void WhileStmt::genCode()
{
    Function *func = builder->getInsertBB()->getParent();
    BasicBlock* bb = builder->getInsertBB();
    BasicBlock *cond_bb = new BasicBlock(func);
    BasicBlock *while_bb = new BasicBlock(func);
    BasicBlock *end_bb = new BasicBlock(func);
    this->cond_bb = cond_bb;
    this->end_bb = end_bb;
    UncondBrInstruction* uncond = new UncondBrInstruction(cond_bb, bb);

    builder->setInsertBB(cond_bb);
    cond->genCode();
    backPatch(cond->trueList(), while_bb);
    backPatch(cond->falseList(), end_bb);

    builder->setInsertBB(while_bb);
    stmt->genCode();

    while_bb = builder->getInsertBB();
    uncond = new UncondBrInstruction(cond_bb, while_bb);
    builder->setInsertBB(end_bb);
}
void CallExpr::genCode()
{
    ExprNode *temp = this->param;
    std::vector<Operand *> operands;
    while (temp) {
        temp->genCode();
        operands.push_back(temp->getOperand());
        temp = ((ExprNode *)temp->getNext());
    }
    BasicBlock *bb = builder->getInsertBB();
    new CallInstruction(dst, symbolEntry, operands, bb);
}
void UnaryExpr::genCode()
{
    // Todo
    expr->genCode();
    switch(op){
        case ADD: break;
        case SUB:
        { //0-x
            BasicBlock *bb = builder->getInsertBB();
            Operand *src1 = new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0));
            Operand *src2 = expr->getOperand();
            BinaryInstruction* Bin = new BinaryInstruction(BinaryInstruction::SUB, dst, src1, src2, bb);
            break;
        }
        case NOT:
        {
            BasicBlock *bb = builder->getInsertBB();
            Operand *src = expr->getOperand();
            // 如果not后面是一个i32 就要先和0比较大小 然后对于结果进行取反
            if (expr->getType()->getSize() != 1){
                Operand *temp = new Operand(new TemporarySymbolEntry(
                TypeSystem::boolType, SymbolTable::getLabel()));
                CmpInstruction* cmp = new CmpInstruction(CmpInstruction::NE, temp, src,new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0)),bb);
                src = temp;
            }
            XorInstruction* Xor = new XorInstruction(dst, src, bb);
            break;
        }
    }
}
void AssignStmt::genCode()
{
    BasicBlock *bb = builder->getInsertBB();
    expr->genCode();
    Operand *addr = nullptr;
    if (lval->getOriginType()->isInt()){
        addr = dynamic_cast<IdentifierSymbolEntry *>(lval->getSymbolEntry())->getAddr();
    }
    else if (lval->getOriginType()->isArray()){
        ((Id *)lval)->setLeft();
        lval->genCode();
        addr = lval->getOperand();
    }
    Operand *src = expr->getOperand();
    StoreInstruction* store = new StoreInstruction(addr, src, bb);
}
void ImplictCastExpr::genCode()
{
    expr->genCode();
    BasicBlock *bb = builder->getInsertBB();
    Function *func = bb->getParent();
    BasicBlock *trueBB = new BasicBlock(func);
    BasicBlock *tempbb = new BasicBlock(func);
    BasicBlock *falseBB = new BasicBlock(func);

    CmpInstruction* Cmp = new CmpInstruction(CmpInstruction::NE, this->dst, this->expr->getOperand(),new Operand(new ConstantSymbolEntry(TypeSystem::intType, 0)), bb);
    this->trueList().push_back(new CondBrInstruction(trueBB, tempbb, this->dst, bb));
    this->falseList().push_back(new UncondBrInstruction(falseBB, tempbb));
}

int BinaryExpr::getValue()
{
    int value = 0;
    int val1 = expr1->getValue();
    int val2 = expr2->getValue();
    switch (op)
    {
    case ADD:
        value = val1 + val2;
        break;
    case SUB:
        value = val1 - val2;
        break;
    case MUL:
        value = val1 * val2;
        break;
    case DIV:
        if (val2)
            value = val1 / val2;
        break;
    case MOD:
        value = val1 % val2;
        break;
    case AND:
        value = val1 && val2;
        break;
    case OR:
        value = val1 || val2;
        break;
    case NOTEQUAL:
        value = val1 != val2;
        break;           
    case EQUAL:
        value = val1 == val2;
        break;
    case LESSEQUAL:
        value = val1 <= val2;
        break;
    case LESS:
        value = val1 < val2;
        break;
    case GREATER:
        value = val1 > val2;
        break;
    case GREATEREQUAL:
        value = val1 >= val2;
        break;
    }
    return value;
}
int UnaryExpr::getValue()
{
    int value = 0;
    int val = expr->getValue();
    switch (op){
    case ADD:
        value = val;
        break;
    case NOT:
        value = !val;
        break;
    case SUB:
        value = -val;
        break;
    }
    return value;
}
int Constant::getValue()
{
    return ((ConstantSymbolEntry *)symbolEntry)->getValue();
}
int Id::getValue()
{
    return ((IdentifierSymbolEntry *)symbolEntry)->getValue();
}
Type *Id::getType()
{
    SymbolEntry *se = this->getSymbolEntry();
    if (!se)
        return TypeSystem::voidType;
    Type *type = se->getType();
    if (!arrIdx)
        return type;
    else{
        ArrayType *temp1 = (ArrayType *)type;
        ExprNode *temp2 = arrIdx;
        while (!temp1->getElementType()->isInt())
        {
            if (!temp2){
                return temp1;
            }
            temp2 = (ExprNode *)(temp2->getNext());
            temp1 = (ArrayType *)(temp1->getElementType());
        }
    }
    return TypeSystem::intType;
}
void InitValueListExpr::addExpr(ExprNode *expr)
{
    childCnt++;
    if (this->expr == nullptr){
        this->expr = expr;
    }
    else{
        this->expr->setNext(expr);
    }
}
bool InitValueListExpr::isFull()
{
    ArrayType *type = (ArrayType *)(this->symbolEntry->getType());
    return childCnt == type->getLength();
}
void InitValueListExpr::fill()
{
    Type *type = ((ArrayType *)(this->getType()))->getElementType();
    if (type->isArray()){
        while (!isFull()){
            this->addExpr(new InitValueListExpr(new ConstantSymbolEntry(type)));
        }
        ExprNode *temp = expr;
        while (temp){
            ((InitValueListExpr *)temp)->fill();
            temp = (ExprNode *)(temp->getNext());
        }
    }
    if (type->isInt()){
        while (!isFull())
            this->addExpr(new Constant(new ConstantSymbolEntry(type, 0)));
        return;
    }
}
