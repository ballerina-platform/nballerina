@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
define void @_B04rootmain() !dbg !5 {
  %INT_MIN = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %11, label %6
6:
  store i64 -9223372036854775808, ptr %INT_MIN
  %7 = load i64, ptr %INT_MIN
  %8 = icmp eq i64 -1, 0
  br i1 %8, label %13, label %15
9:
  %10 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %10), !dbg !9
  unreachable
11:
  %12 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !8
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 1026), !dbg !7
  store ptr addrspace(1) %14, ptr %2
  br label %9
15:
  %16 = icmp eq i64 %7, -9223372036854775808
  %17 = icmp eq i64 -1, -1
  %18 = and i1 %16, %17
  br i1 %18, label %22, label %19
19:
  %20 = sdiv i64 %7, -1
  store i64 %20, ptr %1
  %21 = load i64, ptr %1
  store i64 %21, ptr %INT_MIN
  ret void
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 1025), !dbg !7
  store ptr addrspace(1) %23, ptr %2
  br label %9
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-compoundassign/07-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 0, scope: !5)
