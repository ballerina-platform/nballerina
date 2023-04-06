@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
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
  %b.1 = alloca i1
  %b.2 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %b.3 = alloca i1
  %b.4 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i8
  %22 = load ptr, ptr @_bal_stack_guard
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %171, label %24
24:
  store i1 1, ptr %b
  %25 = load i1, ptr %b
  br i1 %25, label %26, label %39
26:
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = and i64 72057594037927935, 4
  %32 = or i64 2449958197289549824, %31
  %33 = getelementptr i8, ptr addrspace(1) null, i64 %32
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %33, ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %1
  %38 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %38), !dbg !12
  store ptr addrspace(1) null, ptr %2
  br label %52
39:
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = and i64 72057594037927935, 5
  %45 = or i64 2449958197289549824, %44
  %46 = getelementptr i8, ptr addrspace(1) null, i64 %45
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %3
  %51 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !10
  store ptr addrspace(1) null, ptr %4
  br label %52
52:
  store i1 1, ptr %b
  %53 = load i1, ptr %b
  br i1 %53, label %54, label %67
54:
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = and i64 72057594037927935, 6
  %60 = or i64 2449958197289549824, %59
  %61 = getelementptr i8, ptr addrspace(1) null, i64 %60
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %5
  %66 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %66), !dbg !16
  store ptr addrspace(1) null, ptr %6
  br label %80
67:
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = and i64 72057594037927935, 7
  %73 = or i64 2449958197289549824, %72
  %74 = getelementptr i8, ptr addrspace(1) null, i64 %73
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %7
  %79 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %79), !dbg !14
  store ptr addrspace(1) null, ptr %8
  br label %80
80:
  store i1 0, ptr %b
  %81 = load i1, ptr %b
  br i1 %81, label %82, label %95
82:
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = and i64 72057594037927935, 8
  %88 = or i64 2449958197289549824, %87
  %89 = getelementptr i8, ptr addrspace(1) null, i64 %88
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %9
  %94 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !20
  store ptr addrspace(1) null, ptr %10
  br label %108
95:
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = and i64 72057594037927935, 9
  %101 = or i64 2449958197289549824, %100
  %102 = getelementptr i8, ptr addrspace(1) null, i64 %101
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 1, ptr addrspace(1) %104
  %105 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %106 = getelementptr i8, ptr addrspace(1) %105, i64 864691128455135236
  store ptr addrspace(1) %106, ptr %11
  %107 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %107), !dbg !18
  store ptr addrspace(1) null, ptr %12
  br label %108
108:
  store i1 1, ptr %b
  %109 = load i1, ptr %b
  %110 = icmp eq i1 %109, 1
  br i1 %110, label %111, label %125
111:
  %112 = load i1, ptr %b
  store i1 %112, ptr %b.1
  %113 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 3
  %115 = load ptr addrspace(1), ptr addrspace(1) %114, align 8
  %116 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %117 = and i64 72057594037927935, 10
  %118 = or i64 2449958197289549824, %117
  %119 = getelementptr i8, ptr addrspace(1) null, i64 %118
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %116, i64 0, i64 0
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 1
  store i64 1, ptr addrspace(1) %121
  %122 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %123 = getelementptr i8, ptr addrspace(1) %122, i64 864691128455135236
  store ptr addrspace(1) %123, ptr %13
  %124 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %124), !dbg !24
  store ptr addrspace(1) null, ptr %14
  br label %139
125:
  %126 = load i1, ptr %b
  store i1 %126, ptr %b.2
  %127 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 3
  %129 = load ptr addrspace(1), ptr addrspace(1) %128, align 8
  %130 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %131 = and i64 72057594037927935, 11
  %132 = or i64 2449958197289549824, %131
  %133 = getelementptr i8, ptr addrspace(1) null, i64 %132
  %134 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %130, i64 0, i64 0
  store ptr addrspace(1) %133, ptr addrspace(1) %134
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 1
  store i64 1, ptr addrspace(1) %135
  %136 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %137 = getelementptr i8, ptr addrspace(1) %136, i64 864691128455135236
  store ptr addrspace(1) %137, ptr %15
  %138 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %138), !dbg !22
  store ptr addrspace(1) null, ptr %16
  br label %139
139:
  store i1 0, ptr %b
  %140 = load i1, ptr %b
  %141 = icmp eq i1 %140, 1
  br i1 %141, label %142, label %156
142:
  %143 = load i1, ptr %b
  store i1 %143, ptr %b.3
  %144 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 3
  %146 = load ptr addrspace(1), ptr addrspace(1) %145, align 8
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = and i64 72057594037927935, 12
  %149 = or i64 2449958197289549824, %148
  %150 = getelementptr i8, ptr addrspace(1) null, i64 %149
  %151 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %147, i64 0, i64 0
  store ptr addrspace(1) %150, ptr addrspace(1) %151
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 1
  store i64 1, ptr addrspace(1) %152
  %153 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %154 = getelementptr i8, ptr addrspace(1) %153, i64 864691128455135236
  store ptr addrspace(1) %154, ptr %17
  %155 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %155), !dbg !28
  store ptr addrspace(1) null, ptr %18
  br label %170
156:
  %157 = load i1, ptr %b
  store i1 %157, ptr %b.4
  %158 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 3
  %160 = load ptr addrspace(1), ptr addrspace(1) %159, align 8
  %161 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %162 = and i64 72057594037927935, 13
  %163 = or i64 2449958197289549824, %162
  %164 = getelementptr i8, ptr addrspace(1) null, i64 %163
  %165 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %161, i64 0, i64 0
  store ptr addrspace(1) %164, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 1
  store i64 1, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %19
  %169 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %169), !dbg !26
  store ptr addrspace(1) null, ptr %20
  br label %170
170:
  ret void
171:
  %172 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %172), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-boolean/equal2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 19, scope: !5)
!10 = !DILocation(line: 10, column: 8, scope: !5)
!11 = !DILocation(line: 7, column: 19, scope: !5)
!12 = !DILocation(line: 7, column: 8, scope: !5)
!13 = !DILocation(line: 17, column: 19, scope: !5)
!14 = !DILocation(line: 17, column: 8, scope: !5)
!15 = !DILocation(line: 14, column: 19, scope: !5)
!16 = !DILocation(line: 14, column: 8, scope: !5)
!17 = !DILocation(line: 24, column: 19, scope: !5)
!18 = !DILocation(line: 24, column: 8, scope: !5)
!19 = !DILocation(line: 21, column: 19, scope: !5)
!20 = !DILocation(line: 21, column: 8, scope: !5)
!21 = !DILocation(line: 31, column: 19, scope: !5)
!22 = !DILocation(line: 31, column: 8, scope: !5)
!23 = !DILocation(line: 28, column: 19, scope: !5)
!24 = !DILocation(line: 28, column: 8, scope: !5)
!25 = !DILocation(line: 38, column: 19, scope: !5)
!26 = !DILocation(line: 38, column: 8, scope: !5)
!27 = !DILocation(line: 35, column: 19, scope: !5)
!28 = !DILocation(line: 35, column: 8, scope: !5)
