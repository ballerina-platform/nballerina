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
  %11 = alloca double
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca double
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca double
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca double
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca double
  %26 = alloca double
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8
  %30 = load i8*, i8** @_bal_stack_guard
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %61, label %32
32:
  %33 = call i8 addrspace(1)* @_B_floatCmp(double 1.0, double 1.0), !dbg !10
  store i8 addrspace(1)* %33, i8 addrspace(1)** %1, !dbg !10
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %35 = call i8 addrspace(1)* @_B_floatCmp(double 1.0, double 2.0), !dbg !12
  store i8 addrspace(1)* %35, i8 addrspace(1)** %3, !dbg !12
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %37 = call i8 addrspace(1)* @_B_floatCmp(double 2.0, double 1.0), !dbg !14
  store i8 addrspace(1)* %37, i8 addrspace(1)** %5, !dbg !14
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %39 = call i8 addrspace(1)* @_B_floatCmp(double -1.0, double 1.0), !dbg !16
  store i8 addrspace(1)* %39, i8 addrspace(1)** %7, !dbg !16
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %41 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double -1.0), !dbg !18
  store i8 addrspace(1)* %41, i8 addrspace(1)** %9, !dbg !18
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  store double 0x7FF0000000000000, double* %11
  %43 = load double, double* %11, !dbg !20
  %44 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double %43), !dbg !20
  store i8 addrspace(1)* %44, i8 addrspace(1)** %12, !dbg !20
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %12, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !21
  store double 0xFFF0000000000000, double* %14
  %46 = load double, double* %14, !dbg !22
  %47 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double %46), !dbg !22
  store i8 addrspace(1)* %47, i8 addrspace(1)** %15, !dbg !22
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !23
  %49 = call i8 addrspace(1)* @_B_floatCmp(double -0.0, double 0.0), !dbg !24
  store i8 addrspace(1)* %49, i8 addrspace(1)** %17, !dbg !24
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !25
  store double 0x7FF8000000000000, double* %19
  %51 = load double, double* %19, !dbg !26
  %52 = call i8 addrspace(1)* @_B_floatCmp(double 0.0, double %51), !dbg !26
  store i8 addrspace(1)* %52, i8 addrspace(1)** %20, !dbg !26
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %20, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !27
  store double 0x7FF8000000000000, double* %22
  %54 = load double, double* %22, !dbg !28
  %55 = call i8 addrspace(1)* @_B_floatCmp(double %54, double 0.0), !dbg !28
  store i8 addrspace(1)* %55, i8 addrspace(1)** %23, !dbg !28
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %56), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !29
  store double 0x7FF8000000000000, double* %25
  store double 0x7FF8000000000000, double* %26
  %57 = load double, double* %25, !dbg !30
  %58 = load double, double* %26, !dbg !30
  %59 = call i8 addrspace(1)* @_B_floatCmp(double %57, double %58), !dbg !30
  store i8 addrspace(1)* %59, i8 addrspace(1)** %27, !dbg !30
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !31
  ret void
61:
  %62 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %62)
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
  %12 = alloca double
  %13 = alloca i1
  %14 = alloca i1
  %15 = alloca i1
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %84, label %19
19:
  store double %0, double* %f1
  store double %1, double* %f2
  %20 = load double, double* %f1
  %21 = load double, double* %f2
  %22 = fcmp olt double %20, %21
  store i1 %22, i1* %3
  %23 = load i1, i1* %3
  br i1 %23, label %24, label %39
24:
  %25 = load double, double* %f1
  %26 = load double, double* %f2
  %27 = fcmp ogt double %25, %26
  store i1 %27, i1* %4
  %28 = load i1, i1* %4
  %29 = xor i1 1, %28
  store i1 %29, i1* %5
  %30 = load i1, i1* %5
  br i1 %30, label %31, label %38
31:
  %32 = load double, double* %f1
  %33 = load double, double* %f1
  %34 = fcmp ole double %32, %33
  store i1 %34, i1* %6
  %35 = load i1, i1* %6
  br i1 %35, label %36, label %37
36:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630865516)
37:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
38:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
39:
  %40 = load double, double* %f1
  %41 = load double, double* %f2
  %42 = fcmp ogt double %40, %41
  store i1 %42, i1* %7
  %43 = load i1, i1* %7
  br i1 %43, label %44, label %59
44:
  %45 = load double, double* %f1
  %46 = load double, double* %f2
  %47 = fcmp olt double %45, %46
  store i1 %47, i1* %8
  %48 = load i1, i1* %8
  %49 = xor i1 1, %48
  store i1 %49, i1* %9
  %50 = load i1, i1* %9
  br i1 %50, label %51, label %58
51:
  %52 = load double, double* %f1
  %53 = load double, double* %f1
  %54 = fcmp oge double %52, %53
  store i1 %54, i1* %10
  %55 = load i1, i1* %10
  br i1 %55, label %56, label %57
56:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630865511)
57:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str4 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
58:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
59:
  %60 = load double, double* %f1
  %61 = load double, double* %f2
  %62 = call i1 @_bal_float_eq(double %60, double %61)
  store i1 %62, i1* %11
  %63 = load i1, i1* %11
  br i1 %63, label %64, label %83
64:
  store double 0x7FF8000000000000, double* %12
  %65 = load double, double* %f1
  %66 = load double, double* %12
  %67 = call i1 @_bal_float_eq(double %65, double %66)
  store i1 %67, i1* %13
  %68 = load i1, i1* %13
  br i1 %68, label %69, label %70
69:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str6 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
70:
  %71 = load double, double* %f1
  %72 = load double, double* %f1
  %73 = fcmp ole double %71, %72
  store i1 %73, i1* %14
  %74 = load i1, i1* %14
  br i1 %74, label %75, label %82
75:
  %76 = load double, double* %f1
  %77 = load double, double* %f1
  %78 = fcmp oge double %76, %77
  store i1 %78, i1* %15
  %79 = load i1, i1* %15
  br i1 %79, label %80, label %81
80:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630864741)
81:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
82:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str9 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
83:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488322648960623)
84:
  %85 = call i8 addrspace(1)* @_bal_panic_construct(i64 5636), !dbg !32
  call void @_bal_panic(i8 addrspace(1)* %85)
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
