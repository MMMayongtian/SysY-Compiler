//全局变量
int globla_var;
int n;
//函数
int mul(int a,int b){
	return a*b;
}
int main(){
    n=getint();
    //while语句
	while(n>=6){
        n=getint();
	}
    //for循环 求阶乘
    globla_var = 1;
    for(int i = 1; i <= n; i++){
        //函数调用
        globla_var = mul(i,globla_var);
	}
    //运算符
    globla_var = globla_var * 4;
    globla_var = globla_var + 2;
    globla_var = globla_var | 1;
	//逻辑判断
	if((globla_var>=65&&globla_var<=90)||(globla_var>=97&&globla_var<=122)){
	    putch(globla_var);
    } else {
        putint(globla_var);
    }
    return 0;
}