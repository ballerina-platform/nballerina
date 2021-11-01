@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
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
  br i1 %15, label %57, label %16
16:
  %17 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %18 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17 to i8 addrspace(1)*
  %19 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702852
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %v
  store i64 0, i64* %i
  br label %21
21:
  %22 = load i64, i64* %i
  %23 = icmp slt i64 %22, 1000000
  store i1 %23, i1* %2
  %24 = load i1, i1* %2
  br i1 %24, label %25, label %31
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %27 = load i64, i64* %i
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %29 = call i64 @_bal_list_set(i8 addrspace(1)* %26, i64 %27, i8 addrspace(1)* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %59, label %63
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %34 = call i64 @_bal_list_set(i8 addrspace(1)* %32, i64 123000, i8 addrspace(1)* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %71, label %72
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %38 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %37, i64 -5), !dbg !8
  %39 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %38), !dbg !8
  store i64 %39, i64* %5, !dbg !8
  %40 = load i64, i64* %i
  %41 = load i64, i64* %5
  %42 = icmp slt i64 %40, %41
  store i1 %42, i1* %4
  %43 = load i1, i1* %4
  br i1 %43, label %44, label %52
44:
  %45 = load i64, i64* %i
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %47 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %46, i64 72057594037927928)
  %48 = bitcast i8 addrspace(1)* %47 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %49 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  %50 = load i64, i64 addrspace(1)* %49, align 8
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %75, label %85
52:
  %53 = load i64, i64* %sum, !dbg !9
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !9
  ret void
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %56)
  unreachable
57:
  %58 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %58)
  unreachable
59:
  %60 = load i64, i64* %i
  %61 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %60, i64 1)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %69, label %66
63:
  %64 = or i64 %29, 2048
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 %64), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %12
  br label %55
66:
  %67 = extractvalue {i64, i1} %61, 0
  store i64 %67, i64* %3
  %68 = load i64, i64* %3
  store i64 %68, i64* %i
  br label %21
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %70, i8 addrspace(1)** %12
  br label %55
71:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %36
72:
  %73 = or i64 %34, 2816
  %74 = call i8 addrspace(1)* @_bal_panic_construct(i64 %73), !dbg !7
  store i8 addrspace(1)* %74, i8 addrspace(1)** %12
  br label %55
75:
  %76 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %77 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %76, align 8
  %78 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %77, i64 0, i64 %45
  %79 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %78, align 8
  store i8 addrspace(1)* %79, i8 addrspace(1)** %6
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %81 = addrspacecast i8 addrspace(1)* %80 to i8*
  %82 = ptrtoint i8* %81 to i64
  %83 = and i64 %82, 2233785415175766016
  %84 = icmp eq i64 %83, 576460752303423488
  br i1 %84, label %93, label %97
85:
  %86 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !7
  store i8 addrspace(1)* %86, i8 addrspace(1)** %12
  br label %55
87:
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %89 = addrspacecast i8 addrspace(1)* %88 to i8*
  %90 = ptrtoint i8* %89 to i64
  %91 = and i64 %90, 2233785415175766016
  %92 = icmp eq i64 %91, 504403158265495552
  br i1 %92, label %103, label %109
93:
  %94 = call double @_bal_tagged_to_float(i8 addrspace(1)* %80)
  %95 = call {i64, i1} @_bal_float_to_int(double %94)
  %96 = extractvalue {i64, i1} %95, 1
  br i1 %96, label %101, label %98
97:
  store i8 addrspace(1)* %80, i8 addrspace(1)** %7
  br label %87
98:
  %99 = extractvalue {i64, i1} %95, 0
  %100 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %99)
  store i8 addrspace(1)* %100, i8 addrspace(1)** %7
  br label %87
101:
  %102 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %102, i8 addrspace(1)** %12
  br label %55
103:
  %104 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %88)
  store i64 %104, i64* %8
  %105 = load i64, i64* %sum
  %106 = load i64, i64* %8
  %107 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %105, i64 %106)
  %108 = extractvalue {i64, i1} %107, 1
  br i1 %108, label %117, label %111
109:
  %110 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %110, i8 addrspace(1)** %12
  br label %55
111:
  %112 = extractvalue {i64, i1} %107, 0
  store i64 %112, i64* %9
  %113 = load i64, i64* %9
  store i64 %113, i64* %sum
  %114 = load i64, i64* %i
  %115 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %114, i64 1)
  %116 = extractvalue {i64, i1} %115, 1
  br i1 %116, label %122, label %119
117:
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !7
  store i8 addrspace(1)* %118, i8 addrspace(1)** %12
  br label %55
119:
  %120 = extractvalue {i64, i1} %115, 0
  store i64 %120, i64* %10
  %121 = load i64, i64* %10
  store i64 %121, i64* %i
  br label %36
122:
  %123 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !7
  store i8 addrspace(1)* %123, i8 addrspace(1)** %12
  br label %55
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/24-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 14, column: 15, scope: !5)
!9 = !DILocation(line: 18, column: 4, scope: !5)
