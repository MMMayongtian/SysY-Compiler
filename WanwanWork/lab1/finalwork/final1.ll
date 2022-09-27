; ModuleID = 'final1.c'
source_filename = "final1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globla_var = dso_local local_unnamed_addr global i32 5, align 4
@maxn = dso_local local_unnamed_addr constant i32 6, align 4
@.str = private unnamed_addr constant [38 x i8] c"Enter in an integer greater than 10 :\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Error input!\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Enter in an Letter:\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"c is a Letter!\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"c is not a Letter!!\00", align 1

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @mul(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = mul nsw i32 %1, %0
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)) #3
  %2 = tail call i32 (...) @getint() #3
  %3 = icmp slt i32 %2, 11
  br i1 %3, label %4, label %8

4:                                                ; preds = %0, %4
  %5 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #3
  %6 = tail call i32 (...) @getint() #3
  %7 = icmp slt i32 %6, 11
  br i1 %7, label %4, label %8

8:                                                ; preds = %4, %0
  %9 = phi i32 [ %2, %0 ], [ %6, %4 ]
  %10 = mul nsw i32 %9, %9
  %11 = tail call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %10) #3
  br label %12

12:                                               ; preds = %15, %8
  %13 = phi i32 [ %10, %8 ], [ %16, %15 ]
  %14 = icmp ugt i32 %13, 10
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = urem i32 %13, 10
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %18, label %12

18:                                               ; preds = %15, %12
  %19 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #3
  %20 = tail call i32 (...) @getch() #3
  %21 = tail call i32 (i32, ...) bitcast (i32 (...)* @putch to i32 (i32, ...)*)(i32 %20) #3
  %22 = and i32 %20, -33
  %23 = add i32 %22, -65
  %24 = icmp ult i32 %23, 26
  %25 = select i1 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)
  %26 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* %25) #3
  %27 = tail call i32 (...) @stoptime() #3
  ret i32 0
}

declare dso_local i32 @putf(...) local_unnamed_addr #2

declare dso_local i32 @getint(...) local_unnamed_addr #2

declare dso_local i32 @putint(...) local_unnamed_addr #2

declare dso_local i32 @getch(...) local_unnamed_addr #2

declare dso_local i32 @putch(...) local_unnamed_addr #2

declare dso_local i32 @stoptime(...) local_unnamed_addr #2

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
