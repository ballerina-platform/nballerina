@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %sum = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %61, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %18 = bitcast i8 addrspace(1)* %17 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %22
  %23 = getelementptr i8, i8 addrspace(1)* %17, i64 1297036692682702852
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %24, i8 addrspace(1)** %v
  store i64 0, i64* %i
  br label %25
25:
  %26 = load i64, i64* %i
  %27 = icmp slt i64 %26, 1000000
  store i1 %27, i1* %2
  %28 = load i1, i1* %2
  br i1 %28, label %29, label %35
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %31 = load i64, i64* %i
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %33 = call i64 @_bal_list_set(i8 addrspace(1)* %30, i64 %31, i8 addrspace(1)* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %63, label %67
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %38 = call i64 @_bal_list_set(i8 addrspace(1)* %36, i64 123000, i8 addrspace(1)* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %75, label %76
40:
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %42 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %41, i64 -5), !dbg !8
  %43 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %42), !dbg !8
  store i64 %43, i64* %5, !dbg !8
  %44 = load i64, i64* %i
  %45 = load i64, i64* %5
  %46 = icmp slt i64 %44, %45
  store i1 %46, i1* %4
  %47 = load i1, i1* %4
  br i1 %47, label %48, label %56
48:
  %49 = load i64, i64* %i
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %51 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %50, i64 72057594037927928)
  %52 = bitcast i8 addrspace(1)* %51 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %53 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 1
  %54 = load i64, i64 addrspace(1)* %53, align 8
  %55 = icmp ult i64 %49, %54
  br i1 %55, label %79, label %89
56:
  %57 = load i64, i64* %sum, !dbg !9
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !9
  ret void
59:
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %60)
  unreachable
61:
  %62 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %62)
  unreachable
63:
  %64 = load i64, i64* %i
  %65 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %64, i64 1)
  %66 = extractvalue {i64, i1} %65, 1
  br i1 %66, label %73, label %70
67:
  %68 = or i64 %33, 2048
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 %68), !dbg !7
  store i8 addrspace(1)* %69, i8 addrspace(1)** %12
  br label %59
70:
  %71 = extractvalue {i64, i1} %65, 0
  store i64 %71, i64* %3
  %72 = load i64, i64* %3
  store i64 %72, i64* %i
  br label %25
73:
  %74 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %74, i8 addrspace(1)** %12
  br label %59
75:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %40
76:
  %77 = or i64 %38, 2816
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 %77), !dbg !7
  store i8 addrspace(1)* %78, i8 addrspace(1)** %12
  br label %59
79:
  %80 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %52, i64 0, i32 3
  %81 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %80, align 8
  %82 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %81, i64 0, i64 %49
  %83 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %82, align 8
  store i8 addrspace(1)* %83, i8 addrspace(1)** %6
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %85 = addrspacecast i8 addrspace(1)* %84 to i8*
  %86 = ptrtoint i8* %85 to i64
  %87 = and i64 %86, 2233785415175766016
  %88 = icmp eq i64 %87, 576460752303423488
  br i1 %88, label %97, label %101
89:
  %90 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !7
  store i8 addrspace(1)* %90, i8 addrspace(1)** %12
  br label %59
91:
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %93 = addrspacecast i8 addrspace(1)* %92 to i8*
  %94 = ptrtoint i8* %93 to i64
  %95 = and i64 %94, 2233785415175766016
  %96 = icmp eq i64 %95, 504403158265495552
  br i1 %96, label %107, label %113
97:
  %98 = call double @_bal_tagged_to_float(i8 addrspace(1)* %84)
  %99 = call {i64, i1} @_bal_float_to_int(double %98)
  %100 = extractvalue {i64, i1} %99, 1
  br i1 %100, label %105, label %102
101:
  store i8 addrspace(1)* %84, i8 addrspace(1)** %7
  br label %91
102:
  %103 = extractvalue {i64, i1} %99, 0
  %104 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %103)
  store i8 addrspace(1)* %104, i8 addrspace(1)** %7
  br label %91
105:
  %106 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %106, i8 addrspace(1)** %12
  br label %59
107:
  %108 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %92)
  store i64 %108, i64* %8
  %109 = load i64, i64* %sum
  %110 = load i64, i64* %8
  %111 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %109, i64 %110)
  %112 = extractvalue {i64, i1} %111, 1
  br i1 %112, label %121, label %115
113:
  %114 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %114, i8 addrspace(1)** %12
  br label %59
115:
  %116 = extractvalue {i64, i1} %111, 0
  store i64 %116, i64* %9
  %117 = load i64, i64* %9
  store i64 %117, i64* %sum
  %118 = load i64, i64* %i
  %119 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %118, i64 1)
  %120 = extractvalue {i64, i1} %119, 1
  br i1 %120, label %126, label %123
121:
  %122 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !7
  store i8 addrspace(1)* %122, i8 addrspace(1)** %12
  br label %59
123:
  %124 = extractvalue {i64, i1} %119, 0
  store i64 %124, i64* %10
  %125 = load i64, i64* %10
  store i64 %125, i64* %i
  br label %40
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !7
  store i8 addrspace(1)* %127, i8 addrspace(1)** %12
  br label %59
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/24-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 14, column: 15, scope: !5)
!9 = !DILocation(line: 18, column: 4, scope: !5)
