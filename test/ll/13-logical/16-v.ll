@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %x.3 = alloca i64
  %x.4 = alloca ptr addrspace(1)
  %_.1 = alloca ptr addrspace(1)
  %_.2 = alloca i64
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %36, label %4
4:
  store i1 1, ptr %b
  %5 = and i64 72057594037927935, 1
  %6 = or i64 2449958197289549824, %5
  %7 = getelementptr i8, ptr addrspace(1) null, i64 %6
  store ptr addrspace(1) %7, ptr %x
  %8 = load i1, ptr %b
  br i1 %8, label %9, label %15
9:
  %10 = load ptr addrspace(1), ptr %x
  %11 = addrspacecast ptr addrspace(1) %10 to ptr
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 144115188075855872
  br i1 %14, label %15, label %19
15:
  %16 = load ptr addrspace(1), ptr %x
  %17 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %16), !dbg !9
  store i64 %17, ptr %x.1
  %18 = load i1, ptr %b
  br i1 %18, label %22, label %25
19:
  %20 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %20, ptr %x.2
  %21 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %21, ptr %_
  br label %15
22:
  %23 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %23, ptr %x.4
  %24 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %24, ptr %_.1
  br label %35
25:
  %26 = load ptr addrspace(1), ptr %x
  %27 = addrspacecast ptr addrspace(1) %26 to ptr
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = icmp eq i64 %29, 144115188075855872
  br i1 %30, label %31, label %22
31:
  %32 = load ptr addrspace(1), ptr %x
  %33 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %32), !dbg !10
  store i64 %33, ptr %x.3
  %34 = load i64, ptr %x.3
  store i64 %34, ptr %_.2
  br label %35
35:
  ret void
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 1, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 7, scope: !5)
!10 = !DILocation(line: 8, column: 16, scope: !5)
