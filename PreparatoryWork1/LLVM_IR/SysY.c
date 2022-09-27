int globla_var=5;
const int maxn=6;

int mul(int a,int b){
	return a*b;
}

int main(){
	
	void starttime();
	
	int n;
	putf("Enter in an integer greater than 100 ");
	n = getint();
	while(n<=10){
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
	putint(trans);

	int res;
	res = mul(n, n);
	
	
	int array[10];
	int len = getarray(array);
	for(int i=0;i<len;i++){
		array[i] = array[i] * n;
		array[i] = array[i] / 2;
		array[i] = array[i] + 1;
		array[i] = array[i] - n;
		array[i] = array[i] % 10;
		if(array[i]>5){
			continue;
		}
		else{
			break;
		}
	}
	
	putarray(len);
	float af[100];
	int lenf = getfarray(af);
	putfarray(lenf, af);
		
	stoptime();
	
	return 0;
}