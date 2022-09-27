; ModuleID = 'toComplie.c'
source_filename = "toComplie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globla_var = dso_local global i32 5, align 4
@maxn = dso_local constant i32 6, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mul(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = mul nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %2)
  br label %10

10:                                               ; preds = %13, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp sle i32 %11, 10
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef %2)
  br label %10, !llvm.loop !6

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %16)
  store float 0x3FF1C28F60000000, float* %3, align 4
  %18 = load float, float* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sitofp i32 %19 to float
  %21 = fadd float %18, %20
  %22 = fptosi float %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @mul(i32 noundef %23, i32 noundef %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 5
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sub nsw i32 %33, 3
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = srem i32 %35, 10
  store i32 %36, i32* %2, align 4
  store i32 5, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %50, %15
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %50

49:                                               ; preds = %41
  br label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %37, !llvm.loop !8

53:                                               ; preds = %49, %37
  %54 = load i32, i32* %2, align 4
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 %54, i32* %55, align 16
  ret i32 0
}

declare i32 @__isoc99_scanf(i8* noundef, ...) #1

declare i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
