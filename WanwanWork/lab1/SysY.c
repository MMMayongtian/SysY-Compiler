int globla_var=5;
const int maxn=1001;

int mul(int a,int b){
	return a*b;
}

int main(){
	
	void starttime();
	
	int n;
	putf("Enter in an integer greater than 100 ");
	n = getint();
	while(n<=100){
		putf("Error input!")
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
	int len = getarray(array[]);
	for(int i=0;i<l;i++){
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
	
	putarray(len, a[]);
	float af[100];
	int lenf = getfarray(af);
	putfarray(lenf, af);
		
	stoptime();
	
	return 0;
}