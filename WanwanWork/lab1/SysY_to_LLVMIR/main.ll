;手动编译
;全局变量和常量声明;全局标识@声明

;int globla_var=5
@globla_var =  global i32 5, align 4
;const int maxn=6;
@maxn =  constant i32 6, align 4

;函数定义
; int mul(int a,int b){
; 	return a*b;
; }

define dso_local i32 @mul(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = mul nsw i32 %5, %6
  ret i32 %7
}
;main函数定义

; int main(){
define  i32 @main() #0 {
%1=alloca i32,align 4           ;%1(i32)
%2 = call i32 (...) @getint()   ;%2=n
store i32 %2, i32* %1, align 4	;*%1=%2=n

%3 = alloca i32, align 4        ;%3 i32
store i32 10, i32* %3, align 4  ;*%3=10
%4=load i32, i32* %3, align 4   ;%4=load*%3=10 
br label %5

5:
%6=load i32, i32* %1, align 4	;%6=load*%1=n 用n必须使用%6
%7 = icmp sle i32 %6, %4	    ;n<=10?
br i1 %7,label %8,label %11

8:;n<=10 要继续循环
%9=alloca i32, align 4          ;
%10 = call i32 (...) @getint()  ;%10=新n
store i32 %10, i32* %1, align 4 ;*%1=%10=新n
br label %5

11:
%12 = load i32, i32* %1, align 4;%12=load*%1=n
%13 = call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %12);输出%12即n
ret i32 0
}

declare dso_local i32 @getint(...) #1
declare dso_local i32 @putint(...) #1
declare dso_local i32 @getarray(...) #1