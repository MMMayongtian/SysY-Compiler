%{
/*************************
expr1.y
YACC file
Date: xxxx/xx/xx
xxxxx <xxxxx@nbjl.nankai.edu.cn>
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

%token ADD
%left ADD '-'
%left '*' '/'
%right UMINUS

%%


lines : lines expr '\n' { printf("%f\n", $2); }
| lines '\n'
|
;

expr : expr ADD expr { $$ = $1 + $3; }
| expr '-' expr { $$ = $1 - $3; }
| expr '*' expr { $$ = $1 * $3; }
| expr '/' expr { $$ = $1 / $3; }
| '('expr')' { $$ = $2; }
| '-' expr %prec UMINUS { $$ = -$2; }
| NUMBER
;

NUMBER : '0' { $$ = 0.0; }
| '1' { $$ = 1.0; }
| '2' { $$ = 2.0; }
| '3' { $$ = 3.0; }
| '4' { $$ = 4.0; }
| '5' { $$ = 5.0; }
| '6' { $$ = 6.0; }
| '7' { $$ = 7.0; }
| '8' { $$ = 8.0; }
| '9' { $$ = 9.0; }
;

%%

    // programs section

int yylex()
{
    // place your token retrieving code here
    int t;
    t = getchar();
    if(t=='+')
        return ADD;
    else
        return t;
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
    fprintf (stderr , ”Parse error : %s\n”, s );
    exit (1);
}
