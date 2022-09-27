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
    ret %3
}


;main函数定义

; int main(){
declare i32 @main()#0{

;int a=2;


}