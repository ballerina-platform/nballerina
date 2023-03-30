@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call ptr addrspace(1) @_B_findPrimes(), !dbg !13
  store ptr addrspace(1) %7, ptr %1
  %8 = load ptr addrspace(1), ptr %1
  call void @_B_printMersenne(ptr addrspace(1) %8), !dbg !14
  store ptr addrspace(1) null, ptr %2
  ret void
9:
  %10 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %10), !dbg !12
  unreachable
}
define internal ptr addrspace(1) @_B_findPrimes() !dbg !7 {
  %primes = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %gap = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %i = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i1
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %91, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = zext i1 0 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = zext i1 0 to i64
  %26 = or i64 %25, 72057594037927936
  %27 = getelementptr i8, ptr addrspace(1) null, i64 %26
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 1
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 2, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %1
  %32 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %32, ptr %primes
  %33 = load ptr addrspace(1), ptr %primes
  %34 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %33, i64 72057594037927928), !dbg !18
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 0
  %37 = load ptr, ptr addrspace(1) %36, align 8
  %38 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 %39(ptr addrspace(1) %33, i64 1000000, ptr addrspace(1) null)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %93, label %94
42:
  %43 = load i64, ptr %gap
  %44 = load i64, ptr %gap
  %45 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %43, i64 %44)
  %46 = extractvalue {i64, i1} %45, 1
  br i1 %46, label %106, label %97
47:
  %48 = load ptr addrspace(1), ptr %primes
  %49 = load i64, ptr %gap
  %50 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %48, i64 72057594037927928)
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  %53 = load i64, ptr addrspace(1) %52, align 8
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %108, label %118
55:
  %56 = load ptr addrspace(1), ptr %primes
  ret ptr addrspace(1) %56
57:
  %58 = load i64, ptr %gap
  %59 = load i64, ptr %gap
  %60 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %58, i64 %59)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %123, label %120
62:
  %63 = load i64, ptr %gap
  %64 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %63, i64 1)
  %65 = extractvalue {i64, i1} %64, 1
  br i1 %65, label %128, label %125
66:
  %67 = load ptr addrspace(1), ptr %primes
  %68 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %67), !dbg !22
  %69 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %68), !dbg !23
  store i64 %69, ptr %8
  %70 = load i64, ptr %i
  %71 = load i64, ptr %8
  %72 = icmp slt i64 %70, %71
  store i1 %72, ptr %9
  %73 = load i1, ptr %9
  br i1 %73, label %74, label %88
74:
  %75 = load ptr addrspace(1), ptr %primes
  %76 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %75, i64 72057594037927928), !dbg !24
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = load i64, ptr %i
  %79 = zext i1 0 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, ptr addrspace(1) null, i64 %80
  %82 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 0
  %83 = load ptr, ptr addrspace(1) %82, align 8
  %84 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8
  %86 = call i64 %85(ptr addrspace(1) %75, i64 %78, ptr addrspace(1) %81)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %130, label %135
88:
  br label %62
89:
  %90 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %90), !dbg !25
  unreachable
91:
  %92 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %92), !dbg !16
  unreachable
93:
  store i64 2, ptr %gap
  br label %42
94:
  %95 = or i64 %40, 2304
  %96 = call ptr addrspace(1) @_bal_panic_construct(i64 %95), !dbg !15
  store ptr addrspace(1) %96, ptr %12
  br label %89
97:
  %98 = extractvalue {i64, i1} %45, 0
  store i64 %98, ptr %2
  %99 = load ptr addrspace(1), ptr %primes
  %100 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %99), !dbg !19
  %101 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %100), !dbg !20
  store i64 %101, ptr %3
  %102 = load i64, ptr %2
  %103 = load i64, ptr %3
  %104 = icmp slt i64 %102, %103
  store i1 %104, ptr %4
  %105 = load i1, ptr %4
  br i1 %105, label %47, label %55
106:
  %107 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !15
  store ptr addrspace(1) %107, ptr %12
  br label %89
108:
  %109 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 0
  %110 = load ptr, ptr addrspace(1) %109, align 8
  %111 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %110, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8
  %113 = call ptr addrspace(1) %112(ptr addrspace(1) %48, i64 %49)
  %114 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %48, ptr addrspace(1) %113), !dbg !21
  store ptr addrspace(1) %114, ptr %5
  %115 = load ptr addrspace(1), ptr %5
  %116 = icmp eq ptr addrspace(1) %115, null
  store i1 %116, ptr %6
  %117 = load i1, ptr %6
  br i1 %117, label %57, label %62
118:
  %119 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !15
  store ptr addrspace(1) %119, ptr %12
  br label %89
120:
  %121 = extractvalue {i64, i1} %60, 0
  store i64 %121, ptr %7
  %122 = load i64, ptr %7
  store i64 %122, ptr %i
  br label %66
123:
  %124 = call ptr addrspace(1) @_bal_panic_construct(i64 3329), !dbg !15
  store ptr addrspace(1) %124, ptr %12
  br label %89
125:
  %126 = extractvalue {i64, i1} %64, 0
  store i64 %126, ptr %11
  %127 = load i64, ptr %11
  store i64 %127, ptr %gap
  br label %42
128:
  %129 = call ptr addrspace(1) @_bal_panic_construct(i64 4865), !dbg !15
  store ptr addrspace(1) %129, ptr %12
  br label %89
130:
  %131 = load i64, ptr %i
  %132 = load i64, ptr %gap
  %133 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %131, i64 %132)
  %134 = extractvalue {i64, i1} %133, 1
  br i1 %134, label %141, label %138
135:
  %136 = or i64 %86, 3840
  %137 = call ptr addrspace(1) @_bal_panic_construct(i64 %136), !dbg !15
  store ptr addrspace(1) %137, ptr %12
  br label %89
138:
  %139 = extractvalue {i64, i1} %133, 0
  store i64 %139, ptr %10
  %140 = load i64, ptr %10
  store i64 %140, ptr %i
  br label %66
141:
  %142 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !15
  store ptr addrspace(1) %142, ptr %12
  br label %89
}
define internal void @_B_printMersenne(ptr addrspace(1) %0) !dbg !9 {
  %primes = alloca ptr addrspace(1)
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %39, label %15
15:
  store ptr addrspace(1) %0, ptr %primes
  store i64 2, ptr %i
  br label %16
16:
  %17 = load ptr addrspace(1), ptr %primes
  %18 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %17), !dbg !28
  %19 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %18), !dbg !29
  store i64 %19, ptr %2
  %20 = load i64, ptr %i
  %21 = load i64, ptr %2
  %22 = icmp slt i64 %20, %21
  store i1 %22, ptr %3
  %23 = load i1, ptr %3
  br i1 %23, label %24, label %28
24:
  %25 = load i64, ptr %i
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %25, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %50, label %41
28:
  ret void
29:
  %30 = load i64, ptr %i
  %31 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %30, i64 1)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %77, label %64
33:
  %34 = load i64, ptr %i
  %35 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %34, i64 2)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %82, label %79
37:
  %38 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !34
  unreachable
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 6148), !dbg !26
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !27
  unreachable
41:
  %42 = extractvalue {i64, i1} %26, 0
  store i64 %42, ptr %4
  %43 = load ptr addrspace(1), ptr %primes
  %44 = load i64, ptr %4
  %45 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %43, i64 72057594037927928)
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  %48 = load i64, ptr addrspace(1) %47, align 8
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %52, label %62
50:
  %51 = call ptr addrspace(1) @_bal_panic_construct(i64 6913), !dbg !26
  store ptr addrspace(1) %51, ptr %11
  br label %37
52:
  %53 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 0
  %54 = load ptr, ptr addrspace(1) %53, align 8
  %55 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = call ptr addrspace(1) %56(ptr addrspace(1) %43, i64 %44)
  %58 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %43, ptr addrspace(1) %57), !dbg !30
  store ptr addrspace(1) %58, ptr %5
  %59 = load ptr addrspace(1), ptr %5
  %60 = icmp eq ptr addrspace(1) %59, null
  store i1 %60, ptr %6
  %61 = load i1, ptr %6
  br i1 %61, label %29, label %33
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 6917), !dbg !26
  store ptr addrspace(1) %63, ptr %11
  br label %37
64:
  %65 = extractvalue {i64, i1} %31, 0
  store i64 %65, ptr %7
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !31
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = load i64, ptr %7
  %71 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %70), !dbg !32
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %8
  %76 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !33
  store ptr addrspace(1) null, ptr %9
  br label %33
77:
  %78 = call ptr addrspace(1) @_bal_panic_construct(i64 7169), !dbg !26
  store ptr addrspace(1) %78, ptr %11
  br label %37
79:
  %80 = extractvalue {i64, i1} %35, 0
  store i64 %80, ptr %10
  %81 = load i64, ptr %10
  store i64 %81, ptr %i
  br label %16
82:
  %83 = call ptr addrspace(1) @_bal_panic_construct(i64 9217), !dbg !26
  store ptr addrspace(1) %83, ptr %11
  br label %37
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
!12 = !DILocation(line: 3, column: 16, scope: !5)
!13 = !DILocation(line: 4, column: 18, scope: !5)
!14 = !DILocation(line: 4, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 7, column: 9, scope: !7)
!17 = !DILocation(line: 8, column: 19, scope: !7)
!18 = !DILocation(line: 9, column: 10, scope: !7)
!19 = !DILocation(line: 11, column: 29, scope: !7)
!20 = !DILocation(line: 11, column: 29, scope: !7)
!21 = !DILocation(line: 12, column: 17, scope: !7)
!22 = !DILocation(line: 14, column: 29, scope: !7)
!23 = !DILocation(line: 14, column: 29, scope: !7)
!24 = !DILocation(line: 15, column: 22, scope: !7)
!25 = !DILocation(line: 22, column: 0, scope: !7)
!26 = !DILocation(line: 0, column: 0, scope: !9)
!27 = !DILocation(line: 24, column: 9, scope: !9)
!28 = !DILocation(line: 26, column: 21, scope: !9)
!29 = !DILocation(line: 26, column: 21, scope: !9)
!30 = !DILocation(line: 27, column: 17, scope: !9)
!31 = !DILocation(line: 28, column: 23, scope: !9)
!32 = !DILocation(line: 28, column: 23, scope: !9)
!33 = !DILocation(line: 28, column: 12, scope: !9)
!34 = !DILocation(line: 38, column: 0, scope: !9)
