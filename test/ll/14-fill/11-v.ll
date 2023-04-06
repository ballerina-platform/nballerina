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
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i8
  %19 = load ptr, ptr @_bal_stack_guard
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %62, label %21
21:
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %1
  %25 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %25, ptr %a
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !10
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = and i64 72057594037927935, 5
  %31 = or i64 2449958197289549824, %30
  %32 = getelementptr i8, ptr addrspace(1) null, i64 %31
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = zext i1 1 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, ptr addrspace(1) null, i64 %35
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 1
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 2, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %2
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !11
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load ptr addrspace(1), ptr %2
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %3
  %50 = load ptr addrspace(1), ptr %a
  %51 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %50, i64 72057594037927928), !dbg !12
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = load ptr addrspace(1), ptr %3
  %54 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 0
  %55 = load ptr, ptr addrspace(1) %54, align 8
  %56 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8
  %58 = call i64 %57(ptr addrspace(1) %50, i64 1, ptr addrspace(1) %53)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %131
60:
  %61 = load ptr addrspace(1), ptr %17
  call void @_bal_panic(ptr addrspace(1) %61), !dbg !32
  unreachable
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %63), !dbg !8
  unreachable
64:
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !13
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = load ptr addrspace(1), ptr %a
  %70 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %69), !dbg !14
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %4
  %75 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %75), !dbg !15
  store ptr addrspace(1) null, ptr %5
  %76 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 0), !dbg !16
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %6
  %79 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %79, ptr %b
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !17
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = and i64 72057594037927935, 5
  %85 = or i64 2449958197289549824, %84
  %86 = getelementptr i8, ptr addrspace(1) null, i64 %85
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %86, ptr addrspace(1) %87
  %88 = zext i1 1 to i64
  %89 = or i64 %88, 72057594037927936
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 1
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 2, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %7
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !18
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = and i64 72057594037927935, 0
  %100 = or i64 2449958197289549824, %99
  %101 = getelementptr i8, ptr addrspace(1) null, i64 %100
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = zext i1 0 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, ptr addrspace(1) null, i64 %104
  %106 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 1
  store ptr addrspace(1) %105, ptr addrspace(1) %106
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 2, ptr addrspace(1) %107
  %108 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %109 = getelementptr i8, ptr addrspace(1) %108, i64 864691128455135236
  store ptr addrspace(1) %109, ptr %8
  %110 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 2), !dbg !19
  %111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 3
  %112 = load ptr addrspace(1), ptr addrspace(1) %111, align 8
  %113 = bitcast ptr addrspace(1) %112 to ptr addrspace(1)
  %114 = load ptr addrspace(1), ptr %7
  %115 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %113, i64 0, i64 0
  store ptr addrspace(1) %114, ptr addrspace(1) %115
  %116 = load ptr addrspace(1), ptr %8
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %113, i64 0, i64 1
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 1
  store i64 2, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %9
  %121 = load ptr addrspace(1), ptr %b
  %122 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %121, i64 72057594037927928), !dbg !20
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = load ptr addrspace(1), ptr %9
  %125 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 0
  %126 = load ptr, ptr addrspace(1) %125, align 8
  %127 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %126, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8
  %129 = call i64 %128(ptr addrspace(1) %121, i64 1, ptr addrspace(1) %124)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %134, label %154
131:
  %132 = or i64 %58, 1536
  %133 = call ptr addrspace(1) @_bal_panic_construct(i64 %132), !dbg !7
  store ptr addrspace(1) %133, ptr %17
  br label %60
134:
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !21
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load ptr addrspace(1), ptr %b
  %140 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %139), !dbg !22
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %142
  %143 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %144 = getelementptr i8, ptr addrspace(1) %143, i64 864691128455135236
  store ptr addrspace(1) %144, ptr %10
  %145 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %145), !dbg !23
  store ptr addrspace(1) null, ptr %11
  %146 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !24
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %12
  %149 = load ptr addrspace(1), ptr %12
  store ptr addrspace(1) %149, ptr %c
  %150 = load ptr addrspace(1), ptr %c
  %151 = call {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1) %150, i64 1), !dbg !25
  %152 = extractvalue {ptr addrspace(1), i64} %151, 1
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %185, label %157
154:
  %155 = or i64 %129, 2560
  %156 = call ptr addrspace(1) @_bal_panic_construct(i64 %155), !dbg !7
  store ptr addrspace(1) %156, ptr %17
  br label %60
157:
  %158 = extractvalue {ptr addrspace(1), i64} %151, 0
  %159 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %150, ptr addrspace(1) %158), !dbg !26
  store ptr addrspace(1) %159, ptr %13
  %160 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !27
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = and i64 72057594037927935, 5
  %165 = or i64 2449958197289549824, %164
  %166 = getelementptr i8, ptr addrspace(1) null, i64 %165
  %167 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 0
  store ptr addrspace(1) %166, ptr addrspace(1) %167
  %168 = zext i1 1 to i64
  %169 = or i64 %168, 72057594037927936
  %170 = getelementptr i8, ptr addrspace(1) null, i64 %169
  %171 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 1
  store ptr addrspace(1) %170, ptr addrspace(1) %171
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  store i64 2, ptr addrspace(1) %172
  %173 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %174 = getelementptr i8, ptr addrspace(1) %173, i64 864691128455135236
  store ptr addrspace(1) %174, ptr %14
  %175 = load ptr addrspace(1), ptr %13
  %176 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %175, i64 72057594037927928), !dbg !28
  %177 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %178 = load ptr addrspace(1), ptr %14
  %179 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 0
  %180 = load ptr, ptr addrspace(1) %179, align 8
  %181 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %180, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8
  %183 = call i64 %182(ptr addrspace(1) %175, i64 1, ptr addrspace(1) %178)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %188, label %200
185:
  %186 = or i64 %152, 3584
  %187 = call ptr addrspace(1) @_bal_panic_construct(i64 %186), !dbg !7
  store ptr addrspace(1) %187, ptr %17
  br label %60
188:
  %189 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !29
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %189, i64 0, i32 3
  %191 = load ptr addrspace(1), ptr addrspace(1) %190, align 8
  %192 = bitcast ptr addrspace(1) %191 to ptr addrspace(1)
  %193 = load ptr addrspace(1), ptr %c
  %194 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %193), !dbg !30
  %195 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %192, i64 0, i64 0
  store ptr addrspace(1) %194, ptr addrspace(1) %195
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %189, i64 0, i32 1
  store i64 1, ptr addrspace(1) %196
  %197 = bitcast ptr addrspace(1) %189 to ptr addrspace(1)
  %198 = getelementptr i8, ptr addrspace(1) %197, i64 864691128455135236
  store ptr addrspace(1) %198, ptr %15
  %199 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %199), !dbg !31
  store ptr addrspace(1) null, ptr %16
  ret void
200:
  %201 = or i64 %183, 3584
  %202 = call ptr addrspace(1) @_bal_panic_construct(i64 %201), !dbg !7
  store ptr addrspace(1) %202, ptr %17
  br label %60
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/11-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 14, scope: !5)
!10 = !DILocation(line: 6, column: 12, scope: !5)
!11 = !DILocation(line: 6, column: 11, scope: !5)
!12 = !DILocation(line: 6, column: 5, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 10, column: 12, scope: !5)
!18 = !DILocation(line: 10, column: 22, scope: !5)
!19 = !DILocation(line: 10, column: 11, scope: !5)
!20 = !DILocation(line: 10, column: 5, scope: !5)
!21 = !DILocation(line: 11, column: 15, scope: !5)
!22 = !DILocation(line: 11, column: 15, scope: !5)
!23 = !DILocation(line: 11, column: 4, scope: !5)
!24 = !DILocation(line: 13, column: 14, scope: !5)
!25 = !DILocation(line: 14, column: 5, scope: !5)
!26 = !DILocation(line: 14, column: 5, scope: !5)
!27 = !DILocation(line: 14, column: 14, scope: !5)
!28 = !DILocation(line: 14, column: 8, scope: !5)
!29 = !DILocation(line: 15, column: 15, scope: !5)
!30 = !DILocation(line: 15, column: 15, scope: !5)
!31 = !DILocation(line: 15, column: 4, scope: !5)
!32 = !DILocation(line: 16, column: 0, scope: !5)
