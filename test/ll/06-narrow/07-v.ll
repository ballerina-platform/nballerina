@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 13, i16 13, [20 x i8] c"positive zero\00\00\00\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 13, i16 13, [20 x i8] c"negative zero\00\00\00\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"non-zero\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_float_eq(double, double) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %8, label %7
7:
  call void @_B_foo(double 0.0), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B_foo(double -0.0), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_foo(double 1.0), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal void @_B_foo(double %0) !dbg !7 {
  %f = alloca double
  %2 = alloca i1
  %f.1 = alloca double
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %f.2 = alloca double
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %29, label %11
11:
  store double %0, double* %f
  %12 = load double, double* %f
  %13 = call i1 @_bal_float_eq(double %12, double 0.0)
  store i1 %13, i1* %2
  %14 = load i1, i1* %2
  br i1 %14, label %15, label %26
15:
  %16 = load double, double* %f
  store double %16, double* %f.1
  %17 = call i1 @_bal_float_eq(double 0x7FF0000000000000, double 0x7FF0000000000000)
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %19, label %20
19:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  br label %25
20:
  %21 = call i1 @_bal_float_eq(double 0x7FF0000000000000, double 0xFFF0000000000000)
  store i1 %21, i1* %5
  %22 = load i1, i1* %5
  br i1 %22, label %23, label %24
23:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  br label %24
24:
  br label %25
25:
  br label %28
26:
  %27 = load double, double* %f
  store double %27, double* %f.2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !16
  br label %28
28:
  ret void
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-narrow/07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 13, column: 12, scope: !7)
!15 = !DILocation(line: 16, column: 12, scope: !7)
!16 = !DILocation(line: 20, column: 8, scope: !7)
