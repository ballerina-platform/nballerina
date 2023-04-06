@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca ptr addrspace(1)
  %1 = alloca i64
  %2 = alloca double
  %_ = alloca double
  %x.3 = alloca ptr addrspace(1)
  %_.1 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %29, label %6
6:
  %7 = and i64 72057594037927935, 1
  %8 = or i64 2449958197289549824, %7
  %9 = getelementptr i8, ptr addrspace(1) null, i64 %8
  store ptr addrspace(1) %9, ptr %x
  %10 = load ptr addrspace(1), ptr %x
  %11 = addrspacecast ptr addrspace(1) %10 to ptr
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 360287970189639680
  br i1 %14, label %15, label %18
15:
  %16 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %16, ptr %x.3
  %17 = load ptr addrspace(1), ptr %x.3
  store ptr addrspace(1) %17, ptr %_.1
  ret void
18:
  %19 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %19, ptr %x.2
  %20 = load ptr addrspace(1), ptr %x.2
  %21 = addrspacecast ptr addrspace(1) %20 to ptr
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 144115188075855872
  br i1 %24, label %15, label %25
25:
  %26 = load ptr addrspace(1), ptr %x.2
  %27 = call double @_bal_tagged_to_float(ptr addrspace(1) %26), !dbg !9
  store double %27, ptr %2
  %28 = load double, ptr %2
  store double %28, ptr %_
  ret void
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/15-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 1, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 29, scope: !5)
