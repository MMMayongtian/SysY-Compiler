%{
/*************************
YACC2.y
YACC file
Date: xxxx/xx/xx
xxxxx <xxxxx@nbjl.nankai.edu.cn>
***************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifndef YYSTYPE
//需要返回的是后缀表达式 是一个字符串 YYSTYPE可声明为char*
#define YYSTYPE char*
#endif
char idStr[50];
char numStr[50];
int yylex ();
extern int yyparse();
FILE* yyin ;
void yyerror(const char* s );
%}

%token NUMBER
%token ID
%token ADD SUB
%token MUL DIV
%token LE RE
%left ADD SUB
%left MUL DIV
%right UMINUS

%%

lines   :   lines expr ';' { printf("%s\n", $2); }
        |   lines ';'
        |
        ;
//strcpy($$,$1)也等价于 strcpy($$,yylval)
expr    :   expr ADD expr  { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$,$3); strcat($$,"+ " ); }
        |   expr SUB expr  { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$,$3); strcat($$,"- " );}
        |   expr MUL expr  { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$,$3); strcat($$,"* " ); }
        |   expr DIV expr  { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$,$3); strcat($$,"/ " ); }
        |   LE expr RE { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$2);strcat($$,"" ); }
        |   SUB expr %prec UMINUS { $$ = (char*)malloc(50*sizeof (char)); strcat($$,"- " );strcat($$,$2); }
        |   NUMBER { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1); strcat($$," " ); }
        |   ID     { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$," " ); } 
        ;

%%

    // programs section

//1.词法分析函数中需要分析运算符、多位十进制整数（对应字符串）、空白字符和识别标识符ID
int yylex()
{
    // place your token retrieving code here
      int t;
    while(1) {
        t = getchar();
        if (t == ' ' || t =='\t' || t == '\n') {
            //do nothing
        } else if (t >= '0' && t <= '9') {
            int ti = 0;
            while (t >= '0' && t <= '9') {
                numStr[ti]=t;
                t = getchar();
                ti++;
            }
            //将读到的若干数字字符存为一个字符串, 最后需要在字符串的最后添加结束符\0,
            numStr[ti] = '\0';
            //字符串地址赋值给yylval
            yylval = numStr;
            ungetc(t,stdin);
            return NUMBER;
        } else if ((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_') || (t >= '0' && t <= '9')) {
            int ti = 0;
            while ((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_') || (t >= '0' && t <= '9')) {
                idStr[ti] = t;
                ti++;
                t = getchar();
            }
            idStr[ti] = '\0';
            yylval = idStr;
            ungetc(t,stdin);
            return ID;
        } 
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
//测试代码
// 2+A_a2b*(1234-_haha);
//结果
// 2 A_a2b 1234 _haha - * +
