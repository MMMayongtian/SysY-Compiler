%option noyywrap
%option yylineno
%{
    /*
    * You will need to comment this line in lab5.
    */
    #define ONLY_FOR_LEX
    
    #ifdef ONLY_FOR_LEX
    #else
    #define YYSTYPE void *
    #include "parser.h"
    #endif

    #define YY_NO_UNPUT
    #define YY_NO_INPUT
    #include <string>

    #ifdef ONLY_FOR_LEX
    #include <ostream>
    #include <fstream>
    using namespace std;
    extern FILE *yyin; 
    extern FILE *yyout;
    int idCount = 0;
    int col = 0;
    char idMap[100][100];
    int id_scope[100];
    int now_scope = 0;
    void DEBUG_FOR_LAB4(std::string s,char *str){
        //std::string DEBUG_INFO = "[DEBUG LAB4]: \t" + s + "\t" + to_string(yylineno) + "\n";
        char INFO[100];
        sprintf(INFO,"%-10s%-10s%-10d%-10d%-10s\n",s.c_str(),yytext,yylineno,col,str);
        col += yyleng;
        fputs(INFO,yyout);
    }
    void DEBUG_FOR_LAB4(std::string s){
        char INFO[100];
        sprintf(INFO,"%-10s%-10s%-10d%-10d\n",s.c_str(),yytext,yylineno,col);
        col += yyleng;
        fputs(INFO,yyout);
    }
    #endif
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
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("INT");
    #else
        return INT;
    #endif
}
"char" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("CHAR");
    #else
        return CHAR;
    #endif
} 

"void" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("VOID");
    #else
        return VOID;
    #endif 
}
"main" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("MAIN");
    #else
        return MAIN;
    #endif 
}
"if" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("IF");
    #else
        return IF;
    #endif
};
"else" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("ELSE");
    #else
        return ELSE;
    #endif
};
"return" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RETURN");
    #else
        return RETURN;
    #endif
}
"do" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("DO");
    #else
        return DO;
    #endif
}
"while" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("WHILE");
    #else
        return WHILE;
    #endif
}
"continue" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("CONTINUE");
    #else
        return CONTINUE;
    #endif
}
"break" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("BREAK");
    #else
        return BREAK;
    #endif
}
"switch" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("SWITCH");
    #else
        return SWITCH;
    #endif
}
"case" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("CASE");
    #else
        return CASE;
    #endif
}
"default" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("DEFAULT");
    #else
        return DEFAULT;
    #endif
}
"for" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("FOR");
    #else
        return FOR;
    #endif
}
"=" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("ASSIGN");
    #else
        return ASSIGN;
    #endif
}
"<" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LESS");
    #else
        return LESS;
    #endif
}
"+" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("PLUS");
    #else
        return PLUS;
    #endif
}
"-" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("SUB");
    #else
        return SUB;
    #endif
}
"*" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("MULT");
    #else
        return MULT;
    #endif
}
"/" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("DIV");
    #else
        return DIV;
    #endif
}
";" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("SEMI");
    #else
        return SEMI;
    #endif
}
"(" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LPAREN");
    #else
        return LPAREN;
    #endif
}
")" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RPAREN");
    #else
        return RPAREN;
    #endif
}
"{" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("LBRACE");
        now_scope++;
    #else
        return LBRACE;
    #endif
}
"}" {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("RBRACE");
        for(int i=0;i<idCount;i++){
            if(id_scope[i]==now_scope){
                id_scope[i]=-1;
            }
        }
        now_scope--;
    #else
        return RBRACE;
    #endif
}
{ID} {
    #ifdef ONLY_FOR_LEX
        int i = idCount-1;
        bool flag = false;
        char pointer[100];
        for(;i>=0;i--){
            if(strcmp(idMap[i],yytext)==0){
                flag = true;
                break;
            } 
        }
        if(flag&&id_scope[i]!=-1&&id_scope[i]==now_scope){
                sprintf(pointer,"%p",idMap[i]);
        }
        else{
            strcpy(idMap[idCount],yytext);
            id_scope[idCount] = now_scope;
            sprintf(pointer,"%p",idMap[idCount]);
            idCount++;
        }
        DEBUG_FOR_LAB4("ID",pointer);
    #else
        return RPAREN;
    #endif
}
{DECI} {
    #ifdef ONLY_FOR_LEX
        DEBUG_FOR_LAB4("NUMBER",yytext);
    #else
        return NUMBER;
    #endif    
}
{OCTA} {
    #ifdef ONLY_FOR_LEX
        int num = 0;
        for(int i = 1; i < yyleng - 1; i++){
            num = num * 8 + (yytext[i] - '0');
        }
        char numStr[10];
        sprintf(numStr,"%d",num);
        DEBUG_FOR_LAB4("NUMBER",numStr);
    #else
        return NUMBER;
    #endif
}
{HEXA}  {
    #ifdef ONLY_FOR_LEX
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
        char numStr[10];
        sprintf(numStr,"%d",num);
        DEBUG_FOR_LAB4("NUMBER",numStr);
    #else
        return NUMBER;
    #endif
}
{COMENTLINE}
{EOL} {col = 0;}
{WHITE} 
%%

#ifdef ONLY_FOR_LEX
int main(int argc, char **argv){
    yylineno = 1;
    if(argc != 5){
        fprintf(stderr, "Argument Not Enough");
        exit(EXIT_FAILURE);
    }

    if(!(yyin = fopen(argv[1], "r"))){
        fprintf(stderr, "No such file or directory: %s", argv[1]);
        exit(EXIT_FAILURE);
    }

    if(!(yyout = fopen(argv[3], "w"))){
        fprintf(stderr, "No such file or directory: %s", argv[3]);
        exit(EXIT_FAILURE);
    }
    char Header[80];
    sprintf(Header,"token     lexeme    lineno    offset    attribute\n");
    fputs(Header, yyout);
    yylex();
    return 0;
}
#endif
