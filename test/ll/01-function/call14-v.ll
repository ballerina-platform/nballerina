@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %32, label %11
11:
  %12 = call i64 @_B_foobar(), !dbg !19
  store i64 %12, ptr %1
  %13 = load i64, ptr %1
  %14 = call i64 @_B_sum(i64 23, i64 %13), !dbg !20
  store i64 %14, ptr %2
  %15 = load i64, ptr %2
  %16 = call i64 @_B_baz(i64 %15), !dbg !21
  store i64 %16, ptr %3
  %17 = load i64, ptr %3
  %18 = call i64 @_B_bar(i64 %17), !dbg !22
  store i64 %18, ptr %4
  %19 = load i64, ptr %4
  %20 = call i64 @_B_foo(i64 %19), !dbg !23
  store i64 %20, ptr %5
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load i64, ptr %5
  %26 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %25), !dbg !25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %6
  %31 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !26
  store ptr addrspace(1) null, ptr %7
  ret void
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !18
  unreachable
}
define internal i64 @_B_foo(i64 %0) !dbg !7 {
  %x = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, ptr %x
  %6 = load i64, ptr %x
  ret i64 %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !28
  unreachable
}
define internal i64 @_B_bar(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, ptr %x
  %6 = load i64, ptr %x
  ret i64 %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !29
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !30
  unreachable
}
define internal i64 @_B_baz(i64 %0) !dbg !11 {
  %x = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, ptr %x
  %6 = load i64, ptr %x
  ret i64 %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 4100), !dbg !31
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !32
  unreachable
}
define internal i64 @_B_foobar() !dbg !13 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 12
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 5124), !dbg !33
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !34
  unreachable
}
define internal i64 @_B_sum(i64 %0, i64 %1) !dbg !15 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %9 = load i64, ptr %x
  %10 = load i64, ptr %y
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !37
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 6148), !dbg !35
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !36
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 6401), !dbg !35
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"baz", linkageName:"_B_baz", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"foobar", linkageName:"_B_foobar", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = distinct !DISubprogram(name:"sum", linkageName:"_B_sum", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !16)
!16 = !{}
!17 = !DILocation(line: 0, column: 0, scope: !5)
!18 = !DILocation(line: 4, column: 16, scope: !5)
!19 = !DILocation(line: 5, column: 35, scope: !5)
!20 = !DILocation(line: 5, column: 27, scope: !5)
!21 = !DILocation(line: 5, column: 23, scope: !5)
!22 = !DILocation(line: 5, column: 19, scope: !5)
!23 = !DILocation(line: 5, column: 15, scope: !5)
!24 = !DILocation(line: 5, column: 15, scope: !5)
!25 = !DILocation(line: 5, column: 15, scope: !5)
!26 = !DILocation(line: 5, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 8, column: 9, scope: !7)
!29 = !DILocation(line: 0, column: 0, scope: !9)
!30 = !DILocation(line: 12, column: 9, scope: !9)
!31 = !DILocation(line: 0, column: 0, scope: !11)
!32 = !DILocation(line: 16, column: 9, scope: !11)
!33 = !DILocation(line: 0, column: 0, scope: !13)
!34 = !DILocation(line: 20, column: 9, scope: !13)
!35 = !DILocation(line: 0, column: 0, scope: !15)
!36 = !DILocation(line: 24, column: 9, scope: !15)
!37 = !DILocation(line: 26, column: 0, scope: !15)
