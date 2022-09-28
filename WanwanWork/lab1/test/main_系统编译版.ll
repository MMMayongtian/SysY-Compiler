; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globla_var = dso_local global i32 5, align 4
@maxn = dso_local constant i32 6, align 4
@.str = private unnamed_addr constant [37 x i8] c"Please enter an ASCII numeric value:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"is a Letter!\00", align 1

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
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @getint()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @putch to i32 (i32, ...)*)(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %7, 65
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 90
  br i1 %11, label %18, label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 97
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp sle i32 %16, 122
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %9
  %19 = call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15, %12
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @putf(...) #1

declare dso_local i32 @getint(...) #1

declare dso_local i32 @putch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
