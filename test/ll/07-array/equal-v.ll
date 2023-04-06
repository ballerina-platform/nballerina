@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare zeroext i1 @_bal_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %v3 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %v4 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca i1
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca i1
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i8
  %27 = load ptr, ptr @_bal_stack_guard
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %187, label %29
29:
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr inbounds [0 x i64], ptr addrspace(1) %33, i64 0, i64 0
  store i64 1, ptr addrspace(1) %34
  %35 = getelementptr inbounds [0 x i64], ptr addrspace(1) %33, i64 0, i64 1
  store i64 2, ptr addrspace(1) %35
  %36 = getelementptr inbounds [0 x i64], ptr addrspace(1) %33, i64 0, i64 2
  store i64 3, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 3, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %1
  %40 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %40, ptr %v1
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !10
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr inbounds [0 x i64], ptr addrspace(1) %44, i64 0, i64 0
  store i64 1, ptr addrspace(1) %45
  %46 = getelementptr inbounds [0 x i64], ptr addrspace(1) %44, i64 0, i64 1
  store i64 2, ptr addrspace(1) %46
  %47 = getelementptr inbounds [0 x i64], ptr addrspace(1) %44, i64 0, i64 2
  store i64 3, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 3, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %2
  %51 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %51, ptr %v2
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !11
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = getelementptr inbounds [0 x i64], ptr addrspace(1) %55, i64 0, i64 0
  store i64 1, ptr addrspace(1) %56
  %57 = getelementptr inbounds [0 x i64], ptr addrspace(1) %55, i64 0, i64 1
  store i64 2, ptr addrspace(1) %57
  %58 = getelementptr inbounds [0 x i64], ptr addrspace(1) %55, i64 0, i64 2
  store i64 4, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 3, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %3
  %62 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %62, ptr %v3
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 4), !dbg !12
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = getelementptr inbounds [0 x i64], ptr addrspace(1) %66, i64 0, i64 0
  store i64 1, ptr addrspace(1) %67
  %68 = getelementptr inbounds [0 x i64], ptr addrspace(1) %66, i64 0, i64 1
  store i64 2, ptr addrspace(1) %68
  %69 = getelementptr inbounds [0 x i64], ptr addrspace(1) %66, i64 0, i64 2
  store i64 3, ptr addrspace(1) %69
  %70 = getelementptr inbounds [0 x i64], ptr addrspace(1) %66, i64 0, i64 3
  store i64 4, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 4, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %4
  %74 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %74, ptr %v4
  %75 = load ptr addrspace(1), ptr %v1
  %76 = load ptr addrspace(1), ptr %v1
  %77 = call i1 @_bal_eq(ptr addrspace(1) %75, ptr addrspace(1) %76), !dbg !13
  store i1 %77, ptr %5
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = load i1, ptr %5
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, ptr addrspace(1) null, i64 %84
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %6
  %90 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !15
  store ptr addrspace(1) null, ptr %7
  %91 = load ptr addrspace(1), ptr %v1
  %92 = load ptr addrspace(1), ptr %v2
  %93 = call i1 @_bal_eq(ptr addrspace(1) %91, ptr addrspace(1) %92), !dbg !16
  store i1 %93, ptr %8
  %94 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = load i1, ptr %8
  %99 = zext i1 %98 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, ptr addrspace(1) null, i64 %100
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %97, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %9
  %106 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %107 = load ptr addrspace(1), ptr %v1
  %108 = load ptr addrspace(1), ptr %v3
  %109 = call i1 @_bal_eq(ptr addrspace(1) %107, ptr addrspace(1) %108), !dbg !19
  store i1 %109, ptr %11
  %110 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 3
  %112 = load ptr addrspace(1), ptr addrspace(1) %111, align 8
  %113 = bitcast ptr addrspace(1) %112 to ptr addrspace(1)
  %114 = load i1, ptr %11
  %115 = zext i1 %114 to i64
  %116 = or i64 %115, 72057594037927936
  %117 = getelementptr i8, ptr addrspace(1) null, i64 %116
  %118 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %113, i64 0, i64 0
  store ptr addrspace(1) %117, ptr addrspace(1) %118
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 1
  store i64 1, ptr addrspace(1) %119
  %120 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %121 = getelementptr i8, ptr addrspace(1) %120, i64 864691128455135236
  store ptr addrspace(1) %121, ptr %12
  %122 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %122), !dbg !21
  store ptr addrspace(1) null, ptr %13
  %123 = load ptr addrspace(1), ptr %v1
  %124 = load ptr addrspace(1), ptr %v4
  %125 = call i1 @_bal_eq(ptr addrspace(1) %123, ptr addrspace(1) %124), !dbg !22
  store i1 %125, ptr %14
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = load i1, ptr %14
  %131 = zext i1 %130 to i64
  %132 = or i64 %131, 72057594037927936
  %133 = getelementptr i8, ptr addrspace(1) null, i64 %132
  %134 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %133, ptr addrspace(1) %134
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %135
  %136 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %137 = getelementptr i8, ptr addrspace(1) %136, i64 864691128455135236
  store ptr addrspace(1) %137, ptr %15
  %138 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %138), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %139 = load ptr addrspace(1), ptr %v4
  %140 = load ptr addrspace(1), ptr %v1
  %141 = call i1 @_bal_eq(ptr addrspace(1) %139, ptr addrspace(1) %140), !dbg !25
  store i1 %141, ptr %17
  %142 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 3
  %144 = load ptr addrspace(1), ptr addrspace(1) %143, align 8
  %145 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %146 = load i1, ptr %17
  %147 = zext i1 %146 to i64
  %148 = or i64 %147, 72057594037927936
  %149 = getelementptr i8, ptr addrspace(1) null, i64 %148
  %150 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %145, i64 0, i64 0
  store ptr addrspace(1) %149, ptr addrspace(1) %150
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 1
  store i64 1, ptr addrspace(1) %151
  %152 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %153 = getelementptr i8, ptr addrspace(1) %152, i64 864691128455135236
  store ptr addrspace(1) %153, ptr %18
  %154 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %154), !dbg !27
  store ptr addrspace(1) null, ptr %19
  %155 = load ptr addrspace(1), ptr %v1
  %156 = load ptr addrspace(1), ptr %v1
  %157 = call i1 @_bal_exact_eq(ptr addrspace(1) %155, ptr addrspace(1) %156), !dbg !28
  store i1 %157, ptr %20
  %158 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !29
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 3
  %160 = load ptr addrspace(1), ptr addrspace(1) %159, align 8
  %161 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %162 = load i1, ptr %20
  %163 = zext i1 %162 to i64
  %164 = or i64 %163, 72057594037927936
  %165 = getelementptr i8, ptr addrspace(1) null, i64 %164
  %166 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %161, i64 0, i64 0
  store ptr addrspace(1) %165, ptr addrspace(1) %166
  %167 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 1
  store i64 1, ptr addrspace(1) %167
  %168 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %169 = getelementptr i8, ptr addrspace(1) %168, i64 864691128455135236
  store ptr addrspace(1) %169, ptr %21
  %170 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %170), !dbg !30
  store ptr addrspace(1) null, ptr %22
  %171 = load ptr addrspace(1), ptr %v1
  %172 = load ptr addrspace(1), ptr %v2
  %173 = call i1 @_bal_exact_eq(ptr addrspace(1) %171, ptr addrspace(1) %172), !dbg !31
  store i1 %173, ptr %23
  %174 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !32
  %175 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %174, i64 0, i32 3
  %176 = load ptr addrspace(1), ptr addrspace(1) %175, align 8
  %177 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %178 = load i1, ptr %23
  %179 = zext i1 %178 to i64
  %180 = or i64 %179, 72057594037927936
  %181 = getelementptr i8, ptr addrspace(1) null, i64 %180
  %182 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %177, i64 0, i64 0
  store ptr addrspace(1) %181, ptr addrspace(1) %182
  %183 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %174, i64 0, i32 1
  store i64 1, ptr addrspace(1) %183
  %184 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %185 = getelementptr i8, ptr addrspace(1) %184, i64 864691128455135236
  store ptr addrspace(1) %185, ptr %24
  %186 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %186), !dbg !33
  store ptr addrspace(1) null, ptr %25
  ret void
187:
  %188 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %188), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 15, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 15, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 10, column: 18, scope: !5)
!14 = !DILocation(line: 10, column: 15, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 11, column: 18, scope: !5)
!17 = !DILocation(line: 11, column: 15, scope: !5)
!18 = !DILocation(line: 11, column: 4, scope: !5)
!19 = !DILocation(line: 12, column: 18, scope: !5)
!20 = !DILocation(line: 12, column: 15, scope: !5)
!21 = !DILocation(line: 12, column: 4, scope: !5)
!22 = !DILocation(line: 13, column: 18, scope: !5)
!23 = !DILocation(line: 13, column: 15, scope: !5)
!24 = !DILocation(line: 13, column: 4, scope: !5)
!25 = !DILocation(line: 14, column: 18, scope: !5)
!26 = !DILocation(line: 14, column: 15, scope: !5)
!27 = !DILocation(line: 14, column: 4, scope: !5)
!28 = !DILocation(line: 15, column: 18, scope: !5)
!29 = !DILocation(line: 15, column: 15, scope: !5)
!30 = !DILocation(line: 15, column: 4, scope: !5)
!31 = !DILocation(line: 16, column: 18, scope: !5)
!32 = !DILocation(line: 16, column: 15, scope: !5)
!33 = !DILocation(line: 16, column: 4, scope: !5)
