@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i1 0, i1* %b
  %6 = load i1, i1* %b, !dbg !10
  call void @_B04rootfunc(i1 %6), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define void @_B04rootfunc(i1 %0) !dbg !7 {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %x.2 = alloca double
  %f = alloca double
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %30, label %7
7:
  store i1 %0, i1* %b
  %8 = call i8 addrspace(1)* @_bal_float_to_tagged(double 8.0)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = lshr i64 %12, 56
  %14 = shl i64 1, %13
  %15 = and i64 %14, 130
  %16 = icmp ne i64 %15, 0
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  br i1 %17, label %18, label %20
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x.1
  ret void
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %22 = call double @_bal_tagged_to_float(i8 addrspace(1)* %21)
  store double %22, double* %x.2
  %23 = load i1, i1* %b
  br i1 %23, label %24, label %26
24:
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 40)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %x
  ret void
26:
  %27 = load double, double* %x.2
  store double %27, double* %f
  %28 = load double, double* %f, !dbg !12
  %29 = call i8 addrspace(1)* @_bal_float_to_tagged(double %28), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  ret void
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if20-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"func", linkageName:"_B04rootfunc", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 4, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 17, column: 4, scope: !7)
