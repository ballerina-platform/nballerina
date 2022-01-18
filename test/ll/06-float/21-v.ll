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
  %28 = alloca double
  %29 = alloca i8 addrspace(1)*
  %30 = alloca double
  %31 = alloca i8 addrspace(1)*
  %32 = alloca double
  %33 = alloca double
  %34 = alloca i8 addrspace(1)*
  %35 = alloca double
  %36 = alloca double
  %37 = alloca double
  %38 = alloca i8 addrspace(1)*
  %39 = alloca double
  %40 = alloca double
  %41 = alloca i8 addrspace(1)*
  %42 = alloca double
  %43 = alloca double
  %44 = alloca double
  %45 = alloca i8 addrspace(1)*
  %46 = alloca double
  %47 = alloca double
  %48 = alloca i8 addrspace(1)*
  %f1 = alloca double
  %49 = alloca double
  %50 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %51 = alloca double
  %52 = alloca i8 addrspace(1)*
  %53 = alloca double
  %54 = alloca double
  %55 = alloca i8 addrspace(1)*
  %56 = alloca i8
  %57 = load i8*, i8** @_bal_stack_guard
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %136, label %59
59:
  %60 = call double @_B_floatMul(double 3.0, double 2.0), !dbg !10
  store double %60, double* %1, !dbg !10
  %61 = load double, double* %1, !dbg !11
  %62 = call i8 addrspace(1)* @_bal_float_to_tagged(double %61), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %62), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %63 = call double @_B_floatMul(double -1.0, double 2.0), !dbg !12
  store double %63, double* %3, !dbg !12
  %64 = load double, double* %3, !dbg !13
  %65 = call i8 addrspace(1)* @_bal_float_to_tagged(double %64), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %66 = call double @_B_floatMul(double 0.0, double -0.0), !dbg !14
  store double %66, double* %5, !dbg !14
  %67 = load double, double* %5, !dbg !15
  %68 = call i8 addrspace(1)* @_bal_float_to_tagged(double %67), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %69 = call double @_B_floatMul(double 0.0, double 0.0), !dbg !16
  store double %69, double* %7, !dbg !16
  %70 = load double, double* %7, !dbg !17
  %71 = call i8 addrspace(1)* @_bal_float_to_tagged(double %70), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  store double 0x7FF8000000000000, double* %9
  %72 = load double, double* %9, !dbg !18
  %73 = call double @_B_floatMul(double %72, double 1.0), !dbg !18
  store double %73, double* %10, !dbg !18
  %74 = load double, double* %10, !dbg !19
  %75 = call i8 addrspace(1)* @_bal_float_to_tagged(double %74), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %75), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !19
  store double 0x7FF8000000000000, double* %12
  store double 0x7FF8000000000000, double* %13
  %76 = load double, double* %12, !dbg !20
  %77 = load double, double* %13, !dbg !20
  %78 = call double @_B_floatMul(double %76, double %77), !dbg !20
  store double %78, double* %14, !dbg !20
  %79 = load double, double* %14, !dbg !21
  %80 = call i8 addrspace(1)* @_bal_float_to_tagged(double %79), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !21
  store double 0x7FF0000000000000, double* %16
  %81 = load double, double* %16, !dbg !22
  %82 = call double @_B_floatMul(double %81, double 20.0), !dbg !22
  store double %82, double* %17, !dbg !22
  %83 = load double, double* %17, !dbg !23
  %84 = call i8 addrspace(1)* @_bal_float_to_tagged(double %83), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %84), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !23
  store double 0xFFF0000000000000, double* %19
  store double 0x7FF0000000000000, double* %20
  %85 = load double, double* %19, !dbg !24
  %86 = load double, double* %20, !dbg !24
  %87 = call double @_B_floatMul(double %85, double %86), !dbg !24
  store double %87, double* %21, !dbg !24
  %88 = load double, double* %21, !dbg !25
  %89 = call i8 addrspace(1)* @_bal_float_to_tagged(double %88), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %89), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !25
  store double 0xFFF0000000000000, double* %23
  %90 = load double, double* %23, !dbg !26
  %91 = call double @_B_floatMul(double %90, double 0.0), !dbg !26
  store double %91, double* %24, !dbg !26
  %92 = load double, double* %24, !dbg !27
  %93 = call i8 addrspace(1)* @_bal_float_to_tagged(double %92), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %93), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !27
  %94 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5), !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !28
  %95 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.5), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %95), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !29
  store double 0x7FF8000000000000, double* %28
  %96 = load double, double* %28, !dbg !30
  %97 = call i8 addrspace(1)* @_bal_float_to_tagged(double %96), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %97), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !30
  store double 0x7FF8000000000000, double* %30
  %98 = load double, double* %30, !dbg !31
  %99 = call i8 addrspace(1)* @_bal_float_to_tagged(double %98), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !31
  store double 0x7FF8000000000000, double* %32
  %100 = load double, double* %32
  %101 = fdiv double %100, 1.0
  store double %101, double* %33
  %102 = load double, double* %33, !dbg !32
  %103 = call i8 addrspace(1)* @_bal_float_to_tagged(double %102), !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !32
  store double 0x7FF8000000000000, double* %35
  store double 0x7FF8000000000000, double* %36
  %104 = load double, double* %35
  %105 = load double, double* %36
  %106 = fdiv double %104, %105
  store double %106, double* %37
  %107 = load double, double* %37, !dbg !33
  %108 = call i8 addrspace(1)* @_bal_float_to_tagged(double %107), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %108), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !33
  store double 0x7FF0000000000000, double* %39
  %109 = load double, double* %39
  %110 = fdiv double %109, 20.0
  store double %110, double* %40
  %111 = load double, double* %40, !dbg !34
  %112 = call i8 addrspace(1)* @_bal_float_to_tagged(double %111), !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %112), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !34
  store double 0xFFF0000000000000, double* %42
  store double 0x7FF0000000000000, double* %43
  %113 = load double, double* %42
  %114 = load double, double* %43
  %115 = fdiv double %113, %114
  store double %115, double* %44
  %116 = load double, double* %44, !dbg !35
  %117 = call i8 addrspace(1)* @_bal_float_to_tagged(double %116), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %117), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %45, !dbg !35
  store double 0xFFF0000000000000, double* %46
  %118 = load double, double* %46
  %119 = fdiv double %118, 0.0
  store double %119, double* %47
  %120 = load double, double* %47, !dbg !36
  %121 = call i8 addrspace(1)* @_bal_float_to_tagged(double %120), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %121), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !36
  store double 2.0, double* %f1
  %122 = load double, double* %f1
  %123 = fdiv double 84.0, %122
  store double %123, double* %49
  %124 = load double, double* %49, !dbg !37
  %125 = call i8 addrspace(1)* @_bal_float_to_tagged(double %124), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %125), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !37
  store double 0x3FA823B9FECB0380, double* %f2
  %126 = load double, double* %f1
  %127 = load double, double* %f2
  %128 = fdiv double %126, %127
  store double %128, double* %51
  %129 = load double, double* %51, !dbg !38
  %130 = call i8 addrspace(1)* @_bal_float_to_tagged(double %129), !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %130), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !38
  store double 0xFFF0000000000000, double* %53
  %131 = load double, double* %53
  store double %131, double* %f2
  %132 = load double, double* %f2
  %133 = fdiv double %132, 2.0
  store double %133, double* %54
  %134 = load double, double* %54, !dbg !39
  %135 = call i8 addrspace(1)* @_bal_float_to_tagged(double %134), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %135), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %55, !dbg !39
  ret void
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %137)
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
  %10 = fdiv double %8, %9
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
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/21-v.bal", directory:"")
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
