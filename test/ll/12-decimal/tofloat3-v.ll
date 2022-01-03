@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@.dec1 = internal unnamed_addr constant [8 x i8] c"2.1E+23\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x1 = alloca i8 addrspace(1)*
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %x2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %x3 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca double
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %35, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %13, i8 addrspace(1)** %x1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %x1
  %15 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %14)
  %16 = call double @_bal_tagged_to_float(i8 addrspace(1)* %15)
  store double %16, double* %1
  %17 = load double, double* %1, !dbg !8
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double %17), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %19 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x2
  %21 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %20)
  %22 = call double @_bal_tagged_to_float(i8 addrspace(1)* %21)
  store double %22, double* %3
  %23 = load double, double* %3, !dbg !9
  %24 = call i8 addrspace(1)* @_bal_float_to_tagged(double %23), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %x3
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x3
  %27 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %26)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %5
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %29 = addrspacecast i8 addrspace(1)* %28 to i8*
  %30 = ptrtoint i8* %29 to i64
  %31 = and i64 %30, 2233785415175766016
  %32 = icmp eq i64 %31, 576460752303423488
  br i1 %32, label %37, label %41
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = call double @_bal_tagged_to_float(i8 addrspace(1)* %28)
  store double %38, double* %6
  %39 = load double, double* %6, !dbg !10
  %40 = call i8 addrspace(1)* @_bal_float_to_tagged(double %39), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  ret void
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 2819), !dbg !7
  store i8 addrspace(1)* %42, i8 addrspace(1)** %8
  br label %33
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/tofloat3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 11, column: 4, scope: !5)
