; ModuleID = 'SysY.c'
source_filename = "SysY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globla_var = dso_local local_unnamed_addr global i32 5, align 4
@maxn = dso_local local_unnamed_addr constant i32 6, align 4
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
  %1 = alloca [10 x i32], align 16
  %2 = alloca [100 x float], align 16
  %3 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)) #4
  %4 = tail call i32 (...) @getint() #4
  %5 = icmp slt i32 %4, 11
  br i1 %5, label %6, label %10

6:                                                ; preds = %0, %6
  %7 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #4
  %8 = tail call i32 (...) @getint() #4
  %9 = icmp slt i32 %8, 11
  br i1 %9, label %6, label %10

10:                                               ; preds = %6, %0
  %11 = phi i32 [ %4, %0 ], [ %8, %6 ]
  %12 = tail call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %11) #4
  %13 = tail call i32 (...) @getch() #4
  %14 = tail call i32 (i32, ...) bitcast (i32 (...)* @putch to i32 (i32, ...)*)(i32 %13) #4
  %15 = and i32 %13, -33
  %16 = add i32 %15, -65
  %17 = icmp ult i32 %16, 26
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = tail call i32 (i8*, ...) bitcast (i32 (...)* @putf to i32 (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %20

20:                                               ; preds = %10, %18
  %21 = tail call i32 (...) @getfloat() #4
  %22 = sitofp i32 %21 to float
  %23 = fpext float %22 to double
  %24 = tail call i32 (double, ...) bitcast (i32 (...)* @putfloat to i32 (double, ...)*)(double %23) #4
  %25 = sitofp i32 %11 to float
  %26 = fadd float %25, %22
  %27 = fptosi float %26 to i32
  %28 = tail call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %27) #4
  %29 = bitcast [10 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %29) #4
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %31 = call i32 (i32*, ...) bitcast (i32 (...)* @getarray to i32 (i32*, ...)*)(i32* nonnull %30) #4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %20
  %34 = sub nsw i32 1, %11
  %35 = zext i32 %31 to i64
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi i64 [ %45, %36 ], [ 0, %33 ]
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !2
  %40 = mul nsw i32 %39, %11
  %41 = sdiv i32 %40, 2
  %42 = add i32 %34, %41
  %43 = srem i32 %42, 10
  store i32 %43, i32* %38, align 4, !tbaa !2
  %44 = icmp sgt i32 %43, 5
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp ult i64 %45, %35
  %47 = and i1 %44, %46
  br i1 %47, label %36, label %48

48:                                               ; preds = %36, %20
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @putarray to i32 (i32, ...)*)(i32 %31) #4
  %50 = bitcast [100 x float]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %50) #4
  %51 = getelementptr inbounds [100 x float], [100 x float]* %2, i64 0, i64 0
  %52 = call i32 (float*, ...) bitcast (i32 (...)* @getfarray to i32 (float*, ...)*)(float* nonnull %51) #4
  %53 = call i32 (i32, float*, ...) bitcast (i32 (...)* @putfarray to i32 (i32, float*, ...)*)(i32 %52, float* nonnull %51) #4
  %54 = call i32 (...) @stoptime() #4
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %50) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %29) #4
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

declare dso_local i32 @putarray(...) local_unnamed_addr #3

declare dso_local i32 @getfarray(...) local_unnamed_addr #3

declare dso_local i32 @putfarray(...) local_unnamed_addr #3

declare dso_local i32 @stoptime(...) local_unnamed_addr #3

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
