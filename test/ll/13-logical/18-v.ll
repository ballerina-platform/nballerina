@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %y.1 = alloca double
  %y.2 = alloca i1
  %_ = alloca ptr addrspace(1)
  %_.1 = alloca i1
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %35, label %4
4:
  %5 = and i64 72057594037927935, 1
  %6 = or i64 2449958197289549824, %5
  %7 = getelementptr i8, ptr addrspace(1) null, i64 %6
  store ptr addrspace(1) %7, ptr %x
  %8 = zext i1 1 to i64
  %9 = or i64 %8, 72057594037927936
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  store ptr addrspace(1) %10, ptr %y
  %11 = load ptr addrspace(1), ptr %x
  %12 = addrspacecast ptr addrspace(1) %11 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 144115188075855872
  br i1 %15, label %16, label %21
16:
  %17 = load ptr addrspace(1), ptr %x
  %18 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %17), !dbg !9
  store i64 %18, ptr %x.1
  %19 = load ptr addrspace(1), ptr %y
  %20 = call double @_bal_tagged_to_float(ptr addrspace(1) %19), !dbg !10
  store double %20, ptr %y.1
  ret void
21:
  %22 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %22, ptr %x.2
  %23 = load ptr addrspace(1), ptr %y
  %24 = addrspacecast ptr addrspace(1) %23 to ptr
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 216172782113783808
  br i1 %27, label %16, label %28
28:
  %29 = load ptr addrspace(1), ptr %y
  %30 = addrspacecast ptr addrspace(1) %29 to ptr
  %31 = ptrtoint ptr %30 to i64
  %32 = trunc i64 %31 to i1
  store i1 %32, ptr %y.2
  %33 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %33, ptr %_
  %34 = load i1, ptr %y.2
  store i1 %34, ptr %_.1
  ret void
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/18-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 1, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 0, scope: !5)
!10 = !DILocation(line: 9, column: 0, scope: !5)
