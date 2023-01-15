#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

#include <map>
#include <sstream>
#include <vector>
#include "AsmBuilder.h"
#include "Operand.h"

class BasicBlock;

class Instruction {
   public:
    Instruction(unsigned instType, BasicBlock* insert_bb = nullptr);
    virtual ~Instruction();
    BasicBlock* getParent();
    bool isUncond() const { return instType == UNCOND; };
    bool isCond() const { return instType == COND; };
    bool isAlloc() const { return instType == ALLOCA; };
    bool isRet() const { return instType == RET; };
    void setParent(BasicBlock*);
    void setNext(Instruction*);
    void setPrev(Instruction*);
    Instruction* getNext();
    Instruction* getPrev();
    virtual void output() const = 0;
    MachineOperand* genMachineOperand(Operand*);
    MachineOperand* genMachineReg(int reg);
    MachineOperand* genMachineVReg();
    MachineOperand* genMachineImm(int val);
    MachineOperand* genMachineLabel(int block_no);
    virtual void genMachineCode(AsmBuilder*) = 0;

   protected:
    unsigned instType;
    unsigned opcode;
    Instruction* prev;
    Instruction* next;
    BasicBlock* parent;
    std::vector<Operand*> operands;
    enum {
        BINARY,
        COND,
        UNCOND,
        RET,
        LOAD,
        STORE,
        CMP,
        ALLOCA,
        CALL,
        ZEXT,
        XOR,
        GEP
    };
};

// meaningless instruction, used as the head node of the instruction list.
class DummyInstruction : public Instruction {
   public:
    DummyInstruction() : Instruction(-1, nullptr){};
    void output() const {};
    void genMachineCode(AsmBuilder*){};
};

class AllocaInstruction : public Instruction {
   public:
    AllocaInstruction(Operand* dst,
                      SymbolEntry* se,
                      BasicBlock* insert_bb = nullptr);
    ~AllocaInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);

   private:
    SymbolEntry* se;
};

class LoadInstruction : public Instruction {
   public:
    LoadInstruction(Operand* dst,
                    Operand* src_addr,
                    BasicBlock* insert_bb = nullptr);
    ~LoadInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
};

class StoreInstruction : public Instruction {
   public:
    StoreInstruction(Operand* dst_addr,
                     Operand* src,
                     BasicBlock* insert_bb = nullptr);
    ~StoreInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
};

class BinaryInstruction : public Instruction {
   public:
    BinaryInstruction(unsigned opcode,
                      Operand* dst,
                      Operand* src1,
                      Operand* src2,
                      BasicBlock* insert_bb = nullptr);
    ~BinaryInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    enum { SUB, ADD, AND, OR, MUL, DIV, MOD };
};

class CmpInstruction : public Instruction {
   public:
    CmpInstruction(unsigned opcode,
                   Operand* dst,
                   Operand* src1,
                   Operand* src2,
                   BasicBlock* insert_bb = nullptr);
    ~CmpInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
    enum { E, NE, L, LE, G, GE };
};

// unconditional branch
class UncondBrInstruction : public Instruction {
   public:
    UncondBrInstruction(BasicBlock*, BasicBlock* insert_bb = nullptr);
    void output() const;
    void setBranch(BasicBlock*);
    BasicBlock* getBranch();
    void genMachineCode(AsmBuilder*);

   protected:
    BasicBlock* branch;
};

// conditional branch
class CondBrInstruction : public Instruction {
   public:
    CondBrInstruction(BasicBlock*,
                      BasicBlock*,
                      Operand*,
                      BasicBlock* insert_bb = nullptr);
    ~CondBrInstruction();
    void output() const;
    void setTrueBranch(BasicBlock*);
    BasicBlock* getTrueBranch();
    void setFalseBranch(BasicBlock*);
    BasicBlock* getFalseBranch();
    void genMachineCode(AsmBuilder*);

   protected:
    BasicBlock* true_branch;
    BasicBlock* false_branch;
};

class RetInstruction : public Instruction {
   public:
    RetInstruction(Operand* src, BasicBlock* insert_bb = nullptr);
    ~RetInstruction();
    void output() const;
    void genMachineCode(AsmBuilder*);
};

class CallInstruction : public Instruction {
   private:
    SymbolEntry* func;
    Operand* dst;

   public:
    CallInstruction(Operand *dst, SymbolEntry *func, std::vector<Operand *> params, BasicBlock *insert_bb = nullptr) : Instruction(CALL, insert_bb), func(func), dst(dst)
    {
        operands.push_back(dst);
        if (dst)
            dst->setDef(this);
        for (auto param : params){
            operands.push_back(param);
            param->addUse(this);
        }
    }
    ~CallInstruction(){
        operands[0]->setDef(nullptr);
        if (operands[0]->usersNum() == 0)
            delete operands[0];
        for (long unsigned int i = 1; i < operands.size(); i++)
            operands[i]->removeUse(this);
    };

    void output()const{};
    void genMachineCode(AsmBuilder*);
};

class XorInstruction : public Instruction {
   public:
    // xor instruction, 用于not取反情况, if a is a bool var,i wanna !a, we use a xor 1.
    XorInstruction(Operand *dst, Operand *src, BasicBlock *insert_bb = nullptr) : Instruction(XOR, insert_bb){
        operands.push_back(dst);
        operands.push_back(src);
        dst->setDef(this);
        src->addUse(this);
    }
    ~XorInstruction(){
        operands[0]->setDef(nullptr);
        if (operands[0]->usersNum() == 0)
            delete operands[0];
        operands[1]->removeUse(this);
    };
    void genMachineCode(AsmBuilder*);
    void output()const{};
};

class GepInstruction : public Instruction {
   private:
    Operand* init; //init存储要被初始化的具体地址
    bool paramFirst;
    bool first;
   public:
    // 用于数组寻址
    GepInstruction(Operand *dst, Operand *arr, Operand *idx, BasicBlock *insert_bb = nullptr, bool paramFirst = false) : Instruction(GEP, insert_bb), paramFirst(paramFirst){
        operands.push_back(dst);
        operands.push_back(arr);
        operands.push_back(idx);
        dst->setDef(this);
        arr->addUse(this);
        idx->addUse(this);
        // 最终代码生成部分
        first = false;
        init = nullptr;
    }
    ~GepInstruction(){
        operands[0]->setDef(nullptr);
        if (operands[0]->usersNum() == 0)
            delete operands[0];
        operands[1]->removeUse(this);
        operands[2]->removeUse(this);
    };
    void output()const{};
    void genMachineCode(AsmBuilder*);
    void setFirst() { first = true; };
    Operand* getInit() const { return init; };
    void setInit(Operand* init) { this->init = init; };

};

#endif