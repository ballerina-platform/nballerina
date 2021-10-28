@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
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
  br i1 %9, label %19, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 504403158265495552
  br i1 %16, label %27, label %31
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %23 = addrspacecast i8 addrspace(1)* %22 to i8*
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 576460752303423488
  br i1 %26, label %32, label %42
27:
  %28 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %12)
  %29 = sitofp i64 %28 to double
  %30 = call i8 addrspace(1)* @_bal_float_to_tagged(double %29)
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  br label %21
31:
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  br label %21
32:
  %33 = call double @_bal_tagged_to_float(i8 addrspace(1)* %22)
  store double %33, double* %2
  %34 = load double, double* %2, !dbg !8
  %35 = call i8 addrspace(1)* @_bal_float_to_tagged(double %34), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %36 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %f
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %38 = addrspacecast i8 addrspace(1)* %37 to i8*
  %39 = ptrtoint i8* %38 to i64
  %40 = and i64 %39, 2233785415175766016
  %41 = icmp eq i64 %40, 576460752303423488
  br i1 %41, label %44, label %48
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1539), !dbg !7
  store i8 addrspace(1)* %43, i8 addrspace(1)** %6
  br label %17
44:
  %45 = call double @_bal_tagged_to_float(i8 addrspace(1)* %37)
  store double %45, double* %4
  %46 = load double, double* %4, !dbg !9
  %47 = call i8 addrspace(1)* @_bal_float_to_tagged(double %46), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  ret void
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051), !dbg !7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %6
  br label %17
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/09-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
