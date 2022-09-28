// //#include<stdio.h>
// int mul(int a,int b){
//     return a*b;
// }

// int main(){
	
//     int a=getint();
// 	int n=mul(a,a);
//     putint(n);
// //    printf("%d",n);


    
//     }
int globla_var=5;
const int maxn=6;

int mul(int a,int b){
	return a*b;
}

int main(){
	
    
	int n;
	
	//scanf("%d", &n);
    n=getint();

	while(n<=10){
		//printf("Enter in an integer greater than 100 ")
		//scanf("%d", &n);
        n=getint();
	}

	//printf("%d\n", n);
    putint(n);}