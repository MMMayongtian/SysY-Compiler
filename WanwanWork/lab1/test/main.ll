;手动编译
;全局变量和常量声明;全局标识@声明

;int globla_var=5
@globla_var =  global i32 5, align 4
;const int maxn=6;
@maxn =  constant i32 6, align 4
;字符串判断提示语句
@.str = private unnamed_addr constant [23 x i8] c"Please enter a letter:\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" is a Letter!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"It is not a Letter!\0A\00", align 1
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
  %1=alloca i32,align 4           
  %2 = call i32 (...) @getint()   ;%2=n
  store i32 %2, i32* %1, align 4	;load i to %1
  %3 = alloca i32, align 4        
  store i32 10, i32* %3, align 4  ;*%3=10
  %4=load i32, i32* %3, align 4   ;load 10 to %4
  br label %5

  5:;循环判断
  %6=load i32, i32* %1, align 4	;load n to%6
  %7 = icmp sle i32 %6, %4	    ;n<=10?
  br i1 %7,label %8,label %11

  8:;n<=10 要继续循环
  %9=alloca i32, align 4          ;
  %10 = call i32 (...) @getint()  ;%10=new_n
  store i32 %10, i32* %1, align 4 ;load new_n to %10
  br label %5

  11:;n>10 结束循环 输出
  %12 = load i32, i32* %1, align 4;load n to %12
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %12);输出%12即n
  br label %14

  14:; 函数调用部分
  %15 = alloca i32,align 4        
  %16 = call i32 @mul(i32 %12, i32 %12);%16=n*n
  store i32 %16, i32* %15, align 4  
  %17 = load i32, i32* %15, align 4   ;load n*n to %17
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %17)
  br label %19

  19: ;隐式转换部分
  %20 = alloca float, align 4
  store float 0x3FF1C28F60000000, float* %20, align 4
  %21 = load float, float* %20, align 4             ;load 1.11 to %20
  ;隐式转换
  %22 = sitofp i32 %12 to float ;转n
  %23 = fadd float %21, %22      ;float格式的f+n
  %24 = fptosi float %23 to i32   ;float格式转回
  ;结果输出
  %25 = alloca i32, align 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %25, align 4;load f+n to %26
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
  br label %65

65:;输入字符判断
  %66 = call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %67= alloca i32, align 4
  %68 = call i32 (...) @getint()
  store i32 %68, i32* %67, align 4
  %69 = load i32, i32* %67, align 4;%69=c
  %70 = call i32 (i32, ...) bitcast (i32 (...)* @putch to i32 (i32, ...)*)(i32 %69)
  %71 = icmp sge i32 %69, 65
  br i1 %71,label %72,label %80

72:;c>=65 -> c<=90?
  %73 = icmp sle i32 %69,90
  br i1 %73,label %78,label %74

74:;c>90 -> c>=97?
  %75 =icmp sge i32 %69, 97
  br i1 %75,label %76,label %80

76:;c>=97 -> c<=122?
  %77 = icmp sle i32 %69, 122
  br i1 %75,label %78,label %80
78:;判断是字母
  %79 = call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
80:;不是字母
  %81 = call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}
;输入输出函数声明
declare dso_local i32 @getint(...) #1
declare dso_local i32 @putint(...) #1
;数组函数声明
declare dso_local i32 @getarray(...) #1
declare dso_local i32 @putarray(...) #1
;字符串判断函数声明
declare dso_local i32 @getch(...) #1
declare dso_local i32 @putch(...) #1
declare dso_local i32 @putf(...) #1
