@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_float_exact_eq(double, double) readonly
define void @_B04rootmain() !dbg !5 {
  %nan0 = alloca double
  %nan1 = alloca double
  %pInf = alloca double
  %nInf = alloca double
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
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8
  %34 = load i8*, i8** @_bal_stack_guard
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %107, label %36
36:
  store double 0x7FF8000000000000, double* %nan0
  store double 0x7FF8000000000000, double* %nan1
  store double 0x7FF0000000000000, double* %pInf
  store double 0xFFF0000000000000, double* %nInf
  %37 = call i8 addrspace(1)* @_B_exactEq(double 42.0, double 42.0), !dbg !10
  store i8 addrspace(1)* %37, i8 addrspace(1)** %1, !dbg !10
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %39 = call i8 addrspace(1)* @_B_exactEq(double 1.0, double 2.0), !dbg !12
  store i8 addrspace(1)* %39, i8 addrspace(1)** %3, !dbg !12
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %41 = call i8 addrspace(1)* @_B_exactEq(double 0.0, double 0.0), !dbg !14
  store i8 addrspace(1)* %41, i8 addrspace(1)** %5, !dbg !14
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %43 = call i8 addrspace(1)* @_B_exactEq(double 0.0, double -0.0), !dbg !16
  store i8 addrspace(1)* %43, i8 addrspace(1)** %7, !dbg !16
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %45 = load double, double* %nan0, !dbg !18
  %46 = load double, double* %nan1, !dbg !18
  %47 = call i8 addrspace(1)* @_B_exactEq(double %45, double %46), !dbg !18
  store i8 addrspace(1)* %47, i8 addrspace(1)** %9, !dbg !18
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %49 = load double, double* %nan0, !dbg !20
  %50 = call i8 addrspace(1)* @_B_exactEq(double %49, double 1.0), !dbg !20
  store i8 addrspace(1)* %50, i8 addrspace(1)** %11, !dbg !20
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %52 = load double, double* %nan0, !dbg !22
  %53 = load double, double* %nInf, !dbg !22
  %54 = call i8 addrspace(1)* @_B_exactEq(double %52, double %53), !dbg !22
  store i8 addrspace(1)* %54, i8 addrspace(1)** %13, !dbg !22
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %56 = load double, double* %pInf, !dbg !24
  %57 = load double, double* %nInf, !dbg !24
  %58 = call i8 addrspace(1)* @_B_exactEq(double %56, double %57), !dbg !24
  store i8 addrspace(1)* %58, i8 addrspace(1)** %15, !dbg !24
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %59), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %60 = load double, double* %nInf, !dbg !26
  %61 = load double, double* %pInf, !dbg !26
  %62 = call i8 addrspace(1)* @_B_exactEq(double %60, double %61), !dbg !26
  store i8 addrspace(1)* %62, i8 addrspace(1)** %17, !dbg !26
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %64 = load double, double* %pInf, !dbg !28
  %65 = load double, double* %pInf, !dbg !28
  %66 = call i8 addrspace(1)* @_B_exactEq(double %64, double %65), !dbg !28
  store i8 addrspace(1)* %66, i8 addrspace(1)** %19, !dbg !28
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %68 = load double, double* %nInf, !dbg !30
  %69 = load double, double* %nInf, !dbg !30
  %70 = call i8 addrspace(1)* @_B_exactEq(double %68, double %69), !dbg !30
  store i8 addrspace(1)* %70, i8 addrspace(1)** %21, !dbg !30
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  %72 = zext i1 1 to i64, !dbg !32
  %73 = or i64 %72, 72057594037927936, !dbg !32
  %74 = getelementptr i8, i8 addrspace(1)* null, i64 %73, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %74), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !32
  %75 = zext i1 1 to i64, !dbg !33
  %76 = or i64 %75, 72057594037927936, !dbg !33
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %77), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %78 = zext i1 0 to i64, !dbg !34
  %79 = or i64 %78, 72057594037927936, !dbg !34
  %80 = getelementptr i8, i8 addrspace(1)* null, i64 %79, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !34
  %81 = zext i1 1 to i64, !dbg !35
  %82 = or i64 %81, 72057594037927936, !dbg !35
  %83 = getelementptr i8, i8 addrspace(1)* null, i64 %82, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %83), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !35
  %84 = load double, double* %nan0
  %85 = load double, double* %nan1
  %86 = call i1 @_bal_float_exact_eq(double %84, double %85)
  store i1 %86, i1* %27
  %87 = load i1, i1* %27, !dbg !36
  %88 = zext i1 %87 to i64, !dbg !36
  %89 = or i64 %88, 72057594037927936, !dbg !36
  %90 = getelementptr i8, i8 addrspace(1)* null, i64 %89, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %90), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !36
  %91 = load double, double* %nan0
  %92 = load double, double* %nan1
  %93 = call i1 @_bal_float_exact_eq(double %91, double %92)
  %94 = xor i1 %93, 1
  store i1 %94, i1* %29
  %95 = load i1, i1* %29, !dbg !37
  %96 = zext i1 %95 to i64, !dbg !37
  %97 = or i64 %96, 72057594037927936, !dbg !37
  %98 = getelementptr i8, i8 addrspace(1)* null, i64 %97, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %98), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !37
  %99 = load double, double* %pInf
  %100 = load double, double* %nInf
  %101 = call i1 @_bal_float_exact_eq(double %99, double %100)
  %102 = xor i1 %101, 1
  store i1 %102, i1* %31
  %103 = load i1, i1* %31, !dbg !38
  %104 = zext i1 %103 to i64, !dbg !38
  %105 = or i64 %104, 72057594037927936, !dbg !38
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105, !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !38
  ret void
107:
  %108 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %108)
  unreachable
}
define internal i8 addrspace(1)* @_B_exactEq(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %eq = alloca i1
  %3 = alloca i1
  %neEq = alloca i1
  %4 = alloca i1
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
  %12 = call i1 @_bal_float_exact_eq(double %10, double %11)
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  store i1 %13, i1* %eq
  %14 = load double, double* %f1
  %15 = load double, double* %f2
  %16 = call i1 @_bal_float_exact_eq(double %14, double %15)
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
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 8196), !dbg !39
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"exactEq", linkageName:"_B_exactEq", scope: !1, file: !1, line: 32, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 11, column: 15, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 15, scope: !5)
!13 = !DILocation(line: 12, column: 4, scope: !5)
!14 = !DILocation(line: 13, column: 15, scope: !5)
!15 = !DILocation(line: 13, column: 4, scope: !5)
!16 = !DILocation(line: 14, column: 15, scope: !5)
!17 = !DILocation(line: 14, column: 4, scope: !5)
!18 = !DILocation(line: 15, column: 15, scope: !5)
!19 = !DILocation(line: 15, column: 4, scope: !5)
!20 = !DILocation(line: 16, column: 15, scope: !5)
!21 = !DILocation(line: 16, column: 4, scope: !5)
!22 = !DILocation(line: 17, column: 15, scope: !5)
!23 = !DILocation(line: 17, column: 4, scope: !5)
!24 = !DILocation(line: 18, column: 15, scope: !5)
!25 = !DILocation(line: 18, column: 4, scope: !5)
!26 = !DILocation(line: 19, column: 15, scope: !5)
!27 = !DILocation(line: 19, column: 4, scope: !5)
!28 = !DILocation(line: 20, column: 15, scope: !5)
!29 = !DILocation(line: 20, column: 4, scope: !5)
!30 = !DILocation(line: 21, column: 15, scope: !5)
!31 = !DILocation(line: 21, column: 4, scope: !5)
!32 = !DILocation(line: 23, column: 4, scope: !5)
!33 = !DILocation(line: 24, column: 4, scope: !5)
!34 = !DILocation(line: 25, column: 4, scope: !5)
!35 = !DILocation(line: 26, column: 4, scope: !5)
!36 = !DILocation(line: 27, column: 4, scope: !5)
!37 = !DILocation(line: 28, column: 4, scope: !5)
!38 = !DILocation(line: 29, column: 4, scope: !5)
!39 = !DILocation(line: 0, column: 0, scope: !7)
