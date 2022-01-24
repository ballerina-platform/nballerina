@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %x.2 = alloca double
  %_ = alloca double
  %x.3 = alloca i8 addrspace(1)*
  %_.1 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %40, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 720575940379279360
  store i1 %15, i1* %1
  %16 = load i1, i1* %1
  %17 = xor i1 1, %16
  store i1 %17, i1* %2
  %18 = load i1, i1* %2
  br i1 %18, label %19, label %29
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %20, i8 addrspace(1)** %x.1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 504403158265495552
  store i1 %25, i1* %3
  %26 = load i1, i1* %3
  %27 = xor i1 1, %26
  store i1 %27, i1* %4
  %28 = load i1, i1* %4
  store i1 %28, i1* %5
  br label %31
29:
  %30 = load i1, i1* %2
  store i1 %30, i1* %5
  br label %31
31:
  %32 = load i1, i1* %5
  br i1 %32, label %33, label %37
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %35 = call double @_bal_tagged_to_float(i8 addrspace(1)* %34)
  store double %35, double* %x.2
  %36 = load double, double* %x.2
  store double %36, double* %_
  ret void
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %38, i8 addrspace(1)** %x.3
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  store i8 addrspace(1)* %39, i8 addrspace(1)** %_.1
  ret void
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %41)
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
