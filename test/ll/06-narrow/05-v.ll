@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %23, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5), !dbg !10
  %12 = call double @_B_foo(i8 addrspace(1)* %11), !dbg !10
  store double %12, double* %1, !dbg !10
  %13 = load double, double* %1, !dbg !11
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double %13), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %15 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5), !dbg !12
  %16 = call double @_B_foo(i8 addrspace(1)* %15), !dbg !12
  store double %16, double* %3, !dbg !12
  %17 = load double, double* %3, !dbg !13
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double %17), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17), !dbg !14
  %20 = call double @_B_foo(i8 addrspace(1)* %19), !dbg !14
  store double %20, double* %5, !dbg !14
  %21 = load double, double* %5, !dbg !15
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double %21), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  ret void
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
}
define internal double @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v.1 = alloca double
  %v.2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %19, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %8 = addrspacecast i8 addrspace(1)* %7 to i8*
  %9 = ptrtoint i8* %8 to i64
  %10 = and i64 %9, 2233785415175766016
  %11 = icmp eq i64 %10, 576460752303423488
  store i1 %11, i1* %2
  %12 = load i1, i1* %2
  br i1 %12, label %13, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %15 = call double @_bal_tagged_to_float(i8 addrspace(1)* %14)
  store double %15, double* %v.1
  %16 = load double, double* %v.1
  ret double %16
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %18, i8 addrspace(1)** %v.2
  ret double 2.5
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-narrow/05-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
