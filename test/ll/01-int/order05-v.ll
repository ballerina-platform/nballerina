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
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i8
  %27 = load ptr, ptr @_bal_stack_guard
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %30, label %29
29:
  call void @_B_printBoolean(i1 1), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_printBoolean(i1 1), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_printBoolean(i1 1), !dbg !13
  store ptr addrspace(1) null, ptr %3
  call void @_B_printBoolean(i1 1), !dbg !14
  store ptr addrspace(1) null, ptr %4
  call void @_B_printBoolean(i1 1), !dbg !15
  store ptr addrspace(1) null, ptr %5
  call void @_B_printBoolean(i1 0), !dbg !16
  store ptr addrspace(1) null, ptr %6
  call void @_B_printBoolean(i1 1), !dbg !17
  store ptr addrspace(1) null, ptr %7
  call void @_B_printBoolean(i1 1), !dbg !18
  store ptr addrspace(1) null, ptr %8
  call void @_B_printBoolean(i1 1), !dbg !19
  store ptr addrspace(1) null, ptr %9
  call void @_B_printBoolean(i1 1), !dbg !20
  store ptr addrspace(1) null, ptr %10
  call void @_B_printBoolean(i1 0), !dbg !21
  store ptr addrspace(1) null, ptr %11
  call void @_B_printBoolean(i1 0), !dbg !22
  store ptr addrspace(1) null, ptr %12
  call void @_B_printBoolean(i1 1), !dbg !23
  store ptr addrspace(1) null, ptr %13
  call void @_B_printBoolean(i1 1), !dbg !24
  store ptr addrspace(1) null, ptr %14
  call void @_B_printBoolean(i1 1), !dbg !25
  store ptr addrspace(1) null, ptr %15
  call void @_B_printBoolean(i1 0), !dbg !26
  store ptr addrspace(1) null, ptr %16
  call void @_B_printBoolean(i1 0), !dbg !27
  store ptr addrspace(1) null, ptr %17
  call void @_B_printBoolean(i1 0), !dbg !28
  store ptr addrspace(1) null, ptr %18
  call void @_B_printBoolean(i1 1), !dbg !29
  store ptr addrspace(1) null, ptr %19
  call void @_B_printBoolean(i1 1), !dbg !30
  store ptr addrspace(1) null, ptr %20
  call void @_B_printBoolean(i1 0), !dbg !31
  store ptr addrspace(1) null, ptr %21
  call void @_B_printBoolean(i1 0), !dbg !32
  store ptr addrspace(1) null, ptr %22
  call void @_B_printBoolean(i1 0), !dbg !33
  store ptr addrspace(1) null, ptr %23
  call void @_B_printBoolean(i1 0), !dbg !34
  store ptr addrspace(1) null, ptr %24
  call void @_B_printBoolean(i1 1), !dbg !35
  store ptr addrspace(1) null, ptr %25
  ret void
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !10
  unreachable
}
define internal void @_B_printBoolean(i1 %0) !dbg !7 {
  %b = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %38, label %9
9:
  store i1 %0, ptr %b
  %10 = load i1, ptr %b
  br i1 %10, label %11, label %24
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = and i64 72057594037927935, 1
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %2
  %23 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !41
  store ptr addrspace(1) null, ptr %3
  br label %37
24:
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !38
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = and i64 72057594037927935, 0
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %4
  %36 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !39
  store ptr addrspace(1) null, ptr %5
  br label %37
37:
  ret void
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 9220), !dbg !36
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !37
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/order05-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 4, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
!17 = !DILocation(line: 12, column: 4, scope: !5)
!18 = !DILocation(line: 13, column: 4, scope: !5)
!19 = !DILocation(line: 14, column: 4, scope: !5)
!20 = !DILocation(line: 15, column: 4, scope: !5)
!21 = !DILocation(line: 17, column: 4, scope: !5)
!22 = !DILocation(line: 18, column: 4, scope: !5)
!23 = !DILocation(line: 19, column: 4, scope: !5)
!24 = !DILocation(line: 20, column: 4, scope: !5)
!25 = !DILocation(line: 21, column: 4, scope: !5)
!26 = !DILocation(line: 23, column: 4, scope: !5)
!27 = !DILocation(line: 24, column: 4, scope: !5)
!28 = !DILocation(line: 25, column: 4, scope: !5)
!29 = !DILocation(line: 26, column: 4, scope: !5)
!30 = !DILocation(line: 27, column: 4, scope: !5)
!31 = !DILocation(line: 29, column: 4, scope: !5)
!32 = !DILocation(line: 30, column: 4, scope: !5)
!33 = !DILocation(line: 31, column: 4, scope: !5)
!34 = !DILocation(line: 32, column: 4, scope: !5)
!35 = !DILocation(line: 33, column: 4, scope: !5)
!36 = !DILocation(line: 0, column: 0, scope: !7)
!37 = !DILocation(line: 36, column: 9, scope: !7)
!38 = !DILocation(line: 41, column: 19, scope: !7)
!39 = !DILocation(line: 41, column: 8, scope: !7)
!40 = !DILocation(line: 38, column: 19, scope: !7)
!41 = !DILocation(line: 38, column: 8, scope: !7)
