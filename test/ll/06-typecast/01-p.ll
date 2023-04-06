@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %18, label %9
9:
  %10 = call ptr addrspace(1) @_B04rootf(), !dbg !11
  store ptr addrspace(1) %10, ptr %1
  %11 = load ptr addrspace(1), ptr %1
  %12 = addrspacecast ptr addrspace(1) %11 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 144115188075855872
  br i1 %15, label %20, label %34
16:
  %17 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !16
  unreachable
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !10
  unreachable
20:
  %21 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %11), !dbg !12
  store i64 %21, ptr %2
  %22 = load i64, ptr %2
  store i64 %22, ptr %i
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load i64, ptr %i
  %28 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %27), !dbg !14
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %3
  %33 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !15
  store ptr addrspace(1) null, ptr %4
  ret void
34:
  %35 = call ptr addrspace(1) @_bal_panic_construct(i64 1283), !dbg !9
  store ptr addrspace(1) %35, ptr %5
  br label %16
}
define ptr addrspace(1) @_B04rootf() !dbg !7 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %8, label %4
4:
  %5 = zext i1 0 to i64
  %6 = or i64 %5, 72057594037927936
  %7 = getelementptr i8, ptr addrspace(1) null, i64 %6
  ret ptr addrspace(1) %7
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !18
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/01-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B04rootf", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 17, scope: !5)
!12 = !DILocation(line: 5, column: 12, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 0, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 9, column: 16, scope: !7)
