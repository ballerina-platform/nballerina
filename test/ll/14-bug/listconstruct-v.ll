@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Bi04root3 = external constant {i32}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Bt04root4 = external constant {i32, i32, [0 x ptr]}
@_Bi04root5 = external constant {i32}
@_Bt04root6 = external constant {i32, i32, [0 x ptr]}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %t1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %t2 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %t3 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i1
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i8
  %26 = load ptr, ptr @_bal_stack_guard
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %185, label %28
28:
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = and i64 72057594037927935, 1
  %34 = or i64 2449958197289549824, %33
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = and i64 72057594037927935, 2
  %38 = or i64 2449958197289549824, %37
  %39 = getelementptr i8, ptr addrspace(1) null, i64 %38
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 1
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = and i64 72057594037927935, 3
  %42 = or i64 2449958197289549824, %41
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 2
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 3, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %1
  %48 = load ptr addrspace(1), ptr %1
  %49 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %48), !dbg !10
  store ptr addrspace(1) %49, ptr %t1
  %50 = load ptr addrspace(1), ptr %t1
  %51 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %50), !dbg !11
  store i1 %51, ptr %2
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = load i1, ptr %2
  %57 = zext i1 %56 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, ptr addrspace(1) null, i64 %58
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %3
  %64 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %64), !dbg !13
  store ptr addrspace(1) null, ptr %4
  %65 = load ptr addrspace(1), ptr %t1
  %66 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %65), !dbg !14
  store i1 %66, ptr %5
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = load i1, ptr %5
  %72 = zext i1 %71 to i64
  %73 = or i64 %72, 72057594037927936
  %74 = getelementptr i8, ptr addrspace(1) null, i64 %73
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %6
  %79 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %79), !dbg !16
  store ptr addrspace(1) null, ptr %7
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 2), !dbg !17
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = and i64 72057594037927935, 1
  %85 = or i64 2449958197289549824, %84
  %86 = getelementptr i8, ptr addrspace(1) null, i64 %85
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %86, ptr addrspace(1) %87
  %88 = and i64 72057594037927935, 2
  %89 = or i64 2449958197289549824, %88
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 1
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 2, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %8
  %95 = load ptr addrspace(1), ptr %8
  %96 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %95), !dbg !18
  store ptr addrspace(1) %96, ptr %t2
  %97 = load ptr addrspace(1), ptr %t2
  %98 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %97), !dbg !19
  store i1 %98, ptr %9
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load i1, ptr %9
  %104 = zext i1 %103 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, ptr addrspace(1) null, i64 %105
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %10
  %111 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !21
  store ptr addrspace(1) null, ptr %11
  %112 = load ptr addrspace(1), ptr %t2
  %113 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %112), !dbg !22
  store i1 %113, ptr %12
  %114 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 3
  %116 = load ptr addrspace(1), ptr addrspace(1) %115, align 8
  %117 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %118 = load i1, ptr %12
  %119 = zext i1 %118 to i64
  %120 = or i64 %119, 72057594037927936
  %121 = getelementptr i8, ptr addrspace(1) null, i64 %120
  %122 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %117, i64 0, i64 0
  store ptr addrspace(1) %121, ptr addrspace(1) %122
  %123 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 1
  store i64 1, ptr addrspace(1) %123
  %124 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %125 = getelementptr i8, ptr addrspace(1) %124, i64 864691128455135236
  store ptr addrspace(1) %125, ptr %13
  %126 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %126), !dbg !24
  store ptr addrspace(1) null, ptr %14
  %127 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 2), !dbg !25
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 3
  %129 = load ptr addrspace(1), ptr addrspace(1) %128, align 8
  %130 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %131 = getelementptr inbounds [0 x i64], ptr addrspace(1) %130, i64 0, i64 0
  store i64 1, ptr addrspace(1) %131
  %132 = getelementptr inbounds [0 x i64], ptr addrspace(1) %130, i64 0, i64 1
  store i64 2, ptr addrspace(1) %132
  %133 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 1
  store i64 2, ptr addrspace(1) %133
  %134 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %135 = getelementptr i8, ptr addrspace(1) %134, i64 864691128455135236
  store ptr addrspace(1) %135, ptr %15
  %136 = load ptr addrspace(1), ptr %15
  store ptr addrspace(1) %136, ptr %t3
  %137 = load ptr addrspace(1), ptr %t3
  %138 = addrspacecast ptr addrspace(1) %137 to ptr
  %139 = ptrtoint ptr %138 to i64
  %140 = and i64 %139, 2233785415175766016
  %141 = icmp eq i64 %140, 864691128455135232
  store i1 %141, ptr %16
  %142 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 3
  %144 = load ptr addrspace(1), ptr addrspace(1) %143, align 8
  %145 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %146 = load i1, ptr %16
  %147 = zext i1 %146 to i64
  %148 = or i64 %147, 72057594037927936
  %149 = getelementptr i8, ptr addrspace(1) null, i64 %148
  %150 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %145, i64 0, i64 0
  store ptr addrspace(1) %149, ptr addrspace(1) %150
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 1
  store i64 1, ptr addrspace(1) %151
  %152 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %153 = getelementptr i8, ptr addrspace(1) %152, i64 864691128455135236
  store ptr addrspace(1) %153, ptr %17
  %154 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %154), !dbg !27
  store ptr addrspace(1) null, ptr %18
  %155 = load ptr addrspace(1), ptr %t3
  %156 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %155), !dbg !28
  store i1 %156, ptr %19
  %157 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !29
  %158 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %157, i64 0, i32 3
  %159 = load ptr addrspace(1), ptr addrspace(1) %158, align 8
  %160 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %161 = load i1, ptr %19
  %162 = zext i1 %161 to i64
  %163 = or i64 %162, 72057594037927936
  %164 = getelementptr i8, ptr addrspace(1) null, i64 %163
  %165 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %160, i64 0, i64 0
  store ptr addrspace(1) %164, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %157, i64 0, i32 1
  store i64 1, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %157 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %20
  %169 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %169), !dbg !30
  store ptr addrspace(1) null, ptr %21
  %170 = load ptr addrspace(1), ptr %t3
  %171 = call i1 @_bal_type_contains(ptr @_Bt04root6, ptr addrspace(1) %170), !dbg !31
  store i1 %171, ptr %22
  %172 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !32
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 3
  %174 = load ptr addrspace(1), ptr addrspace(1) %173, align 8
  %175 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %176 = load i1, ptr %22
  %177 = zext i1 %176 to i64
  %178 = or i64 %177, 72057594037927936
  %179 = getelementptr i8, ptr addrspace(1) null, i64 %178
  %180 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %175, i64 0, i64 0
  store ptr addrspace(1) %179, ptr addrspace(1) %180
  %181 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 1
  store i64 1, ptr addrspace(1) %181
  %182 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %183 = getelementptr i8, ptr addrspace(1) %182, i64 864691128455135236
  store ptr addrspace(1) %183, ptr %23
  %184 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %184), !dbg !33
  store ptr addrspace(1) null, ptr %24
  ret void
185:
  %186 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %186), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/listconstruct-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 42, scope: !5)
!10 = !DILocation(line: 4, column: 40, scope: !5)
!11 = !DILocation(line: 5, column: 18, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 18, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 35, scope: !5)
!18 = !DILocation(line: 8, column: 33, scope: !5)
!19 = !DILocation(line: 9, column: 18, scope: !5)
!20 = !DILocation(line: 9, column: 15, scope: !5)
!21 = !DILocation(line: 9, column: 4, scope: !5)
!22 = !DILocation(line: 10, column: 18, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 12, column: 27, scope: !5)
!26 = !DILocation(line: 13, column: 15, scope: !5)
!27 = !DILocation(line: 13, column: 4, scope: !5)
!28 = !DILocation(line: 14, column: 18, scope: !5)
!29 = !DILocation(line: 14, column: 15, scope: !5)
!30 = !DILocation(line: 14, column: 4, scope: !5)
!31 = !DILocation(line: 15, column: 18, scope: !5)
!32 = !DILocation(line: 15, column: 15, scope: !5)
!33 = !DILocation(line: 15, column: 4, scope: !5)
