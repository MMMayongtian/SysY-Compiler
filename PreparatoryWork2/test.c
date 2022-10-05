#include<stdio.h>
int globla_var=5;
const int maxn=1001;
int mul(int a,int b){
	return a*b;
}
int main(){
	int n;
	scanf("%d",&n);
	while(n <= 10){
		scanf("%d",&n);
	}
	
	float f = 1.1;
	int trans = n + f;
	printf("%d\n",trans);
	
	int res = mul(trans, n);
	printf("%d\n",res);
	
	for(int i = 0; i < n; i++){
		res = res + 10;
		res = res / 2;
		if(res <= 10 && res%2==1){
			break;
		}
	}
	printf("%d\n",res);
	return 0;
}