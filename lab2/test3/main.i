# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "main.c"

int globla_var;
int n;

int mul(int a,int b){
 return a*b;
}
int main(){
    n=getint();

 while(n>=6){
        n=getint();
 }

    globla_var = 1;
    for(int i = 1; i <= n; i++){

        globla_var = mul(i,globla_var);
 }

    globla_var = globla_var * 4;
    globla_var = globla_var + 2;
    globla_var = globla_var | 1;

 if((globla_var>=65&&globla_var<=90)||(globla_var>=97&&globla_var<=122)){
     putch(globla_var);
    } else {
        putint(globla_var);
    }
    return 0;
}
