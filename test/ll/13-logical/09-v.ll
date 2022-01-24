@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %x.3 = alloca i8 addrspace(1)*
  %_.1 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %39, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = lshr i64 %12, 56
  %14 = shl i64 1, %13
  %15 = and i64 %14, 1152
  %16 = icmp ne i64 %15, 0
  store i1 %16, i1* %1
  %17 = load i1, i1* %1
  br i1 %17, label %18, label %29
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x.1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = lshr i64 %23, 56
  %25 = shl i64 1, %24
  %26 = and i64 %25, 1280
  %27 = icmp ne i64 %26, 0
  store i1 %27, i1* %2
  %28 = load i1, i1* %2
  store i1 %28, i1* %3
  br label %31
29:
  %30 = load i1, i1* %1
  store i1 %30, i1* %3
  br label %31
31:
  %32 = load i1, i1* %3
  br i1 %32, label %33, label %36
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %34, i8 addrspace(1)** %x.2
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %35, i8 addrspace(1)** %_
  ret void
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %37, i8 addrspace(1)** %x.3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  store i8 addrspace(1)* %38, i8 addrspace(1)** %_.1
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/09-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
