#include "Type.h"
#include <assert.h>
#include <iostream>
#include <sstream>

IntType TypeSystem::commonInt = IntType(4);
IntType TypeSystem::commonConstInt = IntType(4, true);
VoidType TypeSystem::commonVoid = VoidType();

Type* TypeSystem::intType = &commonInt;
Type* TypeSystem::constIntType = &commonConstInt;
Type* TypeSystem::voidType = &commonVoid;

std::string IntType::toStr() {
    if (constant)
        return "const int";
    else
        return "int";
}

std::string VoidType::toStr() {
    return "void";
}

std::string FunctionType::toStr() {
    std::ostringstream buffer;
    buffer << returnType->toStr() << "(";
    for (auto it = paramsType.begin(); it != paramsType.end(); it++) {
        buffer << (*it)->toStr();
        if (it + 1 != paramsType.end())
            buffer << ", ";
    }
    buffer << ')';
    return buffer.str();
}
