@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca double
  %x.2 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %x.3 = alloca i8 addrspace(1)*
  %ib = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %27, label %6
6:
  store i1 1, i1* %b
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 84)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %x
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %22
9:
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 576460752303423488
  store i1 %14, i1* %1
  %15 = load i1, i1* %1
  br i1 %15, label %16, label %19
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %18 = call double @_bal_tagged_to_float(i8 addrspace(1)* %17)
  store double %18, double* %x.1
  ret void
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %20, i8 addrspace(1)** %x.2
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %21, i8 addrspace(1)** %_
  br label %23
22:
  ret void
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %24, i8 addrspace(1)** %x.3
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  store i8 addrspace(1)* %25, i8 addrspace(1)** %ib
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %ib, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  ret void
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if19-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 4, scope: !5)
