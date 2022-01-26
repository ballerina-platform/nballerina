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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca double
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %35, label %14
14:
  store double 10.0, double* %f
  %15 = load double, double* %f
  %16 = fneg double %15
  store double %16, double* %1
  %17 = load double, double* %1, !dbg !8
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double %17), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store double 0.0, double* %f
  %19 = load double, double* %f
  %20 = fneg double %19
  store double %20, double* %3
  %21 = load double, double* %3, !dbg !9
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double %21), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store double -0.0, double* %f
  %23 = load double, double* %f
  %24 = fneg double %23
  store double %24, double* %5
  %25 = load double, double* %5, !dbg !10
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double %25), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  store double 0x7FF0000000000000, double* %f
  %27 = load double, double* %f
  %28 = fneg double %27
  store double %28, double* %7
  %29 = load double, double* %7, !dbg !11
  %30 = call i8 addrspace(1)* @_bal_float_to_tagged(double %29), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  store double 0x7FF8000000000000, double* %f
  %31 = load double, double* %f
  %32 = fneg double %31
  store double %32, double* %9
  %33 = load double, double* %9, !dbg !12
  %34 = call i8 addrspace(1)* @_bal_float_to_tagged(double %33), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  ret void
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %36)
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
