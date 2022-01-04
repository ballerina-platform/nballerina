@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %f = alloca double
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %23, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %x
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %11 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %10)
  %12 = call double @_bal_tagged_to_float(i8 addrspace(1)* %11)
  store double %12, double* %1
  %13 = load double, double* %1
  store double %13, double* %f
  %14 = load double, double* %f, !dbg !8
  %15 = call i8 addrspace(1)* @_bal_float_to_tagged(double %14), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %16 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %x
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %18 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %17)
  %19 = call double @_bal_tagged_to_float(i8 addrspace(1)* %18)
  store double %19, double* %3
  %20 = load double, double* %3
  store double %20, double* %f
  %21 = load double, double* %f, !dbg !9
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double %21), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  ret void
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/float1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
