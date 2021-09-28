@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %41, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %21 = bitcast i8 addrspace(1)* %20 to [1 x i8 addrspace(1)*] addrspace(1)*
  %22 = zext i1 1 to i64
  %23 = or i64 %22, 72057594037927936
  %24 = getelementptr i8, i8 addrspace(1)* null, i64 %23
  %25 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %21, i64 0, i64 0
  store i8 addrspace(1)* %24, i8 addrspace(1)* addrspace(1)* %25
  %26 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %21 to [0 x i8 addrspace(1)*] addrspace(1)*
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %26, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702852
  store i8 addrspace(1)* %33, i8 addrspace(1)** %1
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %35 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %34, i64 -5)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %x
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %37 = addrspacecast i8 addrspace(1)* %36 to i8*
  %38 = ptrtoint i8* %37 to i64
  %39 = and i64 %38, 2233785415175766016
  %40 = icmp eq i64 %39, 504403158265495552
  br i1 %40, label %43, label %46
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %42)
  unreachable
43:
  %44 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %36)
  %45 = icmp eq i64 %44, 1
  store i1 %45, i1* %2
  br label %47
46:
  store i1 0, i1* %2
  br label %47
47:
  %48 = load i1, i1* %2, !dbg !8
  %49 = zext i1 %48 to i64, !dbg !8
  %50 = or i64 %49, 72057594037927936, !dbg !8
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %53 = zext i1 1 to i64
  %54 = or i64 %53, 72057594037927936
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54
  %56 = icmp eq i8 addrspace(1)* %52, %55
  store i1 %56, i1* %4
  %57 = load i1, i1* %4, !dbg !9
  %58 = zext i1 %57 to i64, !dbg !9
  %59 = or i64 %58, 72057594037927936, !dbg !9
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %62 = icmp eq i8 addrspace(1)* %61, null
  store i1 %62, i1* %6
  %63 = load i1, i1* %6, !dbg !10
  %64 = zext i1 %63 to i64, !dbg !10
  %65 = or i64 %64, 72057594037927936, !dbg !10
  %66 = getelementptr i8, i8 addrspace(1)* null, i64 %65, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %66), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %67 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %68 = bitcast i8 addrspace(1)* %67 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %69 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %69
  %70 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %70
  %71 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %71
  %72 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %72
  %73 = getelementptr i8, i8 addrspace(1)* %67, i64 1297036692682702852
  store i8 addrspace(1)* %73, i8 addrspace(1)** %8
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %75 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %74, i64 -5)
  store i8 addrspace(1)* %75, i8 addrspace(1)** %x
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %77 = addrspacecast i8 addrspace(1)* %76 to i8*
  %78 = ptrtoint i8* %77 to i64
  %79 = and i64 %78, 2233785415175766016
  %80 = icmp eq i64 %79, 504403158265495552
  br i1 %80, label %81, label %84
81:
  %82 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %76)
  %83 = icmp ne i64 %82, 1
  store i1 %83, i1* %9
  br label %85
84:
  store i1 1, i1* %9
  br label %85
85:
  %86 = load i1, i1* %9, !dbg !11
  %87 = zext i1 %86 to i64, !dbg !11
  %88 = or i64 %87, 72057594037927936, !dbg !11
  %89 = getelementptr i8, i8 addrspace(1)* null, i64 %88, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %89), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %90 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %91 = bitcast i8 addrspace(1)* %90 to [3 x i8 addrspace(1)*] addrspace(1)*
  %92 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %93 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %91, i64 0, i64 0
  store i8 addrspace(1)* %92, i8 addrspace(1)* addrspace(1)* %93
  %94 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %95 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %91, i64 0, i64 1
  store i8 addrspace(1)* %94, i8 addrspace(1)* addrspace(1)* %95
  %96 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %97 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %91, i64 0, i64 2
  store i8 addrspace(1)* %96, i8 addrspace(1)* addrspace(1)* %97
  %98 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %91 to [0 x i8 addrspace(1)*] addrspace(1)*
  %99 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %100 = bitcast i8 addrspace(1)* %99 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %101 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %100, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %101
  %102 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %100, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %102
  %103 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %100, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %103
  %104 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %100, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %98, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %104
  %105 = getelementptr i8, i8 addrspace(1)* %99, i64 1297036692682702852
  store i8 addrspace(1)* %105, i8 addrspace(1)** %11
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %107 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %106, i64 -5)
  store i8 addrspace(1)* %107, i8 addrspace(1)** %x
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %109 = zext i1 1 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110
  %112 = icmp ne i8 addrspace(1)* %108, %111
  store i1 %112, i1* %12
  %113 = load i1, i1* %12, !dbg !12
  %114 = zext i1 %113 to i64, !dbg !12
  %115 = or i64 %114, 72057594037927936, !dbg !12
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %116), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %118 = icmp ne i8 addrspace(1)* %117, null
  store i1 %118, i1* %14
  %119 = load i1, i1* %14, !dbg !13
  %120 = zext i1 %119 to i64, !dbg !13
  %121 = or i64 %120, 72057594037927936, !dbg !13
  %122 = getelementptr i8, i8 addrspace(1)* null, i64 %121, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %122), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-equal/4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
