%{
/*************************
expr1.y
YACC file
Date: xxxx/xx/xx
xxxxx <xxxxx@nbjl.nankai.edu.cn>
***************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifndef YYSTYPE
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

expr    :   expr ADD expr  { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$,$3); strcat($$,"+ " ); }
        |   expr SUB expr  { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$,$3); strcat($$,"- " );}
        |   expr MUL expr  { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$,$3); strcat($$,"* " ); }
        |   expr DIV expr  { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$,$3); strcat($$,"/ " ); }
        |   LE expr RE { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$2);strcat($$," " ); }
        |   SUB expr %prec UMINUS { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$2);strcat($$,"- " ); }
        |   NUMBER { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1); strcat($$," " ); }
        |   ID     { $$ = (char*)malloc(50*sizeof (char)); strcpy($$,$1);strcat($$," " ); } 
        ;


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
            numStr[ti] = '\0';
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
