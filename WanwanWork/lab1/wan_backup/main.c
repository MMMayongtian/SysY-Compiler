//全局变量和常量
int globla_var=5;
const int maxn=6;

//函数定义
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
    putint(n);

//函数调用
	int res;
	res = mul(n, n);
    putint(res);
    
//隐式转换
    float f = 1.11;
	int trans = f + n;
    putint(trans);

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