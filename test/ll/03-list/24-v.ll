@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
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
  br i1 %15, label %71, label %16
16:
  %17 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %18 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17 to i8 addrspace(1)*
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
  br i1 %24, label %25, label %38
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %27 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %26, i64 72057594037927928)
  %28 = bitcast i8 addrspace(1)* %27 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  %30 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %29, align 8
  %31 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %30, i64 0, i32 2
  %32 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %31, align 8
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %34 = load i64, i64* %i
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %36 = call i64 %32(i8 addrspace(1)* %33, i64 %34, i8 addrspace(1)* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %73, label %77
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %40 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %39, i64 72057594037927928)
  %41 = bitcast i8 addrspace(1)* %40 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %42 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 0
  %43 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %42, align 8
  %44 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %43, i64 0, i32 2
  %45 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %44, align 8
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1001)
  %48 = call i64 %45(i8 addrspace(1)* %46, i64 123000, i8 addrspace(1)* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %85, label %86
50:
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %52 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %51, i64 -5), !dbg !8
  %53 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %52), !dbg !8
  store i64 %53, i64* %5, !dbg !8
  %54 = load i64, i64* %i
  %55 = load i64, i64* %5
  %56 = icmp slt i64 %54, %55
  store i1 %56, i1* %4
  %57 = load i1, i1* %4
  br i1 %57, label %58, label %66
58:
  %59 = load i64, i64* %i
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %61 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %60, i64 72057594037927928)
  %62 = bitcast i8 addrspace(1)* %61 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %63 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 1
  %64 = load i64, i64 addrspace(1)* %63, align 8
  %65 = icmp ult i64 %59, %64
  br i1 %65, label %89, label %102
66:
  %67 = load i64, i64* %sum, !dbg !9
  %68 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %67), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !9
  ret void
69:
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %70)
  unreachable
71:
  %72 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %72)
  unreachable
73:
  %74 = load i64, i64* %i
  %75 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %74, i64 1)
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %83, label %80
77:
  %78 = or i64 %36, 2048
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 %78), !dbg !7
  store i8 addrspace(1)* %79, i8 addrspace(1)** %12
  br label %69
80:
  %81 = extractvalue {i64, i1} %75, 0
  store i64 %81, i64* %3
  %82 = load i64, i64* %3
  store i64 %82, i64* %i
  br label %21
83:
  %84 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %84, i8 addrspace(1)** %12
  br label %69
85:
  store i64 0, i64* %i
  store i64 0, i64* %sum
  br label %50
86:
  %87 = or i64 %48, 2816
  %88 = call i8 addrspace(1)* @_bal_panic_construct(i64 %87), !dbg !7
  store i8 addrspace(1)* %88, i8 addrspace(1)** %12
  br label %69
89:
  %90 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 0
  %91 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %90, align 8
  %92 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %91, i64 0, i32 1
  %93 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %92, align 8
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %95 = load i64, i64* %i
  %96 = call i8 addrspace(1)* %93(i8 addrspace(1)* %94, i64 %95)
  store i8 addrspace(1)* %96, i8 addrspace(1)** %6
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %98 = addrspacecast i8 addrspace(1)* %97 to i8*
  %99 = ptrtoint i8* %98 to i64
  %100 = and i64 %99, 2233785415175766016
  %101 = icmp eq i64 %100, 576460752303423488
  br i1 %101, label %110, label %114
102:
  %103 = call i8 addrspace(1)* @_bal_panic_construct(i64 3845), !dbg !7
  store i8 addrspace(1)* %103, i8 addrspace(1)** %12
  br label %69
104:
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %106 = addrspacecast i8 addrspace(1)* %105 to i8*
  %107 = ptrtoint i8* %106 to i64
  %108 = and i64 %107, 2233785415175766016
  %109 = icmp eq i64 %108, 504403158265495552
  br i1 %109, label %120, label %126
110:
  %111 = call double @_bal_tagged_to_float(i8 addrspace(1)* %97)
  %112 = call {i64, i1} @_bal_float_to_int(double %111)
  %113 = extractvalue {i64, i1} %112, 1
  br i1 %113, label %118, label %115
114:
  store i8 addrspace(1)* %97, i8 addrspace(1)** %7
  br label %104
115:
  %116 = extractvalue {i64, i1} %112, 0
  %117 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %116)
  store i8 addrspace(1)* %117, i8 addrspace(1)** %7
  br label %104
118:
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %119, i8 addrspace(1)** %12
  br label %69
120:
  %121 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %105)
  store i64 %121, i64* %8
  %122 = load i64, i64* %sum
  %123 = load i64, i64* %8
  %124 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %122, i64 %123)
  %125 = extractvalue {i64, i1} %124, 1
  br i1 %125, label %134, label %128
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %127, i8 addrspace(1)** %12
  br label %69
128:
  %129 = extractvalue {i64, i1} %124, 0
  store i64 %129, i64* %9
  %130 = load i64, i64* %9
  store i64 %130, i64* %sum
  %131 = load i64, i64* %i
  %132 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %131, i64 1)
  %133 = extractvalue {i64, i1} %132, 1
  br i1 %133, label %139, label %136
134:
  %135 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !7
  store i8 addrspace(1)* %135, i8 addrspace(1)** %12
  br label %69
136:
  %137 = extractvalue {i64, i1} %132, 0
  store i64 %137, i64* %10
  %138 = load i64, i64* %10
  store i64 %138, i64* %i
  br label %50
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !7
  store i8 addrspace(1)* %140, i8 addrspace(1)** %12
  br label %69
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
!8 = !DILocation(line: 14, column: 22, scope: !5)
!9 = !DILocation(line: 18, column: 4, scope: !5)
