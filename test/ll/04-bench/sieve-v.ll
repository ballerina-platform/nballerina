@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call i8 addrspace(1)* @_B_findPrimes(), !dbg !12
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1, !dbg !12
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !13
  call void @_B_printMersenne(i8 addrspace(1)* %8), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal i8 addrspace(1)* @_B_findPrimes() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %primes = alloca i8 addrspace(1)*
  %gap = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %i = alloca i64
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %82, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %18 = bitcast i8 addrspace(1)* %17 to [2 x i8 addrspace(1)*] addrspace(1)*
  %19 = zext i1 0 to i64
  %20 = or i64 %19, 72057594037927936
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20
  %22 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %18, i64 0, i64 0
  store i8 addrspace(1)* %21, i8 addrspace(1)* addrspace(1)* %22
  %23 = zext i1 0 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24
  %26 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %18, i64 0, i64 1
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %18 to [0 x i8 addrspace(1)*] addrspace(1)*
  %28 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %29 = bitcast i8 addrspace(1)* %28 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 2
  store i64 2, i64 addrspace(1)* %32
  %33 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %27, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %33
  %34 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702852
  store i8 addrspace(1)* %34, i8 addrspace(1)** %1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %35, i8 addrspace(1)** %primes
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %37 = call i64 @_bal_list_set(i8 addrspace(1)* %36, i64 1000000, i8 addrspace(1)* null)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %84, label %85
39:
  %40 = load i64, i64* %gap
  %41 = load i64, i64* %gap
  %42 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %40, i64 %41)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %97, label %88
44:
  %45 = load i64, i64* %gap
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %47 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %46, i64 72057594037927928)
  %48 = bitcast i8 addrspace(1)* %47 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %49 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  %50 = load i64, i64 addrspace(1)* %49, align 8
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %99, label %107
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  ret i8 addrspace(1)* %53
54:
  %55 = load i64, i64* %gap
  %56 = load i64, i64* %gap
  %57 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %55, i64 %56)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %112, label %109
59:
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %primes, !dbg !16
  %61 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %60, i64 -5), !dbg !16
  %62 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %61), !dbg !16
  store i64 %62, i64* %9, !dbg !16
  %63 = load i64, i64* %i
  %64 = load i64, i64* %9
  %65 = icmp slt i64 %63, %64
  store i1 %65, i1* %8
  %66 = load i1, i1* %8
  br i1 %66, label %67, label %75
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %69 = load i64, i64* %i
  %70 = zext i1 0 to i64
  %71 = or i64 %70, 72057594037927936
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71
  %73 = call i64 @_bal_list_set(i8 addrspace(1)* %68, i64 %69, i8 addrspace(1)* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %114, label %119
75:
  br label %76
76:
  %77 = load i64, i64* %gap
  %78 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %77, i64 1)
  %79 = extractvalue {i64, i1} %78, 1
  br i1 %79, label %130, label %127
80:
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %81)
  unreachable
82:
  %83 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %83)
  unreachable
84:
  store i64 2, i64* %gap
  br label %39
85:
  %86 = or i64 %37, 2304
  %87 = call i8 addrspace(1)* @_bal_panic_construct(i64 %86), !dbg !14
  store i8 addrspace(1)* %87, i8 addrspace(1)** %12
  br label %80
88:
  %89 = extractvalue {i64, i1} %42, 0
  store i64 %89, i64* %3
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %primes, !dbg !15
  %91 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %90, i64 -5), !dbg !15
  %92 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %91), !dbg !15
  store i64 %92, i64* %4, !dbg !15
  %93 = load i64, i64* %3
  %94 = load i64, i64* %4
  %95 = icmp slt i64 %93, %94
  store i1 %95, i1* %2
  %96 = load i1, i1* %2
  br i1 %96, label %44, label %52
97:
  %98 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !14
  store i8 addrspace(1)* %98, i8 addrspace(1)** %12
  br label %80
99:
  %100 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %101 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %100, align 8
  %102 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %101, i64 0, i64 %45
  %103 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %102, align 8
  store i8 addrspace(1)* %103, i8 addrspace(1)** %6
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %105 = icmp eq i8 addrspace(1)* %104, null
  store i1 %105, i1* %5
  %106 = load i1, i1* %5
  br i1 %106, label %54, label %76
107:
  %108 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !14
  store i8 addrspace(1)* %108, i8 addrspace(1)** %12
  br label %80
109:
  %110 = extractvalue {i64, i1} %57, 0
  store i64 %110, i64* %7
  %111 = load i64, i64* %7
  store i64 %111, i64* %i
  br label %59
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !14
  store i8 addrspace(1)* %113, i8 addrspace(1)** %12
  br label %80
114:
  %115 = load i64, i64* %i
  %116 = load i64, i64* %gap
  %117 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %115, i64 %116)
  %118 = extractvalue {i64, i1} %117, 1
  br i1 %118, label %125, label %122
119:
  %120 = or i64 %73, 3840
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 %120), !dbg !14
  store i8 addrspace(1)* %121, i8 addrspace(1)** %12
  br label %80
122:
  %123 = extractvalue {i64, i1} %117, 0
  store i64 %123, i64* %10
  %124 = load i64, i64* %10
  store i64 %124, i64* %i
  br label %59
125:
  %126 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !14
  store i8 addrspace(1)* %126, i8 addrspace(1)** %12
  br label %80
127:
  %128 = extractvalue {i64, i1} %78, 0
  store i64 %128, i64* %11
  %129 = load i64, i64* %11
  store i64 %129, i64* %gap
  br label %39
130:
  %131 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !14
  store i8 addrspace(1)* %131, i8 addrspace(1)** %12
  br label %80
}
define internal void @_B_printMersenne(i8 addrspace(1)* %0) !dbg !9 {
  %primes = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %38, label %14
14:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %primes
  store i64 2, i64* %i
  br label %15
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %primes, !dbg !18
  %17 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %16, i64 -5), !dbg !18
  %18 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %17), !dbg !18
  store i64 %18, i64* %3, !dbg !18
  %19 = load i64, i64* %i
  %20 = load i64, i64* %3
  %21 = icmp slt i64 %19, %20
  store i1 %21, i1* %2
  %22 = load i1, i1* %2
  br i1 %22, label %23, label %27
23:
  %24 = load i64, i64* %i
  %25 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %24, i64 1)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %49, label %40
27:
  ret void
28:
  %29 = load i64, i64* %i
  %30 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %65, label %61
32:
  %33 = load i64, i64* %i
  %34 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %33, i64 2)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %70, label %67
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = extractvalue {i64, i1} %25, 0
  store i64 %41, i64* %5
  %42 = load i64, i64* %5
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %44 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %43, i64 72057594037927928)
  %45 = bitcast i8 addrspace(1)* %44 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %46 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %45, i64 0, i32 1
  %47 = load i64, i64 addrspace(1)* %46, align 8
  %48 = icmp ult i64 %42, %47
  br i1 %48, label %51, label %59
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913), !dbg !17
  store i8 addrspace(1)* %50, i8 addrspace(1)** %10
  br label %36
51:
  %52 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %45, i64 0, i32 3
  %53 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %52, align 8
  %54 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %53, i64 0, i64 %42
  %55 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %54, align 8
  store i8 addrspace(1)* %55, i8 addrspace(1)** %6
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %57 = icmp eq i8 addrspace(1)* %56, null
  store i1 %57, i1* %4
  %58 = load i1, i1* %4
  br i1 %58, label %28, label %32
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 6917), !dbg !17
  store i8 addrspace(1)* %60, i8 addrspace(1)** %10
  br label %36
61:
  %62 = extractvalue {i64, i1} %30, 0
  store i64 %62, i64* %7
  %63 = load i64, i64* %7, !dbg !19
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %63), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !19
  br label %32
65:
  %66 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !17
  store i8 addrspace(1)* %66, i8 addrspace(1)** %10
  br label %36
67:
  %68 = extractvalue {i64, i1} %34, 0
  store i64 %68, i64* %9
  %69 = load i64, i64* %9
  store i64 %69, i64* %i
  br label %15
70:
  %71 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217), !dbg !17
  store i8 addrspace(1)* %71, i8 addrspace(1)** %10
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-bench/sieve-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"findPrimes", linkageName:"_B_findPrimes", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"printMersenne", linkageName:"_B_printMersenne", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 18, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 11, column: 28, scope: !7)
!16 = !DILocation(line: 14, column: 28, scope: !7)
!17 = !DILocation(line: 0, column: 0, scope: !9)
!18 = !DILocation(line: 26, column: 20, scope: !9)
!19 = !DILocation(line: 28, column: 12, scope: !9)
