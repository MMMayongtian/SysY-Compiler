#include<stdio.h>
int n;
int c;
int main(){
    scanf("%d %d",&n,&c);
    //运算符
    n = n * 2;
    //n = n / 3;
    n = n + 5;
    n = n - 3;
    //n = n % 10;
    printf("n = %d",n);
    int a[6];
	for(int i = 0; i < 6; i++){
        a[i] = i;
	}
    //逻辑判断
	if((c>=65&&c<=90)||(c>=97&&c<=122)){
	    printf("%c is a Letter!",c);
    }
	return 0;
}