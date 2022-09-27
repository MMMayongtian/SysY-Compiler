; ModuleID = 'tocc.c'
source_filename = "tocc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globla_var = dso_local global i32 5, align 4
@maxn = dso_local constant i32 6, align 4

; Function Attrs: noinline nounwind optnone uwtable
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
  %9 = call i32 (...) @getint()
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %13, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp sle i32 %11, 10
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @getint()
  store i32 %14, i32* %2, align 4
  br label %10

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %16)
  store float 0x3FF1C28F60000000, float* %3, align 4
  %18 = load float, float* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sitofp i32 %19 to float
  %21 = fadd float %18, %20
  %22 = fptosi float %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @mul(i32 %23, i32 %24)
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
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %38 = call i32 (i32*, ...) bitcast (i32 (...)* @getarray to i32 (i32*, ...)*)(i32* %37)
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %52, %15
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sle i32 %48, 3
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %52

51:                                               ; preds = %43
  br label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %39

55:                                               ; preds = %51, %39
  %56 = load i32, i32* %2, align 4
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  ret i32 0
}

declare dso_local i32 @getint(...) #1

declare dso_local i32 @putint(...) #1

declare dso_local i32 @getarray(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
