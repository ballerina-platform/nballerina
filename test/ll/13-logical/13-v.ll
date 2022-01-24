@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %x.3 = alloca i8 addrspace(1)*
  %_.1 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %27, label %6
6:
  store i1 1, i1* %b
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %x
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %9 = addrspacecast i8 addrspace(1)* %8 to i8*
  %10 = ptrtoint i8* %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = icmp eq i64 %11, 720575940379279360
  store i1 %12, i1* %1
  %13 = load i1, i1* %1
  br i1 %13, label %14, label %17
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %15, i8 addrspace(1)** %x.1
  %16 = load i1, i1* %b
  store i1 %16, i1* %2
  br label %19
17:
  %18 = load i1, i1* %1
  store i1 %18, i1* %2
  br label %19
19:
  %20 = load i1, i1* %2
  br i1 %20, label %21, label %24
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %22, i8 addrspace(1)** %x.2
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %23, i8 addrspace(1)** %_
  ret void
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %25, i8 addrspace(1)** %x.3
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  store i8 addrspace(1)* %26, i8 addrspace(1)** %_.1
  ret void
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %28)
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
