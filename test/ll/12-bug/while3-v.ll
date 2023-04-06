@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %7, label %6
6:
  call void @_B_f(i1 1), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_f(i1 0), !dbg !12
  store ptr addrspace(1) null, ptr %2
  ret void
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !10
  unreachable
}
define internal void @_B_f(i1 %0) !dbg !7 {
  %b = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %33, label %9
9:
  store i1 %0, ptr %b
  br label %10
10:
  %11 = load i1, ptr %b
  br i1 %11, label %12, label %22
12:
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %2
  %21 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %21), !dbg !18
  store ptr addrspace(1) null, ptr %3
  br label %32
22:
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261426), ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %4
  %31 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !16
  store ptr addrspace(1) null, ptr %5
  ret void
32:
  ret void
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !14
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/while3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B_f", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 4, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 6, column: 9, scope: !7)
!15 = !DILocation(line: 13, column: 23, scope: !7)
!16 = !DILocation(line: 13, column: 12, scope: !7)
!17 = !DILocation(line: 9, column: 23, scope: !7)
!18 = !DILocation(line: 9, column: 12, scope: !7)
