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
char* idTable[50];
double intTable[50];
int tableLen = -1;
int find(char* str){   
    for(int i=0;i<=tableLen;i++){
        if(!strcmp(str,idTable[i])){
            return i;
        }
    }
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

lines   :   lines assign ';' {}
        |   lines expr ';' { printf("%f\n", $2);}
        |   lines ';'
        |
        ;

assign  :   RESULT EQUAL assign {intTable[(int)$1] = $3;
                                $$ = $3;}
        |   expr {$$ = $1;}
        ;
        
expr    :   expr ADD expr { $$ = $1 + $3; }
        |   expr SUB expr { $$ = $1 - $3; }
        |   expr MUL expr { $$ = $1 * $3; }
        |   expr DIV expr { $$ = $1 / $3; }
        |   LEFTP expr RIGHTP { $$ = $2; }
        |   SUB expr %prec UMINUS { $$ = -$2; }
        |   NUMBER { $$ = $1; }
        |   ID { $$ = intTable[(int)$1]; }
        ;
%%

    // programs section

int yylex()
{
    // place your token retrieving code here
    int t;
    while(1) {
        t = getchar();
        if(t == ' ' || t =='\t' || t == '\n') {
            //do nothing
        } else if ((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_')){
            int ti=0;
            while ((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_') || (t >= '0' && t <= '9')) {
               idStr[ti] = t;
                ti++;
                t = getchar();
            }
            idStr[ti] = '\0';

            int index = find(idStr);
            if(index == -1){
                tableLen++;
                idTable[tableLen] = (char*)malloc(50 * sizeof(char));
                strcpy(idTable[tableLen],idStr);
                intTable[tableLen]=0;
                yylval = tableLen;
            }else{
                yylval = index;
            }
            while(t == ' ' || t =='\t' || t == '\n'){
                t=getchar();
            }
            ungetc(t,stdin);
            if(t=='='){
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
                case '=': return EQUAL;
                case '+': return ADD;
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
