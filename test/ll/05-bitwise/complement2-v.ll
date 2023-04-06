@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i64
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i64
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i8
  %29 = load ptr, ptr @_bal_stack_guard
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %142, label %31
31:
  store i64 0, ptr %i
  %32 = load i64, ptr %i
  %33 = xor i64 -1, %32
  store i64 %33, ptr %1
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load i64, ptr %1
  %39 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %38), !dbg !16
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %2
  %44 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !17
  store ptr addrspace(1) null, ptr %3
  %45 = call i64 @_B04roottwiddle(i64 1), !dbg !18
  store i64 %45, ptr %4
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load i64, ptr %4
  %51 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %50), !dbg !20
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %5
  %56 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !21
  store ptr addrspace(1) null, ptr %6
  %57 = call i64 @_B04roottwiddle(i64 100), !dbg !22
  store i64 %57, ptr %7
  %58 = load i64, ptr %7
  %59 = xor i64 -1, %58
  store i64 %59, ptr %8
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load i64, ptr %8
  %65 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %64), !dbg !24
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %9
  %70 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !25
  store ptr addrspace(1) null, ptr %10
  %71 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 -9223372036854775808), !dbg !26
  store ptr addrspace(1) %71, ptr %11
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load ptr addrspace(1), ptr %11
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %76, ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %12
  %81 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %81), !dbg !28
  store ptr addrspace(1) null, ptr %13
  %82 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 3
  %84 = load ptr addrspace(1), ptr addrspace(1) %83, align 8
  %85 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %86 = and i64 72057594037927935, 0
  %87 = or i64 2449958197289549824, %86
  %88 = getelementptr i8, ptr addrspace(1) null, i64 %87
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %85, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %14
  %93 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !30
  store ptr addrspace(1) null, ptr %15
  %94 = call i64 @_B04rootminusTwo(i64 42), !dbg !31
  store i64 %94, ptr %16
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = load i64, ptr %16
  %100 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %99), !dbg !33
  %101 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %100, ptr addrspace(1) %101
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %102
  %103 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %104 = getelementptr i8, ptr addrspace(1) %103, i64 864691128455135236
  store ptr addrspace(1) %104, ptr %17
  %105 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %105), !dbg !34
  store ptr addrspace(1) null, ptr %18
  %106 = call i64 @_B04rootminusTwo(i64 -98), !dbg !35
  store i64 %106, ptr %19
  %107 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 3
  %109 = load ptr addrspace(1), ptr addrspace(1) %108, align 8
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = load i64, ptr %19
  %112 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %111), !dbg !37
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %110, i64 0, i64 0
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  store i64 1, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %20
  %117 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %117), !dbg !38
  store ptr addrspace(1) null, ptr %21
  %118 = call i64 @_B04rootaddTwo(i64 42), !dbg !39
  store i64 %118, ptr %22
  %119 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 3
  %121 = load ptr addrspace(1), ptr addrspace(1) %120, align 8
  %122 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %123 = load i64, ptr %22
  %124 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %123), !dbg !41
  %125 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %122, i64 0, i64 0
  store ptr addrspace(1) %124, ptr addrspace(1) %125
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 1
  store i64 1, ptr addrspace(1) %126
  %127 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %128 = getelementptr i8, ptr addrspace(1) %127, i64 864691128455135236
  store ptr addrspace(1) %128, ptr %23
  %129 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %129), !dbg !42
  store ptr addrspace(1) null, ptr %24
  %130 = call i64 @_B04rootaddTwo(i64 -98), !dbg !43
  store i64 %130, ptr %25
  %131 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %131, i64 0, i32 3
  %133 = load ptr addrspace(1), ptr addrspace(1) %132, align 8
  %134 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %135 = load i64, ptr %25
  %136 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %135), !dbg !45
  %137 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %134, i64 0, i64 0
  store ptr addrspace(1) %136, ptr addrspace(1) %137
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %131, i64 0, i32 1
  store i64 1, ptr addrspace(1) %138
  %139 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %140 = getelementptr i8, ptr addrspace(1) %139, i64 864691128455135236
  store ptr addrspace(1) %140, ptr %26
  %141 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %141), !dbg !46
  store ptr addrspace(1) null, ptr %27
  ret void
142:
  %143 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %143), !dbg !14
  unreachable
}
define i64 @_B04roottwiddle(i64 %0) !dbg !7 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %10, label %6
6:
  store i64 %0, ptr %i
  %7 = load i64, ptr %i
  %8 = xor i64 -1, %7
  store i64 %8, ptr %2
  %9 = load i64, ptr %2
  ret i64 %9
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 4868), !dbg !47
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !48
  unreachable
}
define i64 @_B04rootminusTwo(i64 %0) !dbg !9 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %16, label %10
10:
  store i64 %0, ptr %i
  %11 = load i64, ptr %i
  %12 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %11)
  %13 = extractvalue {i64, i1} %12, 1
  br i1 %13, label %25, label %18
14:
  %15 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !51
  unreachable
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !49
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !50
  unreachable
18:
  %19 = extractvalue {i64, i1} %12, 0
  store i64 %19, ptr %2
  %20 = load i64, ptr %2
  %21 = xor i64 -1, %20
  store i64 %21, ptr %3
  %22 = load i64, ptr %3
  %23 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %22)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %32, label %27
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 6145), !dbg !49
  store ptr addrspace(1) %26, ptr %6
  br label %14
27:
  %28 = extractvalue {i64, i1} %23, 0
  store i64 %28, ptr %4
  %29 = load i64, ptr %4
  %30 = xor i64 -1, %29
  store i64 %30, ptr %5
  %31 = load i64, ptr %5
  ret i64 %31
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 6145), !dbg !49
  store ptr addrspace(1) %33, ptr %6
  br label %14
}
define i64 @_B04rootaddTwo(i64 %0) !dbg !11 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %18, label %10
10:
  store i64 %0, ptr %i
  %11 = load i64, ptr %i
  %12 = xor i64 -1, %11
  store i64 %12, ptr %2
  %13 = load i64, ptr %2
  %14 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %13)
  %15 = extractvalue {i64, i1} %14, 1
  br i1 %15, label %27, label %20
16:
  %17 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !54
  unreachable
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 6660), !dbg !52
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !53
  unreachable
20:
  %21 = extractvalue {i64, i1} %14, 0
  store i64 %21, ptr %3
  %22 = load i64, ptr %3
  %23 = xor i64 -1, %22
  store i64 %23, ptr %4
  %24 = load i64, ptr %4
  %25 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %24)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %32, label %29
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 6913), !dbg !52
  store ptr addrspace(1) %28, ptr %6
  br label %16
29:
  %30 = extractvalue {i64, i1} %25, 0
  store i64 %30, ptr %5
  %31 = load i64, ptr %5
  ret i64 %31
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 6913), !dbg !52
  store ptr addrspace(1) %33, ptr %6
  br label %16
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-bitwise/complement2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"twiddle", linkageName:"_B04roottwiddle", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"minusTwo", linkageName:"_B04rootminusTwo", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"addTwo", linkageName:"_B04rootaddTwo", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 3, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 4, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 15, scope: !5)
!20 = !DILocation(line: 6, column: 15, scope: !5)
!21 = !DILocation(line: 6, column: 4, scope: !5)
!22 = !DILocation(line: 7, column: 16, scope: !5)
!23 = !DILocation(line: 7, column: 15, scope: !5)
!24 = !DILocation(line: 7, column: 15, scope: !5)
!25 = !DILocation(line: 7, column: 4, scope: !5)
!26 = !DILocation(line: 8, column: 37, scope: !5)
!27 = !DILocation(line: 8, column: 15, scope: !5)
!28 = !DILocation(line: 8, column: 4, scope: !5)
!29 = !DILocation(line: 9, column: 15, scope: !5)
!30 = !DILocation(line: 9, column: 4, scope: !5)
!31 = !DILocation(line: 11, column: 15, scope: !5)
!32 = !DILocation(line: 11, column: 15, scope: !5)
!33 = !DILocation(line: 11, column: 15, scope: !5)
!34 = !DILocation(line: 11, column: 4, scope: !5)
!35 = !DILocation(line: 12, column: 15, scope: !5)
!36 = !DILocation(line: 12, column: 15, scope: !5)
!37 = !DILocation(line: 12, column: 15, scope: !5)
!38 = !DILocation(line: 12, column: 4, scope: !5)
!39 = !DILocation(line: 14, column: 15, scope: !5)
!40 = !DILocation(line: 14, column: 15, scope: !5)
!41 = !DILocation(line: 14, column: 15, scope: !5)
!42 = !DILocation(line: 14, column: 4, scope: !5)
!43 = !DILocation(line: 15, column: 15, scope: !5)
!44 = !DILocation(line: 15, column: 15, scope: !5)
!45 = !DILocation(line: 15, column: 15, scope: !5)
!46 = !DILocation(line: 15, column: 4, scope: !5)
!47 = !DILocation(line: 0, column: 0, scope: !7)
!48 = !DILocation(line: 19, column: 16, scope: !7)
!49 = !DILocation(line: 0, column: 0, scope: !9)
!50 = !DILocation(line: 23, column: 16, scope: !9)
!51 = !DILocation(line: 25, column: 0, scope: !9)
!52 = !DILocation(line: 0, column: 0, scope: !11)
!53 = !DILocation(line: 26, column: 16, scope: !11)
!54 = !DILocation(line: 28, column: 0, scope: !11)
