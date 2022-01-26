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
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %23, label %12
12:
  store double 0.1, double* %f
  %13 = load double, double* %f, !dbg !8
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double %13), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  store double 0x3FD5555555555555, double* %f
  %15 = load double, double* %f, !dbg !9
  %16 = call i8 addrspace(1)* @_bal_float_to_tagged(double %15), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x8010000000000001), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %20 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  %21 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF0000000000000), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0xFFF0000000000000), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  ret void
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %24)
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
