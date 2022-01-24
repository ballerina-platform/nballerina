@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %_.1 = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %20, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %6, i8 addrspace(1)** %x
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %8 = addrspacecast i8 addrspace(1)* %7 to i8*
  %9 = ptrtoint i8* %8 to i64
  %10 = and i64 %9, 2233785415175766016
  %11 = icmp eq i64 %10, 720575940379279360
  store i1 %11, i1* %1
  %12 = load i1, i1* %1
  br i1 %12, label %13, label %16
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %14, i8 addrspace(1)** %x.1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %_
  ret void
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %18 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %17)
  store i64 %18, i64* %x.2
  %19 = load i64, i64* %x.2
  store i64 %19, i64* %_.1
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
