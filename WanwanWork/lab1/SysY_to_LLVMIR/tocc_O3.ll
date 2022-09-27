; ModuleID = 'tocc.c'
source_filename = "tocc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globla_var = dso_local local_unnamed_addr global i32 5, align 4
@maxn = dso_local local_unnamed_addr constant i32 6, align 4

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @mul(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = mul nsw i32 %1, %0
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = alloca [5 x i32], align 16
  %2 = tail call i32 (...) @getint() #4
  %3 = icmp slt i32 %2, 11
  br i1 %3, label %4, label %7

4:                                                ; preds = %0, %4
  %5 = tail call i32 (...) @getint() #4
  %6 = icmp slt i32 %5, 11
  br i1 %6, label %4, label %7

7:                                                ; preds = %4, %0
  %8 = phi i32 [ %2, %0 ], [ %5, %4 ]
  %9 = tail call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %8) #4
  %10 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #4
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %12 = call i32 (i32*, ...) bitcast (i32 (...)* @getarray to i32 (i32*, ...)*)(i32* nonnull %11) #4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  store i32 0, i32* %15, align 16, !tbaa !2
  %16 = icmp ugt i32 %12, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %21, %27, %18, %24, %7
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #4
  ret i32 0

18:                                               ; preds = %14
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  store i32 1, i32* %19, align 4, !tbaa !2
  %20 = icmp eq i32 %12, 2
  br i1 %20, label %17, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  store i32 2, i32* %22, align 8, !tbaa !2
  %23 = icmp ugt i32 %12, 3
  br i1 %23, label %24, label %17

24:                                               ; preds = %21
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  store i32 3, i32* %25, align 4, !tbaa !2
  %26 = icmp eq i32 %12, 4
  br i1 %26, label %17, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  store i32 4, i32* %28, align 16, !tbaa !2
  br label %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @getint(...) local_unnamed_addr #3

declare dso_local i32 @putint(...) local_unnamed_addr #3

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
