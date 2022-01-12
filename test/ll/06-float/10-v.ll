@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_float_eq(double, double) readonly
define void @_B04rootmain() !dbg !5 {
  %nan0 = alloca double
  %1 = alloca double
  %nan1 = alloca double
  %2 = alloca double
  %pInf = alloca double
  %3 = alloca double
  %nInf = alloca double
  %4 = alloca double
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
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8
  %36 = load i8*, i8** @_bal_stack_guard
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %104, label %38
38:
  store double 0x7FF8000000000000, double* %1
  %39 = load double, double* %1
  store double %39, double* %nan0
  store double 0x7FF8000000000000, double* %2
  %40 = load double, double* %2
  store double %40, double* %nan1
  store double 0x7FF0000000000000, double* %3
  %41 = load double, double* %3
  store double %41, double* %pInf
  store double 0xFFF0000000000000, double* %4
  %42 = load double, double* %4
  store double %42, double* %nInf
  %43 = call i8 addrspace(1)* @_B_eq(double 42.0, double 42.0), !dbg !10
  store i8 addrspace(1)* %43, i8 addrspace(1)** %5, !dbg !10
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !11
  %45 = call i8 addrspace(1)* @_B_eq(double 1.0, double 2.0), !dbg !12
  store i8 addrspace(1)* %45, i8 addrspace(1)** %7, !dbg !12
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !13
  %47 = call i8 addrspace(1)* @_B_eq(double 0.0, double 0.0), !dbg !14
  store i8 addrspace(1)* %47, i8 addrspace(1)** %9, !dbg !14
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !15
  %49 = call i8 addrspace(1)* @_B_eq(double 0.0, double -0.0), !dbg !16
  store i8 addrspace(1)* %49, i8 addrspace(1)** %11, !dbg !16
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !17
  %51 = load double, double* %nan0, !dbg !18
  %52 = load double, double* %nan1, !dbg !18
  %53 = call i8 addrspace(1)* @_B_eq(double %51, double %52), !dbg !18
  store i8 addrspace(1)* %53, i8 addrspace(1)** %13, !dbg !18
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !19
  %55 = load double, double* %nan0, !dbg !20
  %56 = call i8 addrspace(1)* @_B_eq(double %55, double 1.0), !dbg !20
  store i8 addrspace(1)* %56, i8 addrspace(1)** %15, !dbg !20
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !21
  %58 = load double, double* %nan0, !dbg !22
  %59 = load double, double* %nInf, !dbg !22
  %60 = call i8 addrspace(1)* @_B_eq(double %58, double %59), !dbg !22
  store i8 addrspace(1)* %60, i8 addrspace(1)** %17, !dbg !22
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !23
  %62 = load double, double* %pInf, !dbg !24
  %63 = load double, double* %nInf, !dbg !24
  %64 = call i8 addrspace(1)* @_B_eq(double %62, double %63), !dbg !24
  store i8 addrspace(1)* %64, i8 addrspace(1)** %19, !dbg !24
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !25
  %66 = load double, double* %nInf, !dbg !26
  %67 = load double, double* %pInf, !dbg !26
  %68 = call i8 addrspace(1)* @_B_eq(double %66, double %67), !dbg !26
  store i8 addrspace(1)* %68, i8 addrspace(1)** %21, !dbg !26
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !27
  %70 = load double, double* %pInf, !dbg !28
  %71 = load double, double* %pInf, !dbg !28
  %72 = call i8 addrspace(1)* @_B_eq(double %70, double %71), !dbg !28
  store i8 addrspace(1)* %72, i8 addrspace(1)** %23, !dbg !28
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !29
  %74 = load double, double* %nInf, !dbg !30
  %75 = load double, double* %nInf, !dbg !30
  %76 = call i8 addrspace(1)* @_B_eq(double %74, double %75), !dbg !30
  store i8 addrspace(1)* %76, i8 addrspace(1)** %25, !dbg !30
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %77), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !31
  %78 = zext i1 1 to i64, !dbg !32
  %79 = or i64 %78, 72057594037927936, !dbg !32
  %80 = getelementptr i8, i8 addrspace(1)* null, i64 %79, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !32
  %81 = zext i1 1 to i64, !dbg !33
  %82 = or i64 %81, 72057594037927936, !dbg !33
  %83 = getelementptr i8, i8 addrspace(1)* null, i64 %82, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %83), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !33
  %84 = zext i1 1 to i64, !dbg !34
  %85 = or i64 %84, 72057594037927936, !dbg !34
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !34
  %87 = zext i1 0 to i64, !dbg !35
  %88 = or i64 %87, 72057594037927936, !dbg !35
  %89 = getelementptr i8, i8 addrspace(1)* null, i64 %88, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %89), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !35
  %90 = load double, double* %nan0
  %91 = load double, double* %nan1
  %92 = call i1 @_bal_float_eq(double %90, double %91)
  store i1 %92, i1* %31
  %93 = load i1, i1* %31, !dbg !36
  %94 = zext i1 %93 to i64, !dbg !36
  %95 = or i64 %94, 72057594037927936, !dbg !36
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !36
  %97 = load double, double* %pInf
  %98 = load double, double* %nInf
  %99 = call i1 @_bal_float_eq(double %97, double %98)
  store i1 %99, i1* %33
  %100 = load i1, i1* %33, !dbg !37
  %101 = zext i1 %100 to i64, !dbg !37
  %102 = or i64 %101, 72057594037927936, !dbg !37
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !37
  ret void
104:
  %105 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %105)
  unreachable
}
define internal i8 addrspace(1)* @_B_eq(double %0, double %1) !dbg !7 {
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
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684), !dbg !38
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"eq", linkageName:"_B_eq", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 10, column: 15, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 11, column: 15, scope: !5)
!13 = !DILocation(line: 11, column: 4, scope: !5)
!14 = !DILocation(line: 12, column: 15, scope: !5)
!15 = !DILocation(line: 12, column: 4, scope: !5)
!16 = !DILocation(line: 13, column: 15, scope: !5)
!17 = !DILocation(line: 13, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 15, scope: !5)
!19 = !DILocation(line: 14, column: 4, scope: !5)
!20 = !DILocation(line: 15, column: 15, scope: !5)
!21 = !DILocation(line: 15, column: 4, scope: !5)
!22 = !DILocation(line: 16, column: 15, scope: !5)
!23 = !DILocation(line: 16, column: 4, scope: !5)
!24 = !DILocation(line: 17, column: 15, scope: !5)
!25 = !DILocation(line: 17, column: 4, scope: !5)
!26 = !DILocation(line: 18, column: 15, scope: !5)
!27 = !DILocation(line: 18, column: 4, scope: !5)
!28 = !DILocation(line: 19, column: 15, scope: !5)
!29 = !DILocation(line: 19, column: 4, scope: !5)
!30 = !DILocation(line: 20, column: 15, scope: !5)
!31 = !DILocation(line: 20, column: 4, scope: !5)
!32 = !DILocation(line: 22, column: 4, scope: !5)
!33 = !DILocation(line: 23, column: 4, scope: !5)
!34 = !DILocation(line: 24, column: 4, scope: !5)
!35 = !DILocation(line: 25, column: 4, scope: !5)
!36 = !DILocation(line: 26, column: 4, scope: !5)
!37 = !DILocation(line: 27, column: 4, scope: !5)
!38 = !DILocation(line: 0, column: 0, scope: !7)
