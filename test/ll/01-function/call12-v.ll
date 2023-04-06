@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %26, label %9
9:
  %10 = call i64 @_B_getArg1(), !dbg !15
  store i64 %10, ptr %1
  %11 = call i64 @_B_getArg2(), !dbg !16
  store i64 %11, ptr %2
  %12 = load i64, ptr %1
  %13 = load i64, ptr %2
  %14 = call i64 @_B_foo(i64 %12, i64 %13), !dbg !17
  store i64 %14, ptr %3
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = load i64, ptr %3
  %20 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %19), !dbg !19
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %4
  %25 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !20
  store ptr addrspace(1) null, ptr %5
  ret void
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !14
  unreachable
}
define internal i64 @_B_foo(i64 %0, i64 %1) !dbg !7 {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %i
  store i64 %1, ptr %j
  %9 = load i64, ptr %i
  %10 = load i64, ptr %j
  %11 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !23
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !22
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !21
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
define internal i64 @_B_getArg1() !dbg !9 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 2
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !24
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !25
  unreachable
}
define internal i64 @_B_getArg2() !dbg !11 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 4
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 4100), !dbg !26
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !27
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"getArg1", linkageName:"_B_getArg1", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"getArg2", linkageName:"_B_getArg2", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 19, scope: !5)
!16 = !DILocation(line: 5, column: 30, scope: !5)
!17 = !DILocation(line: 5, column: 15, scope: !5)
!18 = !DILocation(line: 5, column: 15, scope: !5)
!19 = !DILocation(line: 5, column: 15, scope: !5)
!20 = !DILocation(line: 5, column: 4, scope: !5)
!21 = !DILocation(line: 0, column: 0, scope: !7)
!22 = !DILocation(line: 8, column: 9, scope: !7)
!23 = !DILocation(line: 10, column: 0, scope: !7)
!24 = !DILocation(line: 0, column: 0, scope: !9)
!25 = !DILocation(line: 12, column: 9, scope: !9)
!26 = !DILocation(line: 0, column: 0, scope: !11)
!27 = !DILocation(line: 16, column: 9, scope: !11)
