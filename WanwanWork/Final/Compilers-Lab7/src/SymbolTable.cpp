#include "SymbolTable.h"
#include <iostream>
#include <sstream>
#include "Type.h"

bool SymbolEntry::setNext(SymbolEntry* se) {
    SymbolEntry* s = this;
    long unsigned int cnt =
        ((FunctionType*)(se->getType()))->getParamsType().size();
    if (cnt == ((FunctionType*)(s->getType()))->getParamsType().size())
        return false;
    while (s->getNext()) {
        if (cnt == ((FunctionType*)(s->getType()))->getParamsType().size())
            return false;
        s = s->getNext();
    }
    if (s == this) {
        this->next = se;
    } else {
        s->setNext(se);
    }
    return true;
}

SymbolEntry::SymbolEntry(Type* type, int kind) {
    this->type = type;
    this->kind = kind;
}

ConstantSymbolEntry::ConstantSymbolEntry(Type* type, int value)
    : SymbolEntry(type, SymbolEntry::CONSTANT) {
    assert(type->isInt());
    this->value = value;
}

ConstantSymbolEntry::ConstantSymbolEntry(Type* type, std::string value)
    : SymbolEntry(type, SymbolEntry::CONSTANT) {
    assert(type->isString());
    this->strValue = value;
}

ConstantSymbolEntry::ConstantSymbolEntry(Type* type)
    : SymbolEntry(type, SymbolEntry::CONSTANT) {
}

int ConstantSymbolEntry::getValue() const {
    assert(type->isInt());
    return value;
}

std::string ConstantSymbolEntry::getStrValue() const {
    assert(type->isString());
    return strValue;
}

std::string ConstantSymbolEntry::toStr() {
    std::ostringstream buffer;
    if (type->isInt())
        buffer << value;
    else if (type->isString())
        buffer << strValue;
    return buffer.str();
}

IdentifierSymbolEntry::IdentifierSymbolEntry(Type* type,
                                             std::string name,
                                             int scope,
                                             int paramNo)
    : SymbolEntry(type, SymbolEntry::VARIABLE),
      name(name),
      paramNo(paramNo) {
    this->scope = scope;
    this->initial = false;
    this->label = -1;
    this->constant = false;
}

void IdentifierSymbolEntry::setValue(int value) {
    if (((IntType*)(this->getType()))->isConst()) {
        if (!initial) {
            this->value = value;
            initial = true;
        }
    } else {
        this->value = value;
    }
}

std::string IdentifierSymbolEntry::toStr() {
    std::ostringstream buffer;
    if (label < 0) {
        if (type->isFunc())
            buffer << '@';
        buffer << name;
    } else
        buffer << "%t" << label;
    return buffer.str();
}

TemporarySymbolEntry::TemporarySymbolEntry(Type* type, int label)
    : SymbolEntry(type, SymbolEntry::TEMPORARY) {
    this->label = label;
}

std::string TemporarySymbolEntry::toStr() {
    std::ostringstream buffer;
    buffer << "%t" << label;
    return buffer.str();
}

SymbolTable::SymbolTable() {
    prev = nullptr;
    level = 0;
}

SymbolTable::SymbolTable(SymbolTable* prev) {
    this->prev = prev;
    this->level = prev->level + 1;
}

SymbolEntry* SymbolTable::lookup(std::string name) {
    SymbolTable* table = this;
    while (table != nullptr)
        if (table->symbolTable.find(name) != table->symbolTable.end()) {
            return table->symbolTable[name];
        } else {
            table = table->prev;
        }
    return nullptr;
}

// install the entry into current symbol table.
bool SymbolTable::install(std::string name, SymbolEntry* entry) {
    // 检查是否重定义
    if (this->symbolTable.find(name) != this->symbolTable.end()) {
        SymbolEntry* se = this->symbolTable[name];
        if (se->getType()->isFunc())
            return se->setNext(entry);
        return false;
    } else {
        symbolTable[name] = entry;
        return true;
    }
}
void SymbolTable::init(){

    std::string name;
    IdentifierSymbolEntry *func;
    Type* funcType; 
    ArrayType* arrType;

    std::vector<Type*> paramsType;
    std::vector<SymbolEntry*> paramsSe;
    paramsType.push_back(TypeSystem::intType);

    name = "putint";
    funcType = new FunctionType(TypeSystem::voidType, paramsType,paramsSe);
    func = new IdentifierSymbolEntry(funcType, name, globals->getLevel(), -1);
    globals->install(name, func);

    name = "putch";
    funcType = new FunctionType(TypeSystem::voidType, paramsType,paramsSe);
    func = new IdentifierSymbolEntry(funcType, name, globals->getLevel(), -1);
    globals->install(name, func);

    std::vector<Type*> paramsType2;
    std::vector<SymbolEntry*> paramsSe2;

    name = "getint";
    funcType = new FunctionType(TypeSystem::intType, paramsType2,paramsSe2);
    func = new IdentifierSymbolEntry(funcType, name, globals->getLevel(), -1);
    globals->install(name, func);

    name = "getch";
    funcType = new FunctionType(TypeSystem::intType, paramsType2,paramsSe2);
    func = new IdentifierSymbolEntry(funcType, name, globals->getLevel(), -1);
    globals->install(name, func);

    name = "_sysy_starttime";
    funcType = new FunctionType(TypeSystem::voidType, paramsType2,paramsSe2);
    func = new IdentifierSymbolEntry(funcType, name, globals->getLevel(), -1);
    globals->install(name, func);

    name = "_sysy_stoptime";
    funcType = new FunctionType(TypeSystem::voidType, paramsType2,paramsSe2);
    func = new IdentifierSymbolEntry(funcType, name, globals->getLevel(), -1);
    globals->install(name, func);

    std::vector<Type*> paramsType3;
    std::vector<SymbolEntry*> paramsSe3;

    name = "putarray";
    paramsType3.push_back(TypeSystem::intType);
    paramsType3.push_back(new ArrayType(TypeSystem::intType, -1));
    funcType = new FunctionType(TypeSystem::voidType, paramsType3,paramsSe3);
    func = new IdentifierSymbolEntry(funcType, name, globals->getLevel(), -1);
    globals->install(name, func);

    name = "getarray";
    std::vector<Type*> paramsType4;
    paramsType4.push_back(new ArrayType(TypeSystem::intType, -1));
    funcType = new FunctionType(TypeSystem::intType, paramsType4,paramsSe3);
    func = new IdentifierSymbolEntry(funcType, name, globals->getLevel(), -1);
    globals->install(name, func);

}


int SymbolTable::counter = 0;
static SymbolTable t;
SymbolTable* identifiers = &t;
SymbolTable* globals = &t;
