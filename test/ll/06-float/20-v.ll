@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %9 = alloca double
  %10 = alloca double
  %11 = alloca i8 addrspace(1)*
  %12 = alloca double
  %13 = alloca double
  %14 = alloca double
  %15 = alloca i8 addrspace(1)*
  %16 = alloca double
  %17 = alloca double
  %18 = alloca i8 addrspace(1)*
  %19 = alloca double
  %20 = alloca double
  %21 = alloca double
  %22 = alloca i8 addrspace(1)*
  %23 = alloca double
  %24 = alloca double
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca double
  %31 = alloca double
  %32 = alloca i8 addrspace(1)*
  %33 = alloca double
  %34 = alloca double
  %35 = alloca double
  %36 = alloca i8 addrspace(1)*
  %37 = alloca double
  %38 = alloca double
  %39 = alloca i8 addrspace(1)*
  %40 = alloca double
  %41 = alloca double
  %42 = alloca double
  %43 = alloca i8 addrspace(1)*
  %44 = alloca double
  %45 = alloca double
  %46 = alloca i8 addrspace(1)*
  %f1 = alloca double
  %47 = alloca double
  %48 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %49 = alloca double
  %50 = alloca i8 addrspace(1)*
  %51 = alloca double
  %52 = alloca double
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i8
  %55 = load i8*, i8** @_bal_stack_guard
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %134, label %57
57:
  %58 = call double @_B_floatMul(double 3.0, double 2.0), !dbg !10
  store double %58, double* %1, !dbg !10
  %59 = load double, double* %1, !dbg !11
  %60 = call i8 addrspace(1)* @_bal_float_to_tagged(double %59), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %61 = call double @_B_floatMul(double 1.0, double 0.0), !dbg !12
  store double %61, double* %3, !dbg !12
  %62 = load double, double* %3, !dbg !13
  %63 = call i8 addrspace(1)* @_bal_float_to_tagged(double %62), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %64 = call double @_B_floatMul(double 0.0, double -1.0), !dbg !14
  store double %64, double* %5, !dbg !14
  %65 = load double, double* %5, !dbg !15
  %66 = call i8 addrspace(1)* @_bal_float_to_tagged(double %65), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %66), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %67 = call double @_B_floatMul(double 0.0, double -0.0), !dbg !16
  store double %67, double* %7, !dbg !16
  %68 = load double, double* %7, !dbg !17
  %69 = call i8 addrspace(1)* @_bal_float_to_tagged(double %68), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  store double 0x7FF8000000000000, double* %9
  %70 = load double, double* %9, !dbg !18
  %71 = call double @_B_floatMul(double %70, double 1.0), !dbg !18
  store double %71, double* %10, !dbg !18
  %72 = load double, double* %10, !dbg !19
  %73 = call i8 addrspace(1)* @_bal_float_to_tagged(double %72), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !19
  store double 0x7FF8000000000000, double* %12
  store double 0x7FF8000000000000, double* %13
  %74 = load double, double* %12, !dbg !20
  %75 = load double, double* %13, !dbg !20
  %76 = call double @_B_floatMul(double %74, double %75), !dbg !20
  store double %76, double* %14, !dbg !20
  %77 = load double, double* %14, !dbg !21
  %78 = call i8 addrspace(1)* @_bal_float_to_tagged(double %77), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !21
  store double 0x7FF0000000000000, double* %16
  %79 = load double, double* %16, !dbg !22
  %80 = call double @_B_floatMul(double %79, double 20.0), !dbg !22
  store double %80, double* %17, !dbg !22
  %81 = load double, double* %17, !dbg !23
  %82 = call i8 addrspace(1)* @_bal_float_to_tagged(double %81), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %82), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !23
  store double 0xFFF0000000000000, double* %19
  store double 0x7FF0000000000000, double* %20
  %83 = load double, double* %19, !dbg !24
  %84 = load double, double* %20, !dbg !24
  %85 = call double @_B_floatMul(double %83, double %84), !dbg !24
  store double %85, double* %21, !dbg !24
  %86 = load double, double* %21, !dbg !25
  %87 = call i8 addrspace(1)* @_bal_float_to_tagged(double %86), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !25
  store double 0xFFF0000000000000, double* %23
  %88 = load double, double* %23, !dbg !26
  %89 = call double @_B_floatMul(double %88, double 0.0), !dbg !26
  store double %89, double* %24, !dbg !26
  %90 = load double, double* %24, !dbg !27
  %91 = call i8 addrspace(1)* @_bal_float_to_tagged(double %90), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %91), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !27
  %92 = call i8 addrspace(1)* @_bal_float_to_tagged(double 6.0), !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %92), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !28
  %93 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %93), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !29
  %94 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !30
  %95 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %95), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !31
  store double 0x7FF8000000000000, double* %30
  %96 = load double, double* %30
  %97 = fmul double %96, 1.0
  store double %97, double* %31
  %98 = load double, double* %31, !dbg !32
  %99 = call i8 addrspace(1)* @_bal_float_to_tagged(double %98), !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !32
  store double 0x7FF8000000000000, double* %33
  %100 = load double, double* %33
  %101 = fmul double %100, 0.0
  store double %101, double* %34
  %102 = load double, double* %34
  %103 = fdiv double %102, 0.0
  store double %103, double* %35
  %104 = load double, double* %35, !dbg !33
  %105 = call i8 addrspace(1)* @_bal_float_to_tagged(double %104), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %105), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !33
  store double 0x7FF0000000000000, double* %37
  %106 = load double, double* %37
  %107 = fmul double %106, 20.0
  store double %107, double* %38
  %108 = load double, double* %38, !dbg !34
  %109 = call i8 addrspace(1)* @_bal_float_to_tagged(double %108), !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %109), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !34
  store double 0xFFF0000000000000, double* %40
  %110 = load double, double* %40
  %111 = fmul double %110, 1.0
  store double %111, double* %41
  %112 = load double, double* %41
  %113 = fdiv double %112, 0.0
  store double %113, double* %42
  %114 = load double, double* %42, !dbg !35
  %115 = call i8 addrspace(1)* @_bal_float_to_tagged(double %114), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %115), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %43, !dbg !35
  store double 0xFFF0000000000000, double* %44
  %116 = load double, double* %44
  %117 = fmul double %116, 0.0
  store double %117, double* %45
  %118 = load double, double* %45, !dbg !36
  %119 = call i8 addrspace(1)* @_bal_float_to_tagged(double %118), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %119), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !36
  store double 2.0, double* %f1
  %120 = load double, double* %f1
  %121 = fmul double 21.0, %120
  store double %121, double* %47
  %122 = load double, double* %47, !dbg !37
  %123 = call i8 addrspace(1)* @_bal_float_to_tagged(double %122), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %123), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !37
  store double 21.21, double* %f2
  %124 = load double, double* %f1
  %125 = load double, double* %f2
  %126 = fmul double %124, %125
  store double %126, double* %49
  %127 = load double, double* %49, !dbg !38
  %128 = call i8 addrspace(1)* @_bal_float_to_tagged(double %127), !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %128), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !38
  store double 0xFFF0000000000000, double* %51
  %129 = load double, double* %51
  store double %129, double* %f2
  %130 = load double, double* %f2
  %131 = fmul double %130, 2.0
  store double %131, double* %52
  %132 = load double, double* %52, !dbg !39
  %133 = call i8 addrspace(1)* @_bal_float_to_tagged(double %132), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %133), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %53, !dbg !39
  ret void
134:
  %135 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %135)
  unreachable
}
define internal double @_B_floatMul(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca double
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store double %0, double* %f1
  store double %1, double* %f2
  %8 = load double, double* %f1
  %9 = load double, double* %f2
  %10 = fmul double %8, %9
  store double %10, double* %3
  %11 = load double, double* %3
  ret double %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 8708), !dbg !40
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/20-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"floatMul", linkageName:"_B_floatMul", scope: !1, file: !1, line: 34, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 15, scope: !5)
!21 = !DILocation(line: 11, column: 4, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 13, column: 15, scope: !5)
!25 = !DILocation(line: 13, column: 4, scope: !5)
!26 = !DILocation(line: 14, column: 15, scope: !5)
!27 = !DILocation(line: 14, column: 4, scope: !5)
!28 = !DILocation(line: 16, column: 4, scope: !5)
!29 = !DILocation(line: 17, column: 4, scope: !5)
!30 = !DILocation(line: 18, column: 4, scope: !5)
!31 = !DILocation(line: 19, column: 4, scope: !5)
!32 = !DILocation(line: 20, column: 4, scope: !5)
!33 = !DILocation(line: 21, column: 4, scope: !5)
!34 = !DILocation(line: 22, column: 4, scope: !5)
!35 = !DILocation(line: 23, column: 4, scope: !5)
!36 = !DILocation(line: 24, column: 4, scope: !5)
!37 = !DILocation(line: 27, column: 4, scope: !5)
!38 = !DILocation(line: 29, column: 4, scope: !5)
!39 = !DILocation(line: 31, column: 4, scope: !5)
!40 = !DILocation(line: 0, column: 0, scope: !7)
