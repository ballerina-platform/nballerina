; ModuleID = 'floattest.c'
source_filename = "floattest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [100000 x double], align 16
  %2 = bitcast [100000 x double]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 800000, i8* nonnull %2) #4
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ 0, %0 ], [ %24, %3 ]
  %5 = trunc i64 %4 to i32
  %6 = sitofp i32 %5 to double
  %7 = getelementptr inbounds [100000 x double], [100000 x double]* %1, i64 0, i64 %4
  store double %6, double* %7, align 8, !tbaa !2
  %8 = add nuw nsw i64 %4, 1
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds [100000 x double], [100000 x double]* %1, i64 0, i64 %8
  store double %10, double* %11, align 8, !tbaa !2
  %12 = add nuw nsw i64 %4, 2
  %13 = trunc i64 %12 to i32
  %14 = sitofp i32 %13 to double
  %15 = getelementptr inbounds [100000 x double], [100000 x double]* %1, i64 0, i64 %12
  store double %14, double* %15, align 8, !tbaa !2
  %16 = add nuw nsw i64 %4, 3
  %17 = trunc i64 %16 to i32
  %18 = sitofp i32 %17 to double
  %19 = getelementptr inbounds [100000 x double], [100000 x double]* %1, i64 0, i64 %16
  store double %18, double* %19, align 8, !tbaa !2
  %20 = add nuw nsw i64 %4, 4
  %21 = trunc i64 %20 to i32
  %22 = sitofp i32 %21 to double
  %23 = getelementptr inbounds [100000 x double], [100000 x double]* %1, i64 0, i64 %20
  store double %22, double* %23, align 8, !tbaa !2
  %24 = add nuw nsw i64 %4, 5
  %25 = icmp eq i64 %24, 100000
  br i1 %25, label %26, label %3

26:                                               ; preds = %3, %31
  %27 = phi i32 [ %32, %31 ], [ 0, %3 ]
  %28 = phi i32 [ %53, %31 ], [ 0, %3 ]
  br label %34

29:                                               ; preds = %31
  %30 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  call void @llvm.lifetime.end.p0i8(i64 800000, i8* nonnull %2) #4
  ret i32 0

31:                                               ; preds = %51
  %32 = add nuw nsw i32 %27, 1
  %33 = icmp eq i32 %32, 1000000
  br i1 %33, label %29, label %26

34:                                               ; preds = %26, %51
  %35 = phi i32 [ 50000, %26 ], [ %54, %51 ]
  %36 = phi i32 [ %28, %26 ], [ %53, %51 ]
  %37 = sitofp i32 %35 to double
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = zext i32 %36 to i64
  br label %41

41:                                               ; preds = %46, %39
  %42 = phi i64 [ 0, %39 ], [ %47, %46 ]
  %43 = getelementptr inbounds [100000 x double], [100000 x double]* %1, i64 0, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !2
  %45 = tail call zeroext i1 @_bal_float_eq1(double %44, double %37) #4
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %40
  br i1 %48, label %51, label %41

49:                                               ; preds = %41
  %50 = trunc i64 %42 to i32
  br label %51

51:                                               ; preds = %46, %34, %49
  %52 = phi i32 [ -1, %34 ], [ %50, %49 ], [ -1, %46 ]
  %53 = add nsw i32 %52, %36
  %54 = add nuw nsw i32 %35, 17
  %55 = icmp ult i32 %35, 99983
  br i1 %55, label %34, label %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

declare dso_local zeroext i1 @_bal_float_eq1(double, double) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
