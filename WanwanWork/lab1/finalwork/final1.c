//全局变量和常量定义
int globla_var=5;
const int maxn=6;

//函数定义
int mul(int a,int b){
	return a*b;
}

int main(){

	//开始计时函数
	void starttime();
	
	//整型输入判断
	int n;
	putf("Enter in an integer greater than 10 :");
	n = getint();
	while(n<=10){
		//putf("Error input!");
		n = getint();
	}
	//函数调用
	int res;
	res = mul(n, n);
	putint(res);

	//循环和break语句
	while(1){
		n--;
		if(n==0){break;}
	}
	
	//字符判断
	putf("Enter in an Letter:");
	int c;
	c = getch();
	putch(c);
	if((c>=65&&c<=90)||(c>=97&&c<=122)){
		putf("c is a Letter!");

	}
	else{putf("c is not a Letter!!");}
	

	//
	// float f;
	// f = getfloat();
	// putfloat(f);
	
	// int trans = f + n;
	// putint(trans);


	
	// int array[10];
	// int len = getarray(array);
	// for(int i=0;i<len;i++){
	// 	array[i] = array[i] * n;
	// 	array[i] = array[i] / 2;
	// 	array[i] = array[i] + 1;
	// 	array[i] = array[i] - n;
	// 	array[i] = array[i] % 10;
	// 	if(array[i]>5){
	// 		continue;
	// 	}
	// 	else{
	// 		break;
	// 	}
	// }
	
	// putarray(len);
	// float af[100];
	// int lenf = getfarray(af);
	// putfarray(lenf, af);
		
	stoptime();
	
	return 0;
}