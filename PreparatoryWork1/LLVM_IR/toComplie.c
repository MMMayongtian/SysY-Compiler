#include<stdio.h>
int globla_var=5;
const int maxn=6;

int mul(int a,int b){
	return a*b;
}

int main(){
	
	int n;
	//printf("Enter in an integer greater than 100 ");

	scanf("%d", &n);
	while(n<=10){
		//printf("Enter in an integer greater than 100 ");
	    n++;
	}
	printf("%d\n", n);

	char c;
	scanf("%c", &c);
	printf("%c\n", c);

	if((c>=65&&c<=90)||(c>=97&&c<=122)){
		printf("c is a Letter!");
	}
	
	float f = 1.11;
    
	//f = getfloat();
	//putfloat(f);
	
	int trans = f + n;
	//putint(trans);

    printf("%d\n",trans);

	int res;
	res = mul(n, n);
	
	//int len = getarray(array);
    n = n * n;
    n = n / 2;
    n = n + 5;
    n = n - 3;
    n = n % 10;

    int array[5];
    int len = 5;
    for(int i=0;i<len;i++){
        array[i] = i;

        if(i<=3){
            continue;
        }
        else{
            break;
        }
    }
    array[4] = n;

	return 0;
}