#include<stdio.h>
//全局变量
int globla_var=5;
int main(){
	int n;
    n=getint();
    //运算符
    n = n * 2;
    n = n / 2;
    n = n + 5;
    n = n - 3;
    n = n % 10;
    int a[6];
	for(int i = 0; i < globla_var; i++){
        a[i] = i;
	}
    //逻辑判断
  	int c;
	c = getch();
	if((c>=65&&c<=90)||(c>=97&&c<=122)){
	    putf(" is a Letter!");
    }
	return 0;
}