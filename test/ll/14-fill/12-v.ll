@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i8
  %22 = load ptr, ptr @_bal_stack_guard
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %45, label %24
24:
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %1
  %28 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %28, ptr %a
  %29 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !10
  %30 = and i64 72057594037927935, 1
  %31 = or i64 2449958197289549824, %30
  %32 = getelementptr i8, ptr addrspace(1) null, i64 %31
  call void @_bal_mapping_init_member(ptr addrspace(1) %29, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %32), !dbg !11
  store ptr addrspace(1) %29, ptr %2
  %33 = load ptr addrspace(1), ptr %a
  %34 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %33, i64 72057594037927928), !dbg !12
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load ptr addrspace(1), ptr %2
  %37 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 0
  %38 = load ptr, ptr addrspace(1) %37, align 8
  %39 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = call i64 %40(ptr addrspace(1) %33, i64 1, ptr addrspace(1) %36)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %98
43:
  %44 = load ptr addrspace(1), ptr %20
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !41
  unreachable
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !8
  unreachable
47:
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load ptr addrspace(1), ptr %a
  %53 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %52), !dbg !14
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %3
  %58 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !15
  store ptr addrspace(1) null, ptr %4
  %59 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !16
  %60 = and i64 72057594037927935, 0
  %61 = or i64 2449958197289549824, %60
  %62 = getelementptr i8, ptr addrspace(1) null, i64 %61
  call void @_bal_mapping_init_member(ptr addrspace(1) %59, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %62), !dbg !17
  store ptr addrspace(1) %59, ptr %5
  %63 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 0), !dbg !18
  store ptr addrspace(1) %63, ptr %6
  %64 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 0), !dbg !19
  store ptr addrspace(1) %64, ptr %7
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 3), !dbg !20
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = load ptr addrspace(1), ptr %5
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = load ptr addrspace(1), ptr %6
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 1
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = load ptr addrspace(1), ptr %7
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 2
  store ptr addrspace(1) %73, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 3, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %8
  %78 = load ptr addrspace(1), ptr %8
  store ptr addrspace(1) %78, ptr %b
  %79 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !21
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = load ptr addrspace(1), ptr %b
  %84 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %83), !dbg !22
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %9
  %89 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !23
  store ptr addrspace(1) null, ptr %10
  %90 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 0), !dbg !24
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %11
  %93 = load ptr addrspace(1), ptr %11
  store ptr addrspace(1) %93, ptr %c
  %94 = load ptr addrspace(1), ptr %c
  %95 = call {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1) %94, i64 1), !dbg !25
  %96 = extractvalue {ptr addrspace(1), i64} %95, 1
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %118, label %101
98:
  %99 = or i64 %41, 1536
  %100 = call ptr addrspace(1) @_bal_panic_construct(i64 %99), !dbg !7
  store ptr addrspace(1) %100, ptr %20
  br label %43
101:
  %102 = extractvalue {ptr addrspace(1), i64} %95, 0
  %103 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %94, ptr addrspace(1) %102), !dbg !26
  store ptr addrspace(1) %103, ptr %12
  %104 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !27
  %105 = and i64 72057594037927935, 10
  %106 = or i64 2449958197289549824, %105
  %107 = getelementptr i8, ptr addrspace(1) null, i64 %106
  call void @_bal_mapping_init_member(ptr addrspace(1) %104, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411), ptr addrspace(1) %107), !dbg !28
  store ptr addrspace(1) %104, ptr %13
  %108 = load ptr addrspace(1), ptr %12
  %109 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %108, i64 72057594037927928), !dbg !29
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = load ptr addrspace(1), ptr %13
  %112 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 0
  %113 = load ptr, ptr addrspace(1) %112, align 8
  %114 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %113, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8
  %116 = call i64 %115(ptr addrspace(1) %108, i64 1, ptr addrspace(1) %111)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %121, label %137
118:
  %119 = or i64 %96, 3328
  %120 = call ptr addrspace(1) @_bal_panic_construct(i64 %119), !dbg !7
  store ptr addrspace(1) %120, ptr %20
  br label %43
121:
  %122 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !30
  %123 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 3
  %124 = load ptr addrspace(1), ptr addrspace(1) %123, align 8
  %125 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %126 = load ptr addrspace(1), ptr %c
  %127 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %126), !dbg !31
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %125, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %14
  %132 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !32
  store ptr addrspace(1) null, ptr %15
  %133 = load ptr addrspace(1), ptr %c
  %134 = call {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1) %133, i64 1), !dbg !33
  %135 = extractvalue {ptr addrspace(1), i64} %134, 1
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %147, label %140
137:
  %138 = or i64 %116, 3328
  %139 = call ptr addrspace(1) @_bal_panic_construct(i64 %138), !dbg !7
  store ptr addrspace(1) %139, ptr %20
  br label %43
140:
  %141 = extractvalue {ptr addrspace(1), i64} %134, 0
  %142 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %133, ptr addrspace(1) %141), !dbg !34
  store ptr addrspace(1) %142, ptr %16
  %143 = load ptr addrspace(1), ptr %16
  %144 = call {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1) %143, i64 0), !dbg !35
  %145 = extractvalue {ptr addrspace(1), i64} %144, 1
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %159, label %150
147:
  %148 = or i64 %135, 4096
  %149 = call ptr addrspace(1) @_bal_panic_construct(i64 %148), !dbg !7
  store ptr addrspace(1) %149, ptr %20
  br label %43
150:
  %151 = extractvalue {ptr addrspace(1), i64} %144, 0
  %152 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %143, ptr addrspace(1) %151), !dbg !36
  store ptr addrspace(1) %152, ptr %17
  %153 = load ptr addrspace(1), ptr %17
  %154 = and i64 72057594037927935, 1
  %155 = or i64 2449958197289549824, %154
  %156 = getelementptr i8, ptr addrspace(1) null, i64 %155
  %157 = call i64 @_bal_mapping_set(ptr addrspace(1) %153, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431852404), ptr addrspace(1) %156), !dbg !37
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %162, label %174
159:
  %160 = or i64 %145, 4096
  %161 = call ptr addrspace(1) @_bal_panic_construct(i64 %160), !dbg !7
  store ptr addrspace(1) %161, ptr %20
  br label %43
162:
  %163 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !38
  %164 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 3
  %165 = load ptr addrspace(1), ptr addrspace(1) %164, align 8
  %166 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %167 = load ptr addrspace(1), ptr %c
  %168 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %167), !dbg !39
  %169 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %166, i64 0, i64 0
  store ptr addrspace(1) %168, ptr addrspace(1) %169
  %170 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 1
  store i64 1, ptr addrspace(1) %170
  %171 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %172 = getelementptr i8, ptr addrspace(1) %171, i64 864691128455135236
  store ptr addrspace(1) %172, ptr %18
  %173 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %173), !dbg !40
  store ptr addrspace(1) null, ptr %19
  ret void
174:
  %175 = or i64 %157, 4096
  %176 = call ptr addrspace(1) @_bal_panic_construct(i64 %175), !dbg !7
  store ptr addrspace(1) %176, ptr %20
  br label %43
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 12, scope: !5)
!10 = !DILocation(line: 6, column: 11, scope: !5)
!11 = !DILocation(line: 6, column: 11, scope: !5)
!12 = !DILocation(line: 6, column: 5, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 14, scope: !5)
!17 = !DILocation(line: 9, column: 14, scope: !5)
!18 = !DILocation(line: 9, column: 23, scope: !5)
!19 = !DILocation(line: 9, column: 23, scope: !5)
!20 = !DILocation(line: 9, column: 13, scope: !5)
!21 = !DILocation(line: 10, column: 15, scope: !5)
!22 = !DILocation(line: 10, column: 15, scope: !5)
!23 = !DILocation(line: 10, column: 4, scope: !5)
!24 = !DILocation(line: 12, column: 14, scope: !5)
!25 = !DILocation(line: 13, column: 5, scope: !5)
!26 = !DILocation(line: 13, column: 5, scope: !5)
!27 = !DILocation(line: 13, column: 14, scope: !5)
!28 = !DILocation(line: 13, column: 14, scope: !5)
!29 = !DILocation(line: 13, column: 8, scope: !5)
!30 = !DILocation(line: 14, column: 15, scope: !5)
!31 = !DILocation(line: 14, column: 15, scope: !5)
!32 = !DILocation(line: 14, column: 4, scope: !5)
!33 = !DILocation(line: 16, column: 5, scope: !5)
!34 = !DILocation(line: 16, column: 5, scope: !5)
!35 = !DILocation(line: 16, column: 8, scope: !5)
!36 = !DILocation(line: 16, column: 8, scope: !5)
!37 = !DILocation(line: 16, column: 11, scope: !5)
!38 = !DILocation(line: 17, column: 15, scope: !5)
!39 = !DILocation(line: 17, column: 15, scope: !5)
!40 = !DILocation(line: 17, column: 4, scope: !5)
!41 = !DILocation(line: 18, column: 0, scope: !5)
