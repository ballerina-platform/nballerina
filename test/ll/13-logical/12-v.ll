@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i64
  %2 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %x.3 = alloca i64
  %_.1 = alloca i64
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %29, label %6
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
  br i1 %13, label %18, label %14
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %16 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  store i64 %16, i64* %x.1
  %17 = load i1, i1* %b
  store i1 %17, i1* %2
  br label %20
18:
  %19 = load i1, i1* %1
  store i1 %19, i1* %2
  br label %20
20:
  %21 = load i1, i1* %2
  br i1 %21, label %22, label %25
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %23, i8 addrspace(1)** %x.2
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %24, i8 addrspace(1)** %_
  ret void
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %27 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %26)
  store i64 %27, i64* %x.3
  %28 = load i64, i64* %x.3
  store i64 %28, i64* %_.1
  ret void
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
