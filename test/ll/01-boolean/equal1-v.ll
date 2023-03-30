@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %13, label %12
12:
  call void @_B_printEq(i1 1, i1 1), !dbg !13
  store ptr addrspace(1) null, ptr %1
  call void @_B_printEq(i1 1, i1 0), !dbg !14
  store ptr addrspace(1) null, ptr %2
  call void @_B_printEq(i1 0, i1 1), !dbg !15
  store ptr addrspace(1) null, ptr %3
  call void @_B_printEq(i1 0, i1 0), !dbg !16
  store ptr addrspace(1) null, ptr %4
  call void @_B_printNotEq(i1 1, i1 1), !dbg !17
  store ptr addrspace(1) null, ptr %5
  call void @_B_printNotEq(i1 1, i1 0), !dbg !18
  store ptr addrspace(1) null, ptr %6
  call void @_B_printNotEq(i1 0, i1 1), !dbg !19
  store ptr addrspace(1) null, ptr %7
  call void @_B_printNotEq(i1 0, i1 0), !dbg !20
  store ptr addrspace(1) null, ptr %8
  ret void
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !12
  unreachable
}
define internal void @_B_printEq(i1 %0, i1 %1) !dbg !7 {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %43, label %11
11:
  store i1 %0, ptr %b1
  store i1 %1, ptr %b2
  %12 = load i1, ptr %b1
  %13 = load i1, ptr %b2
  %14 = icmp eq i1 %12, %13
  store i1 %14, ptr %3
  %15 = load i1, ptr %3
  br i1 %15, label %16, label %29
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = and i64 72057594037927935, 1
  %22 = or i64 2449958197289549824, %21
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %4
  %28 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !26
  store ptr addrspace(1) null, ptr %5
  br label %42
29:
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = and i64 72057594037927935, 0
  %35 = or i64 2449958197289549824, %34
  %36 = getelementptr i8, ptr addrspace(1) null, i64 %35
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %6
  %41 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !24
  store ptr addrspace(1) null, ptr %7
  br label %42
42:
  ret void
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !22
  unreachable
}
define internal void @_B_printNotEq(i1 %0, i1 %1) !dbg !9 {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %43, label %11
11:
  store i1 %0, ptr %b1
  store i1 %1, ptr %b2
  %12 = load i1, ptr %b1
  %13 = load i1, ptr %b2
  %14 = icmp ne i1 %12, %13
  store i1 %14, ptr %3
  %15 = load i1, ptr %3
  br i1 %15, label %16, label %29
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = and i64 72057594037927935, 1
  %22 = or i64 2449958197289549824, %21
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %4
  %28 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !32
  store ptr addrspace(1) null, ptr %5
  br label %42
29:
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = and i64 72057594037927935, 0
  %35 = or i64 2449958197289549824, %34
  %36 = getelementptr i8, ptr addrspace(1) null, i64 %35
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %6
  %41 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !30
  store ptr addrspace(1) null, ptr %7
  br label %42
42:
  ret void
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 6148), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !28
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-boolean/equal1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printEq", linkageName:"_B_printEq", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"printNotEq", linkageName:"_B_printNotEq", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 4, scope: !5)
!19 = !DILocation(line: 11, column: 4, scope: !5)
!20 = !DILocation(line: 12, column: 4, scope: !5)
!21 = !DILocation(line: 0, column: 0, scope: !7)
!22 = !DILocation(line: 15, column: 9, scope: !7)
!23 = !DILocation(line: 20, column: 19, scope: !7)
!24 = !DILocation(line: 20, column: 8, scope: !7)
!25 = !DILocation(line: 17, column: 19, scope: !7)
!26 = !DILocation(line: 17, column: 8, scope: !7)
!27 = !DILocation(line: 0, column: 0, scope: !9)
!28 = !DILocation(line: 24, column: 9, scope: !9)
!29 = !DILocation(line: 29, column: 19, scope: !9)
!30 = !DILocation(line: 29, column: 8, scope: !9)
!31 = !DILocation(line: 26, column: 19, scope: !9)
!32 = !DILocation(line: 26, column: 8, scope: !9)
