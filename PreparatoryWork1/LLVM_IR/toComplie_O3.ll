; ModuleID = 'toComplie.c'
source_filename = "toComplie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globla_var = dso_local local_unnamed_addr global i32 5, align 4
@maxn = dso_local local_unnamed_addr constant i32 6, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"c is a Letter!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @mul(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = mul nsw i32 %1, %0
  ret i32 %3
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %1)
  %5 = load i32, i32* %1, align 4, !tbaa !5
  %6 = icmp slt i32 %5, 11
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 11, i32* %1, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %7, %0
  %9 = phi i32 [ 11, %7 ], [ %5, %0 ]
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #4
  %11 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %2)
  %12 = load i8, i8* %2, align 1, !tbaa !9
  %13 = sext i8 %12 to i32
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %13)
  %15 = load i8, i8* %2, align 1, !tbaa !9
  %16 = and i8 %15, -33
  %17 = add i8 %16, -65
  %18 = icmp ult i8 %17, 26
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %21

21:                                               ; preds = %8, %19
  %22 = load i32, i32* %1, align 4, !tbaa !5
  %23 = sitofp i32 %22 to float
  %24 = fadd float %23, 0x3FF1C28F60000000
  %25 = fptosi float %24 to i32
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %25)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
