@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_foo(i64 0, i64 5), !dbg !13
  store ptr addrspace(1) null, ptr %1
  ret void
6:
  %7 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %7), !dbg !12
  unreachable
}
define internal i64 @_B_inc(i64 %0) !dbg !7 {
  %n = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %n
  %8 = load i64, ptr %n
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !16
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !15
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !14
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
define internal void @_B_foo(i64 %0, i64 %1) !dbg !9 {
  %depth = alloca i64
  %maxDepth = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %38, label %13
13:
  store i64 %0, ptr %depth
  store i64 %1, ptr %maxDepth
  %14 = load i64, ptr %depth
  %15 = load i64, ptr %maxDepth
  %16 = icmp eq i64 %14, %15
  store i1 %16, ptr %3
  %17 = load i1, ptr %3
  br i1 %17, label %18, label %19
18:
  ret void
19:
  %20 = load i64, ptr %depth
  %21 = call i64 @_B_inc(i64 %20), !dbg !19
  store i64 %21, ptr %4
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = load i64, ptr %4
  %27 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %26), !dbg !21
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %5
  %32 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %32), !dbg !22
  store ptr addrspace(1) null, ptr %6
  %33 = load i64, ptr %depth
  %34 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %33, i64 1)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %44, label %40
36:
  %37 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !24
  unreachable
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 4356), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !18
  unreachable
40:
  %41 = extractvalue {i64, i1} %34, 0
  store i64 %41, ptr %7
  %42 = load i64, ptr %7
  %43 = load i64, ptr %maxDepth
  call void @_B_foo(i64 %42, i64 %43), !dbg !23
  store ptr addrspace(1) null, ptr %8
  ret void
44:
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 5633), !dbg !17
  store ptr addrspace(1) %45, ptr %9
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-misc/stack-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"inc", linkageName:"_B_inc", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 13, column: 9, scope: !7)
!16 = !DILocation(line: 15, column: 0, scope: !7)
!17 = !DILocation(line: 0, column: 0, scope: !9)
!18 = !DILocation(line: 17, column: 9, scope: !9)
!19 = !DILocation(line: 21, column: 15, scope: !9)
!20 = !DILocation(line: 21, column: 15, scope: !9)
!21 = !DILocation(line: 21, column: 15, scope: !9)
!22 = !DILocation(line: 21, column: 4, scope: !9)
!23 = !DILocation(line: 22, column: 4, scope: !9)
!24 = !DILocation(line: 23, column: 0, scope: !9)
