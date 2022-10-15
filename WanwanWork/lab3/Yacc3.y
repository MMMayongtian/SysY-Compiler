%{
/*************************
Yacc.y
YACC file
Date: 2022/10/6
Todo: 符号表
***************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex ();
//变量名
char idStr[50];
//标识符数组 存放所有输入的变量
char* idTable[50];
//标识符对应的值
double intTable[50];
int tableLen = -1;
//寻找变量是否已经存在
int find(char* str){   
    for(int i=0;i<=tableLen;i++){
        //strcmp比较两个字符串的大小，一个字符一个字符比较，按ASCLL码比较
        if(!strcmp(str,idTable[i])){
            printf("输入变量存在于idtable\n");
            return i;
        }
    }
     printf("输入变量不存在\n");
    return -1;
}
extern int yyparse();
FILE* yyin ;
void yyerror(const char* s );
%}

%token ID
%token NUMBER
%token ADD SUB
%token MUL DIV
%token LEFTP RIGHTP
%token EQUAL
%token RESULT
%left ADD SUB
%left MUL DIV
%left LE RE
%right UMINUS
%%
//result表示被赋值的变量
//出现在表达式里的id（=右）

lines   :   lines assign ';' {printf("输出lines assign\n");}
        |   lines expr ';' { printf("输出lines expr  %f\n", $2);}
        |   lines ';'{ printf("lines\n");}
        |
        ;
            //支持连等
assign  :   RESULT EQUAL assign {intTable[(int)$1] = $3;
                                $$ = $3;printf("RESULT EQUAL assign\n");}
        |   expr //支持表达式赋值
        ;

expr    :   expr ADD expr { $$ = $1 + $3; }
        |   expr SUB expr { $$ = $1 - $3; }
        |   expr MUL expr { $$ = $1 * $3; }
        |   expr DIV expr { $$ = $1 / $3; }
        |   LEFTP expr RIGHTP { $$ = $2; }
        |   SUB expr %prec UMINUS { $$ = -$2; }
        |   NUMBER { $$ = $1; }
        |   ID { $$ = intTable[(int)$1]; printf("expr->id\n");}
        ;
%%
    
int yylex()
{
    // place your token retrieving code here
    int t;
    while(1) {
        t = getchar();
        if(t == ' ' || t =='\t' || t == '\n') {
            //do nothing
             
        } else if ((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_')){
            //输入变量
            int ti=0;
            while ((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_') || (t >= '0' && t <= '9')) {
               idStr[ti] = t;
                ti++;
                t = getchar();
            }
            idStr[ti] = '\0';
            //输入变量是否存在
            int index = find(idStr);
            //不存在
            if(index == -1){
                //printf("index == -1\n");
                tableLen++;
                //printf("tableLen++;tablelen=%d\n",tableLen);
                idTable[tableLen] = (char*)malloc(50 * sizeof(char));
                strcpy(idTable[tableLen],idStr);
                printf("idTable[tableLen]=%s\n",idTable[tableLen]);
                //赋值为0（未定义变量）
                intTable[tableLen]=0;
                yylval = tableLen;
            }else{
                //存在
                yylval = index;
            }
            while(t == ' ' || t =='\t' || t == '\n'){
                t=getchar();
            }
            ungetc(t,stdin);
            if(t=='='){
                printf("RESULT！\n");
                return RESULT;
            }
            else{
                return ID;
            }
        } else if (isdigit(t)) {
            yylval = 0;
            while(isdigit(t)) {
                yylval = yylval * 10 + t - '0';
                t = getchar();
            }
            ungetc(t,stdin);
            return NUMBER;
        } 
        else if(t=='='){printf("else if =");return EQUAL;}
        else if(t=='+'){return ADD;}
        else if(t=='-'){return SUB;}
        else if(t=='*'){return MUL;}
        else if(t=='/'){return DIV;}
        else if(t=='('){return LE;}
        else if(t==')'){return RE;}
        else{return t;}
    }
    
}


int main(void)
{
    yyin = stdin ;
    do {
        yyparse();
    } while (! feof (yyin));
        return 0;
}
void yyerror(const char* s) {
    fprintf (stderr , "Parse error : %s\n", s );
    exit (1);
}