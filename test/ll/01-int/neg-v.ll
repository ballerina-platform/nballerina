@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %neg1 = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %66, label %16
16:
  %17 = call i64 @_B_neg(i64 17), !dbg !13
  store i64 %17, ptr %1
  %18 = load i64, ptr %1
  store i64 %18, ptr %neg1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = load i64, ptr %neg1
  %24 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %23), !dbg !15
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %2
  %29 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %29), !dbg !16
  store ptr addrspace(1) null, ptr %3
  %30 = call i64 @_B_neg(i64 0), !dbg !17
  store i64 %30, ptr %4
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load i64, ptr %4
  %36 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %35), !dbg !19
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %5
  %41 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !20
  store ptr addrspace(1) null, ptr %6
  %42 = call i64 @_B_neg(i64 -1), !dbg !21
  store i64 %42, ptr %7
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load i64, ptr %7
  %48 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %47), !dbg !23
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %48, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %8
  %53 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !24
  store ptr addrspace(1) null, ptr %9
  %54 = call i64 @_B_negneg(i64 1), !dbg !25
  store i64 %54, ptr %10
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = load i64, ptr %10
  %60 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %59), !dbg !27
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %11
  %65 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !28
  store ptr addrspace(1) null, ptr %12
  ret void
66:
  %67 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %67), !dbg !12
  unreachable
}
define internal i64 @_B_neg(i64 %0) !dbg !7 {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %x
  %8 = load i64, ptr %x
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %8)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !31
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !29
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !30
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !29
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
define internal i64 @_B_negneg(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, ptr %x
  %9 = load i64, ptr %x
  %10 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %9)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %21, label %16
12:
  %13 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !34
  unreachable
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !32
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !33
  unreachable
16:
  %17 = extractvalue {i64, i1} %10, 0
  store i64 %17, ptr %2
  %18 = load i64, ptr %2
  %19 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %18)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %26, label %23
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !32
  store ptr addrspace(1) %22, ptr %4
  br label %12
23:
  %24 = extractvalue {i64, i1} %19, 0
  store i64 %24, ptr %3
  %25 = load i64, ptr %3
  ret i64 %25
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !32
  store ptr addrspace(1) %27, ptr %4
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/neg-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"neg", linkageName:"_B_neg", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"negneg", linkageName:"_B_negneg", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 3, column: 16, scope: !5)
!13 = !DILocation(line: 4, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 4, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 15, scope: !5)
!20 = !DILocation(line: 6, column: 4, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 15, scope: !5)
!23 = !DILocation(line: 7, column: 15, scope: !5)
!24 = !DILocation(line: 7, column: 4, scope: !5)
!25 = !DILocation(line: 8, column: 15, scope: !5)
!26 = !DILocation(line: 8, column: 15, scope: !5)
!27 = !DILocation(line: 8, column: 15, scope: !5)
!28 = !DILocation(line: 8, column: 4, scope: !5)
!29 = !DILocation(line: 0, column: 0, scope: !7)
!30 = !DILocation(line: 11, column: 9, scope: !7)
!31 = !DILocation(line: 13, column: 0, scope: !7)
!32 = !DILocation(line: 0, column: 0, scope: !9)
!33 = !DILocation(line: 15, column: 9, scope: !9)
!34 = !DILocation(line: 17, column: 0, scope: !9)
