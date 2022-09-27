;手动编译
;全局变量和常量声明

;int globla_var=5;全局标识@声明
@globla_var =  global i32 5, align 4
;const int maxn=6;
@maxn =  constant i32 6, align 4

;函数定义
; int mul(int a,int b){
; 	return a*b;
; }
declare i32 @mul(i32 %1,i32 %2)#0{
    %3=mul nsw i32 %1,%2
    return %3
}


;main函数定义

; int main(){
declare i32 @main()#0{
; 	//开始计时函数
; 	void starttime();
	
; 	//整型输入判断
; 	int n;
    %1 = alloca i32, align 4
; 	putf("Enter in an integer greater than 10 :");
; 	n = getint();
    %2 = tail call i32 (...) @getint() #3

; 	while(n<=10){
; 		//putf("Error input!");
; 		n = getint();
; 	}
; 	//函数调用
; 	int res;
; 	res = mul(n, n);
; 	putint(res);

; 	//循环和break语句
; 	while(1){
; 		n--;
; 		if(n==0){break;}
; 	}
	
; 	//字符判断
; 	putf("Enter in an Letter:");
; 	int c;
; 	c = getch();
; 	putch(c);
; 	if((c>=65&&c<=90)||(c>=97&&c<=122)){
; 		putf("c is a Letter!");

; 	}
; 	else{putf("c is not a Letter!!");}
	
; 	return 0;
; }

}