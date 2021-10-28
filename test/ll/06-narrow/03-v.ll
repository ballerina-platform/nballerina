@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_float_eq(double, double) readonly
declare zeroext i1 @_bal_float_exact_eq(double, double) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %17, label %10
10:
  %11 = call i8 addrspace(1)* @_B_zero(double 0.0), !dbg !10
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1, !dbg !10
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %13 = call i8 addrspace(1)* @_B_zero(double -0.0), !dbg !12
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3, !dbg !12
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %15 = call i8 addrspace(1)* @_B_zero(double 1.0), !dbg !14
  store i8 addrspace(1)* %15, i8 addrspace(1)** %5, !dbg !14
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  ret void
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
define internal i8 addrspace(1)* @_B_zero(double %0) !dbg !7 {
  %v = alloca double
  %2 = alloca i1
  %v.1 = alloca double
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %26, label %8
8:
  store double %0, double* %v
  %9 = load double, double* %v
  %10 = call i1 @_bal_float_eq(double %9, double 0.0)
  store i1 %10, i1* %2
  %11 = load i1, i1* %2
  br i1 %11, label %12, label %25
12:
  %13 = load double, double* %v
  store double %13, double* %v.1
  %14 = load double, double* %v.1
  %15 = call i1 @_bal_float_exact_eq(double %14, double -0.0)
  store i1 %15, i1* %3
  %16 = load i1, i1* %3
  br i1 %16, label %17, label %18
17:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901037)
18:
  %19 = load double, double* %v.1
  %20 = call i1 @_bal_float_exact_eq(double %19, double 0.0)
  store i1 %20, i1* %4
  %21 = load i1, i1* %4
  br i1 %21, label %22, label %23
22:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901035)
23:
  br label %24
24:
  br label %25
25:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901025)
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-narrow/03-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"zero", linkageName:"_B_zero", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
