@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_float_eq(double, double) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %7, label %6
6:
  call void @_B_foo(double 0.0), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B_foo(double -0.0), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal void @_B_foo(double %0) !dbg !7 {
  %x = alloca double
  %2 = alloca i1
  %x.1 = alloca double
  %3 = alloca i8 addrspace(1)*
  %4 = alloca double
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %21, label %9
9:
  store double %0, double* %x
  %10 = load double, double* %x
  %11 = call i1 @_bal_float_eq(double %10, double 0.0)
  store i1 %11, i1* %2
  %12 = load i1, i1* %2
  br i1 %12, label %13, label %20
13:
  %14 = load double, double* %x
  store double %14, double* %x.1
  %15 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !13
  %16 = load double, double* %x.1
  %17 = fadd double %16, -0.0
  store double %17, double* %4
  %18 = load double, double* %4, !dbg !14
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double %18), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  br label %20
20:
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-narrow/09-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 15, column: 8, scope: !7)
!14 = !DILocation(line: 16, column: 8, scope: !7)
