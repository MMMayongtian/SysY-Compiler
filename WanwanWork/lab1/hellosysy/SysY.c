int globla_var=5;
const int maxn=1001;

int mul(int a,int b){
	return a*b;
}

int main(){
	
	//计时函数删掉是因为后续.ll转可执行文件出错 不知道为啥
	//void starttime();
	
	int n;
	putf("Enter in an integer greater than 100 ");
	n = getint();
	while(n<=100){
		putf("Error input!");
		n = getint();
	}
	
	putint(n);
	
	int c;
	c = getch();
	putch(c);
	if((c>=65&&c<=90)||(c>=97&&c<=122)){
		putf("c is a Letter!");
	}
	
	float f;
	f = getfloat();
	putfloat(f);
	
	int trans = f + n;
	
	int res;
	res = mul(n, n);
	
	
	int array[1000];
	//这里把原来的array[]改成array[0] 看文档改的 应该没问题
	int len = getarray(array);
	for(int i=0;i<len;i++){
		array[i] = array[i] * n;
		array[i] = array[i] / 5;
		array[i] = array[i] + n;
		array[i] = array[i] - 1;
		array[i] = array[i] % 20;
		if(array>10){
			continue;
		}
		else{
			break;
		}
	}
	//这里报了好多错 我直接注释了 可以回头再看

	// putarray(len, a[]);
	// float af[100];
	// int lenf = getfarray(af);
	// putfarray(lenf, af);
		
	//stoptime();
	
	return 0;
}