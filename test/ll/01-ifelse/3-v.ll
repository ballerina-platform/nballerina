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
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %8, label %7
7:
  call void @_B_printBranch(i64 5), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_printBranch(i64 10), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_printBranch(i64 15), !dbg !13
  store ptr addrspace(1) null, ptr %3
  ret void
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !10
  unreachable
}
define internal void @_B_printBranch(i64 %0) !dbg !7 {
  %x = alloca i64
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %41, label %10
10:
  store i64 %0, ptr %x
  %11 = load i64, ptr %x
  %12 = icmp slt i64 %11, 10
  store i1 %12, ptr %2
  %13 = load i1, ptr %2
  br i1 %13, label %14, label %27
14:
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = and i64 72057594037927935, 1
  %20 = or i64 2449958197289549824, %19
  %21 = getelementptr i8, ptr addrspace(1) null, i64 %20
  %22 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) %21, ptr addrspace(1) %22
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %23
  %24 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %25 = getelementptr i8, ptr addrspace(1) %24, i64 864691128455135236
  store ptr addrspace(1) %25, ptr %3
  %26 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %26), !dbg !19
  store ptr addrspace(1) null, ptr %4
  br label %40
27:
  %28 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %30 = load ptr addrspace(1), ptr addrspace(1) %29, align 8
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = and i64 72057594037927935, 0
  %33 = or i64 2449958197289549824, %32
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %31, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %5
  %39 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !17
  store ptr addrspace(1) null, ptr %6
  br label %40
40:
  ret void
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !15
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBranch", linkageName:"_B_printBranch", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 10, column: 9, scope: !7)
!16 = !DILocation(line: 15, column: 19, scope: !7)
!17 = !DILocation(line: 15, column: 8, scope: !7)
!18 = !DILocation(line: 12, column: 19, scope: !7)
!19 = !DILocation(line: 12, column: 8, scope: !7)
