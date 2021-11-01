@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
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
  br i1 %13, label %32, label %14
14:
  %15 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %16 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 3
  %17 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %16, align 8
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  %19 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %17, i64 0, i64 0
  store i8 addrspace(1)* %18, i8 addrspace(1)* addrspace(1)* %19
  %20 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %20
  %21 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15 to i8 addrspace(1)*
  %22 = getelementptr i8, i8 addrspace(1)* %21, i64 1297036692682702852
  store i8 addrspace(1)* %22, i8 addrspace(1)** %1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %23, i8 addrspace(1)** %x
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %24, i64 72057594037927928)
  %26 = bitcast i8 addrspace(1)* %25 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  %28 = load i64, i64 addrspace(1)* %27, align 8
  %29 = icmp ult i64 0, %28
  br i1 %29, label %34, label %47
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 3
  %36 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %35, align 8
  %37 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %36, i64 0, i64 0
  %38 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %37, align 8
  %39 = call double @_bal_tagged_to_float(i8 addrspace(1)* %38)
  store double %39, double* %2
  %40 = load double, double* %2
  %41 = fadd double %40, 1.0
  store double %41, double* %3
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %43 = load double, double* %3
  %44 = call i8 addrspace(1)* @_bal_float_to_tagged(double %43)
  %45 = call i64 @_bal_list_set(i8 addrspace(1)* %42, i64 0, i8 addrspace(1)* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %49, label %56
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !7
  store i8 addrspace(1)* %48, i8 addrspace(1)** %10
  br label %30
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %51 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %50, i64 72057594037927928)
  %52 = bitcast i8 addrspace(1)* %51 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %53 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 1
  %54 = load i64, i64 addrspace(1)* %53, align 8
  %55 = icmp ult i64 0, %54
  br i1 %55, label %59, label %73
56:
  %57 = or i64 %45, 1280
  %58 = call i8 addrspace(1)* @_bal_panic_construct(i64 %57), !dbg !7
  store i8 addrspace(1)* %58, i8 addrspace(1)** %10
  br label %30
59:
  %60 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 3
  %61 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %60, align 8
  %62 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %61, i64 0, i64 0
  %63 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %62, align 8
  %64 = call double @_bal_tagged_to_float(i8 addrspace(1)* %63)
  store double %64, double* %4
  %65 = load double, double* %4, !dbg !8
  %66 = call i8 addrspace(1)* @_bal_float_to_tagged(double %65), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %66), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %68 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %67, i64 72057594037927928)
  %69 = bitcast i8 addrspace(1)* %68 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %70 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 1
  %71 = load i64, i64 addrspace(1)* %70, align 8
  %72 = icmp ult i64 0, %71
  br i1 %72, label %75, label %88
73:
  %74 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %74, i8 addrspace(1)** %10
  br label %30
75:
  %76 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 3
  %77 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %76, align 8
  %78 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %77, i64 0, i64 0
  %79 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %78, align 8
  %80 = call double @_bal_tagged_to_float(i8 addrspace(1)* %79)
  store double %80, double* %6
  %81 = load double, double* %6
  %82 = fsub double %81, 3.0
  store double %82, double* %7
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %84 = load double, double* %7
  %85 = call i8 addrspace(1)* @_bal_float_to_tagged(double %84)
  %86 = call i64 @_bal_list_set(i8 addrspace(1)* %83, i64 0, i8 addrspace(1)* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %90, label %97
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %89, i8 addrspace(1)** %10
  br label %30
90:
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %92 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %91, i64 72057594037927928)
  %93 = bitcast i8 addrspace(1)* %92 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %94 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 1
  %95 = load i64, i64 addrspace(1)* %94, align 8
  %96 = icmp ult i64 0, %95
  br i1 %96, label %100, label %108
97:
  %98 = or i64 %86, 1792
  %99 = call i8 addrspace(1)* @_bal_panic_construct(i64 %98), !dbg !7
  store i8 addrspace(1)* %99, i8 addrspace(1)** %10
  br label %30
100:
  %101 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 3
  %102 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %101, align 8
  %103 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %102, i64 0, i64 0
  %104 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %103, align 8
  %105 = call double @_bal_tagged_to_float(i8 addrspace(1)* %104)
  store double %105, double* %8
  %106 = load double, double* %8, !dbg !9
  %107 = call i8 addrspace(1)* @_bal_float_to_tagged(double %106), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %107), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  ret void
108:
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %109, i8 addrspace(1)** %10
  br label %30
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/compoundassign6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
