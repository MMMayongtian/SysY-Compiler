%code top{
    #include <iostream>
    #include <assert.h>
    #include "parser.h"
    #include <cstring>
    #include <stack>
    extern Ast ast;

    int yylex();
    int yyerror(char const*);
    ArrayType* arrayType;
    int arrayIndex;
    int* arrayValue;
    Type* dtype;
    std::stack<InitValueListExpr*> stk;
    std::stack<StmtNode*> whileStk;
    InitValueListExpr* top;
    int leftCnt = 0;
    int paramNo = 0;
    #include <iostream>
}

%code requires {
    #include "Ast.h"
    #include "SymbolTable.h"
    #include "Type.h"
}

%union {
    int itype;
    double ftype;
    char* strtype;
    StmtNode* stmttype;
    ExprNode* exprtype;
    Type* type;
    SymbolEntry* se;
}

%start Program
%token <strtype> ID
%token <itype> INTEGER
%token <ftype> FLOATING
%token IF ELSE WHILE
%token INT VOID FLOAT
%token LPAREN RPAREN LBRACE RBRACE SEMICOLON LBRACKET RBRACKET COMMA  
%token ADD SUB MUL DIV MOD OR AND LESS LESSEQUAL GREATER GREATEREQUAL ASSIGN EQUAL NOTEQUAL NOT
%token CONST
%token RETURN CONTINUE BREAK

%type<stmttype> Stmts Stmt AssignStmt ExprStmt BlockStmt DeclStmt BlankStmt 
%type<stmttype> IfStmt WhileStmt ReturnStmt BreakStmt ContinueStmt 
%type<stmttype> FuncDef VarDefList ConstDefList VarDef ConstDef 
%type<stmttype> FuncFParam FuncFParams OptFuncFParams 
%type<exprtype> Exp Cond AddExp LOrExp PrimaryExp LVal RelExp LAndExp MulExp ConstExp EqExp UnaryExp 
%type<exprtype> ArrayInit ConstArrayInit ArrayInitLIst ConstArrayInitLIst FuncArrayIndices FuncRParams Array
%type<type> Type

%precedence THEN
%precedence ELSE
%%
Program
    : Stmts {
        ast.setRoot($1);
    }
    ;
Stmts
    : Stmt {$$=$1;}
    | Stmts Stmt{
        $$ = new SeqNode($1, $2);
    }
    ;
Stmt
    : BlockStmt {$$=$1;}
    | BlankStmt {$$ = $1;}
    | AssignStmt {$$=$1;}
    | ExprStmt {$$ = $1;}
    | IfStmt {$$ = $1;}
    | WhileStmt {$$ = $1;}
    | BreakStmt { $$=$1; }
    | ContinueStmt { $$=$1; }
    | ReturnStmt {$$ = $1;}
    | DeclStmt {$$ = $1;}
    | FuncDef {$$ = $1;}
    ;
BlockStmt
    : LBRACE RBRACE {
        $$ = new CompoundStmt();
    }
    | LBRACE {
        identifiers = new SymbolTable(identifiers);
    } 
      Stmts RBRACE {
        $$ = new CompoundStmt($3);
        SymbolTable* temp = identifiers;
        identifiers = identifiers->getPrev();
        delete temp;
    }
    ;    
BlankStmt
    : SEMICOLON {
        $$ = new BlankStmt();
    }
    ;    
AssignStmt
    : LVal ASSIGN Exp SEMICOLON {
        $$ = new AssignStmt($1, $3);
    }
    ;
 
ExprStmt
    : Exp SEMICOLON {
        $$ = new ExprStmt($1);
    }
    ;

IfStmt
    : IF LPAREN Cond RPAREN Stmt %prec THEN {
        $$ = new IfStmt($3, $5);
    }
    | IF LPAREN Cond RPAREN Stmt ELSE Stmt {
        $$ = new IfElseStmt($3, $5, $7);
    }
    ;
WhileStmt
    : WHILE LPAREN Cond RPAREN {
        WhileStmt *whileNode = new WhileStmt($3);
        $<stmttype>$ = whileNode;
        whileStk.push(whileNode);
    }
    Stmt {
        StmtNode *whileNode = $<stmttype>5; 
        ((WhileStmt*)whileNode)->setStmt($6);
        $$=whileNode;
        whileStk.pop();
    }
    ;
BreakStmt
    : BREAK SEMICOLON {
        $$ = new BreakStmt(whileStk.top());
    }
    ;
ContinueStmt
    : CONTINUE SEMICOLON {
        $$ = new ContinueStmt(whileStk.top());
    }
    ;
ReturnStmt
    : RETURN SEMICOLON {
        $$ = new ReturnStmt();
    }
    | RETURN Exp SEMICOLON {
        $$ = new ReturnStmt($2);
    }
    ;
Cond
    :
    LOrExp {$$ = $1;}
    ;
LOrExp
    : LAndExp {$$ = $1;}
    | LOrExp OR LAndExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::OR, $1, $3);
    }
    ;
LAndExp
    : EqExp {$$ = $1;}
    | LAndExp AND EqExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::AND, $1, $3);
    }
    ;
EqExp
    : RelExp {$$ = $1;}
    | EqExp EQUAL RelExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::EQUAL, $1, $3);
    }
    | EqExp NOTEQUAL RelExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::NOTEQUAL, $1, $3);
    }
    ;    
RelExp
    : AddExp {
        $$ = $1;
    }
    | RelExp LESS AddExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::LESS, $1, $3);
    }
    | RelExp LESSEQUAL AddExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::LESSEQUAL, $1, $3);
    }
    | RelExp GREATER AddExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::GREATER, $1, $3);
    }
    | RelExp GREATEREQUAL AddExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::GREATEREQUAL, $1, $3);
    }
    ;    
Exp
    :
    AddExp {$$ = $1;}
    ;
ConstExp
    : AddExp {$$ = $1;}
    ;    
AddExp
    : MulExp {$$ = $1;}
    | AddExp ADD MulExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::ADD, $1, $3);
    }
    | AddExp SUB MulExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::SUB, $1, $3);
    }
    ;
MulExp
    : UnaryExp {$$ = $1;}
    | MulExp MUL UnaryExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::MUL, $1, $3);
    }
    | MulExp DIV UnaryExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::DIV, $1, $3);
    }
    | MulExp MOD UnaryExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::MOD, $1, $3);
    }
    ;
UnaryExp 
    : PrimaryExp {$$ = $1;}
    | ID LPAREN FuncRParams RPAREN {
        $$ = new CallExpr(identifiers->lookup($1), $3);
    }
    | ID LPAREN RPAREN {
        $$ = new CallExpr(identifiers->lookup($1));
    }
    | ADD UnaryExp {$$ = $2;}
    | SUB UnaryExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        $$ = new UnaryExpr(se, UnaryExpr::SUB, $2);
    }
    | NOT UnaryExp {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        $$ = new UnaryExpr(se, UnaryExpr::NOT, $2);
    }
    ;
PrimaryExp
    : LPAREN Exp RPAREN {
        $$ = $2;
    }
    | LVal {
        $$ = $1;
    }
    | INTEGER {
        SymbolEntry* se = new ConstantSymbolEntry(TypeSystem::intType, $1);
        $$ = new Constant(se);
    }
    | FLOATING {
        SymbolEntry* se = new ConstantSymbolEntry(TypeSystem::intType, $1);
        $$ = new Constant(se);
    }
    ;
LVal
    : ID {
        $$ = new Id(identifiers->lookup($1));
        delete []$1;
    }
    | ID Array{
        $$ = new Id(identifiers->lookup($1), $2);
        delete []$1;
    }
    ;        
Type
    : INT {
        dtype = TypeSystem::intType;
        $$ = dtype;
    }
    | VOID {
        dtype = TypeSystem::voidType;
        $$ = dtype;
    }
    | FLOAT {
        //dtype = TypeSystem::floatType;
        $$ = dtype;
    }
    ;
FuncRParams 
    : Exp {$$ = $1;}
    | FuncRParams COMMA Exp {
        $$ = $1;
        $$->setNext($3);
    }

DeclStmt
    : Type VarDefList SEMICOLON {$$ = $2;}
    | CONST Type ConstDefList SEMICOLON {$$ = $3;}
    ;
VarDefList
    : VarDefList COMMA VarDef {
        $1->setNext($3);
        $$ = $1;
    } 
    | VarDef {$$ = $1;}
    ;
ConstDefList
    : ConstDefList COMMA ConstDef {
        $1->setNext($3);
        $$ = $1;
    }
    | ConstDef {$$ = $1;}
    ;
VarDef
    : ID {
        SymbolEntry* se = new IdentifierSymbolEntry(TypeSystem::intType, $1, identifiers->getLevel());
        identifiers->install($1, se);
        $$ = new DeclStmt(new Id(se));
        delete []$1;
    }
    | ID ASSIGN Exp {
        IdentifierSymbolEntry* se = new IdentifierSymbolEntry(TypeSystem::intType, $1, identifiers->getLevel());
        se->setValue($3->getValue());
        identifiers->install($1, se);
        $$ = new DeclStmt(new Id(se), $3);
        delete []$1;
    }
    | ID Array {
        std::vector<int> arrayDim; // 用于存储数组维度
        ExprNode* arrayDecl = $2;  // 数组索引[4][3][5] 存储顺序 4->3->5
        while (arrayDecl) { // 需要从最低维度开始 往高维生成ArrayType 5->3->4 
            arrayDim.push_back(arrayDecl->getValue());
            arrayDecl = (ExprNode*)(arrayDecl->getNext());
        }
        //从最低维开始 生成ArrayType  ....ArrayType[ArrayType[IntType]]....
        ArrayType* tempType = new ArrayType(dtype, arrayDim.back());
        arrayDim.pop_back();
        while (!arrayDim.empty()) {
            tempType = new ArrayType(tempType, arrayDim.back());
            arrayDim.pop_back();
        }
        IdentifierSymbolEntry* se = new IdentifierSymbolEntry(tempType, $1, identifiers->getLevel());
        int *p = new int[tempType->getSize()];
        se->setArrayValue(p);
        identifiers->install($1, se);
        $$ = new DeclStmt(new Id(se));
        delete []$1;
    }
    | ID Array ASSIGN {
        std::vector<int> arrayDim;
        ExprNode* arrayDecl = $2;
        while (arrayDecl) {
            arrayDim.push_back(arrayDecl->getValue());
            arrayDecl = (ExprNode*)(arrayDecl->getNext());
        }
        ArrayType* tempType = new ArrayType(dtype, arrayDim.back());
        arrayDim.pop_back();
        while (!arrayDim.empty()) {
            tempType = new ArrayType(tempType, arrayDim.back());
            arrayDim.pop_back();
        }
        SymbolEntry* se = new IdentifierSymbolEntry(tempType, $1, identifiers->getLevel());
        arrayValue = new int[tempType->getSize()];
        std::stack<InitValueListExpr*>().swap(stk);
        arrayType = tempType;
        arrayIndex = 0;
        $<se>$ = se;
    }
      ArrayInit {
        ((IdentifierSymbolEntry*)$<se>4)->setArrayValue(arrayValue);
        identifiers->install($1, $<se>4);
        $$ = new DeclStmt(new Id($<se>4), $5);
        delete []$1;
    }
    ;
ConstDef
    : ID ASSIGN ConstExp {
        IdentifierSymbolEntry* se = new IdentifierSymbolEntry(TypeSystem::constIntType, $1, identifiers->getLevel());
        se->setConst();
        se->setValue($3->getValue());
        identifiers->install($1, se);
        $$ = new DeclStmt(new Id(se), $3);
        delete []$1;
    }
    | ID Array ASSIGN  {
        std::vector<int> arrayDim;
        ExprNode* arrayDecl = $2;
        while (arrayDecl) {
            arrayDim.push_back(arrayDecl->getValue());
            arrayDecl = (ExprNode*)(arrayDecl->getNext());
        }
        if(dtype == TypeSystem::intType){
            dtype = TypeSystem::constIntType;
        }
        ArrayType* tempType = new ArrayType(dtype, arrayDim.back());
        arrayDim.pop_back();
        while (!arrayDim.empty()) {
            tempType = new ArrayType(tempType, arrayDim.back());
            arrayDim.pop_back();
        }
        SymbolEntry* se = new IdentifierSymbolEntry(tempType, $1, identifiers->getLevel());
        ((IdentifierSymbolEntry*)se)->setConst();
        arrayValue = new int[tempType->getSize()];
        std::stack<InitValueListExpr*>().swap(stk);
        arrayType = tempType;
        arrayIndex = 0;
        $<se>$ = se;
    }
      ConstArrayInit {
        ((IdentifierSymbolEntry*)$<se>4)->setArrayValue(arrayValue);
        identifiers->install($1, $<se>4);
        $$ = new DeclStmt(new Id($<se>4), $5);
        delete []$1;
    } 
    ;
Array
    : LBRACKET ConstExp RBRACKET {
        $$ = $2;
    }
    | Array LBRACKET ConstExp RBRACKET {
        $$ = $1;
        $1->setNext($3);
    }
    ;

ArrayInit //数组的初始化 多维且不知长度 用多维链表来存储
    : Exp {
        arrayValue[arrayIndex++] = $1->getValue();
        //进入某{}中  获取当前正在处理的{}的ArrayType 存储在top中
        Type* arrTy = stk.top()->getSymbolEntry()->getType();
        while(arrTy){
            //如果当前是在最低维(或是找到的最低维)  即当前维度的元素为IntType 则将Exp加入树中
            if(((ArrayType*)arrTy)->getElementType() == TypeSystem::intType){
                stk.top()->addExpr($1); //加入树中
                // 每个括号都用一个initListExp存
                // 每进一层{} stk中多一个InitListExp子结点 leftCnt++
                // 若到达} 即当前{}处理完毕 { {|}, {3,4}  }
                // 将stk中已经赋值满的子结点pop出  且栈中剩下的节点数不能少于当前 "{" 数相同
                // 即回退到倒数第二维 通过else部分再次进入最低维的第二个数组
                while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                    arrTy = ((ArrayType*)arrTy)->getArrayType();
                    stk.pop();
                }
                break;
            }else{ // 不是在最低维 即出现了用Exp初始化某一维度的情况 只赋值第一个数
                // 例如 a[3][4] = {Exp} top->getType为ArrayType getElementType还是ArrayType
                // 获取元素类型 假设再次进入一个{} 新增一个InitValueListExpr 尝试找到最低维来赋值
                arrTy = ((ArrayType*)arrTy)->getElementType();
                SymbolEntry* se = new ConstantSymbolEntry(arrTy);
                InitValueListExpr* list = new InitValueListExpr(se);
                stk.top()->addExpr(list);
                stk.push(list);
            }
        }
    }
    | LBRACE RBRACE {
        if(stk.empty()){//整个数组初始化为空 {} 初始化完毕
            arrayIndex += arrayType->getSize() / 32;
            SymbolEntry* se = new ConstantSymbolEntry(arrayType);
            ExprNode* list = new InitValueListExpr(se);
            $$ = list;
        } else {// 当前维度为空 {} 
            // top存储当前正在初始化的维度的ArrayType 
            // 如 a[5][4] = {|{1,2},{2,3},{4,4}} 此时top为 ArrayType[ArrayType[IntType]] 
            // a[5][4] = {{1,|2},{2,3},{4,4}} 此时top为 ArrayType[IntType] 
            // 获取当前正在初始化的元素类型(即top的元素type) 将其全都赋值为空
            ArrayType* arrTy = (ArrayType*)stk.top()->getSymbolEntry()->getType();
            Type* type = arrTy->getElementType();
            arrayIndex += type->getSize() / 32;
            SymbolEntry* se = new ConstantSymbolEntry(type);
            ExprNode* list = new InitValueListExpr(se);
            stk.top()->addExpr(list);
            // 每个括号都用一个initListExp存
            // 每进一层{} stk中多一个InitListExp子结点 leftCnt++
            // 若到达} 即当前{}处理完毕 { {|}, {3,4}  }
            // 将stk中已经赋值满的子结点pop出  且栈中剩下的节点数不能少于当前 "{" 数相同
            // 即回退到当前初始化维度的上一维 并寻找其(也是当前维的)下一个元素
            while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                stk.pop();
            }
            $$ = list;
        }
    }
    | LBRACE {
        // top存储当前正在初始化的维度的ArrayType 
        // 如 a[5][4] = {|{1,2},{2,3},{4,4}} 此时top为 ArrayType[ArrayType[IntType]] 
        // a[5][4] = {{1,|2},{2,3},{4,4}} 此时top为 ArrayType[IntType] 

        // 如果当前栈为空 则第一次进入{} arrayType即为ASSIGN前面的Type
        // 如果不为空 则获取top节点的ArrayType 即当前要进行初始化维度的Array类型
        if(!stk.empty()){
            ArrayType* topType = (ArrayType*)stk.top()->getSymbolEntry()->getType(); //{ {}, {} }外层括号的类型
            arrayType = (ArrayType*)topType->getElementType();//即为该{}的类型
        }
        SymbolEntry* se = new ConstantSymbolEntry(arrayType);
        // 之后开始初始化当前维度的元素 即进入下一层
        // 若为不为IntType说明下一层不会直接进入Exp 而是进入{} 
        // 此时arrayType应当为下一层{}的类型
        if(arrayType->getElementType() != TypeSystem::intType){
            arrayType = (ArrayType*)(arrayType->getElementType());
        }
        // 为要进入的{}新建一个InitListExp
        InitValueListExpr* expr = new InitValueListExpr(se);
        if(!stk.empty()) //若stk中有节点 需要add
            stk.top()->addExpr(expr);
        stk.push(expr); //压栈
        $<exprtype>$ = expr;
        leftCnt++; //“{”计数加
    } 
      ArrayInitLIst RBRACE {
        leftCnt--;  //“{”计数减
        $$ = $<exprtype>2;
        //{{},{}} 当前(内层){}已经初始化完毕 回退到上一维度的状态  即继续初始化(外层){}内的元素
        while(stk.size() != (long unsigned int)(leftCnt)){
            stk.pop();
        }
        int size = ((ArrayType*)($$->getSymbolEntry()->getType()))->getSize()/ 32;
        arrayIndex += size - arrayIndex % size; //round
    }
    ;

ConstArrayInit
    : ConstExp {
        arrayValue[arrayIndex++] = $1->getValue();
        //进入某{}中  获取当前正在处理的{}的ArrayType 存储在top中
        Type* arrTy = stk.top()->getSymbolEntry()->getType();
        while(arrTy){
            //如果当前是在最低维(或是找到的最低维)  即当前维度的元素为IntType 则将Exp加入树中
            if(((ArrayType*)arrTy)->getElementType() == TypeSystem::constIntType){
                stk.top()->addExpr($1); //加入树中
                // 每个括号都用一个initListExp存
                // 每进一层{} stk中多一个InitListExp子结点 leftCnt++
                // 若到达} 即当前{}处理完毕 { {|}, {3,4}  }
                // 将stk中已经赋值满的子结点pop出  且栈中剩下的节点数不能少于当前 "{" 数相同
                // 即回退到倒数第二维 通过else部分再次进入最低维的第二个数组
                while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                    arrTy = ((ArrayType*)arrTy)->getArrayType();
                    stk.pop();
                }
                break;
            }else{ // 不是在最低维 即出现了用Exp初始化某一维度的情况 只赋值第一个数
                // 例如 a[3][4] = {Exp} top->getType为ArrayType getElementType还是ArrayType
                // 获取元素类型 假设再次进入一个{} 新增一个InitValueListExpr 尝试找到最低维来赋值
                arrTy = ((ArrayType*)arrTy)->getElementType();
                SymbolEntry* se = new ConstantSymbolEntry(arrTy);
                InitValueListExpr* list = new InitValueListExpr(se);
                stk.top()->addExpr(list);
                stk.push(list);
            }
        }
    }
    | LBRACE RBRACE {
        if(stk.empty()){//整个数组初始化为空 {} 初始化完毕
            arrayIndex += arrayType->getSize() / 32;
            SymbolEntry* se = new ConstantSymbolEntry(arrayType);
            ExprNode* list = new InitValueListExpr(se);
            $$ = list;
        } else {// 当前维度为空 {} 
            // top存储当前正在初始化的维度的ArrayType 
            // 如 a[5][4] = {|{1,2},{2,3},{4,4}} 此时top为 ArrayType[ArrayType[IntType]] 
            // a[5][4] = {{1,|2},{2,3},{4,4}} 此时top为 ArrayType[IntType] 
            // 获取当前正在初始化的元素类型(即top的元素type) 将其全都赋值为空
            ArrayType* arrTy = (ArrayType*)stk.top()->getSymbolEntry()->getType();
            Type* type = arrTy->getElementType();
            arrayIndex += type->getSize() / 32;
            SymbolEntry* se = new ConstantSymbolEntry(type);
            ExprNode* list = new InitValueListExpr(se);
            stk.top()->addExpr(list);
            // 每个括号都用一个initListExp存
            // 每进一层{} stk中多一个InitListExp子结点 leftCnt++
            // 若到达} 即当前{}处理完毕 { {|}, {3,4}  }
            // 将stk中已经赋值满的子结点pop出  且栈中剩下的节点数不能少于当前 "{" 数相同
            // 即回退到当前初始化维度的上一维 并寻找其(也是当前维的)下一个元素
            while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                stk.pop();
            }
            $$ = list;
        }
    }
    | LBRACE {
        // top存储当前正在初始化的维度的ArrayType 
        // 如 a[5][4] = {|{1,2},{2,3},{4,4}} 此时top为 ArrayType[ArrayType[IntType]] 
        // a[5][4] = {{1,|2},{2,3},{4,4}} 此时top为 ArrayType[IntType] 

        // 如果当前栈为空 则第一次进入{} arrayType即为ASSIGN前面的Type
        // 如果不为空 则获取top节点的ArrayType 即当前要进行初始化维度的Array类型
        if(!stk.empty()){
            ArrayType* topType = (ArrayType*)stk.top()->getSymbolEntry()->getType(); //{ {}, {} }外层括号的类型
            arrayType = (ArrayType*)topType->getElementType();//即为该{}的类型
        }
        SymbolEntry* se = new ConstantSymbolEntry(arrayType);
        // 之后开始初始化当前维度的元素 即进入下一层
        // 若为不为IntType说明下一层不会直接进入Exp 而是进入{} 
        // 此时arrayType应当为下一层{}的类型
        if(arrayType->getElementType() != TypeSystem::constIntType){
            arrayType = (ArrayType*)(arrayType->getElementType());
        }
        // 为要进入的{}新建一个InitListExp
        InitValueListExpr* expr = new InitValueListExpr(se);
        if(!stk.empty()) //若stk中有节点 需要add
            stk.top()->addExpr(expr);
        stk.push(expr); //压栈
        $<exprtype>$ = expr;
        leftCnt++; //“{”计数加
    } 
      ConstArrayInitLIst RBRACE {
        $$ = $<exprtype>2;
        leftCnt--;  //“{”计数减
        //{{},{}} 当前(内层){}已经初始化完毕 回退到上一维度的状态  即继续初始化(外层){}内的元素
        while(stk.size() != (long unsigned int)(leftCnt)){
            stk.pop();
        }
        // while(stk.top() != $<exprtype>2 && stk.size() > (long unsigned int)(leftCnt + 1))
        //     stk.pop();
        // if(stk.top() == $<exprtype>2)
        //     stk.pop();
        // if(!stk.empty())
        //     while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
        //         stk.pop();
        //     }
        int size = ((ArrayType*)($$->getSymbolEntry()->getType()))->getSize()/ 32;
        while(arrayIndex % size != 0)
            arrayValue[arrayIndex++] = 0;
        if(!stk.empty())
            arrayType = (ArrayType*)(((ArrayType*)(stk.top()->getSymbolEntry()->getType()))->getElementType());
    }
    ;

    
ArrayInitLIst
    : ArrayInit {
        $$ = $1;
    }
    | ArrayInitLIst COMMA ArrayInit {
        $$ = $1;
    }
    ;
ConstArrayInitLIst
    : ConstArrayInit {
        $$ = $1;
    }
    | ConstArrayInitLIst COMMA ConstArrayInit {
        $$ = $1;
    }
    ;
FuncDef
    :
    Type ID {
        paramNo = 0;
        identifiers = new SymbolTable(identifiers);
    }
    LPAREN OptFuncFParams RPAREN {
        std::vector<Type*> paramsType;
        std::vector<SymbolEntry*> paramsSe;
        DeclStmt* temp = (DeclStmt*)$5;
        while(temp){
            paramsType.push_back(temp->getId()->getSymbolEntry()->getType());
            paramsSe.push_back(temp->getId()->getSymbolEntry());
            temp = (DeclStmt*)(temp->getNext());
        }
        Type* funcType = new FunctionType($1, paramsType, paramsSe);
        SymbolEntry* se = new IdentifierSymbolEntry(funcType, $2, identifiers->getPrev()->getLevel());
        identifiers->getPrev()->install($2, se);
        $<se>$ = se; 
    } 
    BlockStmt {
        $$ = new FunctionDef($<se>7, (DeclStmt*)$5, $8);
        SymbolTable* temp = identifiers;
        identifiers = identifiers->getPrev();
        delete temp;
        delete []$2;
    }
    ;
OptFuncFParams
    : FuncFParams {$$ = $1;}
    | %empty {$$ = nullptr;}
FuncFParams
    : FuncFParams COMMA FuncFParam {
        $$ = $1;
        $$->setNext($3);
    }
    | FuncFParam {
        $$ = $1;
    }
    ;
FuncFParam
    : Type ID {
        SymbolEntry* se;
        se = new IdentifierSymbolEntry($1, $2, identifiers->getLevel(), paramNo++);
        identifiers->install($2, se);
        ((IdentifierSymbolEntry*)se)->setLabel();
        ((IdentifierSymbolEntry*)se)->setAddr(new Operand(se));
        $$ = new DeclStmt(new Id(se));
        delete []$2;
    }
    | Type ID FuncArrayIndices {
        std::vector<int> arrayDim;
        ExprNode* arrayDecl = $3;
        while(arrayDecl){
            arrayDim.push_back(arrayDecl->getValue());
            arrayDecl = (ExprNode*)(arrayDecl->getNext());
        }
        //从最低维开始生成
        ArrayType* tempType = new ArrayType(dtype,arrayDim.back());
        arrayDim.pop_back();
        while(!arrayDim.empty()){
            tempType = new ArrayType(tempType, arrayDim.back());
            arrayDim.pop_back();
        }
        IdentifierSymbolEntry* se = new IdentifierSymbolEntry(tempType, $2, identifiers->getLevel(), paramNo++);
        se->setLabel();
        se->setAddr(new Operand(se));
        identifiers->install($2, se);
        $$ = new DeclStmt(new Id(se));
        delete []$2;
    }
    ;
FuncArrayIndices 
    : LBRACKET RBRACKET {
        $$ = new ExprNode(nullptr);
    }
    | FuncArrayIndices LBRACKET Exp RBRACKET {
        $$ = $1;
        $$->setNext($3);
    }
%%

int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
