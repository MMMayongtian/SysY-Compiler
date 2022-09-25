 define i32 @main() #0 {
 %1 = alloca i32, align 4
 ; 为 %1 分配空间，其大小与一个 i32 类型的大小相同。%1 类型即为 i32*，align 4 可以理
 %2 = alloca i32, align 4
 %3 = alloca i32, align 4
 %4 = alloca i32, align 4
 ; 将 0（i32）存入 %1（i32*）
 store i32 0, i32* %1, align 4
 ; 调用函数 @scanf ，i32 表示函数的返回值类型

 %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]*  @.str, i64 0, i64 0), i32* %3)
 store i32 2, i32* %2, align 4
 store i32 1, i32* %4, align 4
 ; 这里的 br 是无条件分支，label 可以理解为一个代码标签，指代下面那个代码块
 br label %6

 6: ; preds = %10, %0
 %7 = load i32, i32* %2, align 4
 %8 = load i32, i32* %3, align 4
 ; icmp 会根据不同的比较规则（这里是 sle，小于等于）比较两个操作数%7 和%8，i32 是操作

 %9 = icmp sle i32 %7, %8
 ; 这里的 br 是有条件分支，它根据 i1 和两个 label 的值，用于将控制流传输到当前函数中

 ; i1 类型的变量%cmp 的值如果为真，那么执行 label%10，否则执行 label%16
 br i1 %9, label %10, label %16

 10: ; preds = %6
 %11 = load i32, i32* %4, align 4
 %12 = load i32, i32* %2, align 4
 %13 = mul nsw i32 %11, %12
 store i32 %13, i32* %4, align 4
 %14 = load i32, i32* %2, align 4
 %15 = add nsw i32 %14, 1
 store i32 %15, i32* %2, align 4
 br label %6, !llvm.loop !10

 16: ; preds = %6
 %17 = load i32, i32* %4, align 4
 %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %17)
 ret i32 0
 }
