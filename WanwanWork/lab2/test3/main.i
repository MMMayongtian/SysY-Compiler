# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "main.c"
int globla_var = 0;
int mul(int a,int b){
 return a*b;
}
int main(){
 int n;
    n=getint();

 while(n<=10){
        n=getint();
 }

 float f = 1.1;
 globla_var = n + f;

    n = mul(n,globla_var);
    putint(n);
    putf("\n");
    }
