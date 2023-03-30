@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
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
  %28 = alloca i64
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca i8
  %33 = load ptr, ptr @_bal_stack_guard
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %41, label %35
35:
  store i64 10, ptr %x
  %36 = load i64, ptr %x
  %37 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %36, i64 3)
  %38 = extractvalue {i64, i1} %37, 1
  br i1 %38, label %60, label %43
39:
  %40 = load ptr addrspace(1), ptr %31
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !39
  unreachable
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !8
  unreachable
43:
  %44 = extractvalue {i64, i1} %37, 0
  store i64 %44, ptr %1
  %45 = load i64, ptr %1
  store i64 %45, ptr %x
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load i64, ptr %x
  %51 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %50), !dbg !10
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %2
  %56 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %57 = load i64, ptr %x
  %58 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %57, i64 2)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %79, label %62
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !7
  store ptr addrspace(1) %61, ptr %31
  br label %39
62:
  %63 = extractvalue {i64, i1} %58, 0
  store i64 %63, ptr %4
  %64 = load i64, ptr %4
  store i64 %64, ptr %x
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = load i64, ptr %x
  %70 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %69), !dbg !13
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %5
  %75 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %75), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %76 = load i64, ptr %x
  %77 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %76, i64 4)
  %78 = extractvalue {i64, i1} %77, 1
  br i1 %78, label %97, label %81
79:
  %80 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !7
  store ptr addrspace(1) %80, ptr %31
  br label %39
81:
  %82 = extractvalue {i64, i1} %77, 0
  store i64 %82, ptr %7
  %83 = load i64, ptr %7
  store i64 %83, ptr %x
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load i64, ptr %x
  %89 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %88), !dbg !16
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %8
  %94 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %95 = load i64, ptr %x
  %96 = icmp eq i64 2, 0
  br i1 %96, label %99, label %101
97:
  %98 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !7
  store ptr addrspace(1) %98, ptr %31
  br label %39
99:
  %100 = call ptr addrspace(1) @_bal_panic_construct(i64 3074), !dbg !7
  store ptr addrspace(1) %100, ptr %31
  br label %39
101:
  %102 = icmp eq i64 %95, -9223372036854775808
  %103 = icmp eq i64 2, -1
  %104 = and i1 %102, %103
  br i1 %104, label %206, label %105
105:
  %106 = sdiv i64 %95, 2
  store i64 %106, ptr %10
  %107 = load i64, ptr %10
  store i64 %107, ptr %x
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load i64, ptr %x
  %113 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %112), !dbg !19
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %11
  %118 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %119 = load i64, ptr %x
  %120 = and i64 %119, 5
  store i64 %120, ptr %13
  %121 = load i64, ptr %13
  store i64 %121, ptr %x
  %122 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %123 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 3
  %124 = load ptr addrspace(1), ptr addrspace(1) %123, align 8
  %125 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %126 = load i64, ptr %x
  %127 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %126), !dbg !22
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %125, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %14
  %132 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %133 = load i64, ptr %x
  %134 = or i64 %133, 9
  store i64 %134, ptr %16
  %135 = load i64, ptr %16
  store i64 %135, ptr %x
  %136 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 3
  %138 = load ptr addrspace(1), ptr addrspace(1) %137, align 8
  %139 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %140 = load i64, ptr %x
  %141 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %140), !dbg !25
  %142 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %139, i64 0, i64 0
  store ptr addrspace(1) %141, ptr addrspace(1) %142
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 1
  store i64 1, ptr addrspace(1) %143
  %144 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 864691128455135236
  store ptr addrspace(1) %145, ptr %17
  %146 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %146), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %147 = load i64, ptr %x
  %148 = xor i64 %147, 2
  store i64 %148, ptr %19
  %149 = load i64, ptr %19
  store i64 %149, ptr %x
  %150 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 3
  %152 = load ptr addrspace(1), ptr addrspace(1) %151, align 8
  %153 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %154 = load i64, ptr %x
  %155 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %154), !dbg !28
  %156 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 0
  store ptr addrspace(1) %155, ptr addrspace(1) %156
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 1
  store i64 1, ptr addrspace(1) %157
  %158 = bitcast ptr addrspace(1) %150 to ptr addrspace(1)
  %159 = getelementptr i8, ptr addrspace(1) %158, i64 864691128455135236
  store ptr addrspace(1) %159, ptr %20
  %160 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %160), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %161 = load i64, ptr %x
  %162 = and i64 63, 7
  %163 = shl i64 %161, %162
  store i64 %163, ptr %22
  %164 = load i64, ptr %22
  store i64 %164, ptr %x
  %165 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 3
  %167 = load ptr addrspace(1), ptr addrspace(1) %166, align 8
  %168 = bitcast ptr addrspace(1) %167 to ptr addrspace(1)
  %169 = load i64, ptr %x
  %170 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %169), !dbg !31
  %171 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %168, i64 0, i64 0
  store ptr addrspace(1) %170, ptr addrspace(1) %171
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 1
  store i64 1, ptr addrspace(1) %172
  %173 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %174 = getelementptr i8, ptr addrspace(1) %173, i64 864691128455135236
  store ptr addrspace(1) %174, ptr %23
  %175 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %175), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %176 = load i64, ptr %x
  %177 = and i64 63, 6
  %178 = ashr i64 %176, %177
  store i64 %178, ptr %25
  %179 = load i64, ptr %25
  store i64 %179, ptr %x
  %180 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %181 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %180, i64 0, i32 3
  %182 = load ptr addrspace(1), ptr addrspace(1) %181, align 8
  %183 = bitcast ptr addrspace(1) %182 to ptr addrspace(1)
  %184 = load i64, ptr %x
  %185 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %184), !dbg !34
  %186 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %183, i64 0, i64 0
  store ptr addrspace(1) %185, ptr addrspace(1) %186
  %187 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %180, i64 0, i32 1
  store i64 1, ptr addrspace(1) %187
  %188 = bitcast ptr addrspace(1) %180 to ptr addrspace(1)
  %189 = getelementptr i8, ptr addrspace(1) %188, i64 864691128455135236
  store ptr addrspace(1) %189, ptr %26
  %190 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %190), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %191 = load i64, ptr %x
  %192 = and i64 63, 2
  %193 = lshr i64 %191, %192
  store i64 %193, ptr %28
  %194 = load i64, ptr %28
  store i64 %194, ptr %x
  %195 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 3
  %197 = load ptr addrspace(1), ptr addrspace(1) %196, align 8
  %198 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %199 = load i64, ptr %x
  %200 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %199), !dbg !37
  %201 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %198, i64 0, i64 0
  store ptr addrspace(1) %200, ptr addrspace(1) %201
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 1
  store i64 1, ptr addrspace(1) %202
  %203 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %204 = getelementptr i8, ptr addrspace(1) %203, i64 864691128455135236
  store ptr addrspace(1) %204, ptr %29
  %205 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %205), !dbg !38
  store ptr addrspace(1) null, ptr %30
  ret void
206:
  %207 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !7
  store ptr addrspace(1) %207, ptr %31
  br label %39
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-compoundassign/03-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 15, scope: !5)
!10 = !DILocation(line: 7, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 15, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 11, column: 15, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 11, column: 4, scope: !5)
!18 = !DILocation(line: 13, column: 15, scope: !5)
!19 = !DILocation(line: 13, column: 15, scope: !5)
!20 = !DILocation(line: 13, column: 4, scope: !5)
!21 = !DILocation(line: 15, column: 15, scope: !5)
!22 = !DILocation(line: 15, column: 15, scope: !5)
!23 = !DILocation(line: 15, column: 4, scope: !5)
!24 = !DILocation(line: 17, column: 15, scope: !5)
!25 = !DILocation(line: 17, column: 15, scope: !5)
!26 = !DILocation(line: 17, column: 4, scope: !5)
!27 = !DILocation(line: 19, column: 15, scope: !5)
!28 = !DILocation(line: 19, column: 15, scope: !5)
!29 = !DILocation(line: 19, column: 4, scope: !5)
!30 = !DILocation(line: 21, column: 15, scope: !5)
!31 = !DILocation(line: 21, column: 15, scope: !5)
!32 = !DILocation(line: 21, column: 4, scope: !5)
!33 = !DILocation(line: 23, column: 15, scope: !5)
!34 = !DILocation(line: 23, column: 15, scope: !5)
!35 = !DILocation(line: 23, column: 4, scope: !5)
!36 = !DILocation(line: 25, column: 15, scope: !5)
!37 = !DILocation(line: 25, column: 15, scope: !5)
!38 = !DILocation(line: 25, column: 4, scope: !5)
!39 = !DILocation(line: 26, column: 0, scope: !5)
