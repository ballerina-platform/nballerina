@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_float_eq(double, double) readonly
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
  %31 = alloca i8
  %32 = load i8*, i8** @_bal_stack_guard
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %96, label %34
34:
  store double 0x7FF8000000000000, double* %nan0
  store double 0x7FF8000000000000, double* %nan1
  store double 0x7FF0000000000000, double* %pInf
  store double 0xFFF0000000000000, double* %nInf
  %35 = call i8 addrspace(1)* @_B_eq(double 42.0, double 42.0), !dbg !10
  store i8 addrspace(1)* %35, i8 addrspace(1)** %1, !dbg !10
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %37 = call i8 addrspace(1)* @_B_eq(double 1.0, double 2.0), !dbg !12
  store i8 addrspace(1)* %37, i8 addrspace(1)** %3, !dbg !12
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %39 = call i8 addrspace(1)* @_B_eq(double 0.0, double 0.0), !dbg !14
  store i8 addrspace(1)* %39, i8 addrspace(1)** %5, !dbg !14
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %41 = call i8 addrspace(1)* @_B_eq(double 0.0, double -0.0), !dbg !16
  store i8 addrspace(1)* %41, i8 addrspace(1)** %7, !dbg !16
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %43 = load double, double* %nan0, !dbg !18
  %44 = load double, double* %nan1, !dbg !18
  %45 = call i8 addrspace(1)* @_B_eq(double %43, double %44), !dbg !18
  store i8 addrspace(1)* %45, i8 addrspace(1)** %9, !dbg !18
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %47 = load double, double* %nan0, !dbg !20
  %48 = call i8 addrspace(1)* @_B_eq(double %47, double 1.0), !dbg !20
  store i8 addrspace(1)* %48, i8 addrspace(1)** %11, !dbg !20
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %50 = load double, double* %nan0, !dbg !22
  %51 = load double, double* %nInf, !dbg !22
  %52 = call i8 addrspace(1)* @_B_eq(double %50, double %51), !dbg !22
  store i8 addrspace(1)* %52, i8 addrspace(1)** %13, !dbg !22
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %54 = load double, double* %pInf, !dbg !24
  %55 = load double, double* %nInf, !dbg !24
  %56 = call i8 addrspace(1)* @_B_eq(double %54, double %55), !dbg !24
  store i8 addrspace(1)* %56, i8 addrspace(1)** %15, !dbg !24
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %58 = load double, double* %nInf, !dbg !26
  %59 = load double, double* %pInf, !dbg !26
  %60 = call i8 addrspace(1)* @_B_eq(double %58, double %59), !dbg !26
  store i8 addrspace(1)* %60, i8 addrspace(1)** %17, !dbg !26
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %62 = load double, double* %pInf, !dbg !28
  %63 = load double, double* %pInf, !dbg !28
  %64 = call i8 addrspace(1)* @_B_eq(double %62, double %63), !dbg !28
  store i8 addrspace(1)* %64, i8 addrspace(1)** %19, !dbg !28
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %66 = load double, double* %nInf, !dbg !30
  %67 = load double, double* %nInf, !dbg !30
  %68 = call i8 addrspace(1)* @_B_eq(double %66, double %67), !dbg !30
  store i8 addrspace(1)* %68, i8 addrspace(1)** %21, !dbg !30
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  %70 = zext i1 1 to i64, !dbg !32
  %71 = or i64 %70, 72057594037927936, !dbg !32
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !32
  %73 = zext i1 1 to i64, !dbg !33
  %74 = or i64 %73, 72057594037927936, !dbg !33
  %75 = getelementptr i8, i8 addrspace(1)* null, i64 %74, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %75), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %76 = zext i1 1 to i64, !dbg !34
  %77 = or i64 %76, 72057594037927936, !dbg !34
  %78 = getelementptr i8, i8 addrspace(1)* null, i64 %77, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !34
  %79 = zext i1 0 to i64, !dbg !35
  %80 = or i64 %79, 72057594037927936, !dbg !35
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !35
  %82 = load double, double* %nan0
  %83 = load double, double* %nan1
  %84 = call i1 @_bal_float_eq(double %82, double %83)
  store i1 %84, i1* %27
  %85 = load i1, i1* %27, !dbg !36
  %86 = zext i1 %85 to i64, !dbg !36
  %87 = or i64 %86, 72057594037927936, !dbg !36
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %88), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !36
  %89 = load double, double* %pInf
  %90 = load double, double* %nInf
  %91 = call i1 @_bal_float_eq(double %89, double %90)
  store i1 %91, i1* %29
  %92 = load i1, i1* %29, !dbg !37
  %93 = zext i1 %92 to i64, !dbg !37
  %94 = or i64 %93, 72057594037927936, !dbg !37
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %95), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !37
  ret void
96:
  %97 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %97)
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
