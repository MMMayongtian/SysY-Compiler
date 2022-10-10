#include<stdio.h>
//全局变量
int globla_var=5;
int mul(int a,int b){
	return a*b;
}
int main(){
	int n;
    n=getint();
    //while语句
	while(n<=10){
        n=getint();
	}
    //隐式转换
	float f = 1.1;
	int trans = n + f;
    //函数调用
    n = mul(n,trans);

    return 0;
}