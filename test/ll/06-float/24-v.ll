@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"lt error 1\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"lt error 2\00\00"}, align 8
@.str4 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"gt error 1\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"gt error 2\00\00"}, align 8
@.str6 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"both nan\00\00\00\00"}, align 8
@.str8 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"eq error 1\00\00"}, align 8
@.str9 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"eq error 2\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
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
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %49, label %26
26:
  %27 = call i8 addrspace(1)* @_B_floatCmp(double 1.0, double 1.0), !dbg !10
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1, !dbg !10
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %29 = call i8 addrspace(1)* @_B_floatCmp(double 1.0, double 2.0), !dbg !12
  store i8 addrspace(1)* %29, i8 addrspace(1)** %3, !dbg !12
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %31 = call i8 addrspace(1)* @_B_floatCmp(double 2.0, double 1.0), !dbg !14
  store i8 addrspace(1)* %31, i8 addrspace(1)** %5, !dbg !14
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %33 = call i8 addrspace(1)* @_B_floatCmp(double -1.0, double 1.0), !dbg !16
  store i8 addrspace(1)* %33, i8 addrspace(1)** %7, !dbg !16
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %35 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double -1.0), !dbg !18
  store i8 addrspace(1)* %35, i8 addrspace(1)** %9, !dbg !18
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %37 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double 0x7FF0000000000000), !dbg !20
  store i8 addrspace(1)* %37, i8 addrspace(1)** %11, !dbg !20
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %39 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double 0xFFF0000000000000), !dbg !22
  store i8 addrspace(1)* %39, i8 addrspace(1)** %13, !dbg !22
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %41 = call i8 addrspace(1)* @_B_floatCmp(double -0.0, double 0.0), !dbg !24
  store i8 addrspace(1)* %41, i8 addrspace(1)** %15, !dbg !24
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %43 = call i8 addrspace(1)* @_B_floatCmp(double 0.0, double 0x7FF8000000000000), !dbg !26
  store i8 addrspace(1)* %43, i8 addrspace(1)** %17, !dbg !26
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %45 = call i8 addrspace(1)* @_B_floatCmp(double 0x7FF8000000000000, double 0.0), !dbg !28
  store i8 addrspace(1)* %45, i8 addrspace(1)** %19, !dbg !28
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %47 = call i8 addrspace(1)* @_B_floatCmp(double 0x7FF8000000000000, double 0x7FF8000000000000), !dbg !30
  store i8 addrspace(1)* %47, i8 addrspace(1)** %21, !dbg !30
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  ret void
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %50)
  unreachable
}
define internal i8 addrspace(1)* @_B_floatCmp(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i1
  %10 = alloca i1
  %11 = alloca i1
  %12 = alloca i1
  %13 = alloca i1
  %14 = alloca i1
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %82, label %18
18:
  store double %0, double* %f1
  store double %1, double* %f2
  %19 = load double, double* %f1
  %20 = load double, double* %f2
  %21 = fcmp olt double %19, %20
  store i1 %21, i1* %3
  %22 = load i1, i1* %3
  br i1 %22, label %23, label %38
23:
  %24 = load double, double* %f1
  %25 = load double, double* %f2
  %26 = fcmp ogt double %24, %25
  store i1 %26, i1* %4
  %27 = load i1, i1* %4
  %28 = xor i1 1, %27
  store i1 %28, i1* %5
  %29 = load i1, i1* %5
  br i1 %29, label %30, label %37
30:
  %31 = load double, double* %f1
  %32 = load double, double* %f1
  %33 = fcmp ole double %31, %32
  store i1 %33, i1* %6
  %34 = load i1, i1* %6
  br i1 %34, label %35, label %36
35:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630865516)
36:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
37:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
38:
  %39 = load double, double* %f1
  %40 = load double, double* %f2
  %41 = fcmp ogt double %39, %40
  store i1 %41, i1* %7
  %42 = load i1, i1* %7
  br i1 %42, label %43, label %58
43:
  %44 = load double, double* %f1
  %45 = load double, double* %f2
  %46 = fcmp olt double %44, %45
  store i1 %46, i1* %8
  %47 = load i1, i1* %8
  %48 = xor i1 1, %47
  store i1 %48, i1* %9
  %49 = load i1, i1* %9
  br i1 %49, label %50, label %57
50:
  %51 = load double, double* %f1
  %52 = load double, double* %f1
  %53 = fcmp oge double %51, %52
  store i1 %53, i1* %10
  %54 = load i1, i1* %10
  br i1 %54, label %55, label %56
55:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630865511)
56:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str4 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
57:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
58:
  %59 = load double, double* %f1
  %60 = load double, double* %f2
  %61 = call i1 @_bal_float_eq(double %59, double %60)
  store i1 %61, i1* %11
  %62 = load i1, i1* %11
  br i1 %62, label %63, label %81
63:
  %64 = load double, double* %f1
  %65 = call i1 @_bal_float_eq(double %64, double 0x7FF8000000000000)
  store i1 %65, i1* %12
  %66 = load i1, i1* %12
  br i1 %66, label %67, label %68
67:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str6 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
68:
  %69 = load double, double* %f1
  %70 = load double, double* %f1
  %71 = fcmp ole double %69, %70
  store i1 %71, i1* %13
  %72 = load i1, i1* %13
  br i1 %72, label %73, label %80
73:
  %74 = load double, double* %f1
  %75 = load double, double* %f1
  %76 = fcmp oge double %74, %75
  store i1 %76, i1* %14
  %77 = load i1, i1* %14
  br i1 %77, label %78, label %79
78:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630864741)
79:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
80:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str9 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
81:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488322648960623)
82:
  %83 = call i8 addrspace(1)* @_bal_panic_construct(i64 5636), !dbg !32
  call void @_bal_panic(i8 addrspace(1)* %83)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/24-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"floatCmp", linkageName:"_B_floatCmp", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 12, column: 15, scope: !5)
!21 = !DILocation(line: 12, column: 4, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 4, scope: !5)
!24 = !DILocation(line: 15, column: 15, scope: !5)
!25 = !DILocation(line: 15, column: 4, scope: !5)
!26 = !DILocation(line: 17, column: 15, scope: !5)
!27 = !DILocation(line: 17, column: 4, scope: !5)
!28 = !DILocation(line: 18, column: 15, scope: !5)
!29 = !DILocation(line: 18, column: 4, scope: !5)
!30 = !DILocation(line: 19, column: 15, scope: !5)
!31 = !DILocation(line: 19, column: 4, scope: !5)
!32 = !DILocation(line: 0, column: 0, scope: !7)
