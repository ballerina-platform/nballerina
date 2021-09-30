@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca double
  %4 = alloca double
  %5 = alloca i8 addrspace(1)*
  %6 = alloca double
  %7 = alloca double
  %8 = alloca double
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %36, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %16 = bitcast i8 addrspace(1)* %15 to [1 x i8 addrspace(1)*] addrspace(1)*
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  %18 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 0
  store i8 addrspace(1)* %17, i8 addrspace(1)* addrspace(1)* %18
  %19 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %16 to [0 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %21 = bitcast i8 addrspace(1)* %20 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %22
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %23
  %24 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %19, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %25
  %26 = getelementptr i8, i8 addrspace(1)* %20, i64 1297036692682702852
  store i8 addrspace(1)* %26, i8 addrspace(1)** %1
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %27, i8 addrspace(1)** %x
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %29 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %28, i64 72057594037927928)
  %30 = bitcast i8 addrspace(1)* %29 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %31 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 1
  %32 = load i64, i64 addrspace(1)* %31, align 8
  %33 = icmp ult i64 0, %32
  br i1 %33, label %38, label %51
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 3
  %40 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %39, align 8
  %41 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %40, i64 0, i64 0
  %42 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %41, align 8
  %43 = call double @_bal_tagged_to_float(i8 addrspace(1)* %42)
  store double %43, double* %2
  %44 = load double, double* %2
  %45 = fadd double %44, 1.0
  store double %45, double* %3
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %47 = load double, double* %3
  %48 = call i8 addrspace(1)* @_bal_float_to_tagged(double %47)
  %49 = call i64 @_bal_list_set(i8 addrspace(1)* %46, i64 0, i8 addrspace(1)* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %53, label %60
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !7
  store i8 addrspace(1)* %52, i8 addrspace(1)** %10
  br label %34
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %55 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %54, i64 72057594037927928)
  %56 = bitcast i8 addrspace(1)* %55 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %57 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %56, i64 0, i32 1
  %58 = load i64, i64 addrspace(1)* %57, align 8
  %59 = icmp ult i64 0, %58
  br i1 %59, label %63, label %77
60:
  %61 = or i64 %49, 1280
  %62 = call i8 addrspace(1)* @_bal_panic_construct(i64 %61), !dbg !7
  store i8 addrspace(1)* %62, i8 addrspace(1)** %10
  br label %34
63:
  %64 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %56, i64 0, i32 3
  %65 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %64, align 8
  %66 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %65, i64 0, i64 0
  %67 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %66, align 8
  %68 = call double @_bal_tagged_to_float(i8 addrspace(1)* %67)
  store double %68, double* %4
  %69 = load double, double* %4, !dbg !8
  %70 = call i8 addrspace(1)* @_bal_float_to_tagged(double %69), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %72 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %71, i64 72057594037927928)
  %73 = bitcast i8 addrspace(1)* %72 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %74 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 1
  %75 = load i64, i64 addrspace(1)* %74, align 8
  %76 = icmp ult i64 0, %75
  br i1 %76, label %79, label %92
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %78, i8 addrspace(1)** %10
  br label %34
79:
  %80 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %73, i64 0, i32 3
  %81 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %80, align 8
  %82 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %81, i64 0, i64 0
  %83 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %82, align 8
  %84 = call double @_bal_tagged_to_float(i8 addrspace(1)* %83)
  store double %84, double* %6
  %85 = load double, double* %6
  %86 = fsub double %85, 3.0
  store double %86, double* %7
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %88 = load double, double* %7
  %89 = call i8 addrspace(1)* @_bal_float_to_tagged(double %88)
  %90 = call i64 @_bal_list_set(i8 addrspace(1)* %87, i64 0, i8 addrspace(1)* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %94, label %101
92:
  %93 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %93, i8 addrspace(1)** %10
  br label %34
94:
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %96 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %95, i64 72057594037927928)
  %97 = bitcast i8 addrspace(1)* %96 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %98 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97, i64 0, i32 1
  %99 = load i64, i64 addrspace(1)* %98, align 8
  %100 = icmp ult i64 0, %99
  br i1 %100, label %104, label %112
101:
  %102 = or i64 %90, 1792
  %103 = call i8 addrspace(1)* @_bal_panic_construct(i64 %102), !dbg !7
  store i8 addrspace(1)* %103, i8 addrspace(1)** %10
  br label %34
104:
  %105 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97, i64 0, i32 3
  %106 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %105, align 8
  %107 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %106, i64 0, i64 0
  %108 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %107, align 8
  %109 = call double @_bal_tagged_to_float(i8 addrspace(1)* %108)
  store double %109, double* %8
  %110 = load double, double* %8, !dbg !9
  %111 = call i8 addrspace(1)* @_bal_float_to_tagged(double %110), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  ret void
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %113, i8 addrspace(1)** %10
  br label %34
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/compoundassign6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
