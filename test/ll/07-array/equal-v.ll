@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %v4 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %142, label %22
22:
  %23 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %24 = bitcast i8 addrspace(1)* %23 to [3 x i8 addrspace(1)*] addrspace(1)*
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %26 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %24, i64 0, i64 0
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %28 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %24, i64 0, i64 1
  store i8 addrspace(1)* %27, i8 addrspace(1)* addrspace(1)* %28
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %30 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %24, i64 0, i64 2
  store i8 addrspace(1)* %29, i8 addrspace(1)* addrspace(1)* %30
  %31 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %24 to [0 x i8 addrspace(1)*] addrspace(1)*
  %32 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %33 = bitcast i8 addrspace(1)* %32 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %34 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %35
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %36
  %37 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %31, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %37
  %38 = getelementptr i8, i8 addrspace(1)* %32, i64 1297036692682702852
  store i8 addrspace(1)* %38, i8 addrspace(1)** %1
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %39, i8 addrspace(1)** %v1
  %40 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %41 = bitcast i8 addrspace(1)* %40 to [3 x i8 addrspace(1)*] addrspace(1)*
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %43 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %41, i64 0, i64 0
  store i8 addrspace(1)* %42, i8 addrspace(1)* addrspace(1)* %43
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %45 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %41, i64 0, i64 1
  store i8 addrspace(1)* %44, i8 addrspace(1)* addrspace(1)* %45
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %47 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %41, i64 0, i64 2
  store i8 addrspace(1)* %46, i8 addrspace(1)* addrspace(1)* %47
  %48 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %41 to [0 x i8 addrspace(1)*] addrspace(1)*
  %49 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %50 = bitcast i8 addrspace(1)* %49 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %51 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %51
  %52 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %52
  %53 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %53
  %54 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %48, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %54
  %55 = getelementptr i8, i8 addrspace(1)* %49, i64 1297036692682702852
  store i8 addrspace(1)* %55, i8 addrspace(1)** %2
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %56, i8 addrspace(1)** %v2
  %57 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %58 = bitcast i8 addrspace(1)* %57 to [3 x i8 addrspace(1)*] addrspace(1)*
  %59 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %60 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 0
  store i8 addrspace(1)* %59, i8 addrspace(1)* addrspace(1)* %60
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %62 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 1
  store i8 addrspace(1)* %61, i8 addrspace(1)* addrspace(1)* %62
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %64 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 2
  store i8 addrspace(1)* %63, i8 addrspace(1)* addrspace(1)* %64
  %65 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %58 to [0 x i8 addrspace(1)*] addrspace(1)*
  %66 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %67 = bitcast i8 addrspace(1)* %66 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %68 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %68
  %69 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %69
  %70 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %70
  %71 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %67, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %65, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %71
  %72 = getelementptr i8, i8 addrspace(1)* %66, i64 1297036692682702852
  store i8 addrspace(1)* %72, i8 addrspace(1)** %3
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %73, i8 addrspace(1)** %v3
  %74 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %75 = bitcast i8 addrspace(1)* %74 to [4 x i8 addrspace(1)*] addrspace(1)*
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %77 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 0
  store i8 addrspace(1)* %76, i8 addrspace(1)* addrspace(1)* %77
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %79 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 1
  store i8 addrspace(1)* %78, i8 addrspace(1)* addrspace(1)* %79
  %80 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %81 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 2
  store i8 addrspace(1)* %80, i8 addrspace(1)* addrspace(1)* %81
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %83 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 3
  store i8 addrspace(1)* %82, i8 addrspace(1)* addrspace(1)* %83
  %84 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %75 to [0 x i8 addrspace(1)*] addrspace(1)*
  %85 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %86 = bitcast i8 addrspace(1)* %85 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %87 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %86, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %87
  %88 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %86, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %88
  %89 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %86, i64 0, i32 2
  store i64 4, i64 addrspace(1)* %89
  %90 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %86, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %84, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %90
  %91 = getelementptr i8, i8 addrspace(1)* %85, i64 1297036692682702852
  store i8 addrspace(1)* %91, i8 addrspace(1)** %4
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %92, i8 addrspace(1)** %v4
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %95 = call i1 @_bal_eq(i8 addrspace(1)* %93, i8 addrspace(1)* %94)
  store i1 %95, i1* %5
  %96 = load i1, i1* %5, !dbg !8
  %97 = zext i1 %96 to i64, !dbg !8
  %98 = or i64 %97, 72057594037927936, !dbg !8
  %99 = getelementptr i8, i8 addrspace(1)* null, i64 %98, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !8
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %102 = call i1 @_bal_eq(i8 addrspace(1)* %100, i8 addrspace(1)* %101)
  store i1 %102, i1* %7
  %103 = load i1, i1* %7, !dbg !9
  %104 = zext i1 %103 to i64, !dbg !9
  %105 = or i64 %104, 72057594037927936, !dbg !9
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !9
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %109 = call i1 @_bal_eq(i8 addrspace(1)* %107, i8 addrspace(1)* %108)
  store i1 %109, i1* %9
  %110 = load i1, i1* %9, !dbg !10
  %111 = zext i1 %110 to i64, !dbg !10
  %112 = or i64 %111, 72057594037927936, !dbg !10
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %113), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !10
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %116 = call i1 @_bal_eq(i8 addrspace(1)* %114, i8 addrspace(1)* %115)
  store i1 %116, i1* %11
  %117 = load i1, i1* %11, !dbg !11
  %118 = zext i1 %117 to i64, !dbg !11
  %119 = or i64 %118, 72057594037927936, !dbg !11
  %120 = getelementptr i8, i8 addrspace(1)* null, i64 %119, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %120), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !11
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %123 = call i1 @_bal_eq(i8 addrspace(1)* %121, i8 addrspace(1)* %122)
  store i1 %123, i1* %13
  %124 = load i1, i1* %13, !dbg !12
  %125 = zext i1 %124 to i64, !dbg !12
  %126 = or i64 %125, 72057594037927936, !dbg !12
  %127 = getelementptr i8, i8 addrspace(1)* null, i64 %126, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %127), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !12
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %130 = call i1 @_bal_exact_eq(i8 addrspace(1)* %128, i8 addrspace(1)* %129)
  store i1 %130, i1* %15
  %131 = load i1, i1* %15, !dbg !13
  %132 = zext i1 %131 to i64, !dbg !13
  %133 = or i64 %132, 72057594037927936, !dbg !13
  %134 = getelementptr i8, i8 addrspace(1)* null, i64 %133, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %134), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !13
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %137 = call i1 @_bal_exact_eq(i8 addrspace(1)* %135, i8 addrspace(1)* %136)
  store i1 %137, i1* %17
  %138 = load i1, i1* %17, !dbg !14
  %139 = zext i1 %138 to i64, !dbg !14
  %140 = or i64 %139, 72057594037927936, !dbg !14
  %141 = getelementptr i8, i8 addrspace(1)* null, i64 %140, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %141), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !14
  ret void
142:
  %143 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %143)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 10, column: 4, scope: !5)
!9 = !DILocation(line: 11, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 13, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 15, column: 4, scope: !5)
!14 = !DILocation(line: 16, column: 4, scope: !5)
