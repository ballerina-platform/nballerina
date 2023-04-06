@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_decimal_from_int(i64) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
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
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca ptr addrspace(1)
  %35 = alloca i8
  %36 = load ptr, ptr @_bal_stack_guard
  %37 = icmp ult ptr %35, %36
  br i1 %37, label %42, label %38
38:
  store i64 1, ptr %i
  %39 = load i64, ptr %i
  br i1 0, label %57, label %44
40:
  %41 = load ptr addrspace(1), ptr %34
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !42
  unreachable
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !8
  unreachable
44:
  %45 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %39), !dbg !9
  store ptr addrspace(1) %45, ptr %1
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load ptr addrspace(1), ptr %1
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %2
  %55 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %55), !dbg !11
  store ptr addrspace(1) null, ptr %3
  store i64 0, ptr %i
  %56 = load i64, ptr %i
  br i1 0, label %71, label %58
57:
  br label %40
58:
  %59 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %56), !dbg !12
  store ptr addrspace(1) %59, ptr %4
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load ptr addrspace(1), ptr %4
  %65 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %64, ptr addrspace(1) %65
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %66
  %67 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %68 = getelementptr i8, ptr addrspace(1) %67, i64 864691128455135236
  store ptr addrspace(1) %68, ptr %5
  %69 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %69), !dbg !14
  store ptr addrspace(1) null, ptr %6
  store i64 -1, ptr %i
  %70 = load i64, ptr %i
  br i1 0, label %85, label %72
71:
  br label %40
72:
  %73 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %70), !dbg !15
  store ptr addrspace(1) %73, ptr %7
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = load ptr addrspace(1), ptr %7
  %79 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %78, ptr addrspace(1) %79
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %80
  %81 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %82 = getelementptr i8, ptr addrspace(1) %81, i64 864691128455135236
  store ptr addrspace(1) %82, ptr %8
  %83 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %83), !dbg !17
  store ptr addrspace(1) null, ptr %9
  store i64 2147483647, ptr %i
  %84 = load i64, ptr %i
  br i1 0, label %99, label %86
85:
  br label %40
86:
  %87 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %84), !dbg !18
  store ptr addrspace(1) %87, ptr %10
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %90 = load ptr addrspace(1), ptr addrspace(1) %89, align 8
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = load ptr addrspace(1), ptr %10
  %93 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 0
  store ptr addrspace(1) %92, ptr addrspace(1) %93
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  store i64 1, ptr addrspace(1) %94
  %95 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %96 = getelementptr i8, ptr addrspace(1) %95, i64 864691128455135236
  store ptr addrspace(1) %96, ptr %11
  %97 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %97), !dbg !20
  store ptr addrspace(1) null, ptr %12
  store i64 2147483646, ptr %i
  %98 = load i64, ptr %i
  br i1 0, label %113, label %100
99:
  br label %40
100:
  %101 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %98), !dbg !21
  store ptr addrspace(1) %101, ptr %13
  %102 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 3
  %104 = load ptr addrspace(1), ptr addrspace(1) %103, align 8
  %105 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %106 = load ptr addrspace(1), ptr %13
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %105, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %14
  %111 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !23
  store ptr addrspace(1) null, ptr %15
  store i64 2147483648, ptr %i
  %112 = load i64, ptr %i
  br i1 0, label %127, label %114
113:
  br label %40
114:
  %115 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %112), !dbg !24
  store ptr addrspace(1) %115, ptr %16
  %116 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 3
  %118 = load ptr addrspace(1), ptr addrspace(1) %117, align 8
  %119 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %120 = load ptr addrspace(1), ptr %16
  %121 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %119, i64 0, i64 0
  store ptr addrspace(1) %120, ptr addrspace(1) %121
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  store i64 1, ptr addrspace(1) %122
  %123 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 864691128455135236
  store ptr addrspace(1) %124, ptr %17
  %125 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %125), !dbg !26
  store ptr addrspace(1) null, ptr %18
  store i64 -2147483648, ptr %i
  %126 = load i64, ptr %i
  br i1 0, label %141, label %128
127:
  br label %40
128:
  %129 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %126), !dbg !27
  store ptr addrspace(1) %129, ptr %19
  %130 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 3
  %132 = load ptr addrspace(1), ptr addrspace(1) %131, align 8
  %133 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %134 = load ptr addrspace(1), ptr %19
  %135 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %133, i64 0, i64 0
  store ptr addrspace(1) %134, ptr addrspace(1) %135
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 1
  store i64 1, ptr addrspace(1) %136
  %137 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %138 = getelementptr i8, ptr addrspace(1) %137, i64 864691128455135236
  store ptr addrspace(1) %138, ptr %20
  %139 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %139), !dbg !29
  store ptr addrspace(1) null, ptr %21
  store i64 -2147483647, ptr %i
  %140 = load i64, ptr %i
  br i1 0, label %155, label %142
141:
  br label %40
142:
  %143 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %140), !dbg !30
  store ptr addrspace(1) %143, ptr %22
  %144 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 3
  %146 = load ptr addrspace(1), ptr addrspace(1) %145, align 8
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = load ptr addrspace(1), ptr %22
  %149 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %147, i64 0, i64 0
  store ptr addrspace(1) %148, ptr addrspace(1) %149
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 1
  store i64 1, ptr addrspace(1) %150
  %151 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %152 = getelementptr i8, ptr addrspace(1) %151, i64 864691128455135236
  store ptr addrspace(1) %152, ptr %23
  %153 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %153), !dbg !32
  store ptr addrspace(1) null, ptr %24
  store i64 -2147483649, ptr %i
  %154 = load i64, ptr %i
  br i1 0, label %169, label %156
155:
  br label %40
156:
  %157 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %154), !dbg !33
  store ptr addrspace(1) %157, ptr %25
  %158 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 3
  %160 = load ptr addrspace(1), ptr addrspace(1) %159, align 8
  %161 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %162 = load ptr addrspace(1), ptr %25
  %163 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %161, i64 0, i64 0
  store ptr addrspace(1) %162, ptr addrspace(1) %163
  %164 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 1
  store i64 1, ptr addrspace(1) %164
  %165 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %166 = getelementptr i8, ptr addrspace(1) %165, i64 864691128455135236
  store ptr addrspace(1) %166, ptr %26
  %167 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %167), !dbg !35
  store ptr addrspace(1) null, ptr %27
  store i64 9223372036854775807, ptr %i
  %168 = load i64, ptr %i
  br i1 0, label %183, label %170
169:
  br label %40
170:
  %171 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %168), !dbg !36
  store ptr addrspace(1) %171, ptr %28
  %172 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 3
  %174 = load ptr addrspace(1), ptr addrspace(1) %173, align 8
  %175 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %176 = load ptr addrspace(1), ptr %28
  %177 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %175, i64 0, i64 0
  store ptr addrspace(1) %176, ptr addrspace(1) %177
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 1
  store i64 1, ptr addrspace(1) %178
  %179 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %180 = getelementptr i8, ptr addrspace(1) %179, i64 864691128455135236
  store ptr addrspace(1) %180, ptr %29
  %181 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %181), !dbg !38
  store ptr addrspace(1) null, ptr %30
  store i64 -9223372036854775808, ptr %i
  %182 = load i64, ptr %i
  br i1 0, label %196, label %184
183:
  br label %40
184:
  %185 = call ptr addrspace(1) @_bal_decimal_from_int(i64 %182), !dbg !39
  store ptr addrspace(1) %185, ptr %31
  %186 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %187 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 3
  %188 = load ptr addrspace(1), ptr addrspace(1) %187, align 8
  %189 = bitcast ptr addrspace(1) %188 to ptr addrspace(1)
  %190 = load ptr addrspace(1), ptr %31
  %191 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %189, i64 0, i64 0
  store ptr addrspace(1) %190, ptr addrspace(1) %191
  %192 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 1
  store i64 1, ptr addrspace(1) %192
  %193 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %194 = getelementptr i8, ptr addrspace(1) %193, i64 864691128455135236
  store ptr addrspace(1) %194, ptr %32
  %195 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %195), !dbg !41
  store ptr addrspace(1) null, ptr %33
  ret void
196:
  br label %40
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/fromint2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 15, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 15, scope: !5)
!26 = !DILocation(line: 14, column: 4, scope: !5)
!27 = !DILocation(line: 16, column: 15, scope: !5)
!28 = !DILocation(line: 16, column: 15, scope: !5)
!29 = !DILocation(line: 16, column: 4, scope: !5)
!30 = !DILocation(line: 18, column: 15, scope: !5)
!31 = !DILocation(line: 18, column: 15, scope: !5)
!32 = !DILocation(line: 18, column: 4, scope: !5)
!33 = !DILocation(line: 20, column: 15, scope: !5)
!34 = !DILocation(line: 20, column: 15, scope: !5)
!35 = !DILocation(line: 20, column: 4, scope: !5)
!36 = !DILocation(line: 22, column: 15, scope: !5)
!37 = !DILocation(line: 22, column: 15, scope: !5)
!38 = !DILocation(line: 22, column: 4, scope: !5)
!39 = !DILocation(line: 24, column: 15, scope: !5)
!40 = !DILocation(line: 24, column: 15, scope: !5)
!41 = !DILocation(line: 24, column: 4, scope: !5)
!42 = !DILocation(line: 25, column: 0, scope: !5)
