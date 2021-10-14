@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %31, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %11 = bitcast i8 addrspace(1)* %10 to [1 x i8 addrspace(1)*] addrspace(1)*
  %12 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
  %13 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 0
  store i8 addrspace(1)* %12, i8 addrspace(1)* addrspace(1)* %13
  %14 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %11 to [0 x i8 addrspace(1)*] addrspace(1)*
  %15 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %16 = bitcast i8 addrspace(1)* %15 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %17 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %17
  %18 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %18
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %14, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %20
  %21 = getelementptr i8, i8 addrspace(1)* %15, i64 1297036692682702852
  store i8 addrspace(1)* %21, i8 addrspace(1)** %1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %22, i8 addrspace(1)** %v
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 72057594037927928)
  %25 = bitcast i8 addrspace(1)* %24 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %26 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 1
  %27 = load i64, i64 addrspace(1)* %26, align 8
  %28 = icmp ult i64 0, %27
  br i1 %28, label %33, label %43
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 3
  %35 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %34, align 8
  %36 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %35, i64 0, i64 0
  %37 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %36, align 8
  %38 = call double @_bal_tagged_to_float(i8 addrspace(1)* %37)
  store double %38, double* %2
  %39 = load double, double* %2
  %40 = fadd double %39, 0.5
  store double %40, double* %3
  %41 = load double, double* %3, !dbg !8
  %42 = call i8 addrspace(1)* @_bal_float_to_tagged(double %41), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %44, i8 addrspace(1)** %5
  br label %29
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/float2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
