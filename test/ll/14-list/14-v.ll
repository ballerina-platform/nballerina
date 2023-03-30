@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare zeroext i1 @_bal_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %d = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %e = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca i8
  %21 = load ptr, ptr @_bal_stack_guard
  %22 = icmp ult ptr %20, %21
  br i1 %22, label %192, label %23
23:
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = getelementptr inbounds [0 x i64], ptr addrspace(1) %27, i64 0, i64 0
  store i64 1, ptr addrspace(1) %28
  %29 = getelementptr inbounds [0 x i64], ptr addrspace(1) %27, i64 0, i64 1
  store i64 2, ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 2, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %1
  %33 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %33, ptr %a
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !10
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = and i64 72057594037927935, 1
  %39 = or i64 2449958197289549824, %38
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = and i64 72057594037927935, 2
  %43 = or i64 2449958197289549824, %42
  %44 = getelementptr i8, ptr addrspace(1) null, i64 %43
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 1
  store ptr addrspace(1) %44, ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 2, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %2
  %49 = load ptr addrspace(1), ptr %a
  %50 = load ptr addrspace(1), ptr %2
  %51 = call i1 @_bal_eq(ptr addrspace(1) %49, ptr addrspace(1) %50), !dbg !11
  store i1 %51, ptr %3
  %52 = load i1, ptr %3
  %53 = zext i1 %52 to i64
  %54 = or i64 %53, 72057594037927936
  %55 = getelementptr i8, ptr addrspace(1) null, i64 %54
  store ptr addrspace(1) %55, ptr %b
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !12
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load ptr addrspace(1), ptr %b
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %4
  %65 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !13
  store ptr addrspace(1) null, ptr %5
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !14
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = and i64 72057594037927935, 3
  %71 = or i64 2449958197289549824, %70
  %72 = getelementptr i8, ptr addrspace(1) null, i64 %71
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = and i64 72057594037927935, 1
  %75 = or i64 2449958197289549824, %74
  %76 = getelementptr i8, ptr addrspace(1) null, i64 %75
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 1
  store ptr addrspace(1) %76, ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 2, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %6
  %81 = load ptr addrspace(1), ptr %a
  %82 = load ptr addrspace(1), ptr %6
  %83 = call i1 @_bal_eq(ptr addrspace(1) %81, ptr addrspace(1) %82), !dbg !15
  store i1 %83, ptr %7
  %84 = load i1, ptr %7
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, ptr addrspace(1) null, i64 %86
  store ptr addrspace(1) %87, ptr %c
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %90 = load ptr addrspace(1), ptr addrspace(1) %89, align 8
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = load ptr addrspace(1), ptr %c
  %93 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 0
  store ptr addrspace(1) %92, ptr addrspace(1) %93
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  store i64 1, ptr addrspace(1) %94
  %95 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %96 = getelementptr i8, ptr addrspace(1) %95, i64 864691128455135236
  store ptr addrspace(1) %96, ptr %8
  %97 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %97), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !18
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = and i64 72057594037927935, 1
  %103 = or i64 2449958197289549824, %102
  %104 = getelementptr i8, ptr addrspace(1) null, i64 %103
  %105 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %104, ptr addrspace(1) %105
  %106 = and i64 72057594037927935, 2
  %107 = or i64 2449958197289549824, %106
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 1
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 2, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %10
  %113 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !19
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 3
  %115 = load ptr addrspace(1), ptr addrspace(1) %114, align 8
  %116 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %117 = and i64 72057594037927935, 3
  %118 = or i64 2449958197289549824, %117
  %119 = getelementptr i8, ptr addrspace(1) null, i64 %118
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %116, i64 0, i64 0
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = and i64 72057594037927935, 1
  %122 = or i64 2449958197289549824, %121
  %123 = getelementptr i8, ptr addrspace(1) null, i64 %122
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %116, i64 0, i64 1
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 1
  store i64 2, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %11
  %128 = load ptr addrspace(1), ptr %10
  %129 = load ptr addrspace(1), ptr %11
  %130 = call i1 @_bal_eq(ptr addrspace(1) %128, ptr addrspace(1) %129), !dbg !20
  store i1 %130, ptr %12
  %131 = load i1, ptr %12
  %132 = zext i1 %131 to i64
  %133 = or i64 %132, 72057594037927936
  %134 = getelementptr i8, ptr addrspace(1) null, i64 %133
  store ptr addrspace(1) %134, ptr %d
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !21
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load ptr addrspace(1), ptr %d
  %140 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %139, ptr addrspace(1) %140
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %141
  %142 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %143 = getelementptr i8, ptr addrspace(1) %142, i64 864691128455135236
  store ptr addrspace(1) %143, ptr %13
  %144 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %144), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %145 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !23
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 3
  %147 = load ptr addrspace(1), ptr addrspace(1) %146, align 8
  %148 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %149 = and i64 72057594037927935, 1
  %150 = or i64 2449958197289549824, %149
  %151 = getelementptr i8, ptr addrspace(1) null, i64 %150
  %152 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %148, i64 0, i64 0
  store ptr addrspace(1) %151, ptr addrspace(1) %152
  %153 = and i64 72057594037927935, 2
  %154 = or i64 2449958197289549824, %153
  %155 = getelementptr i8, ptr addrspace(1) null, i64 %154
  %156 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %148, i64 0, i64 1
  store ptr addrspace(1) %155, ptr addrspace(1) %156
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 1
  store i64 2, ptr addrspace(1) %157
  %158 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %159 = getelementptr i8, ptr addrspace(1) %158, i64 864691128455135236
  store ptr addrspace(1) %159, ptr %15
  %160 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !24
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = and i64 72057594037927935, 1
  %165 = or i64 2449958197289549824, %164
  %166 = getelementptr i8, ptr addrspace(1) null, i64 %165
  %167 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 0
  store ptr addrspace(1) %166, ptr addrspace(1) %167
  %168 = and i64 72057594037927935, 2
  %169 = or i64 2449958197289549824, %168
  %170 = getelementptr i8, ptr addrspace(1) null, i64 %169
  %171 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 1
  store ptr addrspace(1) %170, ptr addrspace(1) %171
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  store i64 2, ptr addrspace(1) %172
  %173 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %174 = getelementptr i8, ptr addrspace(1) %173, i64 864691128455135236
  store ptr addrspace(1) %174, ptr %16
  %175 = load ptr addrspace(1), ptr %15
  %176 = load ptr addrspace(1), ptr %16
  %177 = call i1 @_bal_eq(ptr addrspace(1) %175, ptr addrspace(1) %176), !dbg !25
  store i1 %177, ptr %17
  %178 = load i1, ptr %17
  %179 = zext i1 %178 to i64
  %180 = or i64 %179, 72057594037927936
  %181 = getelementptr i8, ptr addrspace(1) null, i64 %180
  store ptr addrspace(1) %181, ptr %e
  %182 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !26
  %183 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %182, i64 0, i32 3
  %184 = load ptr addrspace(1), ptr addrspace(1) %183, align 8
  %185 = bitcast ptr addrspace(1) %184 to ptr addrspace(1)
  %186 = load ptr addrspace(1), ptr %e
  %187 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %185, i64 0, i64 0
  store ptr addrspace(1) %186, ptr addrspace(1) %187
  %188 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %182, i64 0, i32 1
  store i64 1, ptr addrspace(1) %188
  %189 = bitcast ptr addrspace(1) %182 to ptr addrspace(1)
  %190 = getelementptr i8, ptr addrspace(1) %189, i64 864691128455135236
  store ptr addrspace(1) %190, ptr %18
  %191 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %191), !dbg !27
  store ptr addrspace(1) null, ptr %19
  ret void
192:
  %193 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %193), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-list/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 14, scope: !5)
!10 = !DILocation(line: 4, column: 17, scope: !5)
!11 = !DILocation(line: 4, column: 14, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 17, scope: !5)
!15 = !DILocation(line: 6, column: 14, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 12, scope: !5)
!19 = !DILocation(line: 8, column: 22, scope: !5)
!20 = !DILocation(line: 8, column: 19, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 12, scope: !5)
!24 = !DILocation(line: 10, column: 22, scope: !5)
!25 = !DILocation(line: 10, column: 19, scope: !5)
!26 = !DILocation(line: 11, column: 15, scope: !5)
!27 = !DILocation(line: 11, column: 4, scope: !5)
