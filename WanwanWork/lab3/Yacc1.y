%{
/*************************
Yacc1.y
YACC file
Date: 2022/10/6
Todo: 简单计算
***************************/
#include <stdio.h>
#include <stdlib.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex ();
extern int yyparse();
FILE* yyin ;
void yyerror(const char* s );
%}

%token NUMBER
%token ADD SUB
%token MUL DIV
%token LE RE
%left ADD SUB
%left MUL DIV
%right UMINUS

%%
//简单表达式以分号结束
lines   :   lines expr ';' { printf("%f\n", $2); }
        |   lines ';'
        |
        ;

expr    :   expr ADD expr { $$ = $1 + $3; }
        |   expr SUB expr { $$ = $1 - $3; }
        |   expr MUL expr { $$ = $1 * $3; }
        |   expr DIV expr { $$ = $1 / $3; }
        |   LE expr RE { $$ = $2; }
        |   SUB expr %prec UMINUS { $$ = -$2; }
        |   NUMBER 
        ;
//在 yacc 中由于声明的 token 都会有一个互不冲突的整数值，因此不需
//要在 yacc 中进行对 NUMBER 这种 token 进行显式的宏定义，只声
//明其为 token 即可。

// NUMBER  :  '0' { $$ = 0.0; }
//          | '1' { $$ = 1.0; }
//          | '2' { $$ = 2.0; }
//          | '3' { $$ = 3.0; }
//          | '4' { $$ = 4.0; }
//          | '5' { $$ = 5.0; }
//          | '6' { $$ = 6.0; }
//          | '7' { $$ = 7.0; }
//          | '8' { $$ = 8.0; }
//          | '9' { $$ = 9.0; }
//          ;
%%

    // programs section

int yylex()
{
    // place your token retrieving code here
   int t;
   while(1){
    t=getchar();
    if(t==' '||t=='\t'||t=='\n'){}
    else if(isdigit(t)){
    yylval=0;
    //自动定义的全局变量
    while(isdigit(t)){
        yylval=yylval*10+t-'0';
        t=getchar();
    }
    //将读出的多余字符再次放回到缓冲区去, 下一次读数字符进行下一个单词的识别时, 会再次读出来的
    //放回多读出的非数字字符
    ungetc(t,stdin);
    return NUMBER;
   }
   //token替换
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
//测试代码      结果
//2+672/4 ;     170.000000
//30- 3*4 ;     18.000000