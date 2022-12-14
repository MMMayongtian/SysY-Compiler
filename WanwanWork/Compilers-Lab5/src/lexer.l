%option noyywrap
%{
    #define YY_NO_UNPUT
    #define YY_NO_INPUT

    #include "parser.h"
    #include <ostream>
    #include <fstream>
    using namespace std;

    extern FILE *yyin; 
    extern FILE *yyout;
    extern bool dump_tokens;

    void DEBUG_FOR_LAB4(std::string s){
        std::string DEBUG_INFO = "[DEBUG LAB4]: \t" + s + "\n";
        fputs(DEBUG_INFO.c_str(), yyout);
    }
%}

COMENTLINE (\/\/[^\n]*)
DECI ([1-9][0-9]*|0)
OCTA (0([1-7][0-7]*|0))
HEXA (0(x|X)([1-9a-fA-F][0-9a-fA-F]*|0))
ID [[:alpha:]_][[:alpha:][:digit:]_]*
EOL (\r\n|\n|\r)
WHITE [\t ]

commentbegin "/*"
commentelement .|\n
commentend "*/"

%x BLOCKCOMMENT
%%
{commentbegin} {BEGIN BLOCKCOMMENT;}
<BLOCKCOMMENT>{commentelement} {}
<BLOCKCOMMENT>{commentend} {BEGIN INITIAL;}

"int" {
    /*
    * Questions: 
    *   Q1: Why we need to return INT in further labs?
    *   Q2: What is "INT" actually?
    */
    if(dump_tokens)
        DEBUG_FOR_LAB4("INT\tint");
    return INT;
}
"void" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("VOID\tvoid");
    return VOID;
}
"const" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("CONST\tconst");
    return CONST;    
}
"while" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("WHILE\twhile");
    return WHILE;
};
"if" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("IF\tif");
    return IF;
};
"else" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ELSE\telse");
    return ELSE;
};
"return" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RETURN\treturn");
    return RETURN;
}

"=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ASSIGN\t=");
    return ASSIGN;
}
"<" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LESS\t<");
    return LESS;
}
">" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MORE\t>");
    return MORE;
}
"<=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LESSE\t<=");
    return LESSE;
}
">=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MOREE\t<=");
    return MOREE;
}
"==" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("EQUAL\t==");
    return EQUAL;
}
"!=" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("NOEQUAL\t!=");
    return NOEQUAL;
}
"+" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("ADD\t+");
    return ADD;
}
"-" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("SUB\t-");
    return SUB;
}
"*" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MUL\t*");
    return MUL;
}
"/" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("DIV\t/");
    return DIV;
}
"%" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("MOD\t%%");
    return MOD;
}
"&&" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("AND\t&");
    return AND;
}
"||" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("OR\t|");
    return OR;
}
"!" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("NON\t!");
    return NON;
}
";" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("SEMICOLON\t;");
    return SEMICOLON;
}
"(" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LPAREN\t(");
    return LPAREN;
}
")" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RPAREN\t)");
    return RPAREN;
}
"{" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("LBRACE\t{");
    return LBRACE;
}
"}" {
    if(dump_tokens)
        DEBUG_FOR_LAB4("RBRACE\t}");
    return RBRACE;
}

{DECI} {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    yylval.itype = atoi(yytext);
    return INTEGER;
}

{OCTA} {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    int num = 0;
    for(int i = 1; i < yyleng - 1; i++){
        num = num * 8 + (yytext[i] - '0');
    }
    yylval.itype = num;
    return INTEGER;
}

{HEXA} {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    int num = 0;
    for(int i = 2; i < yyleng; i++){
        if(yytext[i]>='a'&&yytext[i]<='z'){
            num = num * 16 + (yytext[i] - 'a') + 10;
        }
        else if(yytext[i]>='A'&&yytext[i]<='Z'){
            num = num * 16 + (yytext[i] - 'A') + 10;
        }
        else{
            num = num * 16 + (yytext[i] - '0');
        }
    }
    yylval.itype = num;
    return INTEGER;
}

{ID} {
    if(dump_tokens)
        DEBUG_FOR_LAB4(yytext);
    char *lexeme;
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    return ID;
}
{COMENTLINE}
{EOL} yylineno++;
{WHITE}
%%
