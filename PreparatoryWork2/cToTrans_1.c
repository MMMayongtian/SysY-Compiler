int main(){
	int n;
    n = getint();
    //运算符
    n = n * 2;
    n = n + 4;
    n = n | 1;
	//数组操作
	for(int i = 0; i < 5; i++){
		n = n - i;
	}
	//逻辑判断
	if((n>=65&&n<=90)||(n>=97&&n<=122)){
	    putch(n);
    }
	//printf("\n");
	return 0;
}