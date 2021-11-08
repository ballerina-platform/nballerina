@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
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
  %primes = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %gap = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %i = alloca i64
  %7 = alloca i64
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %78, label %16
16:
  %17 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 2)
  %18 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 3
  %19 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %18, align 8
  %20 = zext i1 0 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21
  %23 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 0
  store i8 addrspace(1)* %22, i8 addrspace(1)* addrspace(1)* %23
  %24 = zext i1 0 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25
  %27 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 1
  store i8 addrspace(1)* %26, i8 addrspace(1)* addrspace(1)* %27
  %28 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %28
  %29 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17 to i8 addrspace(1)*
  %30 = getelementptr i8, i8 addrspace(1)* %29, i64 1297036692682702852
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %31, i8 addrspace(1)** %primes
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %33 = call i64 @_bal_list_set(i8 addrspace(1)* %32, i64 1000000, i8 addrspace(1)* null)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %80, label %81
35:
  %36 = load i64, i64* %gap
  %37 = load i64, i64* %gap
  %38 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %36, i64 %37)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %93, label %84
40:
  %41 = load i64, i64* %gap
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %43 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %42, i64 72057594037927928)
  %44 = bitcast i8 addrspace(1)* %43 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %45 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 1
  %46 = load i64, i64 addrspace(1)* %45, align 8
  %47 = icmp ult i64 %41, %46
  br i1 %47, label %95, label %103
48:
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  ret i8 addrspace(1)* %49
50:
  %51 = load i64, i64* %gap
  %52 = load i64, i64* %gap
  %53 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %51, i64 %52)
  %54 = extractvalue {i64, i1} %53, 1
  br i1 %54, label %108, label %105
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %primes, !dbg !16
  %57 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %56, i64 -5), !dbg !16
  %58 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %57), !dbg !16
  store i64 %58, i64* %9, !dbg !16
  %59 = load i64, i64* %i
  %60 = load i64, i64* %9
  %61 = icmp slt i64 %59, %60
  store i1 %61, i1* %8
  %62 = load i1, i1* %8
  br i1 %62, label %63, label %71
63:
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %primes
  %65 = load i64, i64* %i
  %66 = zext i1 0 to i64
  %67 = or i64 %66, 72057594037927936
  %68 = getelementptr i8, i8 addrspace(1)* null, i64 %67
  %69 = call i64 @_bal_list_set(i8 addrspace(1)* %64, i64 %65, i8 addrspace(1)* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %110, label %115
71:
  br label %72
72:
  %73 = load i64, i64* %gap
  %74 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %73, i64 1)
  %75 = extractvalue {i64, i1} %74, 1
  br i1 %75, label %126, label %123
76:
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_bal_panic(i8 addrspace(1)* %77)
  unreachable
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %79)
  unreachable
80:
  store i64 2, i64* %gap
  br label %35
81:
  %82 = or i64 %33, 2304
  %83 = call i8 addrspace(1)* @_bal_panic_construct(i64 %82), !dbg !14
  store i8 addrspace(1)* %83, i8 addrspace(1)** %12
  br label %76
84:
  %85 = extractvalue {i64, i1} %38, 0
  store i64 %85, i64* %3
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %primes, !dbg !15
  %87 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %86, i64 -5), !dbg !15
  %88 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %87), !dbg !15
  store i64 %88, i64* %4, !dbg !15
  %89 = load i64, i64* %3
  %90 = load i64, i64* %4
  %91 = icmp slt i64 %89, %90
  store i1 %91, i1* %2
  %92 = load i1, i1* %2
  br i1 %92, label %40, label %48
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !14
  store i8 addrspace(1)* %94, i8 addrspace(1)** %12
  br label %76
95:
  %96 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %44, i64 0, i32 3
  %97 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %96, align 8
  %98 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %97, i64 0, i64 %41
  %99 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %98, align 8
  store i8 addrspace(1)* %99, i8 addrspace(1)** %6
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %101 = icmp eq i8 addrspace(1)* %100, null
  store i1 %101, i1* %5
  %102 = load i1, i1* %5
  br i1 %102, label %50, label %72
103:
  %104 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077), !dbg !14
  store i8 addrspace(1)* %104, i8 addrspace(1)** %12
  br label %76
105:
  %106 = extractvalue {i64, i1} %53, 0
  store i64 %106, i64* %7
  %107 = load i64, i64* %7
  store i64 %107, i64* %i
  br label %55
108:
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !14
  store i8 addrspace(1)* %109, i8 addrspace(1)** %12
  br label %76
110:
  %111 = load i64, i64* %i
  %112 = load i64, i64* %gap
  %113 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %111, i64 %112)
  %114 = extractvalue {i64, i1} %113, 1
  br i1 %114, label %121, label %118
115:
  %116 = or i64 %69, 3840
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 %116), !dbg !14
  store i8 addrspace(1)* %117, i8 addrspace(1)** %12
  br label %76
118:
  %119 = extractvalue {i64, i1} %113, 0
  store i64 %119, i64* %10
  %120 = load i64, i64* %10
  store i64 %120, i64* %i
  br label %55
121:
  %122 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !14
  store i8 addrspace(1)* %122, i8 addrspace(1)** %12
  br label %76
123:
  %124 = extractvalue {i64, i1} %74, 0
  store i64 %124, i64* %11
  %125 = load i64, i64* %11
  store i64 %125, i64* %gap
  br label %35
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !14
  store i8 addrspace(1)* %127, i8 addrspace(1)** %12
  br label %76
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
  %45 = bitcast i8 addrspace(1)* %44 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %46 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %45, i64 0, i32 1
  %47 = load i64, i64 addrspace(1)* %46, align 8
  %48 = icmp ult i64 %42, %47
  br i1 %48, label %51, label %59
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913), !dbg !17
  store i8 addrspace(1)* %50, i8 addrspace(1)** %10
  br label %36
51:
  %52 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %45, i64 0, i32 3
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
!0 = !{i32 2, !"Debug Info Version", i32 3}
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
