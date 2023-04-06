@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032446312), i64 3), !dbg !9
  store ptr addrspace(1) %7, ptr %1
  %8 = load ptr addrspace(1), ptr %1
  call void @_B_p(ptr addrspace(1) %8), !dbg !11
  store ptr addrspace(1) null, ptr %2
  ret void
9:
  %10 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %10), !dbg !10
  unreachable
}
define internal void @_B_p(ptr addrspace(1) %0) !dbg !7 {
  %e = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %10, label %6
6:
  store ptr addrspace(1) %0, ptr %e
  %7 = load ptr addrspace(1), ptr %e
  store ptr addrspace(1) %7, ptr %2
  br label %8
8:
  %9 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !14
  unreachable
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !12
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !13
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/panic3-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"p", linkageName:"_B_p", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 6, column: 9, scope: !7)
!14 = !DILocation(line: 8, column: 0, scope: !7)
