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
  %33 = alloca i8 addrspace(1)*
  %34 = alloca double
  %35 = alloca i8 addrspace(1)*
  %36 = alloca double
  %37 = alloca i8 addrspace(1)*
  %38 = alloca double
  %39 = alloca i8 addrspace(1)*
  %40 = alloca double
  %41 = alloca i8 addrspace(1)*
  %f1 = alloca double
  %42 = alloca double
  %43 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %44 = alloca double
  %45 = alloca i8 addrspace(1)*
  %46 = alloca double
  %47 = alloca double
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i8
  %50 = load i8*, i8** @_bal_stack_guard
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %117, label %52
52:
  %53 = call double @_B_floatMul(double 3.0, double 2.0), !dbg !10
  store double %53, double* %1, !dbg !10
  %54 = load double, double* %1, !dbg !11
  %55 = call i8 addrspace(1)* @_bal_float_to_tagged(double %54), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %56 = call double @_B_floatMul(double -1.0, double 2.0), !dbg !12
  store double %56, double* %3, !dbg !12
  %57 = load double, double* %3, !dbg !13
  %58 = call i8 addrspace(1)* @_bal_float_to_tagged(double %57), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %59 = call double @_B_floatMul(double 0.0, double -0.0), !dbg !14
  store double %59, double* %5, !dbg !14
  %60 = load double, double* %5, !dbg !15
  %61 = call i8 addrspace(1)* @_bal_float_to_tagged(double %60), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %62 = call double @_B_floatMul(double 0.0, double 0.0), !dbg !16
  store double %62, double* %7, !dbg !16
  %63 = load double, double* %7, !dbg !17
  %64 = call i8 addrspace(1)* @_bal_float_to_tagged(double %63), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  store double 0x7FF8000000000000, double* %9
  %65 = load double, double* %9, !dbg !18
  %66 = call double @_B_floatMul(double %65, double 1.0), !dbg !18
  store double %66, double* %10, !dbg !18
  %67 = load double, double* %10, !dbg !19
  %68 = call i8 addrspace(1)* @_bal_float_to_tagged(double %67), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !19
  store double 0x7FF8000000000000, double* %12
  store double 0x7FF8000000000000, double* %13
  %69 = load double, double* %12, !dbg !20
  %70 = load double, double* %13, !dbg !20
  %71 = call double @_B_floatMul(double %69, double %70), !dbg !20
  store double %71, double* %14, !dbg !20
  %72 = load double, double* %14, !dbg !21
  %73 = call i8 addrspace(1)* @_bal_float_to_tagged(double %72), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !21
  store double 0x7FF0000000000000, double* %16
  %74 = load double, double* %16, !dbg !22
  %75 = call double @_B_floatMul(double %74, double 20.0), !dbg !22
  store double %75, double* %17, !dbg !22
  %76 = load double, double* %17, !dbg !23
  %77 = call i8 addrspace(1)* @_bal_float_to_tagged(double %76), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %77), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !23
  store double 0xFFF0000000000000, double* %19
  store double 0x7FF0000000000000, double* %20
  %78 = load double, double* %19, !dbg !24
  %79 = load double, double* %20, !dbg !24
  %80 = call double @_B_floatMul(double %78, double %79), !dbg !24
  store double %80, double* %21, !dbg !24
  %81 = load double, double* %21, !dbg !25
  %82 = call i8 addrspace(1)* @_bal_float_to_tagged(double %81), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %82), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !25
  store double 0xFFF0000000000000, double* %23
  %83 = load double, double* %23, !dbg !26
  %84 = call double @_B_floatMul(double %83, double 0.0), !dbg !26
  store double %84, double* %24, !dbg !26
  %85 = load double, double* %24, !dbg !27
  %86 = call i8 addrspace(1)* @_bal_float_to_tagged(double %85), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !27
  %87 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5), !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !28
  %88 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.5), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %88), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !29
  store double 0x7FF8000000000000, double* %28
  %89 = load double, double* %28, !dbg !30
  %90 = call i8 addrspace(1)* @_bal_float_to_tagged(double %89), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %90), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !30
  store double 0x7FF8000000000000, double* %30
  %91 = load double, double* %30, !dbg !31
  %92 = call i8 addrspace(1)* @_bal_float_to_tagged(double %91), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %92), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !31
  store double 0x7FF8000000000000, double* %32
  %93 = load double, double* %32, !dbg !32
  %94 = call i8 addrspace(1)* @_bal_float_to_tagged(double %93), !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !32
  store double 0x7FF8000000000000, double* %34
  %95 = load double, double* %34, !dbg !33
  %96 = call i8 addrspace(1)* @_bal_float_to_tagged(double %95), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !33
  store double 0x7FF0000000000000, double* %36
  %97 = load double, double* %36, !dbg !34
  %98 = call i8 addrspace(1)* @_bal_float_to_tagged(double %97), !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %98), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !34
  store double 0x7FF8000000000000, double* %38
  %99 = load double, double* %38, !dbg !35
  %100 = call i8 addrspace(1)* @_bal_float_to_tagged(double %99), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %100), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !35
  store double 0xFFF0000000000000, double* %40
  %101 = load double, double* %40, !dbg !36
  %102 = call i8 addrspace(1)* @_bal_float_to_tagged(double %101), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %102), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !36
  store double 2.0, double* %f1
  %103 = load double, double* %f1
  %104 = fdiv double 84.0, %103
  store double %104, double* %42
  %105 = load double, double* %42, !dbg !37
  %106 = call i8 addrspace(1)* @_bal_float_to_tagged(double %105), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %43, !dbg !37
  store double 0x3FA823B9FECB0380, double* %f2
  %107 = load double, double* %f1
  %108 = load double, double* %f2
  %109 = fdiv double %107, %108
  store double %109, double* %44
  %110 = load double, double* %44, !dbg !38
  %111 = call i8 addrspace(1)* @_bal_float_to_tagged(double %110), !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %45, !dbg !38
  store double 0xFFF0000000000000, double* %46
  %112 = load double, double* %46
  store double %112, double* %f2
  %113 = load double, double* %f2
  %114 = fdiv double %113, 2.0
  store double %114, double* %47
  %115 = load double, double* %47, !dbg !39
  %116 = call i8 addrspace(1)* @_bal_float_to_tagged(double %115), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %116), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !39
  ret void
117:
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %118)
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
