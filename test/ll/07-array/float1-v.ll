@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
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
  br i1 %11, label %34, label %12
12:
  %13 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %14 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 3
  %15 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %14, align 8
  %16 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  %17 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 0
  store i8 addrspace(1)* %16, i8 addrspace(1)* addrspace(1)* %17
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  %19 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 1
  store i8 addrspace(1)* %18, i8 addrspace(1)* addrspace(1)* %19
  %20 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  %21 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 2
  store i8 addrspace(1)* %20, i8 addrspace(1)* addrspace(1)* %21
  %22 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %22
  %23 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13 to i8 addrspace(1)*
  %24 = getelementptr i8, i8 addrspace(1)* %23, i64 1297036692682702852
  store i8 addrspace(1)* %24, i8 addrspace(1)** %1
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %25, i8 addrspace(1)** %v
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %27 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %26, i64 72057594037927928)
  %28 = bitcast i8 addrspace(1)* %27 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  %30 = load i64, i64 addrspace(1)* %29, align 8
  %31 = icmp ult i64 0, %30
  br i1 %31, label %36, label %48
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 3
  %38 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %37, align 8
  %39 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 0
  %40 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %39, align 8
  %41 = call double @_bal_tagged_to_float(i8 addrspace(1)* %40)
  store double %41, double* %2
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %43 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %42, i64 72057594037927928)
  %44 = bitcast i8 addrspace(1)* %43 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %45 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 1
  %46 = load i64, i64 addrspace(1)* %45, align 8
  %47 = icmp ult i64 1, %46
  br i1 %47, label %50, label %65
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %8
  br label %32
50:
  %51 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 3
  %52 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %51, align 8
  %53 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %52, i64 0, i64 1
  %54 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %53, align 8
  %55 = call double @_bal_tagged_to_float(i8 addrspace(1)* %54)
  store double %55, double* %3
  %56 = load double, double* %2
  %57 = load double, double* %3
  %58 = fadd double %56, %57
  store double %58, double* %4
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %60 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %59, i64 72057594037927928)
  %61 = bitcast i8 addrspace(1)* %60 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %62 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 1
  %63 = load i64, i64 addrspace(1)* %62, align 8
  %64 = icmp ult i64 2, %63
  br i1 %64, label %67, label %78
65:
  %66 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %66, i8 addrspace(1)** %8
  br label %32
67:
  %68 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 3
  %69 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %68, align 8
  %70 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %69, i64 0, i64 2
  %71 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %70, align 8
  %72 = call double @_bal_tagged_to_float(i8 addrspace(1)* %71)
  store double %72, double* %5
  %73 = load double, double* %4
  %74 = load double, double* %5
  %75 = fadd double %73, %74
  store double %75, double* %6
  %76 = load double, double* %6, !dbg !8
  %77 = call i8 addrspace(1)* @_bal_float_to_tagged(double %76), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %77), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !8
  ret void
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %79, i8 addrspace(1)** %8
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/float1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
