@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %n = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %10
10:
  %11 = call ptr addrspace(1) @_B_ifElse(i1 1, i1 1, i64 17), !dbg !11
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  %13 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %12), !dbg !12
  %14 = extractvalue {ptr addrspace(1), i1} %13, 1
  br i1 %14, label %26, label %19
15:
  %16 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !17
  unreachable
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !10
  unreachable
19:
  %20 = extractvalue {ptr addrspace(1), i1} %13, 0
  store ptr addrspace(1) %20, ptr %2
  %21 = load ptr addrspace(1), ptr %2
  %22 = addrspacecast ptr addrspace(1) %21 to ptr
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 144115188075855872
  br i1 %25, label %28, label %42
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !9
  store ptr addrspace(1) %27, ptr %6
  br label %15
28:
  %29 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %21), !dbg !13
  store i64 %29, ptr %3
  %30 = load i64, ptr %3
  store i64 %30, ptr %n
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load i64, ptr %n
  %36 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %35), !dbg !15
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %4
  %41 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !16
  store ptr addrspace(1) null, ptr %5
  ret void
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 1283), !dbg !9
  store ptr addrspace(1) %43, ptr %6
  br label %15
}
define internal ptr addrspace(1) @_B_ifElse(i1 %0, i1 %1, i64 %2) !dbg !7 {
  %t = alloca i1
  %b = alloca i1
  %n = alloca i64
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %17, label %7
7:
  store i1 %0, ptr %t
  store i1 %1, ptr %b
  store i64 %2, ptr %n
  %8 = load i1, ptr %t
  br i1 %8, label %9, label %14
9:
  %10 = load i1, ptr %b
  %11 = zext i1 %10 to i64
  %12 = or i64 %11, 72057594037927936
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  ret ptr addrspace(1) %13
14:
  %15 = load i64, ptr %n
  %16 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %15), !dbg !20
  ret ptr addrspace(1) %16
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !18
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !19
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-typecast/2-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"ifElse", linkageName:"_B_ifElse", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 17, scope: !5)
!12 = !DILocation(line: 5, column: 12, scope: !5)
!13 = !DILocation(line: 5, column: 12, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 0, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 9, column: 9, scope: !7)
!20 = !DILocation(line: 14, column: 8, scope: !7)
