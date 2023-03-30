@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %m = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %34, label %18
18:
  %19 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %20 = and i64 72057594037927935, 1
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  call void @_bal_mapping_init_member(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %22), !dbg !10
  %23 = zext i1 0 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  call void @_bal_mapping_init_member(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %25), !dbg !11
  store ptr addrspace(1) %19, ptr %1
  %26 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %26, ptr %r
  %27 = load ptr addrspace(1), ptr %r
  %28 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %27), !dbg !12
  store ptr addrspace(1) %28, ptr %m
  %29 = load ptr addrspace(1), ptr %m
  %30 = call i64 @_bal_mapping_set(ptr addrspace(1) %29, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187913735271539), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187995675523448)), !dbg !13
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %40
32:
  %33 = load ptr addrspace(1), ptr %14
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !31
  unreachable
34:
  %35 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !8
  unreachable
36:
  %37 = load ptr addrspace(1), ptr %m
  %38 = call i64 @_bal_mapping_set(ptr addrspace(1) %37, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187913735271539), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573430997601)), !dbg !14
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %50
40:
  %41 = or i64 %30, 3072
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 %41), !dbg !7
  store ptr addrspace(1) %42, ptr %14
  br label %32
43:
  %44 = load ptr addrspace(1), ptr %m
  %45 = and i64 72057594037927935, 2
  %46 = or i64 2449958197289549824, %45
  %47 = getelementptr i8, ptr addrspace(1) null, i64 %46
  %48 = call i64 @_bal_mapping_set(ptr addrspace(1) %44, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %47), !dbg !15
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %53, label %60
50:
  %51 = or i64 %38, 3328
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 %51), !dbg !7
  store ptr addrspace(1) %52, ptr %14
  br label %32
53:
  %54 = load ptr addrspace(1), ptr %m
  %55 = zext i1 1 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, ptr addrspace(1) null, i64 %56
  %58 = call i64 @_bal_mapping_set(ptr addrspace(1) %54, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %57), !dbg !16
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %63, label %124
60:
  %61 = or i64 %48, 3584
  %62 = call ptr addrspace(1) @_bal_panic_construct(i64 %61), !dbg !7
  store ptr addrspace(1) %62, ptr %14
  br label %32
63:
  %64 = load ptr addrspace(1), ptr %r
  %65 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %64, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !17
  %66 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %65), !dbg !18
  store i64 %66, ptr %2
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = load i64, ptr %2
  %72 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %71), !dbg !20
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %74
  %75 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 864691128455135236
  store ptr addrspace(1) %76, ptr %3
  %77 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %77), !dbg !21
  store ptr addrspace(1) null, ptr %4
  %78 = load ptr addrspace(1), ptr %r
  %79 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %78, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !22
  %80 = addrspacecast ptr addrspace(1) %79 to ptr
  %81 = ptrtoint ptr %80 to i64
  %82 = trunc i64 %81 to i1
  store i1 %82, ptr %5
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = load i1, ptr %5
  %88 = zext i1 %87 to i64
  %89 = or i64 %88, 72057594037927936
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %6
  %95 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !24
  store ptr addrspace(1) null, ptr %7
  %96 = load ptr addrspace(1), ptr %r
  %97 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %96, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187913735271539)), !dbg !25
  store ptr addrspace(1) %97, ptr %8
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load ptr addrspace(1), ptr %8
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 1, ptr addrspace(1) %104
  %105 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %106 = getelementptr i8, ptr addrspace(1) %105, i64 864691128455135236
  store ptr addrspace(1) %106, ptr %9
  %107 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %107), !dbg !27
  store ptr addrspace(1) null, ptr %10
  %108 = load ptr addrspace(1), ptr %m
  %109 = load ptr addrspace(1), ptr %r
  %110 = call i1 @_bal_exact_eq(ptr addrspace(1) %108, ptr addrspace(1) %109), !dbg !28
  store i1 %110, ptr %11
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !29
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = load i1, ptr %11
  %116 = zext i1 %115 to i64
  %117 = or i64 %116, 72057594037927936
  %118 = getelementptr i8, ptr addrspace(1) null, i64 %117
  %119 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %118, ptr addrspace(1) %119
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %120
  %121 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %122 = getelementptr i8, ptr addrspace(1) %121, i64 864691128455135236
  store ptr addrspace(1) %122, ptr %12
  %123 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %123), !dbg !30
  store ptr addrspace(1) null, ptr %13
  ret void
124:
  %125 = or i64 %58, 3840
  %126 = call ptr addrspace(1) @_bal_panic_construct(i64 %125), !dbg !7
  store ptr addrspace(1) %126, ptr %14
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-rest/mutate2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 10, scope: !5)
!10 = !DILocation(line: 10, column: 10, scope: !5)
!11 = !DILocation(line: 10, column: 10, scope: !5)
!12 = !DILocation(line: 11, column: 15, scope: !5)
!13 = !DILocation(line: 12, column: 5, scope: !5)
!14 = !DILocation(line: 13, column: 5, scope: !5)
!15 = !DILocation(line: 14, column: 5, scope: !5)
!16 = !DILocation(line: 15, column: 5, scope: !5)
!17 = !DILocation(line: 16, column: 16, scope: !5)
!18 = !DILocation(line: 16, column: 16, scope: !5)
!19 = !DILocation(line: 16, column: 15, scope: !5)
!20 = !DILocation(line: 16, column: 15, scope: !5)
!21 = !DILocation(line: 16, column: 4, scope: !5)
!22 = !DILocation(line: 17, column: 16, scope: !5)
!23 = !DILocation(line: 17, column: 15, scope: !5)
!24 = !DILocation(line: 17, column: 4, scope: !5)
!25 = !DILocation(line: 18, column: 16, scope: !5)
!26 = !DILocation(line: 18, column: 15, scope: !5)
!27 = !DILocation(line: 18, column: 4, scope: !5)
!28 = !DILocation(line: 19, column: 17, scope: !5)
!29 = !DILocation(line: 19, column: 15, scope: !5)
!30 = !DILocation(line: 19, column: 4, scope: !5)
!31 = !DILocation(line: 20, column: 0, scope: !5)
