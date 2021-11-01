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
  %12 = alloca i8 addrspace(1)*
  %13 = alloca double
  %14 = alloca i8 addrspace(1)*
  %15 = alloca double
  %16 = alloca i8 addrspace(1)*
  %17 = alloca double
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
  %f1 = alloca double
  %28 = alloca double
  %29 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %30 = alloca double
  %31 = alloca i8 addrspace(1)*
  %32 = alloca double
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8
  %35 = load i8*, i8** @_bal_stack_guard
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %87, label %37
37:
  %38 = call double @_B_floatAdd(double 1.0, double 2.0), !dbg !10
  store double %38, double* %1, !dbg !10
  %39 = load double, double* %1, !dbg !11
  %40 = call i8 addrspace(1)* @_bal_float_to_tagged(double %39), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %41 = call double @_B_floatAdd(double -1.0, double 1.0), !dbg !12
  store double %41, double* %3, !dbg !12
  %42 = load double, double* %3, !dbg !13
  %43 = call i8 addrspace(1)* @_bal_float_to_tagged(double %42), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %44 = call double @_B_floatAdd(double -0.0, double -0.0), !dbg !14
  store double %44, double* %5, !dbg !14
  %45 = load double, double* %5, !dbg !15
  %46 = call i8 addrspace(1)* @_bal_float_to_tagged(double %45), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %47 = call double @_B_floatAdd(double -0.0, double 0.0), !dbg !16
  store double %47, double* %7, !dbg !16
  %48 = load double, double* %7, !dbg !17
  %49 = call i8 addrspace(1)* @_bal_float_to_tagged(double %48), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %50 = call double @_B_floatAdd(double 0x7FF8000000000000, double 1.0), !dbg !18
  store double %50, double* %9, !dbg !18
  %51 = load double, double* %9, !dbg !19
  %52 = call i8 addrspace(1)* @_bal_float_to_tagged(double %51), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %52), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %53 = call double @_B_floatAdd(double 0x7FF8000000000000, double 0x7FF8000000000000), !dbg !20
  store double %53, double* %11, !dbg !20
  %54 = load double, double* %11, !dbg !21
  %55 = call i8 addrspace(1)* @_bal_float_to_tagged(double %54), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %56 = call double @_B_floatAdd(double 0x7FF0000000000000, double 20.0), !dbg !22
  store double %56, double* %13, !dbg !22
  %57 = load double, double* %13, !dbg !23
  %58 = call i8 addrspace(1)* @_bal_float_to_tagged(double %57), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %59 = call double @_B_floatAdd(double 0xFFF0000000000000, double 0x7FF0000000000000), !dbg !24
  store double %59, double* %15, !dbg !24
  %60 = load double, double* %15, !dbg !25
  %61 = call i8 addrspace(1)* @_bal_float_to_tagged(double %60), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %62 = call double @_B_floatAdd(double 0xFFF0000000000000, double 100.0), !dbg !26
  store double %62, double* %17, !dbg !26
  %63 = load double, double* %17, !dbg !27
  %64 = call i8 addrspace(1)* @_bal_float_to_tagged(double %63), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %65 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.0), !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !28
  %66 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %66), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %67 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !30
  %68 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  %69 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !32
  %70 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %71 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF0000000000000), !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !34
  %72 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !35
  %73 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0xFFF0000000000000), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !36
  store double 4.0, double* %f1
  %74 = load double, double* %f1
  %75 = fadd double 38.0, %74
  store double %75, double* %28
  %76 = load double, double* %28, !dbg !37
  %77 = call i8 addrspace(1)* @_bal_float_to_tagged(double %76), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %77), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !37
  store double 38.42, double* %f2
  %78 = load double, double* %f1
  %79 = load double, double* %f2
  %80 = fadd double %78, %79
  store double %80, double* %30
  %81 = load double, double* %30, !dbg !38
  %82 = call i8 addrspace(1)* @_bal_float_to_tagged(double %81), !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %82), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !38
  store double 0xFFF0000000000000, double* %f2
  %83 = load double, double* %f2
  %84 = fadd double %83, 2.0
  store double %84, double* %32
  %85 = load double, double* %32, !dbg !39
  %86 = call i8 addrspace(1)* @_bal_float_to_tagged(double %85), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !39
  ret void
87:
  %88 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %88)
  unreachable
}
define internal double @_B_floatAdd(double %0, double %1) !dbg !7 {
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
  %10 = fadd double %8, %9
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
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/18-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"floatAdd", linkageName:"_B_floatAdd", scope: !1, file: !1, line: 34, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
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
