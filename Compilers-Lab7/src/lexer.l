%option noyywrap
%{
    #define YY_NO_UNPUT
    #define YY_NO_INPUT
    #include "parser.h"
    #include <ostream>
    #include <fstream>
    #include <iostream>
    using namespace std;
    extern FILE *yyin; 
    extern FILE *yyout;
    extern bool dump_tokens;
    #include <iostream>
%}
OCTAL (0[0-7]+)
DECIMIAL ([1-9][0-9]*|0)
HEXADECIMAL (0[xX][0-9A-Fa-f]+)
DECFLOAT ((([0-9]*[.][0-9]*([eE][+-]?[0-9]+)?)|([0-9]+[eE][+-]?[0-9]+))[fLlL]?)
HEXFLOAT (0[xX](([0-9A-Fa-f]*[.][0-9A-Fa-f]*([pP][+-]?[0-9]+)?)|([0-9A-Fa-f]+[pP][+-]?[0-9]+))[fLlL]?)

ID [[:alpha:]_][[:alpha:][:digit:]_]*

EOL (\r\n|\n|\r)
WHITE [\t ]
BLOCKCOMMENTBEGIN \/\*
BLOCKCOMMENTELEMENT .
BLOCKCOMMENTEND \*\/
%x BLOCKCOMMENT
LINECOMMENT \/\/[^\n]*
%%
"int" {return INT;}
"void" {return VOID;}
"float" {return FLOAT;}
"const" {return CONST;}
"if" {return IF;}
"else" {return ELSE;}
"return" {return RETURN;}
"while" {return WHILE;}
"break" {return BREAK;}
"continue" {return CONTINUE;}
"==" {return EQUAL;}
"!=" {return NOTEQUAL;}
"=" {return ASSIGN;}
"<" {return LESS;}
"<=" {return LESSEQUAL;}
">" {return GREATER;}
">=" {return GREATEREQUAL;}
"+" {return ADD;}
"-" {return SUB;}
"*" {return MUL;}
"/" {return DIV;}
"%" {return MOD;}
"&&" {return AND;}
"||" {return OR;}
"!" {return NOT;}
";" {return SEMICOLON;}
"(" {return LPAREN;}
")" {return RPAREN;}
"{" {return LBRACE;}
"}" {return RBRACE;}
"[" {return LBRACKET;}
"]" {return RBRACKET;}
"," {return COMMA;}
{DECIMIAL} {
    yylval.itype = atoi(yytext);
    return INTEGER;
}
{OCTAL} {
    int temp;
    sscanf(yytext, "%o", &temp);
    yylval.itype = temp;
    return INTEGER;
}
{HEXADECIMAL} {
    int temp;
    sscanf(yytext, "%x", &temp);
    yylval.itype = temp;
    return INTEGER;
}
{DECFLOAT} {
    float temp;
    sscanf(yytext, "%f", &temp);
    yylval.ftype = (double)temp;
    return FLOATING;
}
{HEXFLOAT} {
    float temp;
    sscanf(yytext, "%f", &temp);
    yylval.ftype = (double)temp;
    return FLOATING;
}
{ID} {
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    return ID;
}
<*>{EOL} {
    yylineno++;
}
{WHITE}
{LINECOMMENT} {}
{BLOCKCOMMENTBEGIN} {BEGIN BLOCKCOMMENT;}
<BLOCKCOMMENT>{BLOCKCOMMENTELEMENT} {}
<BLOCKCOMMENT>{BLOCKCOMMENTEND} {BEGIN INITIAL;}


%%
