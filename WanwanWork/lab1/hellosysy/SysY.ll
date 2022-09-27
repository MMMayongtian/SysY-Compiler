; ModuleID = 'SysY.c'
source_filename = "SysY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globla_var = dso_local local_unnamed_addr global i32 5, align 4
@maxn = dso_local local_unnamed_addr constant i32 1001, align 4
@.str = private unnamed_addr constant [38 x i8] c"Enter in an integer greater than 100 \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Error input!\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"c is a Letter!\00", align 1

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @mul(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = mul nsw i32 %1, %0
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = alloca [1000 x i32], align 16
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)) #4
  %3 = tail call i32 (...) @getint() #4
  %4 = icmp slt i32 %3, 101
  br i1 %4, label %5, label %9

5:                                                ; preds = %0, %5
  %6 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #4
  %7 = tail call i32 (...) @getint() #4
  %8 = icmp slt i32 %7, 101
  br i1 %8, label %5, label %9

9:                                                ; preds = %5, %0
  %10 = phi i32 [ %3, %0 ], [ %7, %5 ]
  %11 = tail call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %10) #4
  %12 = tail call i32 (...) @getch() #4
  %13 = tail call i32 (i32, ...) bitcast (i32 (...)* @putch to i32 (i32, ...)*)(i32 %12) #4
  %14 = and i32 %12, -33
  %15 = add i32 %14, -65
  %16 = icmp ult i32 %15, 26
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %19

19:                                               ; preds = %9, %17
  %20 = tail call i32 (...) @getfloat() #4
  %21 = sitofp i32 %20 to float
  %22 = fpext float %21 to double
  %23 = tail call i32 (double, ...) bitcast (i32 (...)* @putfloat to i32 (double, ...)*)(double %22) #4
  %24 = bitcast [1000 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* nonnull %24) #4
  %25 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 0
  %26 = tail call i32 (i32, ...) bitcast (i32 (...)* @getarray to i32 (i32, ...)*)(i32 undef) #4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %19
  %29 = add nsw i32 %10, -1
  %30 = icmp ugt i32* %25, inttoptr (i64 10 to i32*)
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = zext i32 %26 to i64
  %33 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 0
  %34 = srem i32 %29, 20
  store i32 %34, i32* %33, align 16, !tbaa !2
  %35 = icmp eq i32 %26, 1
  br i1 %35, label %49, label %36

36:                                               ; preds = %31, %36
  %37 = phi i64 [ %45, %36 ], [ 1, %31 ]
  %38 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !2
  %40 = getelementptr inbounds [1000 x i32], [1000 x i32]* %1, i64 0, i64 %37
  %41 = mul nsw i32 %39, %10
  %42 = sdiv i32 %41, 5
  %43 = add i32 %29, %42
  %44 = srem i32 %43, 20
  store i32 %44, i32* %40, align 4, !tbaa !2
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %32
  br i1 %46, label %49, label %36

47:                                               ; preds = %28
  %48 = urem i32 %29, 20
  store i32 %48, i32* %25, align 16, !tbaa !2
  br label %49

49:                                               ; preds = %36, %31, %47, %19
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* nonnull %24) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @putf(...) local_unnamed_addr #3

declare dso_local i32 @getint(...) local_unnamed_addr #3

declare dso_local i32 @putint(...) local_unnamed_addr #3

declare dso_local i32 @getch(...) local_unnamed_addr #3

declare dso_local i32 @putch(...) local_unnamed_addr #3

declare dso_local i32 @getfloat(...) local_unnamed_addr #3

declare dso_local i32 @putfloat(...) local_unnamed_addr #3

declare dso_local i32 @getarray(...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
