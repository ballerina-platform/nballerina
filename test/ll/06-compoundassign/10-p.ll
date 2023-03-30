@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %INT_MAX = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %12, label %6
6:
  store i64 9223372036854775807, ptr %INT_MAX
  %7 = load i64, ptr %INT_MAX
  %8 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %7, i64 2)
  %9 = extractvalue {i64, i1} %8, 1
  br i1 %9, label %17, label %14
10:
  %11 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !9
  unreachable
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !8
  unreachable
14:
  %15 = extractvalue {i64, i1} %8, 0
  store i64 %15, ptr %1
  %16 = load i64, ptr %1
  store i64 %16, ptr %INT_MAX
  ret void
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 1025), !dbg !7
  store ptr addrspace(1) %18, ptr %2
  br label %10
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-compoundassign/10-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 0, scope: !5)
