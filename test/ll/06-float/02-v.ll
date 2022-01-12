@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %f = alloca double
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca double
  %7 = alloca i8 addrspace(1)*
  %8 = alloca double
  %9 = alloca i8 addrspace(1)*
  %10 = alloca double
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %29, label %15
15:
  store double 0.1, double* %f
  %16 = load double, double* %f, !dbg !8
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double %16), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  store double 0x3FD5555555555555, double* %f
  %18 = load double, double* %f, !dbg !9
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double %18), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %20 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %21 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x8010000000000001), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  store double 0x7FF8000000000000, double* %6
  %23 = load double, double* %6, !dbg !13
  %24 = call i8 addrspace(1)* @_bal_float_to_tagged(double %23), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !13
  store double 0x7FF0000000000000, double* %8
  %25 = load double, double* %8, !dbg !14
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double %25), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !14
  store double 0xFFF0000000000000, double* %10
  %27 = load double, double* %10, !dbg !15
  %28 = call i8 addrspace(1)* @_bal_float_to_tagged(double %27), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !15
  ret void
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 12, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 16, column: 4, scope: !5)
!14 = !DILocation(line: 18, column: 4, scope: !5)
!15 = !DILocation(line: 20, column: 4, scope: !5)
