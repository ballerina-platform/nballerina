@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
@_Bi04root5 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %t1 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %t2 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %t3 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %t4 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %149, label %19
19:
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = and i64 72057594037927935, 17
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = and i64 72057594037927935, 42
  %29 = or i64 2449958197289549824, %28
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 1
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 2, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %35, ptr %p
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load ptr addrspace(1), ptr %p
  %41 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %40), !dbg !11
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %2
  %46 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !12
  store ptr addrspace(1) null, ptr %3
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 3), !dbg !13
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = and i64 72057594037927935, 2
  %52 = or i64 2449958197289549824, %51
  %53 = getelementptr i8, ptr addrspace(1) null, i64 %52
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %55
  %56 = zext i1 1 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, ptr addrspace(1) null, i64 %57
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 2
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 3, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %4
  %63 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %63, ptr %t1
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load ptr addrspace(1), ptr %t1
  %69 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %68), !dbg !15
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %5
  %74 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 2), !dbg !17
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = and i64 72057594037927935, 2
  %80 = or i64 2449958197289549824, %79
  %81 = getelementptr i8, ptr addrspace(1) null, i64 %80
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013940), ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 2, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %7
  %87 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %87, ptr %t2
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %90 = load ptr addrspace(1), ptr addrspace(1) %89, align 8
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = load ptr addrspace(1), ptr %t2
  %93 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %92), !dbg !19
  %94 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 0
  store ptr addrspace(1) %93, ptr addrspace(1) %94
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  store i64 1, ptr addrspace(1) %95
  %96 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %97 = getelementptr i8, ptr addrspace(1) %96, i64 864691128455135236
  store ptr addrspace(1) %97, ptr %8
  %98 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %98), !dbg !20
  store ptr addrspace(1) null, ptr %9
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 3), !dbg !21
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = getelementptr inbounds [0 x i64], ptr addrspace(1) %102, i64 0, i64 0
  store i64 2, ptr addrspace(1) %103
  %104 = getelementptr inbounds [0 x i64], ptr addrspace(1) %102, i64 0, i64 1
  store i64 4, ptr addrspace(1) %104
  %105 = getelementptr inbounds [0 x i64], ptr addrspace(1) %102, i64 0, i64 2
  store i64 6, ptr addrspace(1) %105
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 3, ptr addrspace(1) %106
  %107 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %108 = getelementptr i8, ptr addrspace(1) %107, i64 864691128455135236
  store ptr addrspace(1) %108, ptr %10
  %109 = load ptr addrspace(1), ptr %10
  store ptr addrspace(1) %109, ptr %t3
  %110 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 3
  %112 = load ptr addrspace(1), ptr addrspace(1) %111, align 8
  %113 = bitcast ptr addrspace(1) %112 to ptr addrspace(1)
  %114 = load ptr addrspace(1), ptr %t3
  %115 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %114), !dbg !23
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %113, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 1
  store i64 1, ptr addrspace(1) %117
  %118 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 864691128455135236
  store ptr addrspace(1) %119, ptr %11
  %120 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %120), !dbg !24
  store ptr addrspace(1) null, ptr %12
  %121 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 3), !dbg !25
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 3
  %123 = load ptr addrspace(1), ptr addrspace(1) %122, align 8
  %124 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %125 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %124, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013940), ptr addrspace(1) %125
  %126 = and i64 72057594037927935, 2
  %127 = or i64 2449958197289549824, %126
  %128 = getelementptr i8, ptr addrspace(1) null, i64 %127
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %124, i64 0, i64 1
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = and i64 72057594037927935, 4
  %131 = or i64 2449958197289549824, %130
  %132 = getelementptr i8, ptr addrspace(1) null, i64 %131
  %133 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %124, i64 0, i64 2
  store ptr addrspace(1) %132, ptr addrspace(1) %133
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  store i64 3, ptr addrspace(1) %134
  %135 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %136 = getelementptr i8, ptr addrspace(1) %135, i64 864691128455135236
  store ptr addrspace(1) %136, ptr %13
  %137 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %137, ptr %t4
  %138 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 3
  %140 = load ptr addrspace(1), ptr addrspace(1) %139, align 8
  %141 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %142 = load ptr addrspace(1), ptr %t4
  %143 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %142), !dbg !27
  %144 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %141, i64 0, i64 0
  store ptr addrspace(1) %143, ptr addrspace(1) %144
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 1
  store i64 1, ptr addrspace(1) %145
  %146 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %147 = getelementptr i8, ptr addrspace(1) %146, i64 864691128455135236
  store ptr addrspace(1) %147, ptr %14
  %148 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %148), !dbg !28
  store ptr addrspace(1) null, ptr %15
  ret void
149:
  %150 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %150), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/inline1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 19, scope: !5)
!10 = !DILocation(line: 7, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 15, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 32, scope: !5)
!14 = !DILocation(line: 9, column: 15, scope: !5)
!15 = !DILocation(line: 9, column: 15, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 21, scope: !5)
!18 = !DILocation(line: 11, column: 15, scope: !5)
!19 = !DILocation(line: 11, column: 15, scope: !5)
!20 = !DILocation(line: 11, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 18, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 15, scope: !5)
!24 = !DILocation(line: 13, column: 4, scope: !5)
!25 = !DILocation(line: 14, column: 26, scope: !5)
!26 = !DILocation(line: 15, column: 15, scope: !5)
!27 = !DILocation(line: 15, column: 15, scope: !5)
!28 = !DILocation(line: 15, column: 4, scope: !5)
