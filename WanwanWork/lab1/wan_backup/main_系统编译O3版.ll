; ModuleID = 'main.c'
source_filename = "main.c"
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
  %10 = mul nsw i32 %8, %8
  %11 = tail call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %10) #4
  %12 = sitofp i32 %8 to float
  %13 = fadd float %12, 0x3FF1C28F60000000
  %14 = fptosi float %13 to i32
  %15 = tail call i32 (i32, ...) bitcast (i32 (...)* @putint to i32 (i32, ...)*)(i32 %14) #4
  %16 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %16) #4
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %18 = call i32 (i32*, ...) bitcast (i32 (...)* @getarray to i32 (i32*, ...)*)(i32* nonnull %17) #4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  store i32 0, i32* %21, align 16, !tbaa !2
  %22 = icmp ugt i32 %18, 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %27, %33, %24, %30, %7
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %16) #4
  ret i32 0

24:                                               ; preds = %20
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  store i32 1, i32* %25, align 4, !tbaa !2
  %26 = icmp eq i32 %18, 2
  br i1 %26, label %23, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 2
  store i32 2, i32* %28, align 8, !tbaa !2
  %29 = icmp ugt i32 %18, 3
  br i1 %29, label %30, label %23

30:                                               ; preds = %27
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 3
  store i32 3, i32* %31, align 4, !tbaa !2
  %32 = icmp eq i32 %18, 4
  br i1 %32, label %23, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  store i32 4, i32* %34, align 16, !tbaa !2
  br label %23
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
