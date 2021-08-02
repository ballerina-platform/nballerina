; ModuleID = 'balrt_inline.c'
source_filename = "balrt_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GenericArray = type { i64, i64, i8 addrspace(1)* }

; Function Attrs: nounwind uwtable
define dso_local nonnull i8 addrspace(1)* @_bal_int_to_tagged(i64 %0) local_unnamed_addr #0 {
  %2 = add i64 %0, 36028797018963968
  %3 = icmp ult i64 %2, 72057594037927936
  br i1 %3, label %4, label %7, !prof !2, !misexpect !3

4:                                                ; preds = %1
  %5 = and i64 %0, 72057594037927935
  %6 = or i64 %5, 504403158265495552
  br label %13

7:                                                ; preds = %1
  %8 = tail call i8 addrspace(1)* @_bal_alloc(i64 8) #6
  %9 = bitcast i8 addrspace(1)* %8 to i64 addrspace(1)*
  store i64 %0, i64 addrspace(1)* %9, align 8, !tbaa !4
  %10 = addrspacecast i8 addrspace(1)* %8 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = or i64 %11, 2810246167479189504
  br label %13

13:                                               ; preds = %7, %4
  %14 = phi i64 [ %6, %4 ], [ %12, %7 ]
  %15 = inttoptr i64 %14 to i8*
  %16 = addrspacecast i8* %15 to i8 addrspace(1)*
  ret i8 addrspace(1)* %16
}

declare dso_local i8 addrspace(1)* @_bal_alloc(i64) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i64 @_bal_tagged_to_int(i8 addrspace(1)* %0) local_unnamed_addr #2 {
  %2 = addrspacecast i8 addrspace(1)* %0 to i8*
  %3 = ptrtoint i8* %2 to i64
  %4 = and i64 %3, 2305843009213693952
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %9, !prof !8, !misexpect !9

6:                                                ; preds = %1
  %7 = shl i64 %3, 8
  %8 = ashr exact i64 %7, 8
  br label %14

9:                                                ; preds = %1
  %10 = and i64 %3, 72057594037927928
  %11 = inttoptr i64 %10 to i64*
  %12 = addrspacecast i64* %11 to i64 addrspace(1)*
  %13 = load i64, i64 addrspace(1)* %12, align 8, !tbaa !4
  br label %14

14:                                               ; preds = %6, %9
  %15 = phi i64 [ %8, %6 ], [ %13, %9 ]
  ret i64 %15
}

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i64 @_Bmap__length(i8 addrspace(1)* %0) local_unnamed_addr #2 {
  %2 = addrspacecast i8 addrspace(1)* %0 to i8*
  %3 = ptrtoint i8* %2 to i64
  %4 = and i64 %3, 72057594037927928
  %5 = inttoptr i64 %4 to i64*
  %6 = addrspacecast i64* %5 to i64 addrspace(1)*
  %7 = load i64, i64 addrspace(1)* %6, align 8, !tbaa !10
  ret i64 %7
}

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i64 @_Barray__length(i8 addrspace(1)* %0) local_unnamed_addr #2 {
  %2 = addrspacecast i8 addrspace(1)* %0 to i8*
  %3 = ptrtoint i8* %2 to i64
  %4 = and i64 %3, 72057594037927928
  %5 = inttoptr i64 %4 to i64*
  %6 = addrspacecast i64* %5 to i64 addrspace(1)*
  %7 = load i64, i64 addrspace(1)* %6, align 8, !tbaa !10
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @_Barray__push(i8 addrspace(1)* %0, i8 addrspace(1)* %1) local_unnamed_addr #0 {
  %3 = addrspacecast i8 addrspace(1)* %0 to i8*
  %4 = ptrtoint i8* %3 to i64
  %5 = and i64 %4, 72057594037927928
  %6 = inttoptr i64 %5 to i8*
  %7 = inttoptr i64 %5 to i64*
  %8 = addrspacecast i64* %7 to i64 addrspace(1)*
  %9 = load i64, i64 addrspace(1)* %8, align 8, !tbaa !10
  %10 = getelementptr inbounds i8, i8* %6, i64 8
  %11 = bitcast i8* %10 to i64*
  %12 = addrspacecast i64* %11 to i64 addrspace(1)*
  %13 = load i64, i64 addrspace(1)* %12, align 8, !tbaa !10
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %18, label %15, !prof !2, !misexpect !9

15:                                               ; preds = %2
  %16 = inttoptr i64 %5 to %struct.GenericArray*
  %17 = addrspacecast %struct.GenericArray* %16 to %struct.GenericArray addrspace(1)*
  tail call void @_bal_array_grow(%struct.GenericArray addrspace(1)* %17, i64 0, i32 3) #6
  br label %18

18:                                               ; preds = %2, %15
  %19 = getelementptr inbounds i8, i8* %6, i64 16
  %20 = bitcast i8* %19 to i8 addrspace(1)* addrspace(1)**
  %21 = addrspacecast i8 addrspace(1)* addrspace(1)** %20 to i8 addrspace(1)* addrspace(1)* addrspace(1)*
  %22 = load i8 addrspace(1)* addrspace(1)*, i8 addrspace(1)* addrspace(1)* addrspace(1)* %21, align 8, !tbaa !10
  %23 = getelementptr inbounds i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %22, i64 %9
  store i8 addrspace(1)* %1, i8 addrspace(1)* addrspace(1)* %23, align 8, !tbaa !11
  %24 = add nsw i64 %9, 1
  store i64 %24, i64 addrspace(1)* %8, align 8, !tbaa !10
  ret void
}

declare dso_local void @_bal_array_grow(%struct.GenericArray addrspace(1)*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind readonly uwtable
define dso_local i64 @_Bstring__length(i8 addrspace(1)* %0) local_unnamed_addr #3 {
  %2 = addrspacecast i8 addrspace(1)* %0 to i8*
  %3 = ptrtoint i8* %2 to i64
  %4 = and i64 %3, 2305843009213693952
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = and i64 %3, 255
  %8 = icmp eq i64 %7, 255
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = trunc i64 %3 to i8
  %11 = icmp sgt i8 %10, -1
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = and i64 %3, 72057594037927935
  %14 = xor i64 %13, 72057594037927935
  %15 = tail call i64 @llvm.ctlz.i64(i64 %14, i1 true) #6, !range !13
  %16 = trunc i64 %15 to i32
  %17 = lshr i32 %16, 3
  %18 = sub nuw nsw i32 8, %17
  %19 = zext i32 %18 to i64
  br label %36

20:                                               ; preds = %1
  %21 = and i64 %3, 1
  %22 = icmp eq i64 %21, 0
  %23 = and i64 %3, 72057594037927928
  %24 = inttoptr i64 %23 to i8*
  br i1 %22, label %25, label %31, !prof !2, !misexpect !3

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %24, i64 2
  %27 = bitcast i8* %26 to i16*
  %28 = addrspacecast i16* %27 to i16 addrspace(1)*
  %29 = load i16, i16 addrspace(1)* %28, align 2, !tbaa !14
  %30 = zext i16 %29 to i64
  br label %36

31:                                               ; preds = %20
  %32 = getelementptr inbounds i8, i8* %24, i64 8
  %33 = bitcast i8* %32 to i64*
  %34 = addrspacecast i64* %33 to i64 addrspace(1)*
  %35 = load i64, i64 addrspace(1)* %34, align 8, !tbaa !4
  br label %36

36:                                               ; preds = %6, %9, %12, %25, %31
  %37 = phi i64 [ %30, %25 ], [ %35, %31 ], [ %19, %12 ], [ 0, %6 ], [ 1, %9 ]
  ret i64 %37
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @_bal_eq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) local_unnamed_addr #3 {
  %3 = icmp eq i8 addrspace(1)* %0, %1
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = addrspacecast i8 addrspace(1)* %0 to i8*
  %6 = ptrtoint i8* %5 to i64
  %7 = lshr i64 %6, 56
  %8 = trunc i64 %7 to i32
  %9 = addrspacecast i8 addrspace(1)* %1 to i8*
  %10 = ptrtoint i8* %9 to i64
  %11 = lshr i64 %10, 56
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = trunc i64 %7 to i8
  switch i8 %15, label %34 [
    i8 10, label %16
    i8 39, label %24
  ]

16:                                               ; preds = %14
  %17 = icmp eq i8* %5, %9
  br i1 %17, label %34, label %18

18:                                               ; preds = %16
  %19 = or i64 %10, %6
  %20 = and i64 %19, 2305843009213693952
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = tail call zeroext i1 @_bal_string_heap_eq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) #7
  br label %34

24:                                               ; preds = %14
  %25 = and i64 %6, 72057594037927928
  %26 = inttoptr i64 %25 to i64*
  %27 = addrspacecast i64* %26 to i64 addrspace(1)*
  %28 = and i64 %10, 72057594037927928
  %29 = inttoptr i64 %28 to i64*
  %30 = addrspacecast i64* %29 to i64 addrspace(1)*
  %31 = load i64, i64 addrspace(1)* %27, align 8, !tbaa !4
  %32 = load i64, i64 addrspace(1)* %30, align 8, !tbaa !4
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %22, %18, %16, %24, %4, %14, %2
  %35 = phi i1 [ true, %2 ], [ %33, %24 ], [ false, %4 ], [ false, %14 ], [ %23, %22 ], [ true, %16 ], [ false, %18 ]
  ret i1 %35
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @_bal_string_eq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) local_unnamed_addr #3 {
  %3 = addrspacecast i8 addrspace(1)* %0 to i8*
  %4 = addrspacecast i8 addrspace(1)* %1 to i8*
  %5 = icmp eq i8* %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = ptrtoint i8* %4 to i64
  %8 = ptrtoint i8* %3 to i64
  %9 = or i64 %7, %8
  %10 = and i64 %9, 2305843009213693952
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call zeroext i1 @_bal_string_heap_eq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) #7
  br label %14

14:                                               ; preds = %2, %6, %12
  %15 = phi i1 [ %13, %12 ], [ true, %2 ], [ false, %6 ]
  ret i1 %15
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: nounwind readonly
declare dso_local zeroext i1 @_bal_string_heap_eq(i8 addrspace(1)*, i8 addrspace(1)*) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
!2 = !{!"branch_weights", i32 2000, i32 1}
!3 = !{!"misexpect", i64 0, i64 2000, i64 1}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"misexpect", i64 1, i64 2000, i64 1}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{i64 8, i64 65}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
