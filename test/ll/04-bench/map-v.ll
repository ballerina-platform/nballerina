@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %sum = alloca i64
  %count = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %x = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %i.1 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %x.1 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %51, label %18
18:
  %19 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8386559, i64 0)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %m
  store i64 0, i64* %sum
  store i64 10000000, i64* %count
  store i64 0, i64* %i
  br label %21
21:
  %22 = load i64, i64* %i
  %23 = load i64, i64* %count
  %24 = icmp slt i64 %22, %23
  store i1 %24, i1* %2
  %25 = load i1, i1* %2
  br i1 %25, label %27, label %26
26:
  store i64 0, i64* %i.1
  br label %34
27:
  %28 = load i64, i64* %i
  %29 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 48879, i64 %28)
  %30 = extractvalue {i64, i1} %29, 1
  br i1 %30, label %60, label %53
31:
  %32 = load i64, i64* %i
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %i
  br label %21
34:
  %35 = load i64, i64* %i.1
  %36 = load i64, i64* %count
  %37 = icmp slt i64 %35, %36
  store i1 %37, i1* %6
  %38 = load i1, i1* %6
  br i1 %38, label %42, label %39
39:
  %40 = load i64, i64* %sum, !dbg !9
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %40), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !9
  ret void
42:
  %43 = load i64, i64* %i.1
  %44 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 48879, i64 %43)
  %45 = extractvalue {i64, i1} %44, 1
  br i1 %45, label %92, label %79
46:
  %47 = load i64, i64* %i.1
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %i.1
  br label %34
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  call void @_bal_panic(i8 addrspace(1)* %50)
  unreachable
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %52)
  unreachable
53:
  %54 = extractvalue {i64, i1} %29, 0
  store i64 %54, i64* %3
  %55 = load i64, i64* %3
  store i64 %55, i64* %x
  %56 = load i64, i64* %sum
  %57 = load i64, i64* %i
  %58 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %56, i64 %57)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %73, label %62
60:
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %61, i8 addrspace(1)** %14
  br label %49
62:
  %63 = extractvalue {i64, i1} %58, 0
  store i64 %63, i64* %4
  %64 = load i64, i64* %4
  store i64 %64, i64* %sum
  %65 = load i64, i64* %x, !dbg !8
  %66 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 %65), !dbg !8
  store i8 addrspace(1)* %66, i8 addrspace(1)** %5, !dbg !8
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %69 = load i64, i64* %i
  %70 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %69)
  %71 = call i64 @_bal_mapping_set(i8 addrspace(1)* %67, i8 addrspace(1)* %68, i8 addrspace(1)* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %75, label %76
73:
  %74 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %74, i8 addrspace(1)** %14
  br label %49
75:
  br label %31
76:
  %77 = or i64 %71, 2816
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 %77), !dbg !7
  store i8 addrspace(1)* %78, i8 addrspace(1)** %14
  br label %49
79:
  %80 = extractvalue {i64, i1} %44, 0
  store i64 %80, i64* %7
  %81 = load i64, i64* %7
  store i64 %81, i64* %x.1
  %82 = load i64, i64* %x.1, !dbg !10
  %83 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 %82), !dbg !10
  store i8 addrspace(1)* %83, i8 addrspace(1)** %8, !dbg !10
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %86 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %84, i8 addrspace(1)* %85)
  store i8 addrspace(1)* %86, i8 addrspace(1)** %9
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %88 = addrspacecast i8 addrspace(1)* %87 to i8*
  %89 = ptrtoint i8* %88 to i64
  %90 = and i64 %89, 2233785415175766016
  %91 = icmp eq i64 %90, 576460752303423488
  br i1 %91, label %100, label %104
92:
  %93 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !7
  store i8 addrspace(1)* %93, i8 addrspace(1)** %14
  br label %49
94:
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %96 = addrspacecast i8 addrspace(1)* %95 to i8*
  %97 = ptrtoint i8* %96 to i64
  %98 = and i64 %97, 2233785415175766016
  %99 = icmp eq i64 %98, 504403158265495552
  br i1 %99, label %110, label %116
100:
  %101 = call double @_bal_tagged_to_float(i8 addrspace(1)* %87)
  %102 = call {i64, i1} @_bal_float_to_int(double %101)
  %103 = extractvalue {i64, i1} %102, 1
  br i1 %103, label %108, label %105
104:
  store i8 addrspace(1)* %87, i8 addrspace(1)** %10
  br label %94
105:
  %106 = extractvalue {i64, i1} %102, 0
  %107 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %106)
  store i8 addrspace(1)* %107, i8 addrspace(1)** %10
  br label %94
108:
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %109, i8 addrspace(1)** %14
  br label %49
110:
  %111 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %95)
  store i64 %111, i64* %11
  %112 = load i64, i64* %sum
  %113 = load i64, i64* %11
  %114 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %112, i64 %113)
  %115 = extractvalue {i64, i1} %114, 1
  br i1 %115, label %121, label %118
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !7
  store i8 addrspace(1)* %117, i8 addrspace(1)** %14
  br label %49
118:
  %119 = extractvalue {i64, i1} %114, 0
  store i64 %119, i64* %12
  %120 = load i64, i64* %12
  store i64 %120, i64* %sum
  br label %46
121:
  %122 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !7
  store i8 addrspace(1)* %122, i8 addrspace(1)** %14
  br label %49
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-bench/map-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 11, scope: !5)
!9 = !DILocation(line: 17, column: 4, scope: !5)
!10 = !DILocation(line: 15, column: 28, scope: !5)
