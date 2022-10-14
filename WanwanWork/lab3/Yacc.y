%{
/*************************
YaccCal.y
YACC file
Date: 2022/10/6
Todo: operator token
***************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex ();
char idStr[50];
//标识符数组
char* idTable[50];
//标识符对应的值
double intTable[50];
int tableLen = -1;
//寻找变量是否已经存在
int find(char* str){   
    for(int i=0;i<=tableLen;i++){
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
%left LEFTP RIGHTP
%right UMINUS
%%

lines   :   lines assign ';' {printf("输出lines assign\n");}
        |   lines expr ';' { printf("输出lines expr  %f\n", $2);}
        |   lines ';'{ printf("lines\n");}
        |
        ;

assign  :   RESULT EQUAL assign {intTable[(int)$1] = $3;
                                $$ = $3;printf("RESULT EQUAL assign\n");}
        |   expr {$$ = $1;}
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

    // programs section

int yylex()
{
    // place your token retrieving code here
    int t;
    while(1) {
         printf("请输入：");
        t = getchar();
        if(t == ' ' || t =='\t' || t == '\n') {
            //do nothing
             printf("输入了换行\n");
        } else if ((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_')){
            printf("输入了字母\n");
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
                printf("index == -1\n");
                tableLen++;
                printf("tableLen++;然后tablelen=%d\n",tableLen);
                idTable[tableLen] = (char*)malloc(50 * sizeof(char));
                strcpy(idTable[tableLen],idStr);
                printf("idTable[tableLen]=%s\n",idTable[tableLen]);
                //赋值为0
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
                printf("输入了等号！\n");
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
        } else {
            switch(t){
                //添加EQUAL
                case '=': printf("输入了“=”\n");return EQUAL;
                case '+': printf("输入了“+”\n");return ADD;
                case '-': return SUB;
                case '*': return MUL;
                case '/': return DIV;
                case '(': return LEFTP;
                case ')': return RIGHTP;
                default: return t;
            }
        }
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
