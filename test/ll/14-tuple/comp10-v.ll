@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_int_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
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
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i1
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i1
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca i8
  %28 = load ptr, ptr @_bal_stack_guard
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %199, label %30
30:
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = and i64 72057594037927935, 0
  %36 = or i64 2449958197289549824, %35
  %37 = getelementptr i8, ptr addrspace(1) null, i64 %36
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = and i64 72057594037927935, 500
  %40 = or i64 2449958197289549824, %39
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 1
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 2, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %1
  %46 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %46, ptr %a
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !10
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = and i64 72057594037927935, 0
  %52 = or i64 2449958197289549824, %51
  %53 = getelementptr i8, ptr addrspace(1) null, i64 %52
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = and i64 72057594037927935, 5
  %56 = or i64 2449958197289549824, %55
  %57 = getelementptr i8, ptr addrspace(1) null, i64 %56
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 1
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 2, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %2
  %62 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %62, ptr %b
  %63 = load ptr addrspace(1), ptr %a
  %64 = load ptr addrspace(1), ptr %b
  %65 = call i64 @_bal_array_int_compare(ptr addrspace(1) %63, ptr addrspace(1) %64), !dbg !11
  %66 = icmp eq i64 %65, 0
  store i1 %66, ptr %3
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !12
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = load i1, ptr %3
  %72 = zext i1 %71 to i64
  %73 = or i64 %72, 72057594037927936
  %74 = getelementptr i8, ptr addrspace(1) null, i64 %73
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %4
  %79 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %79), !dbg !13
  store ptr addrspace(1) null, ptr %5
  %80 = load ptr addrspace(1), ptr %a
  %81 = load ptr addrspace(1), ptr %b
  %82 = call i64 @_bal_array_int_compare(ptr addrspace(1) %80, ptr addrspace(1) %81), !dbg !14
  %83 = icmp ule i64 %82, 1
  store i1 %83, ptr %6
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load i1, ptr %6
  %89 = zext i1 %88 to i64
  %90 = or i64 %89, 72057594037927936
  %91 = getelementptr i8, ptr addrspace(1) null, i64 %90
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %7
  %96 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %97 = load ptr addrspace(1), ptr %a
  %98 = load ptr addrspace(1), ptr %b
  %99 = call i64 @_bal_array_int_compare(ptr addrspace(1) %97, ptr addrspace(1) %98), !dbg !17
  %100 = icmp eq i64 %99, 2
  store i1 %100, ptr %9
  %101 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !18
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 3
  %103 = load ptr addrspace(1), ptr addrspace(1) %102, align 8
  %104 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %105 = load i1, ptr %9
  %106 = zext i1 %105 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %104, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %10
  %113 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !19
  store ptr addrspace(1) null, ptr %11
  %114 = load ptr addrspace(1), ptr %a
  %115 = load ptr addrspace(1), ptr %b
  %116 = call i64 @_bal_array_int_compare(ptr addrspace(1) %114, ptr addrspace(1) %115), !dbg !20
  %117 = icmp sge i64 %116, 1
  store i1 %117, ptr %12
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !21
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = load i1, ptr %12
  %123 = zext i1 %122 to i64
  %124 = or i64 %123, 72057594037927936
  %125 = getelementptr i8, ptr addrspace(1) null, i64 %124
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %13
  %130 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %131 = load ptr addrspace(1), ptr %b
  %132 = load ptr addrspace(1), ptr %a
  %133 = call i64 @_bal_array_int_compare(ptr addrspace(1) %131, ptr addrspace(1) %132), !dbg !23
  %134 = icmp eq i64 %133, 0
  store i1 %134, ptr %15
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !24
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load i1, ptr %15
  %140 = zext i1 %139 to i64
  %141 = or i64 %140, 72057594037927936
  %142 = getelementptr i8, ptr addrspace(1) null, i64 %141
  %143 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %142, ptr addrspace(1) %143
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %144
  %145 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %146 = getelementptr i8, ptr addrspace(1) %145, i64 864691128455135236
  store ptr addrspace(1) %146, ptr %16
  %147 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %147), !dbg !25
  store ptr addrspace(1) null, ptr %17
  %148 = load ptr addrspace(1), ptr %b
  %149 = load ptr addrspace(1), ptr %a
  %150 = call i64 @_bal_array_int_compare(ptr addrspace(1) %148, ptr addrspace(1) %149), !dbg !26
  %151 = icmp ule i64 %150, 1
  store i1 %151, ptr %18
  %152 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !27
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 3
  %154 = load ptr addrspace(1), ptr addrspace(1) %153, align 8
  %155 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %156 = load i1, ptr %18
  %157 = zext i1 %156 to i64
  %158 = or i64 %157, 72057594037927936
  %159 = getelementptr i8, ptr addrspace(1) null, i64 %158
  %160 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %155, i64 0, i64 0
  store ptr addrspace(1) %159, ptr addrspace(1) %160
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 1
  store i64 1, ptr addrspace(1) %161
  %162 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %163 = getelementptr i8, ptr addrspace(1) %162, i64 864691128455135236
  store ptr addrspace(1) %163, ptr %19
  %164 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %164), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %165 = load ptr addrspace(1), ptr %b
  %166 = load ptr addrspace(1), ptr %a
  %167 = call i64 @_bal_array_int_compare(ptr addrspace(1) %165, ptr addrspace(1) %166), !dbg !29
  %168 = icmp eq i64 %167, 2
  store i1 %168, ptr %21
  %169 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !30
  %170 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %169, i64 0, i32 3
  %171 = load ptr addrspace(1), ptr addrspace(1) %170, align 8
  %172 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %173 = load i1, ptr %21
  %174 = zext i1 %173 to i64
  %175 = or i64 %174, 72057594037927936
  %176 = getelementptr i8, ptr addrspace(1) null, i64 %175
  %177 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %172, i64 0, i64 0
  store ptr addrspace(1) %176, ptr addrspace(1) %177
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %169, i64 0, i32 1
  store i64 1, ptr addrspace(1) %178
  %179 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %180 = getelementptr i8, ptr addrspace(1) %179, i64 864691128455135236
  store ptr addrspace(1) %180, ptr %22
  %181 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %181), !dbg !31
  store ptr addrspace(1) null, ptr %23
  %182 = load ptr addrspace(1), ptr %b
  %183 = load ptr addrspace(1), ptr %a
  %184 = call i64 @_bal_array_int_compare(ptr addrspace(1) %182, ptr addrspace(1) %183), !dbg !32
  %185 = icmp sge i64 %184, 1
  store i1 %185, ptr %24
  %186 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !33
  %187 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 3
  %188 = load ptr addrspace(1), ptr addrspace(1) %187, align 8
  %189 = bitcast ptr addrspace(1) %188 to ptr addrspace(1)
  %190 = load i1, ptr %24
  %191 = zext i1 %190 to i64
  %192 = or i64 %191, 72057594037927936
  %193 = getelementptr i8, ptr addrspace(1) null, i64 %192
  %194 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %189, i64 0, i64 0
  store ptr addrspace(1) %193, ptr addrspace(1) %194
  %195 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 1
  store i64 1, ptr addrspace(1) %195
  %196 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %197 = getelementptr i8, ptr addrspace(1) %196, i64 864691128455135236
  store ptr addrspace(1) %197, ptr %25
  %198 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %198), !dbg !34
  store ptr addrspace(1) null, ptr %26
  ret void
199:
  %200 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %200), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/comp10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 10, scope: !5)
!10 = !DILocation(line: 7, column: 10, scope: !5)
!11 = !DILocation(line: 9, column: 17, scope: !5)
!12 = !DILocation(line: 9, column: 15, scope: !5)
!13 = !DILocation(line: 9, column: 4, scope: !5)
!14 = !DILocation(line: 10, column: 17, scope: !5)
!15 = !DILocation(line: 10, column: 15, scope: !5)
!16 = !DILocation(line: 10, column: 4, scope: !5)
!17 = !DILocation(line: 11, column: 17, scope: !5)
!18 = !DILocation(line: 11, column: 15, scope: !5)
!19 = !DILocation(line: 11, column: 4, scope: !5)
!20 = !DILocation(line: 12, column: 17, scope: !5)
!21 = !DILocation(line: 12, column: 15, scope: !5)
!22 = !DILocation(line: 12, column: 4, scope: !5)
!23 = !DILocation(line: 14, column: 17, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 15, column: 17, scope: !5)
!27 = !DILocation(line: 15, column: 15, scope: !5)
!28 = !DILocation(line: 15, column: 4, scope: !5)
!29 = !DILocation(line: 16, column: 17, scope: !5)
!30 = !DILocation(line: 16, column: 15, scope: !5)
!31 = !DILocation(line: 16, column: 4, scope: !5)
!32 = !DILocation(line: 17, column: 17, scope: !5)
!33 = !DILocation(line: 17, column: 15, scope: !5)
!34 = !DILocation(line: 17, column: 4, scope: !5)
