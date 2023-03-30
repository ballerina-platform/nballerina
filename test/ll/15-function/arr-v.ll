@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.func0 = internal unnamed_addr constant {ptr} {ptr @_B_sum}, align 8
@_Bi04root1 = external constant {i32}
@.func1 = internal unnamed_addr constant {ptr} {ptr @_B_mul}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %63, label %12
12:
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 5), !dbg !15
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 0
  store i64 1, ptr addrspace(1) %17
  %18 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 1
  store i64 2, ptr addrspace(1) %18
  %19 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 2
  store i64 3, ptr addrspace(1) %19
  %20 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 3
  store i64 4, ptr addrspace(1) %20
  %21 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 4
  store i64 5, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 5, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %1
  %25 = load ptr addrspace(1), ptr %1
  %26 = call i64 @_B_fold(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) %25, i64 0), !dbg !16
  store i64 %26, ptr %2
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load i64, ptr %2
  %32 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %31), !dbg !18
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %3
  %37 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !19
  store ptr addrspace(1) null, ptr %4
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 5), !dbg !20
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = getelementptr inbounds [0 x i64], ptr addrspace(1) %41, i64 0, i64 0
  store i64 1, ptr addrspace(1) %42
  %43 = getelementptr inbounds [0 x i64], ptr addrspace(1) %41, i64 0, i64 1
  store i64 2, ptr addrspace(1) %43
  %44 = getelementptr inbounds [0 x i64], ptr addrspace(1) %41, i64 0, i64 2
  store i64 3, ptr addrspace(1) %44
  %45 = getelementptr inbounds [0 x i64], ptr addrspace(1) %41, i64 0, i64 3
  store i64 4, ptr addrspace(1) %45
  %46 = getelementptr inbounds [0 x i64], ptr addrspace(1) %41, i64 0, i64 4
  store i64 5, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 5, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %5
  %50 = load ptr addrspace(1), ptr %5
  %51 = call i64 @_B_fold(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) %50, i64 1), !dbg !21
  store i64 %51, ptr %6
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = load i64, ptr %6
  %57 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %56), !dbg !23
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %7
  %62 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !24
  store ptr addrspace(1) null, ptr %8
  ret void
63:
  %64 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %64), !dbg !14
  unreachable
}
define internal i64 @_B_fold(ptr addrspace(1) %0, ptr addrspace(1) %1, i64 %2) !dbg !7 {
  %f = alloca ptr addrspace(1)
  %a = alloca ptr addrspace(1)
  %init = alloca i64
  %result = alloca i64
  %4 = alloca i64
  %i = alloca i64
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %39, label %13
13:
  store ptr addrspace(1) %0, ptr %f
  store ptr addrspace(1) %1, ptr %a
  store i64 %2, ptr %init
  %14 = load i64, ptr %init
  store i64 %14, ptr %result
  %15 = load ptr addrspace(1), ptr %a
  %16 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %15), !dbg !27
  %17 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %16), !dbg !28
  store i64 %17, ptr %4
  store i64 0, ptr %i
  br label %18
18:
  %19 = load i64, ptr %i
  %20 = load i64, ptr %4
  %21 = icmp slt i64 %19, %20
  store i1 %21, ptr %5
  %22 = load i1, ptr %5
  br i1 %22, label %25, label %23
23:
  %24 = load i64, ptr %result
  ret i64 %24
25:
  %26 = load ptr addrspace(1), ptr %a
  %27 = load i64, ptr %i
  %28 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 72057594037927928)
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  %31 = load i64, ptr addrspace(1) %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %41, label %44
33:
  %34 = load i64, ptr %i
  %35 = add nsw i64 %34, 1
  store i64 %35, ptr %8
  %36 = load i64, ptr %8
  store i64 %36, ptr %i
  br label %18
37:
  %38 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !30
  unreachable
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !26
  unreachable
41:
  %42 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 4)
  %43 = icmp ne ptr addrspace(1) %42, null
  br i1 %43, label %46, label %52
44:
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !25
  store ptr addrspace(1) %45, ptr %9
  br label %37
46:
  %47 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = getelementptr inbounds [0 x i64], ptr addrspace(1) %49, i64 0, i64 %27
  %51 = load i64, ptr addrspace(1) %50, align 8
  store i64 %51, ptr %6
  br label %58
52:
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 0
  %54 = load ptr, ptr addrspace(1) %53, align 8
  %55 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = call i64 %56(ptr addrspace(1) %26, i64 %27)
  store i64 %57, ptr %6
  br label %58
58:
  %59 = load i64, ptr %result
  %60 = load i64, ptr %6
  %61 = load ptr addrspace(1), ptr %f
  %62 = ptrtoint ptr addrspace(1) %61 to i64
  %63 = and i64 %62, 72057594037927928
  %64 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %63
  %65 = addrspacecast ptr addrspace(1) %64 to ptr
  %66 = bitcast ptr %65 to ptr
  %67 = getelementptr inbounds {ptr}, ptr %66, i32 0, i32 0
  %68 = load ptr, ptr %67
  %69 = call i64 %68(i64 %59, i64 %60), !dbg !29
  store i64 %69, ptr %7
  %70 = load i64, ptr %7
  store i64 %70, ptr %result
  br label %33
}
define internal i64 @_B_sum(i64 %0, i64 %1) !dbg !9 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  %9 = load i64, ptr %a
  %10 = load i64, ptr %b
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !33
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 4356), !dbg !31
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !32
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 4609), !dbg !31
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
define internal i64 @_B_mul(i64 %0, i64 %1) !dbg !11 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  %9 = load i64, ptr %a
  %10 = load i64, ptr %b
  %11 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !36
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 5380), !dbg !34
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !35
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 5633), !dbg !34
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/15-function/arr-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"fold", linkageName:"_B_fold", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"sum", linkageName:"_B_sum", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"mul", linkageName:"_B_mul", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 25, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 15, scope: !5)
!18 = !DILocation(line: 5, column: 15, scope: !5)
!19 = !DILocation(line: 5, column: 4, scope: !5)
!20 = !DILocation(line: 6, column: 25, scope: !5)
!21 = !DILocation(line: 6, column: 15, scope: !5)
!22 = !DILocation(line: 6, column: 15, scope: !5)
!23 = !DILocation(line: 6, column: 15, scope: !5)
!24 = !DILocation(line: 6, column: 4, scope: !5)
!25 = !DILocation(line: 0, column: 0, scope: !7)
!26 = !DILocation(line: 9, column: 9, scope: !7)
!27 = !DILocation(line: 11, column: 27, scope: !7)
!28 = !DILocation(line: 11, column: 27, scope: !7)
!29 = !DILocation(line: 12, column: 17, scope: !7)
!30 = !DILocation(line: 15, column: 0, scope: !7)
!31 = !DILocation(line: 0, column: 0, scope: !9)
!32 = !DILocation(line: 17, column: 9, scope: !9)
!33 = !DILocation(line: 19, column: 0, scope: !9)
!34 = !DILocation(line: 0, column: 0, scope: !11)
!35 = !DILocation(line: 21, column: 9, scope: !11)
!36 = !DILocation(line: 23, column: 0, scope: !11)
