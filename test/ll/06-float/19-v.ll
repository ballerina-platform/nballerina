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
  %10 = alloca i8 addrspace(1)*
  %11 = alloca double
  %12 = alloca double
  %13 = alloca i8 addrspace(1)*
  %14 = alloca double
  %15 = alloca double
  %16 = alloca double
  %17 = alloca i8 addrspace(1)*
  %18 = alloca double
  %19 = alloca double
  %20 = alloca i8 addrspace(1)*
  %21 = alloca double
  %22 = alloca double
  %23 = alloca double
  %24 = alloca i8 addrspace(1)*
  %25 = alloca double
  %26 = alloca double
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca double
  %34 = alloca double
  %35 = alloca i8 addrspace(1)*
  %36 = alloca double
  %37 = alloca double
  %38 = alloca double
  %39 = alloca i8 addrspace(1)*
  %40 = alloca double
  %41 = alloca double
  %42 = alloca i8 addrspace(1)*
  %43 = alloca double
  %44 = alloca double
  %45 = alloca double
  %46 = alloca i8 addrspace(1)*
  %47 = alloca double
  %48 = alloca double
  %49 = alloca i8 addrspace(1)*
  %f1 = alloca double
  %50 = alloca double
  %51 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %52 = alloca double
  %53 = alloca i8 addrspace(1)*
  %54 = alloca double
  %55 = alloca double
  %56 = alloca i8 addrspace(1)*
  %57 = alloca i8
  %58 = load i8*, i8** @_bal_stack_guard
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %139, label %60
60:
  %61 = call double @_B_floatSub(double 1.0, double 2.0), !dbg !10
  store double %61, double* %1, !dbg !10
  %62 = load double, double* %1, !dbg !11
  %63 = call i8 addrspace(1)* @_bal_float_to_tagged(double %62), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %64 = call double @_B_floatSub(double 1.0, double 1.0), !dbg !12
  store double %64, double* %3, !dbg !12
  %65 = load double, double* %3, !dbg !13
  %66 = call i8 addrspace(1)* @_bal_float_to_tagged(double %65), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %66), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %67 = call double @_B_floatSub(double 0.0, double -0.0), !dbg !14
  store double %67, double* %5, !dbg !14
  %68 = load double, double* %5, !dbg !15
  %69 = call i8 addrspace(1)* @_bal_float_to_tagged(double %68), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %70 = call double @_B_floatSub(double -0.0, double 0.0), !dbg !16
  store double %70, double* %7, !dbg !16
  %71 = load double, double* %7, !dbg !17
  %72 = call i8 addrspace(1)* @_bal_float_to_tagged(double %71), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %73 = call double @_B_floatSub(double 0.0, double 0.0), !dbg !18
  store double %73, double* %9, !dbg !18
  %74 = load double, double* %9, !dbg !19
  %75 = call i8 addrspace(1)* @_bal_float_to_tagged(double %74), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %75), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  store double 0x7FF8000000000000, double* %11
  %76 = load double, double* %11, !dbg !20
  %77 = call double @_B_floatSub(double %76, double 1.0), !dbg !20
  store double %77, double* %12, !dbg !20
  %78 = load double, double* %12, !dbg !21
  %79 = call i8 addrspace(1)* @_bal_float_to_tagged(double %78), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !21
  store double 0x7FF8000000000000, double* %14
  store double 0x7FF8000000000000, double* %15
  %80 = load double, double* %14, !dbg !22
  %81 = load double, double* %15, !dbg !22
  %82 = call double @_B_floatSub(double %80, double %81), !dbg !22
  store double %82, double* %16, !dbg !22
  %83 = load double, double* %16, !dbg !23
  %84 = call i8 addrspace(1)* @_bal_float_to_tagged(double %83), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %84), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !23
  store double 0x7FF0000000000000, double* %18
  %85 = load double, double* %18, !dbg !24
  %86 = call double @_B_floatSub(double %85, double 20.0), !dbg !24
  store double %86, double* %19, !dbg !24
  %87 = load double, double* %19, !dbg !25
  %88 = call i8 addrspace(1)* @_bal_float_to_tagged(double %87), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %88), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !25
  store double 0xFFF0000000000000, double* %21
  store double 0x7FF0000000000000, double* %22
  %89 = load double, double* %21, !dbg !26
  %90 = load double, double* %22, !dbg !26
  %91 = call double @_B_floatSub(double %89, double %90), !dbg !26
  store double %91, double* %23, !dbg !26
  %92 = load double, double* %23, !dbg !27
  %93 = call i8 addrspace(1)* @_bal_float_to_tagged(double %92), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %93), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !27
  store double 0xFFF0000000000000, double* %25
  %94 = load double, double* %25, !dbg !28
  %95 = call double @_B_floatSub(double %94, double 100.0), !dbg !28
  store double %95, double* %26, !dbg !28
  %96 = load double, double* %26, !dbg !29
  %97 = call i8 addrspace(1)* @_bal_float_to_tagged(double %96), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %97), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !29
  %98 = call i8 addrspace(1)* @_bal_float_to_tagged(double -1.0), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %98), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !30
  %99 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !31
  %100 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %100), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !32
  %101 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !33
  %102 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %102), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !34
  store double 0x7FF8000000000000, double* %33
  %103 = load double, double* %33
  %104 = fsub double %103, 1.0
  store double %104, double* %34
  %105 = load double, double* %34, !dbg !35
  %106 = call i8 addrspace(1)* @_bal_float_to_tagged(double %105), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !35
  store double 0x7FF8000000000000, double* %36
  store double 0x7FF8000000000000, double* %37
  %107 = load double, double* %36
  %108 = load double, double* %37
  %109 = fsub double %107, %108
  store double %109, double* %38
  %110 = load double, double* %38, !dbg !36
  %111 = call i8 addrspace(1)* @_bal_float_to_tagged(double %110), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !36
  store double 0x7FF0000000000000, double* %40
  %112 = load double, double* %40
  %113 = fsub double %112, 20.0
  store double %113, double* %41
  %114 = load double, double* %41, !dbg !37
  %115 = call i8 addrspace(1)* @_bal_float_to_tagged(double %114), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %115), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !37
  store double 0xFFF0000000000000, double* %43
  store double 0x7FF0000000000000, double* %44
  %116 = load double, double* %43
  %117 = load double, double* %44
  %118 = fsub double %116, %117
  store double %118, double* %45
  %119 = load double, double* %45, !dbg !38
  %120 = call i8 addrspace(1)* @_bal_float_to_tagged(double %119), !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %120), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !38
  store double 0xFFF0000000000000, double* %47
  %121 = load double, double* %47
  %122 = fsub double %121, 100.0
  store double %122, double* %48
  %123 = load double, double* %48, !dbg !39
  %124 = call i8 addrspace(1)* @_bal_float_to_tagged(double %123), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %124), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %49, !dbg !39
  store double 4.0, double* %f1
  %125 = load double, double* %f1
  %126 = fsub double 46.0, %125
  store double %126, double* %50
  %127 = load double, double* %50, !dbg !40
  %128 = call i8 addrspace(1)* @_bal_float_to_tagged(double %127), !dbg !40
  call void @_Bb02ioprintln(i8 addrspace(1)* %128), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %51, !dbg !40
  store double 46.42, double* %f2
  %129 = load double, double* %f1
  %130 = load double, double* %f2
  %131 = fsub double %129, %130
  store double %131, double* %52
  %132 = load double, double* %52, !dbg !41
  %133 = call i8 addrspace(1)* @_bal_float_to_tagged(double %132), !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %133), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %53, !dbg !41
  store double 0xFFF0000000000000, double* %54
  %134 = load double, double* %54
  store double %134, double* %f2
  %135 = load double, double* %f2
  %136 = fsub double %135, 2.0
  store double %136, double* %55
  %137 = load double, double* %55, !dbg !42
  %138 = call i8 addrspace(1)* @_bal_float_to_tagged(double %137), !dbg !42
  call void @_Bb02ioprintln(i8 addrspace(1)* %138), !dbg !42
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !42
  ret void
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %140)
  unreachable
}
define internal double @_B_floatSub(double %0, double %1) !dbg !7 {
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
  %10 = fsub double %8, %9
  store double %10, double* %3
  %11 = load double, double* %3
  ret double %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220), !dbg !43
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/19-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"floatSub", linkageName:"_B_floatSub", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
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
!28 = !DILocation(line: 15, column: 15, scope: !5)
!29 = !DILocation(line: 15, column: 4, scope: !5)
!30 = !DILocation(line: 17, column: 4, scope: !5)
!31 = !DILocation(line: 18, column: 4, scope: !5)
!32 = !DILocation(line: 19, column: 4, scope: !5)
!33 = !DILocation(line: 20, column: 4, scope: !5)
!34 = !DILocation(line: 21, column: 4, scope: !5)
!35 = !DILocation(line: 22, column: 4, scope: !5)
!36 = !DILocation(line: 23, column: 4, scope: !5)
!37 = !DILocation(line: 24, column: 4, scope: !5)
!38 = !DILocation(line: 25, column: 4, scope: !5)
!39 = !DILocation(line: 26, column: 4, scope: !5)
!40 = !DILocation(line: 29, column: 4, scope: !5)
!41 = !DILocation(line: 31, column: 4, scope: !5)
!42 = !DILocation(line: 33, column: 4, scope: !5)
!43 = !DILocation(line: 0, column: 0, scope: !7)
