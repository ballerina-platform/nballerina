@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i8
  %19 = load ptr, ptr @_bal_stack_guard
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %58, label %21
21:
  %22 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %23 = and i64 72057594037927935, 1
  %24 = or i64 2449958197289549824, %23
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  call void @_bal_mapping_init_member(ptr addrspace(1) %22, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %25), !dbg !10
  %26 = and i64 72057594037927935, 2
  %27 = or i64 2449958197289549824, %26
  %28 = getelementptr i8, ptr addrspace(1) null, i64 %27
  call void @_bal_mapping_init_member(ptr addrspace(1) %22, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %28), !dbg !11
  store ptr addrspace(1) %22, ptr %1
  %29 = load ptr addrspace(1), ptr %1
  %30 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %29, i64 0), !dbg !12
  %31 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %30), !dbg !13
  store i64 %31, ptr %2
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load i64, ptr %2
  %37 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %36), !dbg !15
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %39
  %40 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %41 = getelementptr i8, ptr addrspace(1) %40, i64 864691128455135236
  store ptr addrspace(1) %41, ptr %3
  %42 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %42), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %43 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !17
  %44 = and i64 72057594037927935, 1
  %45 = or i64 2449958197289549824, %44
  %46 = getelementptr i8, ptr addrspace(1) null, i64 %45
  call void @_bal_mapping_init_member(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %46), !dbg !18
  %47 = and i64 72057594037927935, 2
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  call void @_bal_mapping_init_member(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %49), !dbg !19
  store ptr addrspace(1) %43, ptr %5
  %50 = load ptr addrspace(1), ptr %5
  %51 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %50, i64 1), !dbg !20
  %52 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %51), !dbg !21
  store i64 %52, ptr %6
  %53 = load i64, ptr %6
  %54 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %53, i64 1)
  %55 = extractvalue {i64, i1} %54, 1
  br i1 %55, label %91, label %60
56:
  %57 = load ptr addrspace(1), ptr %17
  call void @_bal_panic(ptr addrspace(1) %57), !dbg !37
  unreachable
58:
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %59), !dbg !8
  unreachable
60:
  %61 = extractvalue {i64, i1} %54, 0
  store i64 %61, ptr %7
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load i64, ptr %7
  %67 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %66), !dbg !23
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %8
  %72 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !24
  store ptr addrspace(1) null, ptr %9
  %73 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 1), !dbg !25
  %74 = and i64 72057594037927935, 4
  %75 = or i64 2449958197289549824, %74
  %76 = getelementptr i8, ptr addrspace(1) null, i64 %75
  call void @_bal_mapping_init_member(ptr addrspace(1) %73, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411), ptr addrspace(1) %76), !dbg !26
  store ptr addrspace(1) %73, ptr %10
  %77 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root3, i64 2), !dbg !27
  %78 = and i64 72057594037927935, 1
  %79 = or i64 2449958197289549824, %78
  %80 = getelementptr i8, ptr addrspace(1) null, i64 %79
  call void @_bal_mapping_init_member(ptr addrspace(1) %77, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %80), !dbg !28
  %81 = load ptr addrspace(1), ptr %10
  call void @_bal_mapping_init_member(ptr addrspace(1) %77, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %81), !dbg !29
  store ptr addrspace(1) %77, ptr %11
  %82 = load ptr addrspace(1), ptr %11
  %83 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %82, i64 1), !dbg !30
  %84 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %82, ptr addrspace(1) %83), !dbg !31
  store ptr addrspace(1) %84, ptr %12
  %85 = load ptr addrspace(1), ptr %12
  %86 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %85, i64 0), !dbg !32
  %87 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %86), !dbg !33
  store i64 %87, ptr %13
  %88 = load i64, ptr %13
  %89 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %88, i64 1)
  %90 = extractvalue {i64, i1} %89, 1
  br i1 %90, label %106, label %93
91:
  %92 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !7
  store ptr addrspace(1) %92, ptr %17
  br label %56
93:
  %94 = extractvalue {i64, i1} %89, 0
  store i64 %94, ptr %14
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !34
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = load i64, ptr %14
  %100 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %99), !dbg !35
  %101 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %100, ptr addrspace(1) %101
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %102
  %103 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %104 = getelementptr i8, ptr addrspace(1) %103, i64 864691128455135236
  store ptr addrspace(1) %104, ptr %15
  %105 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %105), !dbg !36
  store ptr addrspace(1) null, ptr %16
  ret void
106:
  %107 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !7
  store ptr addrspace(1) %107, ptr %17
  br label %56
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-mapping/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 29, scope: !5)
!13 = !DILocation(line: 4, column: 29, scope: !5)
!14 = !DILocation(line: 4, column: 15, scope: !5)
!15 = !DILocation(line: 4, column: 15, scope: !5)
!16 = !DILocation(line: 4, column: 4, scope: !5)
!17 = !DILocation(line: 5, column: 15, scope: !5)
!18 = !DILocation(line: 5, column: 15, scope: !5)
!19 = !DILocation(line: 5, column: 15, scope: !5)
!20 = !DILocation(line: 5, column: 29, scope: !5)
!21 = !DILocation(line: 5, column: 29, scope: !5)
!22 = !DILocation(line: 5, column: 15, scope: !5)
!23 = !DILocation(line: 5, column: 15, scope: !5)
!24 = !DILocation(line: 5, column: 4, scope: !5)
!25 = !DILocation(line: 6, column: 26, scope: !5)
!26 = !DILocation(line: 6, column: 26, scope: !5)
!27 = !DILocation(line: 6, column: 15, scope: !5)
!28 = !DILocation(line: 6, column: 15, scope: !5)
!29 = !DILocation(line: 6, column: 15, scope: !5)
!30 = !DILocation(line: 6, column: 36, scope: !5)
!31 = !DILocation(line: 6, column: 36, scope: !5)
!32 = !DILocation(line: 6, column: 38, scope: !5)
!33 = !DILocation(line: 6, column: 38, scope: !5)
!34 = !DILocation(line: 6, column: 15, scope: !5)
!35 = !DILocation(line: 6, column: 15, scope: !5)
!36 = !DILocation(line: 6, column: 4, scope: !5)
!37 = !DILocation(line: 7, column: 0, scope: !5)
