@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %f = alloca double
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca double
  %9 = alloca i8 addrspace(1)*
  %10 = alloca double
  %11 = alloca double
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %39, label %16
16:
  store double 10.0, double* %f
  %17 = load double, double* %f
  %18 = fneg double %17
  store double %18, double* %1
  %19 = load double, double* %1, !dbg !8
  %20 = call i8 addrspace(1)* @_bal_float_to_tagged(double %19), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store double 0.0, double* %f
  %21 = load double, double* %f
  %22 = fneg double %21
  store double %22, double* %3
  %23 = load double, double* %3, !dbg !9
  %24 = call i8 addrspace(1)* @_bal_float_to_tagged(double %23), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store double -0.0, double* %f
  %25 = load double, double* %f
  %26 = fneg double %25
  store double %26, double* %5
  %27 = load double, double* %5, !dbg !10
  %28 = call i8 addrspace(1)* @_bal_float_to_tagged(double %27), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  store double 0x7FF0000000000000, double* %7
  %29 = load double, double* %7
  store double %29, double* %f
  %30 = load double, double* %f
  %31 = fneg double %30
  store double %31, double* %8
  %32 = load double, double* %8, !dbg !11
  %33 = call i8 addrspace(1)* @_bal_float_to_tagged(double %32), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !11
  store double 0x7FF8000000000000, double* %10
  %34 = load double, double* %10
  store double %34, double* %f
  %35 = load double, double* %f
  %36 = fneg double %35
  store double %36, double* %11
  %37 = load double, double* %11, !dbg !12
  %38 = call i8 addrspace(1)* @_bal_float_to_tagged(double %37), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !12
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/23-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 15, column: 4, scope: !5)
!12 = !DILocation(line: 18, column: 4, scope: !5)
