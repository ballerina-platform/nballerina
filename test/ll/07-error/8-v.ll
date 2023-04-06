@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
define void @_B04rootmain() !dbg !5 {
  %result = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call ptr addrspace(1) @_B_err(i1 1), !dbg !15
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %10, ptr %result
  %11 = load ptr addrspace(1), ptr %result
  call void @_B_display(ptr addrspace(1) %11), !dbg !16
  store ptr addrspace(1) null, ptr %2
  %12 = call ptr addrspace(1) @_B_err(i1 0), !dbg !17
  store ptr addrspace(1) %12, ptr %3
  %13 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %13, ptr %result
  %14 = load ptr addrspace(1), ptr %result
  call void @_B_display(ptr addrspace(1) %14), !dbg !18
  store ptr addrspace(1) null, ptr %4
  ret void
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !14
  unreachable
}
define internal void @_B_display(ptr addrspace(1) %0) !dbg !7 {
  %result = alloca ptr addrspace(1)
  %result.1 = alloca ptr addrspace(1)
  %result.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %19, label %7
7:
  store ptr addrspace(1) %0, ptr %result
  %8 = load ptr addrspace(1), ptr %result
  %9 = addrspacecast ptr addrspace(1) %8 to ptr
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = icmp eq i64 %11, 432345564227567616
  br i1 %12, label %13, label %15
13:
  %14 = load ptr addrspace(1), ptr %result
  store ptr addrspace(1) %14, ptr %result.1
  call void @_B_p(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431062882)), !dbg !22
  store ptr addrspace(1) null, ptr %2
  br label %18
15:
  %16 = load ptr addrspace(1), ptr %result
  store ptr addrspace(1) %16, ptr %result.2
  %17 = load ptr addrspace(1), ptr %result.2
  call void @_B_p(ptr addrspace(1) %17), !dbg !21
  store ptr addrspace(1) null, ptr %3
  br label %18
18:
  ret void
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !19
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !20
  unreachable
}
define internal void @_B_p(ptr addrspace(1) %0) !dbg !9 {
  %v = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %18, label %7
7:
  store ptr addrspace(1) %0, ptr %v
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = load ptr addrspace(1), ptr %v
  %13 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %11, i64 0, i64 0
  store ptr addrspace(1) %12, ptr addrspace(1) %13
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 1, ptr addrspace(1) %14
  %15 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %2
  %17 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %17), !dbg !26
  store ptr addrspace(1) null, ptr %3
  ret void
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 5124), !dbg !23
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !24
  unreachable
}
define internal ptr addrspace(1) @_B_err(i1 %0) !dbg !11 {
  %ok = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %12, label %6
6:
  store i1 %0, ptr %ok
  %7 = load i1, ptr %ok
  br i1 %7, label %8, label %9
8:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223535)
9:
  %10 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738025223494594414), i64 29), !dbg !27
  store ptr addrspace(1) %10, ptr %2
  %11 = load ptr addrspace(1), ptr %2
  ret ptr addrspace(1) %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 6148), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !28
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"display", linkageName:"_B_display", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"p", linkageName:"_B_p", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"err", linkageName:"_B_err", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 23, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 13, scope: !5)
!18 = !DILocation(line: 8, column: 4, scope: !5)
!19 = !DILocation(line: 0, column: 0, scope: !7)
!20 = !DILocation(line: 11, column: 9, scope: !7)
!21 = !DILocation(line: 16, column: 8, scope: !7)
!22 = !DILocation(line: 13, column: 8, scope: !7)
!23 = !DILocation(line: 0, column: 0, scope: !9)
!24 = !DILocation(line: 20, column: 9, scope: !9)
!25 = !DILocation(line: 21, column: 15, scope: !9)
!26 = !DILocation(line: 21, column: 4, scope: !9)
!27 = !DILocation(line: 0, column: 0, scope: !11)
!28 = !DILocation(line: 24, column: 9, scope: !11)
