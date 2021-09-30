@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare zeroext i1 @_bal_float_eq(double, double) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %37, label %18
18:
  %19 = call i8 addrspace(1)* @_B_eq(double 0x7FF8000000000000, double 0x7FF8000000000000), !dbg !10
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1, !dbg !10
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %21 = call i8 addrspace(1)* @_B_eq(double 0x7FF0000000000000, double 0xFFF0000000000000), !dbg !12
  store i8 addrspace(1)* %21, i8 addrspace(1)** %3, !dbg !12
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %23 = call i8 addrspace(1)* @_B_eq(double -0.0, double 0.0), !dbg !14
  store i8 addrspace(1)* %23, i8 addrspace(1)** %5, !dbg !14
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %25 = call i8 addrspace(1)* @_B_eq(double 0x7FF8000000000000, double 0x7FF0000000000000), !dbg !16
  store i8 addrspace(1)* %25, i8 addrspace(1)** %7, !dbg !16
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %27 = call i8 addrspace(1)* @_B_eq(double 0x7FF8000000000000, double 0xFFF0000000000000), !dbg !18
  store i8 addrspace(1)* %27, i8 addrspace(1)** %9, !dbg !18
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %29 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !20
  %30 = zext i1 1 to i64, !dbg !21
  %31 = or i64 %30, 72057594037927936, !dbg !21
  %32 = getelementptr i8, i8 addrspace(1)* null, i64 %31, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %33 = zext i1 0 to i64, !dbg !22
  %34 = or i64 %33, 72057594037927936, !dbg !22
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !22
  %36 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
}
define internal i8 addrspace(1)* @_B_eq(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca i1
  %eq = alloca i1
  %4 = alloca i1
  %neEq = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %29, label %9
9:
  store double %0, double* %f1
  store double %1, double* %f2
  %10 = load double, double* %f1
  %11 = load double, double* %f2
  %12 = call i1 @_bal_float_eq(double %10, double %11)
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  store i1 %13, i1* %eq
  %14 = load double, double* %f1
  %15 = load double, double* %f2
  %16 = call i1 @_bal_float_eq(double %14, double %15)
  %17 = xor i1 %16, 1
  store i1 %17, i1* %4
  %18 = load i1, i1* %4
  store i1 %18, i1* %neEq
  %19 = load i1, i1* %eq
  %20 = load i1, i1* %neEq
  %21 = icmp eq i1 %19, %20
  store i1 %21, i1* %5
  %22 = load i1, i1* %5
  br i1 %22, label %23, label %24
23:
  ret i8 addrspace(1)* null
24:
  %25 = load i1, i1* %eq
  %26 = zext i1 %25 to i64
  %27 = or i64 %26, 72057594037927936
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27
  ret i8 addrspace(1)* %28
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 6916), !dbg !24
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/const3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"eq", linkageName:"_B_eq", scope: !1, file: !1, line: 27, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 16, column: 15, scope: !5)
!11 = !DILocation(line: 16, column: 4, scope: !5)
!12 = !DILocation(line: 17, column: 15, scope: !5)
!13 = !DILocation(line: 17, column: 4, scope: !5)
!14 = !DILocation(line: 18, column: 15, scope: !5)
!15 = !DILocation(line: 18, column: 4, scope: !5)
!16 = !DILocation(line: 19, column: 15, scope: !5)
!17 = !DILocation(line: 19, column: 4, scope: !5)
!18 = !DILocation(line: 20, column: 15, scope: !5)
!19 = !DILocation(line: 20, column: 4, scope: !5)
!20 = !DILocation(line: 21, column: 4, scope: !5)
!21 = !DILocation(line: 22, column: 4, scope: !5)
!22 = !DILocation(line: 23, column: 4, scope: !5)
!23 = !DILocation(line: 24, column: 4, scope: !5)
!24 = !DILocation(line: 0, column: 0, scope: !7)
