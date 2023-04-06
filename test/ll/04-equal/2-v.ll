@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i8
  %23 = load ptr, ptr @_bal_stack_guard
  %24 = icmp ult ptr %22, %23
  br i1 %24, label %146, label %25
25:
  %26 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %27 = zext i1 1 to i64
  %28 = or i64 %27, 72057594037927936
  %29 = getelementptr i8, ptr addrspace(1) null, i64 %28
  call void @_bal_mapping_init_member(ptr addrspace(1) %26, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261430), ptr addrspace(1) %29), !dbg !10
  store ptr addrspace(1) %26, ptr %1
  %30 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %30, ptr %x
  %31 = load ptr addrspace(1), ptr %x
  %32 = and i64 72057594037927935, 1
  %33 = or i64 2449958197289549824, %32
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  %35 = icmp eq ptr addrspace(1) %31, %34
  store i1 %35, ptr %2
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i1, ptr %2
  %41 = zext i1 %40 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %3
  %48 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %49 = load ptr addrspace(1), ptr %x
  %50 = zext i1 1 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  %53 = icmp eq ptr addrspace(1) %49, %52
  store i1 %53, ptr %5
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = load i1, ptr %5
  %59 = zext i1 %58 to i64
  %60 = or i64 %59, 72057594037927936
  %61 = getelementptr i8, ptr addrspace(1) null, i64 %60
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %6
  %66 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %66), !dbg !14
  store ptr addrspace(1) null, ptr %7
  %67 = load ptr addrspace(1), ptr %x
  %68 = icmp eq ptr addrspace(1) %67, null
  store i1 %68, ptr %8
  %69 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 3
  %71 = load ptr addrspace(1), ptr addrspace(1) %70, align 8
  %72 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %73 = load i1, ptr %8
  %74 = zext i1 %73 to i64
  %75 = or i64 %74, 72057594037927936
  %76 = getelementptr i8, ptr addrspace(1) null, i64 %75
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %72, i64 0, i64 0
  store ptr addrspace(1) %76, ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 1
  store i64 1, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %9
  %81 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %81), !dbg !16
  store ptr addrspace(1) null, ptr %10
  %82 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !17
  store ptr addrspace(1) %82, ptr %11
  %83 = load ptr addrspace(1), ptr %11
  store ptr addrspace(1) %83, ptr %x
  %84 = load ptr addrspace(1), ptr %x
  %85 = and i64 72057594037927935, 1
  %86 = or i64 2449958197289549824, %85
  %87 = getelementptr i8, ptr addrspace(1) null, i64 %86
  %88 = icmp ne ptr addrspace(1) %84, %87
  store i1 %88, ptr %12
  %89 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 3
  %91 = load ptr addrspace(1), ptr addrspace(1) %90, align 8
  %92 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %93 = load i1, ptr %12
  %94 = zext i1 %93 to i64
  %95 = or i64 %94, 72057594037927936
  %96 = getelementptr i8, ptr addrspace(1) null, i64 %95
  %97 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %92, i64 0, i64 0
  store ptr addrspace(1) %96, ptr addrspace(1) %97
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 1
  store i64 1, ptr addrspace(1) %98
  %99 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %100 = getelementptr i8, ptr addrspace(1) %99, i64 864691128455135236
  store ptr addrspace(1) %100, ptr %13
  %101 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %101), !dbg !19
  store ptr addrspace(1) null, ptr %14
  %102 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !20
  %103 = and i64 72057594037927935, 1
  %104 = or i64 2449958197289549824, %103
  %105 = getelementptr i8, ptr addrspace(1) null, i64 %104
  call void @_bal_mapping_init_member(ptr addrspace(1) %102, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %105), !dbg !21
  %106 = and i64 72057594037927935, 2
  %107 = or i64 2449958197289549824, %106
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  call void @_bal_mapping_init_member(ptr addrspace(1) %102, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %108), !dbg !22
  %109 = and i64 72057594037927935, 3
  %110 = or i64 2449958197289549824, %109
  %111 = getelementptr i8, ptr addrspace(1) null, i64 %110
  call void @_bal_mapping_init_member(ptr addrspace(1) %102, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %111), !dbg !23
  store ptr addrspace(1) %102, ptr %15
  %112 = load ptr addrspace(1), ptr %15
  store ptr addrspace(1) %112, ptr %x
  %113 = load ptr addrspace(1), ptr %x
  %114 = zext i1 1 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, ptr addrspace(1) null, i64 %115
  %117 = icmp ne ptr addrspace(1) %113, %116
  store i1 %117, ptr %16
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !24
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = load i1, ptr %16
  %123 = zext i1 %122 to i64
  %124 = or i64 %123, 72057594037927936
  %125 = getelementptr i8, ptr addrspace(1) null, i64 %124
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %17
  %130 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !25
  store ptr addrspace(1) null, ptr %18
  %131 = load ptr addrspace(1), ptr %x
  %132 = icmp ne ptr addrspace(1) %131, null
  store i1 %132, ptr %19
  %133 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 3
  %135 = load ptr addrspace(1), ptr addrspace(1) %134, align 8
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = load i1, ptr %19
  %138 = zext i1 %137 to i64
  %139 = or i64 %138, 72057594037927936
  %140 = getelementptr i8, ptr addrspace(1) null, i64 %139
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  store i64 1, ptr addrspace(1) %142
  %143 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %144 = getelementptr i8, ptr addrspace(1) %143, i64 864691128455135236
  store ptr addrspace(1) %144, ptr %20
  %145 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %145), !dbg !27
  store ptr addrspace(1) null, ptr %21
  ret void
146:
  %147 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %147), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-equal/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 12, scope: !5)
!10 = !DILocation(line: 5, column: 12, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 8, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 8, scope: !5)
!21 = !DILocation(line: 11, column: 8, scope: !5)
!22 = !DILocation(line: 11, column: 8, scope: !5)
!23 = !DILocation(line: 11, column: 8, scope: !5)
!24 = !DILocation(line: 12, column: 15, scope: !5)
!25 = !DILocation(line: 12, column: 4, scope: !5)
!26 = !DILocation(line: 13, column: 15, scope: !5)
!27 = !DILocation(line: 13, column: 4, scope: !5)
