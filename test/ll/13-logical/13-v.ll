@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %x = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca i64
  %_ = alloca ptr addrspace(1)
  %_.1 = alloca ptr addrspace(1)
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %22, label %4
4:
  store i1 1, ptr %b
  %5 = and i64 72057594037927935, 1
  %6 = or i64 2449958197289549824, %5
  %7 = getelementptr i8, ptr addrspace(1) null, i64 %6
  store ptr addrspace(1) %7, ptr %x
  %8 = load ptr addrspace(1), ptr %x
  %9 = addrspacecast ptr addrspace(1) %8 to ptr
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = icmp eq i64 %11, 360287970189639680
  br i1 %12, label %13, label %16
13:
  %14 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %14, ptr %x.1
  %15 = load i1, ptr %b
  br i1 %15, label %20, label %16
16:
  %17 = load ptr addrspace(1), ptr %x
  %18 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %17), !dbg !9
  store i64 %18, ptr %x.2
  %19 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %19, ptr %_.1
  ret void
20:
  %21 = load ptr addrspace(1), ptr %x.1
  store ptr addrspace(1) %21, ptr %_
  ret void
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/13-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 1, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 22, scope: !5)
