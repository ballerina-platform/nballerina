@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i64
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i64
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i8
  %22 = load ptr, ptr @_bal_stack_guard
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %117, label %24
24:
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = and i64 72057594037927935, 1
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %1
  %36 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !12
  store ptr addrspace(1) null, ptr %2
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !14
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %3
  %46 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !15
  store ptr addrspace(1) null, ptr %4
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = and i64 72057594037927935, -1
  %52 = or i64 2449958197289549824, %51
  %53 = getelementptr i8, ptr addrspace(1) null, i64 %52
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %5
  %58 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !17
  store ptr addrspace(1) null, ptr %6
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = call ptr addrspace(1) @_bal_int_to_tagged(i64 -9223372036854775807), !dbg !19
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) %63, ptr addrspace(1) %64
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 1, ptr addrspace(1) %65
  %66 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 864691128455135236
  store ptr addrspace(1) %67, ptr %7
  %68 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %68), !dbg !20
  store ptr addrspace(1) null, ptr %8
  %69 = call i64 @_B_add(i64 1, i64 0), !dbg !21
  store i64 %69, ptr %9
  %70 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 3
  %72 = load ptr addrspace(1), ptr addrspace(1) %71, align 8
  %73 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %74 = load i64, ptr %9
  %75 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %74), !dbg !23
  %76 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %73, i64 0, i64 0
  store ptr addrspace(1) %75, ptr addrspace(1) %76
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 1
  store i64 1, ptr addrspace(1) %77
  %78 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %79 = getelementptr i8, ptr addrspace(1) %78, i64 864691128455135236
  store ptr addrspace(1) %79, ptr %10
  %80 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %80), !dbg !24
  store ptr addrspace(1) null, ptr %11
  %81 = call i64 @_B_add(i64 1, i64 9223372036854775806), !dbg !25
  store i64 %81, ptr %12
  %82 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 3
  %84 = load ptr addrspace(1), ptr addrspace(1) %83, align 8
  %85 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %86 = load i64, ptr %12
  %87 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %86), !dbg !27
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %85, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %13
  %92 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !28
  store ptr addrspace(1) null, ptr %14
  %93 = call i64 @_B_add(i64 -1, i64 0), !dbg !29
  store i64 %93, ptr %15
  %94 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = load i64, ptr %15
  %99 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %98), !dbg !31
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %97, i64 0, i64 0
  store ptr addrspace(1) %99, ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  store i64 1, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %16
  %104 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %104), !dbg !32
  store ptr addrspace(1) null, ptr %17
  %105 = call i64 @_B_add(i64 -1, i64 -9223372036854775806), !dbg !33
  store i64 %105, ptr %18
  %106 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 3
  %108 = load ptr addrspace(1), ptr addrspace(1) %107, align 8
  %109 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %110 = load i64, ptr %18
  %111 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %110), !dbg !35
  %112 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %109, i64 0, i64 0
  store ptr addrspace(1) %111, ptr addrspace(1) %112
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 1
  store i64 1, ptr addrspace(1) %113
  %114 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %115 = getelementptr i8, ptr addrspace(1) %114, i64 864691128455135236
  store ptr addrspace(1) %115, ptr %19
  %116 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %116), !dbg !36
  store ptr addrspace(1) null, ptr %20
  ret void
117:
  %118 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %118), !dbg !10
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1) !dbg !7 {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %i
  store i64 %1, ptr %j
  %9 = load i64, ptr %i
  %10 = load i64, ptr %j
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !39
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !37
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !38
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !37
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/add8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"add", linkageName:"_B_add", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 12, scope: !5)
!12 = !DILocation(line: 4, column: 1, scope: !5)
!13 = !DILocation(line: 5, column: 12, scope: !5)
!14 = !DILocation(line: 5, column: 12, scope: !5)
!15 = !DILocation(line: 5, column: 1, scope: !5)
!16 = !DILocation(line: 6, column: 12, scope: !5)
!17 = !DILocation(line: 6, column: 1, scope: !5)
!18 = !DILocation(line: 7, column: 12, scope: !5)
!19 = !DILocation(line: 7, column: 12, scope: !5)
!20 = !DILocation(line: 7, column: 1, scope: !5)
!21 = !DILocation(line: 9, column: 12, scope: !5)
!22 = !DILocation(line: 9, column: 12, scope: !5)
!23 = !DILocation(line: 9, column: 12, scope: !5)
!24 = !DILocation(line: 9, column: 1, scope: !5)
!25 = !DILocation(line: 10, column: 12, scope: !5)
!26 = !DILocation(line: 10, column: 12, scope: !5)
!27 = !DILocation(line: 10, column: 12, scope: !5)
!28 = !DILocation(line: 10, column: 1, scope: !5)
!29 = !DILocation(line: 11, column: 12, scope: !5)
!30 = !DILocation(line: 11, column: 12, scope: !5)
!31 = !DILocation(line: 11, column: 12, scope: !5)
!32 = !DILocation(line: 11, column: 1, scope: !5)
!33 = !DILocation(line: 12, column: 12, scope: !5)
!34 = !DILocation(line: 12, column: 12, scope: !5)
!35 = !DILocation(line: 12, column: 12, scope: !5)
!36 = !DILocation(line: 12, column: 1, scope: !5)
!37 = !DILocation(line: 0, column: 0, scope: !7)
!38 = !DILocation(line: 15, column: 9, scope: !7)
!39 = !DILocation(line: 17, column: 0, scope: !7)
