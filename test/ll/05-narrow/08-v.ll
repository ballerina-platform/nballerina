@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %23, label %7
7:
  %8 = and i64 72057594037927935, 1
  %9 = or i64 2449958197289549824, %8
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  %11 = call i64 @_B_foo(ptr addrspace(1) %10), !dbg !11
  store i64 %11, ptr %1
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = load i64, ptr %1
  %17 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %16), !dbg !13
  %18 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %17, ptr addrspace(1) %18
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %19
  %20 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %22), !dbg !14
  store ptr addrspace(1) null, ptr %3
  ret void
23:
  %24 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %24), !dbg !10
  unreachable
}
define internal i64 @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %n = alloca ptr addrspace(1)
  %n.1 = alloca i64
  %n.2 = alloca ptr addrspace(1)
  %i = alloca i64
  %i.1 = alloca i64
  %i.2 = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %30, label %5
5:
  store ptr addrspace(1) %0, ptr %x
  %6 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %6, ptr %n
  %7 = load ptr addrspace(1), ptr %n
  %8 = addrspacecast ptr addrspace(1) %7 to ptr
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 2233785415175766016
  %11 = icmp eq i64 %10, 144115188075855872
  br i1 %11, label %12, label %15
12:
  %13 = load ptr addrspace(1), ptr %n
  %14 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %13), !dbg !17
  store i64 %14, ptr %n.1
  store i64 1, ptr %i
  br label %17
15:
  %16 = load ptr addrspace(1), ptr %n
  store ptr addrspace(1) %16, ptr %n.2
  ret i64 0
17:
  %18 = load i64, ptr %i
  %19 = icmp sle i64 0, %18
  %20 = icmp sge i64 0, %18
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %27
22:
  %23 = load i64, ptr %i
  store i64 %23, ptr %i.1
  %24 = and i64 72057594037927935, 1
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  store ptr addrspace(1) %26, ptr %n
  ret i64 -1
27:
  %28 = load i64, ptr %i
  store i64 %28, ptr %i.2
  %29 = load i64, ptr %n.1
  ret i64 %29
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !16
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-narrow/08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 8, column: 9, scope: !7)
!17 = !DILocation(line: 18, column: 4, scope: !7)
