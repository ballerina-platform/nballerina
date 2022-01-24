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
  br i1 %6, label %33, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 504403158265495552
  store i1 %13, i1* %1
  %14 = load i1, i1* %1
  br i1 %14, label %23, label %15
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %16, i8 addrspace(1)** %x.1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %18 = addrspacecast i8 addrspace(1)* %17 to i8*
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 %19, 2233785415175766016
  %21 = icmp eq i64 %20, 576460752303423488
  store i1 %21, i1* %2
  %22 = load i1, i1* %2
  store i1 %22, i1* %3
  br label %25
23:
  %24 = load i1, i1* %1
  store i1 %24, i1* %3
  br label %25
25:
  %26 = load i1, i1* %3
  br i1 %26, label %27, label %30
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %28, i8 addrspace(1)** %x.2
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %29, i8 addrspace(1)** %_
  ret void
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x.3
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  store i8 addrspace(1)* %32, i8 addrspace(1)** %_.1
  ret void
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
