# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "main.c"
int main(){
 int n;
    n = getint();

    n = n * 2;
    n = n + 4;
    n = n | 1;

 for(int i = 0; i < 5; i++){
  n = n - i;
 }

 if((n>=65&&n<=90)||(n>=97&&n<=122)){
     putch(n);
    }
 putf("\n");
 return 0;
}
