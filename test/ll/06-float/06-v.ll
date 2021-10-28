@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca double
  %10 = alloca i8 addrspace(1)*
  %11 = alloca double
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %35, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.375), !dbg !14
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.375), !dbg !14
  %19 = call i8 addrspace(1)* @_B_aa(i1 1, i8 addrspace(1)* %17, i8 addrspace(1)* %18), !dbg !14
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1, !dbg !14
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  %21 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.375), !dbg !16
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.375), !dbg !16
  %23 = call i8 addrspace(1)* @_B_aa(i1 0, i8 addrspace(1)* %21, i8 addrspace(1)* %22), !dbg !16
  store i8 addrspace(1)* %23, i8 addrspace(1)** %3, !dbg !16
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !17
  %25 = call i8 addrspace(1)* @_B_fa(i1 1, double 17.75, double 2.75), !dbg !18
  store i8 addrspace(1)* %25, i8 addrspace(1)** %5, !dbg !18
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !19
  %27 = call i8 addrspace(1)* @_B_fa(i1 0, double 17.75, double 2.75), !dbg !20
  store i8 addrspace(1)* %27, i8 addrspace(1)** %7, !dbg !20
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !21
  %29 = call double @_B_ff(i1 1, double 1.5, double 0.5), !dbg !22
  store double %29, double* %9, !dbg !22
  %30 = load double, double* %9, !dbg !23
  %31 = call i8 addrspace(1)* @_bal_float_to_tagged(double %30), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !23
  %32 = call double @_B_ff(i1 0, double 1.5, double 0.5), !dbg !24
  store double %32, double* %11, !dbg !24
  %33 = load double, double* %11, !dbg !25
  %34 = call i8 addrspace(1)* @_bal_float_to_tagged(double %33), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !25
  ret void
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
}
define internal i8 addrspace(1)* @_B_aa(i1 %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2) !dbg !7 {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, i1* %b
  store i8 addrspace(1)* %1, i8 addrspace(1)** %x
  store i8 addrspace(1)* %2, i8 addrspace(1)** %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  ret i8 addrspace(1)* %10
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  ret i8 addrspace(1)* %12
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !26
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal i8 addrspace(1)* @_B_fa(i1 %0, double %1, double %2) !dbg !9 {
  %b = alloca i1
  %x = alloca double
  %y = alloca double
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %15, label %7
7:
  store i1 %0, i1* %b
  store double %1, double* %x
  store double %2, double* %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %12
9:
  %10 = load double, double* %x
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double %10)
  ret i8 addrspace(1)* %11
12:
  %13 = load double, double* %y
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double %13)
  ret i8 addrspace(1)* %14
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 5636), !dbg !27
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
define internal double @_B_ff(i1 %0, double %1, double %2) !dbg !11 {
  %b = alloca i1
  %x = alloca double
  %y = alloca double
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, i1* %b
  store double %1, double* %x
  store double %2, double* %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = load double, double* %x
  ret double %10
11:
  %12 = load double, double* %y
  ret double %12
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 7940), !dbg !28
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"aa", linkageName:"_B_aa", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"fa", linkageName:"_B_fa", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"ff", linkageName:"_B_ff", scope: !1, file: !1, line: 31, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 4, scope: !5)
!18 = !DILocation(line: 7, column: 15, scope: !5)
!19 = !DILocation(line: 7, column: 4, scope: !5)
!20 = !DILocation(line: 8, column: 15, scope: !5)
!21 = !DILocation(line: 8, column: 4, scope: !5)
!22 = !DILocation(line: 9, column: 15, scope: !5)
!23 = !DILocation(line: 9, column: 4, scope: !5)
!24 = !DILocation(line: 10, column: 15, scope: !5)
!25 = !DILocation(line: 10, column: 4, scope: !5)
!26 = !DILocation(line: 0, column: 0, scope: !7)
!27 = !DILocation(line: 0, column: 0, scope: !9)
!28 = !DILocation(line: 0, column: 0, scope: !11)
