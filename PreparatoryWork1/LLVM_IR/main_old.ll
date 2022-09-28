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

define i32 @mul(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4          ;%3 i32
  %4 = alloca i32, align 4          ;
  store i32 %0, i32* %3, align 4    ;*%3=%0
  store i32 %1, i32* %4, align 4    ;*%4=%1
  %5 = load i32, i32* %3, align 4   ;%5=load*%3=%0
  %6 = load i32, i32* %4, align 4   ;%6=load*%4=%1
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

  5:;循环判断
  %6=load i32, i32* %1, align 4	;%6=load*%1=n 用n必须使用%6
  %7 = icmp sle i32 %6, %4	    ;n<=10?
  br i1 %7,label %8,label %11

  8:;n<=10 要继续循环
  %9=alloca i32, align 4          ;
  %10 = call i32 (...) @getint()  ;%10=新n
  store i32 %10, i32* %1, align 4 ;*%1=%10=新n
  br label %5

  11:;n>10 结束循环 输出
  %12 = load i32, i32* %1, align 4;%12=load*%1=n
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %12);输出%12即n
  br label %14

  14:; 函数调用部分
  %15 = alloca i32,align 4        ;%15 i32
  %16 = call i32 @mul(i32 %12, i32 %12);%16=n*n
  store i32 %16, i32* %15, align 4  ;*%15=%16
  %17 = load i32, i32* %15, align 4   ;%17=load*15=n*n
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %17)
  br label %19

  19: ;隐式转换部分
  %20 = alloca float, align 4
  store float 0x3FF1C28F60000000, float* %20, align 4;*%20=1.11
  %21 = load float, float* %20, align 4             ;%21=load*%20=1.11
  ;隐式转换
  %22 = sitofp i32 %12 to float ;转n
  %23 = fadd float %21, %22      ;应该是float格式的f+n
  %24 = fptosi float %23 to i32   ;再转回来
  ;结果输出
  %25 = alloca i32, align 4
  store i32 %24, i32* %25, align 4;*%25=%24=f+n
  %26 = load i32, i32* %25, align 4;%26=load*%25=f+n
  %27 = call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %26)

  ;n = n * n
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %1, align 4

  ;n = n / 2
  %31 = load i32, i32* %1, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %1, align 4

  ;n = n + 5
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 5
  store i32 %34, i32* %1, align 4

  ;n = n - 3
  %35 = load i32, i32* %1, align 4
  %36 = sub nsw i32 %35, 3
  store i32 %36, i32* %1, align 4

  ;n = n % 10
  %37 = load i32, i32* %1, align 4
  %38 = srem i32 %37, 10
  store i32 %38, i32* %1, align 4

  %39 = alloca [5 x i32], align 16 ;数组申请空间 int array[5]
  %40 = alloca i32, align 4 ;int len
  %41 = alloca i32, align 4 ;int i

  ;分配指针
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %39, i64 0, i64 0 
  ;len = getarray(array)  函数返回值赋给len 即40
  %43 = call i32 (i32*, ...) bitcast (i32 (...)* @getarray to i32 (i32*, ...)*)(i32* %42)
  store i32 %43, i32* %40, align 4 ;len = 

  store i32 0, i32* %41, align 4 ;i=0
  br label %44 ;for循环

44:
  %45 = load i32, i32* %41, align 4 ;load i to %45
  %46 = load i32, i32* %40, align 4 ;load len to %46
  %47 = icmp slt i32 %45, %46 ;if(i<len)
  br i1 %47, label %48, label %60

48: ;进入for循环块
  %49 = load i32, i32* %41, align 4 ;load i for valuation
  %50 = load i32, i32* %41, align 4 ;load i for index
  %51 = sext i32 %50 to i64 ;signal extend
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %39, i64 0, i64 %51 ;get the address of array[i]
  store i32 %49, i32* %52, align 4 ; array[i] = i

  ;条件 跳转
  %53 = load i32, i32* %41, align 4 ;if(i<=1)
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %56 ;contine or break
55:
  br label %57 ;contiue
56:
  br label %60 ;break
57: ;循环条件判断
  %58 = load i32, i32* %41, align 4 ;load i to %58
  %59 = add nsw i32 %58, 1 ;i++
  store i32 %59, i32* %41, align 4 ;store i
  br label %44 ;go next for
60: ;循环结束
  %61 = load i32, i32* %1, align 4 ;load n to %61
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %39, i64 0, i64 4 ; get the address of array[4]
  store i32 %61, i32* %62, align 16 ;array[4] = n

  ;输出数组
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %39, i64 0, i64 0 ;get the address of array
  %64 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @putarray to i32 (i32, i32*, ...)*)(i32  5, i32*  %63) ;putarray(5,array)
  
  ret i32 0
}

declare dso_local i32 @getint(...) #1
declare dso_local i32 @putint(...) #1
declare dso_local i32 @getarray(...) #1
declare dso_local i32 @putarray(...) #1