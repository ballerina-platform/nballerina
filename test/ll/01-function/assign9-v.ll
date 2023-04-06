@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
define void @_B04rootmain() !dbg !5 {
  %_ = alloca ptr addrspace(1)
  %_.1 = alloca ptr addrspace(1)
  %_.2 = alloca ptr addrspace(1)
  %_.3 = alloca ptr addrspace(1)
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %17, label %4
4:
  %5 = and i64 72057594037927935, 100
  %6 = or i64 2449958197289549824, %5
  %7 = getelementptr i8, ptr addrspace(1) null, i64 %6
  store ptr addrspace(1) %7, ptr %_
  %8 = and i64 72057594037927935, 111
  %9 = or i64 2449958197289549824, %8
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  store ptr addrspace(1) %10, ptr %_.1
  %11 = and i64 72057594037927935, 43
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  store ptr addrspace(1) %13, ptr %_.2
  %14 = and i64 72057594037927935, 87
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  store ptr addrspace(1) %16, ptr %_.3
  ret void
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/assign9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
