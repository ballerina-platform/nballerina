@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %33, label %18
18:
  %19 = call i1 @_B_eq(i64 1, i64 2), !dbg !15
  store i1 %19, ptr %1
  %20 = load i1, ptr %1
  call void @_B_printBoolean(i1 %20), !dbg !16
  store ptr addrspace(1) null, ptr %2
  %21 = call i1 @_B_ne(i64 2, i64 1), !dbg !17
  store i1 %21, ptr %3
  %22 = load i1, ptr %3
  call void @_B_printBoolean(i1 %22), !dbg !18
  store ptr addrspace(1) null, ptr %4
  %23 = call i1 @_B_eq(i64 2, i64 -1), !dbg !19
  store i1 %23, ptr %5
  %24 = load i1, ptr %5
  call void @_B_printBoolean(i1 %24), !dbg !20
  store ptr addrspace(1) null, ptr %6
  %25 = call i1 @_B_ne(i64 1, i64 2), !dbg !21
  store i1 %25, ptr %7
  %26 = load i1, ptr %7
  call void @_B_printBoolean(i1 %26), !dbg !22
  store ptr addrspace(1) null, ptr %8
  %27 = call i1 @_B_eq(i64 0, i64 0), !dbg !23
  store i1 %27, ptr %9
  %28 = load i1, ptr %9
  call void @_B_printBoolean(i1 %28), !dbg !24
  store ptr addrspace(1) null, ptr %10
  %29 = call i1 @_B_ne(i64 2, i64 1), !dbg !25
  store i1 %29, ptr %11
  %30 = load i1, ptr %11
  call void @_B_printBoolean(i1 %30), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %31 = call i1 @_B_eq(i64 -1, i64 17), !dbg !27
  store i1 %31, ptr %13
  %32 = load i1, ptr %13
  call void @_B_printBoolean(i1 %32), !dbg !28
  store ptr addrspace(1) null, ptr %14
  ret void
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !14
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
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
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
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !34
  store ptr addrspace(1) null, ptr %3
  br label %37
24:
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
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
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !32
  store ptr addrspace(1) null, ptr %5
  br label %37
37:
  ret void
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !29
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !30
  unreachable
}
define internal i1 @_B_eq(i64 %0, i64 %1) !dbg !9 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %8 = load i64, ptr %x
  %9 = load i64, ptr %y
  %10 = icmp eq i64 %8, %9
  store i1 %10, ptr %3
  %11 = load i1, ptr %3
  ret i1 %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !35
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !36
  unreachable
}
define internal i1 @_B_ne(i64 %0, i64 %1) !dbg !11 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %8 = load i64, ptr %x
  %9 = load i64, ptr %y
  %10 = icmp ne i64 %8, %9
  store i1 %10, ptr %3
  %11 = load i1, ptr %3
  ret i1 %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 6916), !dbg !37
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !38
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-boolean/equal3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"eq", linkageName:"_B_eq", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"ne", linkageName:"_B_ne", scope: !1, file: !1, line: 27, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 17, scope: !5)
!16 = !DILocation(line: 5, column: 4, scope: !5)
!17 = !DILocation(line: 6, column: 17, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 17, scope: !5)
!20 = !DILocation(line: 7, column: 4, scope: !5)
!21 = !DILocation(line: 8, column: 17, scope: !5)
!22 = !DILocation(line: 8, column: 4, scope: !5)
!23 = !DILocation(line: 9, column: 17, scope: !5)
!24 = !DILocation(line: 9, column: 4, scope: !5)
!25 = !DILocation(line: 10, column: 17, scope: !5)
!26 = !DILocation(line: 10, column: 4, scope: !5)
!27 = !DILocation(line: 11, column: 17, scope: !5)
!28 = !DILocation(line: 11, column: 4, scope: !5)
!29 = !DILocation(line: 0, column: 0, scope: !7)
!30 = !DILocation(line: 14, column: 9, scope: !7)
!31 = !DILocation(line: 19, column: 19, scope: !7)
!32 = !DILocation(line: 19, column: 8, scope: !7)
!33 = !DILocation(line: 16, column: 19, scope: !7)
!34 = !DILocation(line: 16, column: 8, scope: !7)
!35 = !DILocation(line: 0, column: 0, scope: !9)
!36 = !DILocation(line: 23, column: 9, scope: !9)
!37 = !DILocation(line: 0, column: 0, scope: !11)
!38 = !DILocation(line: 27, column: 9, scope: !11)
