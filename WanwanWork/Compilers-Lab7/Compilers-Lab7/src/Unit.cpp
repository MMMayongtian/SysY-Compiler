#include "Unit.h"
#include <algorithm>
#include <stack>
#include <string>
#include "Ast.h"
#include "SymbolTable.h"
#include "Type.h"
extern FILE* yyout;

void Unit::insertFunc(Function* f) {
    func_list.push_back(f);
}

void Unit::removeFunc(Function* func) {
    func_list.erase(std::find(func_list.begin(), func_list.end(), func));
}

void Unit::insertGlobal(SymbolEntry* se) {
    global_list.push_back(se);
}

void Unit::insertDeclare(SymbolEntry* se) {
    auto it = std::find(declare_list.begin(), declare_list.end(), se);
    if (it == declare_list.end()) {
        declare_list.push_back(se);
    }
}

void Unit::output() const {
    for (auto& func : func_list)
        func->output();

}

void Unit::genMachineCode(MachineUnit* munit) 
{
    AsmBuilder* builder = new AsmBuilder();
    builder->setUnit(munit);
    for (auto &func : func_list)
        func->genMachineCode(builder);
}

Unit::~Unit()
{
    for(auto &func:func_list)
        delete func;
}

