@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca i8 addrspace(1)*
  %f = alloca i8 addrspace(1)*
  %4 = alloca double
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %21, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %13 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %12)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 576460752303423488
  br i1 %18, label %23, label %33
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = call double @_bal_tagged_to_float(i8 addrspace(1)* %14)
  store double %24, double* %2
  %25 = load double, double* %2, !dbg !8
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double %25), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %27 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %f
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %29 = addrspacecast i8 addrspace(1)* %28 to i8*
  %30 = ptrtoint i8* %29 to i64
  %31 = and i64 %30, 2233785415175766016
  %32 = icmp eq i64 %31, 576460752303423488
  br i1 %32, label %35, label %39
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 1539), !dbg !7
  store i8 addrspace(1)* %34, i8 addrspace(1)** %6
  br label %19
35:
  %36 = call double @_bal_tagged_to_float(i8 addrspace(1)* %28)
  store double %36, double* %4
  %37 = load double, double* %4, !dbg !9
  %38 = call i8 addrspace(1)* @_bal_float_to_tagged(double %37), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051), !dbg !7
  store i8 addrspace(1)* %40, i8 addrspace(1)** %6
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/09-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
