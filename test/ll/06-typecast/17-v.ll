@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %24, label %13
13:
  %14 = call i8 addrspace(1)* @_B_g(i1 1), !dbg !10
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1, !dbg !10
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %16 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %15)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %2
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %18 = addrspacecast i8 addrspace(1)* %17 to i8*
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 %19, 2233785415175766016
  %21 = icmp eq i64 %20, 576460752303423488
  br i1 %21, label %26, label %38
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = call double @_bal_tagged_to_float(i8 addrspace(1)* %17)
  store double %27, double* %3
  %28 = load double, double* %3, !dbg !11
  %29 = call i8 addrspace(1)* @_bal_float_to_tagged(double %28), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %30 = call i8 addrspace(1)* @_B_g(i1 0), !dbg !12
  store i8 addrspace(1)* %30, i8 addrspace(1)** %5, !dbg !12
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %32 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %31)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %6
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %34 = addrspacecast i8 addrspace(1)* %33 to i8*
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 %35, 2233785415175766016
  %37 = icmp eq i64 %36, 576460752303423488
  br i1 %37, label %40, label %44
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !9
  store i8 addrspace(1)* %39, i8 addrspace(1)** %9
  br label %22
40:
  %41 = call double @_bal_tagged_to_float(i8 addrspace(1)* %33)
  store double %41, double* %7
  %42 = load double, double* %7, !dbg !13
  %43 = call i8 addrspace(1)* @_bal_float_to_tagged(double %42), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !13
  ret void
44:
  %45 = call i8 addrspace(1)* @_bal_panic_construct(i64 1539), !dbg !9
  store i8 addrspace(1)* %45, i8 addrspace(1)** %9
  br label %22
}
define internal i8 addrspace(1)* @_B_g(i1 %0) !dbg !7 {
  %isInt = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %11, label %5
5:
  store i1 %0, i1* %isInt
  %6 = load i1, i1* %isInt
  br i1 %6, label %7, label %9
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  ret i8 addrspace(1)* %8
9:
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.5)
  ret i8 addrspace(1)* %10
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/17-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"g", linkageName:"_B_g", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 22, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 22, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
