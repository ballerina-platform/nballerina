@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare zeroext i1 @_bal_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %j1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %j2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %j3 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca i8
  %21 = load ptr, ptr @_bal_stack_guard
  %22 = icmp ult ptr %20, %21
  br i1 %22, label %50, label %23
23:
  %24 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  call void @_bal_mapping_init_member(ptr addrspace(1) %24, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) null), !dbg !10
  store ptr addrspace(1) %24, ptr %1
  %25 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %25, ptr %j1
  %26 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %26, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) null), !dbg !12
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %27, ptr %j2
  %28 = load ptr addrspace(1), ptr %j1
  %29 = load ptr addrspace(1), ptr %j2
  %30 = call i1 @_bal_eq(ptr addrspace(1) %28, ptr addrspace(1) %29), !dbg !13
  store i1 %30, ptr %3
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load i1, ptr %3
  %36 = zext i1 %35 to i64
  %37 = or i64 %36, 72057594037927936
  %38 = getelementptr i8, ptr addrspace(1) null, i64 %37
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %4
  %43 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !15
  store ptr addrspace(1) null, ptr %5
  %44 = load ptr addrspace(1), ptr %j1
  %45 = load ptr addrspace(1), ptr %j1
  %46 = call i64 @_bal_mapping_set(ptr addrspace(1) %44, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) %45), !dbg !16
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %73
48:
  %49 = load ptr addrspace(1), ptr %19
  call void @_bal_panic(ptr addrspace(1) %49), !dbg !37
  unreachable
50:
  %51 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %51), !dbg !8
  unreachable
52:
  %53 = load ptr addrspace(1), ptr %j1
  %54 = load ptr addrspace(1), ptr %j2
  %55 = call i1 @_bal_eq(ptr addrspace(1) %53, ptr addrspace(1) %54), !dbg !17
  store i1 %55, ptr %6
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load i1, ptr %6
  %61 = zext i1 %60 to i64
  %62 = or i64 %61, 72057594037927936
  %63 = getelementptr i8, ptr addrspace(1) null, i64 %62
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %63, ptr addrspace(1) %64
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %65
  %66 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 864691128455135236
  store ptr addrspace(1) %67, ptr %7
  %68 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %68), !dbg !19
  store ptr addrspace(1) null, ptr %8
  %69 = load ptr addrspace(1), ptr %j2
  %70 = load ptr addrspace(1), ptr %j2
  %71 = call i64 @_bal_mapping_set(ptr addrspace(1) %69, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) %70), !dbg !20
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %76, label %97
73:
  %74 = or i64 %46, 2304
  %75 = call ptr addrspace(1) @_bal_panic_construct(i64 %74), !dbg !7
  store ptr addrspace(1) %75, ptr %19
  br label %48
76:
  %77 = load ptr addrspace(1), ptr %j1
  %78 = load ptr addrspace(1), ptr %j2
  %79 = call i1 @_bal_eq(ptr addrspace(1) %77, ptr addrspace(1) %78), !dbg !21
  store i1 %79, ptr %9
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i1, ptr %9
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, ptr addrspace(1) null, i64 %86
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %10
  %92 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !23
  store ptr addrspace(1) null, ptr %11
  %93 = load ptr addrspace(1), ptr %j2
  %94 = load ptr addrspace(1), ptr %j1
  %95 = call i64 @_bal_mapping_set(ptr addrspace(1) %93, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) %94), !dbg !24
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %100, label %113
97:
  %98 = or i64 %71, 2816
  %99 = call ptr addrspace(1) @_bal_panic_construct(i64 %98), !dbg !7
  store ptr addrspace(1) %99, ptr %19
  br label %48
100:
  %101 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !25
  call void @_bal_mapping_init_member(ptr addrspace(1) %101, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) null), !dbg !26
  store ptr addrspace(1) %101, ptr %12
  %102 = load ptr addrspace(1), ptr %12
  store ptr addrspace(1) %102, ptr %j3
  %103 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 1), !dbg !27
  %104 = load ptr addrspace(1), ptr %j3
  call void @_bal_mapping_init_member(ptr addrspace(1) %103, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) %104), !dbg !28
  store ptr addrspace(1) %103, ptr %13
  %105 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 1), !dbg !29
  %106 = load ptr addrspace(1), ptr %13
  call void @_bal_mapping_init_member(ptr addrspace(1) %105, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) %106), !dbg !30
  store ptr addrspace(1) %105, ptr %14
  %107 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 1), !dbg !31
  %108 = load ptr addrspace(1), ptr %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %107, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) %108), !dbg !32
  store ptr addrspace(1) %107, ptr %15
  %109 = load ptr addrspace(1), ptr %j3
  %110 = load ptr addrspace(1), ptr %15
  %111 = call i64 @_bal_mapping_set(ptr addrspace(1) %109, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571032645484), ptr addrspace(1) %110), !dbg !33
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %116, label %133
113:
  %114 = or i64 %95, 3328
  %115 = call ptr addrspace(1) @_bal_panic_construct(i64 %114), !dbg !7
  store ptr addrspace(1) %115, ptr %19
  br label %48
116:
  %117 = load ptr addrspace(1), ptr %j1
  %118 = load ptr addrspace(1), ptr %j3
  %119 = call i1 @_bal_eq(ptr addrspace(1) %117, ptr addrspace(1) %118), !dbg !34
  store i1 %119, ptr %16
  %120 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !35
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %122 = load ptr addrspace(1), ptr addrspace(1) %121, align 8
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = load i1, ptr %16
  %125 = zext i1 %124 to i64
  %126 = or i64 %125, 72057594037927936
  %127 = getelementptr i8, ptr addrspace(1) null, i64 %126
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %17
  %132 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !36
  store ptr addrspace(1) null, ptr %18
  ret void
133:
  %134 = or i64 %111, 3840
  %135 = call ptr addrspace(1) @_bal_panic_construct(i64 %134), !dbg !7
  store ptr addrspace(1) %135, ptr %19
  br label %48
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/eqcycle1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 16, scope: !5)
!10 = !DILocation(line: 6, column: 16, scope: !5)
!11 = !DILocation(line: 7, column: 16, scope: !5)
!12 = !DILocation(line: 7, column: 16, scope: !5)
!13 = !DILocation(line: 8, column: 18, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 6, scope: !5)
!17 = !DILocation(line: 10, column: 18, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 6, scope: !5)
!21 = !DILocation(line: 12, column: 18, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 13, column: 6, scope: !5)
!25 = !DILocation(line: 14, column: 16, scope: !5)
!26 = !DILocation(line: 14, column: 16, scope: !5)
!27 = !DILocation(line: 15, column: 33, scope: !5)
!28 = !DILocation(line: 15, column: 33, scope: !5)
!29 = !DILocation(line: 15, column: 25, scope: !5)
!30 = !DILocation(line: 15, column: 25, scope: !5)
!31 = !DILocation(line: 15, column: 17, scope: !5)
!32 = !DILocation(line: 15, column: 17, scope: !5)
!33 = !DILocation(line: 15, column: 6, scope: !5)
!34 = !DILocation(line: 16, column: 18, scope: !5)
!35 = !DILocation(line: 16, column: 15, scope: !5)
!36 = !DILocation(line: 16, column: 4, scope: !5)
!37 = !DILocation(line: 17, column: 0, scope: !5)
