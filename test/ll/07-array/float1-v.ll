@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca double
  %4 = alloca double
  %5 = alloca double
  %6 = alloca double
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %38, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %14 = bitcast i8 addrspace(1)* %13 to [3 x i8 addrspace(1)*] addrspace(1)*
  %15 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 0
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  %18 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 1
  store i8 addrspace(1)* %17, i8 addrspace(1)* addrspace(1)* %18
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  %20 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 2
  store i8 addrspace(1)* %19, i8 addrspace(1)* addrspace(1)* %20
  %21 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %14 to [0 x i8 addrspace(1)*] addrspace(1)*
  %22 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %23 = bitcast i8 addrspace(1)* %22 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %24 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %26
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %21, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %27
  %28 = getelementptr i8, i8 addrspace(1)* %22, i64 1297036692682702852
  store i8 addrspace(1)* %28, i8 addrspace(1)** %1
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %29, i8 addrspace(1)** %v
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %31 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %30, i64 72057594037927928)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 1
  %34 = load i64, i64 addrspace(1)* %33, align 8
  %35 = icmp ult i64 0, %34
  br i1 %35, label %40, label %52
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 3
  %42 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %41, align 8
  %43 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %42, i64 0, i64 0
  %44 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %43, align 8
  %45 = call double @_bal_tagged_to_float(i8 addrspace(1)* %44)
  store double %45, double* %2
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %47 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %46, i64 72057594037927928)
  %48 = bitcast i8 addrspace(1)* %47 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %49 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  %50 = load i64, i64 addrspace(1)* %49, align 8
  %51 = icmp ult i64 1, %50
  br i1 %51, label %54, label %69
52:
  %53 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %53, i8 addrspace(1)** %8
  br label %36
54:
  %55 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %56 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %55, align 8
  %57 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %56, i64 0, i64 1
  %58 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %57, align 8
  %59 = call double @_bal_tagged_to_float(i8 addrspace(1)* %58)
  store double %59, double* %3
  %60 = load double, double* %2
  %61 = load double, double* %3
  %62 = fadd double %60, %61
  store double %62, double* %4
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %64 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %63, i64 72057594037927928)
  %65 = bitcast i8 addrspace(1)* %64 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %66 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 1
  %67 = load i64, i64 addrspace(1)* %66, align 8
  %68 = icmp ult i64 2, %67
  br i1 %68, label %71, label %82
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %70, i8 addrspace(1)** %8
  br label %36
71:
  %72 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 3
  %73 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %72, align 8
  %74 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %73, i64 0, i64 2
  %75 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %74, align 8
  %76 = call double @_bal_tagged_to_float(i8 addrspace(1)* %75)
  store double %76, double* %5
  %77 = load double, double* %4
  %78 = load double, double* %5
  %79 = fadd double %77, %78
  store double %79, double* %6
  %80 = load double, double* %6, !dbg !8
  %81 = call i8 addrspace(1)* @_bal_float_to_tagged(double %80), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !8
  ret void
82:
  %83 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %83, i8 addrspace(1)** %8
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/float1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
