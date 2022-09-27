
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
    putint(n);

	float f = 1.11;
    
	int trans = f + n;

	int res;
	res = mul(n, n);

    n = n * n;
    n = n / 2;
    n = n + 5;
    n = n - 3;
    n = n % 10;

    int array[5];
    int len = getarray(array);

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