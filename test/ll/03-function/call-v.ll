@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %7, label %6
6:
  call void @_B_test1(), !dbg !15
  store ptr addrspace(1) null, ptr %1
  call void @_B_test2(), !dbg !16
  store ptr addrspace(1) null, ptr %2
  ret void
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !14
  unreachable
}
define internal void @_B_test1() !dbg !7 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %31, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !19
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %x
  %14 = load ptr addrspace(1), ptr %x
  %15 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %14), !dbg !20
  store ptr addrspace(1) %15, ptr %2
  %16 = load ptr addrspace(1), ptr %2
  %17 = and i64 72057594037927935, 1
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %16, ptr addrspace(1) %19), !dbg !21
  store ptr addrspace(1) null, ptr %3
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load ptr addrspace(1), ptr %x
  %25 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %24), !dbg !23
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %4
  %30 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !24
  store ptr addrspace(1) null, ptr %5
  ret void
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !18
  unreachable
}
define internal void @_B_test2() !dbg !9 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %31, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !27
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %x
  %14 = load ptr addrspace(1), ptr %x
  %15 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %14), !dbg !28
  store ptr addrspace(1) %15, ptr %2
  %16 = load ptr addrspace(1), ptr %2
  %17 = and i64 72057594037927935, 2
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %16, ptr addrspace(1) %19), !dbg !29
  store ptr addrspace(1) null, ptr %3
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !30
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load ptr addrspace(1), ptr %x
  %25 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %24), !dbg !31
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %4
  %30 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !32
  store ptr addrspace(1) null, ptr %5
  ret void
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 4356), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !26
  unreachable
}
define internal ptr addrspace(1) @_B_foo(ptr addrspace(1) %0) !dbg !11 {
  %x = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store ptr addrspace(1) %0, ptr %x
  %6 = load ptr addrspace(1), ptr %x
  ret ptr addrspace(1) %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !33
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !34
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-function/call-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"test1", linkageName:"_B_test1", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"test2", linkageName:"_B_test2", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 6, column: 16, scope: !5)
!15 = !DILocation(line: 7, column: 2, scope: !5)
!16 = !DILocation(line: 8, column: 2, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 11, column: 9, scope: !7)
!19 = !DILocation(line: 12, column: 13, scope: !7)
!20 = !DILocation(line: 13, column: 4, scope: !7)
!21 = !DILocation(line: 13, column: 12, scope: !7)
!22 = !DILocation(line: 14, column: 14, scope: !7)
!23 = !DILocation(line: 14, column: 14, scope: !7)
!24 = !DILocation(line: 14, column: 3, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 17, column: 9, scope: !9)
!27 = !DILocation(line: 18, column: 13, scope: !9)
!28 = !DILocation(line: 19, column: 3, scope: !9)
!29 = !DILocation(line: 19, column: 10, scope: !9)
!30 = !DILocation(line: 20, column: 14, scope: !9)
!31 = !DILocation(line: 20, column: 14, scope: !9)
!32 = !DILocation(line: 20, column: 3, scope: !9)
!33 = !DILocation(line: 0, column: 0, scope: !11)
!34 = !DILocation(line: 23, column: 9, scope: !11)
