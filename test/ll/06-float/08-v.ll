@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca double
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store double 17.0, double* %x
  %9 = load double, double* %x, !dbg !12
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double %9), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  call void @_B_foo(double 42.0), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  %11 = call double @_B_bar(), !dbg !14
  store double %11, double* %3, !dbg !14
  %12 = load double, double* %3, !dbg !15
  %13 = call i8 addrspace(1)* @_bal_float_to_tagged(double %12), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
define internal void @_B_foo(double %0) !dbg !7 {
  %x = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  store double %0, double* %x
  %7 = load double, double* %x, !dbg !17
  %8 = call i8 addrspace(1)* @_bal_float_to_tagged(double %7), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %8), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !17
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal double @_B_bar() !dbg !9 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret double 21.0
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 9, column: 15, scope: !5)
!15 = !DILocation(line: 9, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 13, column: 4, scope: !7)
!18 = !DILocation(line: 0, column: 0, scope: !9)
