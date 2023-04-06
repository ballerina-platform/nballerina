@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_string_compare(ptr addrspace(1), ptr addrspace(1)) readonly
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
  br i1 %29, label %187, label %30
30:
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %35
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441220961), ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 2, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %1
  %40 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %40, ptr %a
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !10
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %45
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441221218), ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 2, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %2
  %50 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %50, ptr %b
  %51 = load ptr addrspace(1), ptr %a
  %52 = load ptr addrspace(1), ptr %b
  %53 = call i64 @_bal_array_string_compare(ptr addrspace(1) %51, ptr addrspace(1) %52), !dbg !11
  %54 = icmp eq i64 %53, 0
  store i1 %54, ptr %3
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !12
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = load i1, ptr %3
  %60 = zext i1 %59 to i64
  %61 = or i64 %60, 72057594037927936
  %62 = getelementptr i8, ptr addrspace(1) null, i64 %61
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %4
  %67 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !13
  store ptr addrspace(1) null, ptr %5
  %68 = load ptr addrspace(1), ptr %a
  %69 = load ptr addrspace(1), ptr %b
  %70 = call i64 @_bal_array_string_compare(ptr addrspace(1) %68, ptr addrspace(1) %69), !dbg !14
  %71 = icmp ule i64 %70, 1
  store i1 %71, ptr %6
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load i1, ptr %6
  %77 = zext i1 %76 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, ptr addrspace(1) null, i64 %78
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %7
  %84 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %85 = load ptr addrspace(1), ptr %a
  %86 = load ptr addrspace(1), ptr %b
  %87 = call i64 @_bal_array_string_compare(ptr addrspace(1) %85, ptr addrspace(1) %86), !dbg !17
  %88 = icmp eq i64 %87, 2
  store i1 %88, ptr %9
  %89 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !18
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 3
  %91 = load ptr addrspace(1), ptr addrspace(1) %90, align 8
  %92 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %93 = load i1, ptr %9
  %94 = zext i1 %93 to i64
  %95 = or i64 %94, 72057594037927936
  %96 = getelementptr i8, ptr addrspace(1) null, i64 %95
  %97 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %92, i64 0, i64 0
  store ptr addrspace(1) %96, ptr addrspace(1) %97
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 1
  store i64 1, ptr addrspace(1) %98
  %99 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %100 = getelementptr i8, ptr addrspace(1) %99, i64 864691128455135236
  store ptr addrspace(1) %100, ptr %10
  %101 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %101), !dbg !19
  store ptr addrspace(1) null, ptr %11
  %102 = load ptr addrspace(1), ptr %a
  %103 = load ptr addrspace(1), ptr %b
  %104 = call i64 @_bal_array_string_compare(ptr addrspace(1) %102, ptr addrspace(1) %103), !dbg !20
  %105 = icmp sge i64 %104, 1
  store i1 %105, ptr %12
  %106 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !21
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 3
  %108 = load ptr addrspace(1), ptr addrspace(1) %107, align 8
  %109 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %110 = load i1, ptr %12
  %111 = zext i1 %110 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, ptr addrspace(1) null, i64 %112
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %109, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %13
  %118 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %119 = load ptr addrspace(1), ptr %b
  %120 = load ptr addrspace(1), ptr %a
  %121 = call i64 @_bal_array_string_compare(ptr addrspace(1) %119, ptr addrspace(1) %120), !dbg !23
  %122 = icmp eq i64 %121, 0
  store i1 %122, ptr %15
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !24
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load i1, ptr %15
  %128 = zext i1 %127 to i64
  %129 = or i64 %128, 72057594037927936
  %130 = getelementptr i8, ptr addrspace(1) null, i64 %129
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %16
  %135 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %135), !dbg !25
  store ptr addrspace(1) null, ptr %17
  %136 = load ptr addrspace(1), ptr %b
  %137 = load ptr addrspace(1), ptr %a
  %138 = call i64 @_bal_array_string_compare(ptr addrspace(1) %136, ptr addrspace(1) %137), !dbg !26
  %139 = icmp ule i64 %138, 1
  store i1 %139, ptr %18
  %140 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !27
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 3
  %142 = load ptr addrspace(1), ptr addrspace(1) %141, align 8
  %143 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %144 = load i1, ptr %18
  %145 = zext i1 %144 to i64
  %146 = or i64 %145, 72057594037927936
  %147 = getelementptr i8, ptr addrspace(1) null, i64 %146
  %148 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %143, i64 0, i64 0
  store ptr addrspace(1) %147, ptr addrspace(1) %148
  %149 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 1
  store i64 1, ptr addrspace(1) %149
  %150 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %151 = getelementptr i8, ptr addrspace(1) %150, i64 864691128455135236
  store ptr addrspace(1) %151, ptr %19
  %152 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %152), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %153 = load ptr addrspace(1), ptr %b
  %154 = load ptr addrspace(1), ptr %a
  %155 = call i64 @_bal_array_string_compare(ptr addrspace(1) %153, ptr addrspace(1) %154), !dbg !29
  %156 = icmp eq i64 %155, 2
  store i1 %156, ptr %21
  %157 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !30
  %158 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %157, i64 0, i32 3
  %159 = load ptr addrspace(1), ptr addrspace(1) %158, align 8
  %160 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %161 = load i1, ptr %21
  %162 = zext i1 %161 to i64
  %163 = or i64 %162, 72057594037927936
  %164 = getelementptr i8, ptr addrspace(1) null, i64 %163
  %165 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %160, i64 0, i64 0
  store ptr addrspace(1) %164, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %157, i64 0, i32 1
  store i64 1, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %157 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %22
  %169 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %169), !dbg !31
  store ptr addrspace(1) null, ptr %23
  %170 = load ptr addrspace(1), ptr %b
  %171 = load ptr addrspace(1), ptr %a
  %172 = call i64 @_bal_array_string_compare(ptr addrspace(1) %170, ptr addrspace(1) %171), !dbg !32
  %173 = icmp sge i64 %172, 1
  store i1 %173, ptr %24
  %174 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !33
  %175 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %174, i64 0, i32 3
  %176 = load ptr addrspace(1), ptr addrspace(1) %175, align 8
  %177 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %178 = load i1, ptr %24
  %179 = zext i1 %178 to i64
  %180 = or i64 %179, 72057594037927936
  %181 = getelementptr i8, ptr addrspace(1) null, i64 %180
  %182 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %177, i64 0, i64 0
  store ptr addrspace(1) %181, ptr addrspace(1) %182
  %183 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %174, i64 0, i32 1
  store i64 1, ptr addrspace(1) %183
  %184 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %185 = getelementptr i8, ptr addrspace(1) %184, i64 864691128455135236
  store ptr addrspace(1) %185, ptr %25
  %186 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %186), !dbg !34
  store ptr addrspace(1) null, ptr %26
  ret void
187:
  %188 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %188), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/stringsubtypecompare-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 12, scope: !5)
!10 = !DILocation(line: 6, column: 17, scope: !5)
!11 = !DILocation(line: 7, column: 17, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 17, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 17, scope: !5)
!18 = !DILocation(line: 9, column: 15, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 10, column: 17, scope: !5)
!21 = !DILocation(line: 10, column: 15, scope: !5)
!22 = !DILocation(line: 10, column: 4, scope: !5)
!23 = !DILocation(line: 12, column: 17, scope: !5)
!24 = !DILocation(line: 12, column: 15, scope: !5)
!25 = !DILocation(line: 12, column: 4, scope: !5)
!26 = !DILocation(line: 13, column: 17, scope: !5)
!27 = !DILocation(line: 13, column: 15, scope: !5)
!28 = !DILocation(line: 13, column: 4, scope: !5)
!29 = !DILocation(line: 14, column: 17, scope: !5)
!30 = !DILocation(line: 14, column: 15, scope: !5)
!31 = !DILocation(line: 14, column: 4, scope: !5)
!32 = !DILocation(line: 15, column: 17, scope: !5)
!33 = !DILocation(line: 15, column: 15, scope: !5)
!34 = !DILocation(line: 15, column: 4, scope: !5)
