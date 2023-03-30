@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_int_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %b = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i8
  %22 = load ptr, ptr @_bal_stack_guard
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %211, label %24
24:
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = and i64 72057594037927935, 1
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = and i64 72057594037927935, 2
  %34 = or i64 2449958197289549824, %33
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 1
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 2, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %1
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !10
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = and i64 72057594037927935, 3
  %45 = or i64 2449958197289549824, %44
  %46 = getelementptr i8, ptr addrspace(1) null, i64 %45
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = and i64 72057594037927935, 1
  %49 = or i64 2449958197289549824, %48
  %50 = getelementptr i8, ptr addrspace(1) null, i64 %49
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 1
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 2, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %2
  %55 = load ptr addrspace(1), ptr %1
  %56 = load ptr addrspace(1), ptr %2
  %57 = call i64 @_bal_array_int_compare(ptr addrspace(1) %55, ptr addrspace(1) %56), !dbg !11
  %58 = icmp eq i64 %57, 0
  store i1 %58, ptr %3
  %59 = load i1, ptr %3
  %60 = zext i1 %59 to i64
  %61 = or i64 %60, 72057594037927936
  %62 = getelementptr i8, ptr addrspace(1) null, i64 %61
  store ptr addrspace(1) %62, ptr %a
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load ptr addrspace(1), ptr %a
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %4
  %72 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !13
  store ptr addrspace(1) null, ptr %5
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !14
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = and i64 72057594037927935, 1
  %78 = or i64 2449958197289549824, %77
  %79 = getelementptr i8, ptr addrspace(1) null, i64 %78
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = and i64 72057594037927935, 2
  %82 = or i64 2449958197289549824, %81
  %83 = getelementptr i8, ptr addrspace(1) null, i64 %82
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 1
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 2, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %6
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !15
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %90 = load ptr addrspace(1), ptr addrspace(1) %89, align 8
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = and i64 72057594037927935, 1
  %93 = or i64 2449958197289549824, %92
  %94 = getelementptr i8, ptr addrspace(1) null, i64 %93
  %95 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 0
  store ptr addrspace(1) %94, ptr addrspace(1) %95
  %96 = and i64 72057594037927935, 2
  %97 = or i64 2449958197289549824, %96
  %98 = getelementptr i8, ptr addrspace(1) null, i64 %97
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 1
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  store i64 2, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %7
  %103 = load ptr addrspace(1), ptr %6
  %104 = load ptr addrspace(1), ptr %7
  %105 = call i64 @_bal_array_int_compare(ptr addrspace(1) %103, ptr addrspace(1) %104), !dbg !16
  %106 = icmp eq i64 %105, 0
  store i1 %106, ptr %8
  %107 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 3
  %109 = load ptr addrspace(1), ptr addrspace(1) %108, align 8
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = load i1, ptr %8
  %112 = zext i1 %111 to i64
  %113 = or i64 %112, 72057594037927936
  %114 = getelementptr i8, ptr addrspace(1) null, i64 %113
  %115 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %110, i64 0, i64 0
  store ptr addrspace(1) %114, ptr addrspace(1) %115
  %116 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  store i64 1, ptr addrspace(1) %116
  %117 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %118 = getelementptr i8, ptr addrspace(1) %117, i64 864691128455135236
  store ptr addrspace(1) %118, ptr %9
  %119 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %119), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %120 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !19
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %122 = load ptr addrspace(1), ptr addrspace(1) %121, align 8
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = and i64 72057594037927935, 1
  %125 = or i64 2449958197289549824, %124
  %126 = getelementptr i8, ptr addrspace(1) null, i64 %125
  %127 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 0
  store ptr addrspace(1) %126, ptr addrspace(1) %127
  %128 = and i64 72057594037927935, 2
  %129 = or i64 2449958197289549824, %128
  %130 = getelementptr i8, ptr addrspace(1) null, i64 %129
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 1
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  store i64 2, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %11
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !20
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = and i64 72057594037927935, 3
  %140 = or i64 2449958197289549824, %139
  %141 = getelementptr i8, ptr addrspace(1) null, i64 %140
  %142 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %141, ptr addrspace(1) %142
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %143
  %144 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 864691128455135236
  store ptr addrspace(1) %145, ptr %12
  %146 = load ptr addrspace(1), ptr %11
  %147 = load ptr addrspace(1), ptr %12
  %148 = call i64 @_bal_array_int_compare(ptr addrspace(1) %146, ptr addrspace(1) %147), !dbg !21
  %149 = icmp eq i64 %148, 2
  store i1 %149, ptr %13
  %150 = load i1, ptr %13
  store i1 %150, ptr %b
  %151 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 3
  %153 = load ptr addrspace(1), ptr addrspace(1) %152, align 8
  %154 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %155 = load i1, ptr %b
  %156 = zext i1 %155 to i64
  %157 = or i64 %156, 72057594037927936
  %158 = getelementptr i8, ptr addrspace(1) null, i64 %157
  %159 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %154, i64 0, i64 0
  store ptr addrspace(1) %158, ptr addrspace(1) %159
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 1
  store i64 1, ptr addrspace(1) %160
  %161 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %162 = getelementptr i8, ptr addrspace(1) %161, i64 864691128455135236
  store ptr addrspace(1) %162, ptr %14
  %163 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %163), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %164 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 3), !dbg !24
  %165 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %164, i64 0, i32 3
  %166 = load ptr addrspace(1), ptr addrspace(1) %165, align 8
  %167 = bitcast ptr addrspace(1) %166 to ptr addrspace(1)
  %168 = and i64 72057594037927935, 10
  %169 = or i64 2449958197289549824, %168
  %170 = getelementptr i8, ptr addrspace(1) null, i64 %169
  %171 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %167, i64 0, i64 0
  store ptr addrspace(1) %170, ptr addrspace(1) %171
  %172 = and i64 72057594037927935, -1
  %173 = or i64 2449958197289549824, %172
  %174 = getelementptr i8, ptr addrspace(1) null, i64 %173
  %175 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %167, i64 0, i64 1
  store ptr addrspace(1) %174, ptr addrspace(1) %175
  %176 = and i64 72057594037927935, -1
  %177 = or i64 2449958197289549824, %176
  %178 = getelementptr i8, ptr addrspace(1) null, i64 %177
  %179 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %167, i64 0, i64 2
  store ptr addrspace(1) %178, ptr addrspace(1) %179
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %164, i64 0, i32 1
  store i64 3, ptr addrspace(1) %180
  %181 = bitcast ptr addrspace(1) %164 to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 864691128455135236
  store ptr addrspace(1) %182, ptr %16
  %183 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !25
  %184 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 3
  %185 = load ptr addrspace(1), ptr addrspace(1) %184, align 8
  %186 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %187 = and i64 72057594037927935, 0
  %188 = or i64 2449958197289549824, %187
  %189 = getelementptr i8, ptr addrspace(1) null, i64 %188
  %190 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %186, i64 0, i64 0
  store ptr addrspace(1) %189, ptr addrspace(1) %190
  %191 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 1
  store i64 1, ptr addrspace(1) %191
  %192 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %193 = getelementptr i8, ptr addrspace(1) %192, i64 864691128455135236
  store ptr addrspace(1) %193, ptr %17
  %194 = load ptr addrspace(1), ptr %16
  %195 = load ptr addrspace(1), ptr %17
  %196 = call i64 @_bal_array_int_compare(ptr addrspace(1) %194, ptr addrspace(1) %195), !dbg !26
  %197 = icmp eq i64 %196, 2
  store i1 %197, ptr %18
  %198 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %199 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %198, i64 0, i32 3
  %200 = load ptr addrspace(1), ptr addrspace(1) %199, align 8
  %201 = bitcast ptr addrspace(1) %200 to ptr addrspace(1)
  %202 = load i1, ptr %18
  %203 = zext i1 %202 to i64
  %204 = or i64 %203, 72057594037927936
  %205 = getelementptr i8, ptr addrspace(1) null, i64 %204
  %206 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %201, i64 0, i64 0
  store ptr addrspace(1) %205, ptr addrspace(1) %206
  %207 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %198, i64 0, i32 1
  store i64 1, ptr addrspace(1) %207
  %208 = bitcast ptr addrspace(1) %198 to ptr addrspace(1)
  %209 = getelementptr i8, ptr addrspace(1) %208, i64 864691128455135236
  store ptr addrspace(1) %209, ptr %19
  %210 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %210), !dbg !28
  store ptr addrspace(1) null, ptr %20
  ret void
211:
  %212 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %212), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-list/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 12, scope: !5)
!10 = !DILocation(line: 3, column: 21, scope: !5)
!11 = !DILocation(line: 3, column: 19, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 24, scope: !5)
!16 = !DILocation(line: 5, column: 22, scope: !5)
!17 = !DILocation(line: 5, column: 15, scope: !5)
!18 = !DILocation(line: 5, column: 4, scope: !5)
!19 = !DILocation(line: 6, column: 16, scope: !5)
!20 = !DILocation(line: 6, column: 25, scope: !5)
!21 = !DILocation(line: 6, column: 23, scope: !5)
!22 = !DILocation(line: 7, column: 15, scope: !5)
!23 = !DILocation(line: 7, column: 4, scope: !5)
!24 = !DILocation(line: 8, column: 15, scope: !5)
!25 = !DILocation(line: 8, column: 30, scope: !5)
!26 = !DILocation(line: 8, column: 28, scope: !5)
!27 = !DILocation(line: 8, column: 15, scope: !5)
!28 = !DILocation(line: 8, column: 4, scope: !5)
