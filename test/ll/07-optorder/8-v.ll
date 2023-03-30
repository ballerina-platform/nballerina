@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_opt_string_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i1
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i8
  %26 = load ptr, ptr @_bal_stack_guard
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %157, label %28
28:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573430997601), ptr %a
  %29 = load ptr addrspace(1), ptr %a
  %30 = call i64 @_bal_opt_string_compare(ptr addrspace(1) %29, ptr addrspace(1) null), !dbg !9
  %31 = icmp ule i64 %30, 1
  store i1 %31, ptr %1
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load i1, ptr %1
  %37 = zext i1 %36 to i64
  %38 = or i64 %37, 72057594037927936
  %39 = getelementptr i8, ptr addrspace(1) null, i64 %38
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %2
  %44 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %45 = load ptr addrspace(1), ptr %a
  %46 = call i64 @_bal_opt_string_compare(ptr addrspace(1) %45, ptr addrspace(1) null), !dbg !12
  %47 = icmp eq i64 %46, 0
  store i1 %47, ptr %4
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load i1, ptr %4
  %53 = zext i1 %52 to i64
  %54 = or i64 %53, 72057594037927936
  %55 = getelementptr i8, ptr addrspace(1) null, i64 %54
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %5
  %60 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %61 = load ptr addrspace(1), ptr %a
  %62 = call i64 @_bal_opt_string_compare(ptr addrspace(1) %61, ptr addrspace(1) null), !dbg !15
  %63 = icmp sge i64 %62, 1
  store i1 %63, ptr %7
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load i1, ptr %7
  %69 = zext i1 %68 to i64
  %70 = or i64 %69, 72057594037927936
  %71 = getelementptr i8, ptr addrspace(1) null, i64 %70
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %8
  %76 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %77 = load ptr addrspace(1), ptr %a
  %78 = call i64 @_bal_opt_string_compare(ptr addrspace(1) %77, ptr addrspace(1) null), !dbg !18
  %79 = icmp eq i64 %78, 2
  store i1 %79, ptr %10
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i1, ptr %10
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, ptr addrspace(1) null, i64 %86
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %11
  %92 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %93 = load ptr addrspace(1), ptr %a
  %94 = call i64 @_bal_opt_string_compare(ptr addrspace(1) null, ptr addrspace(1) %93), !dbg !21
  %95 = icmp ule i64 %94, 1
  store i1 %95, ptr %13
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = load i1, ptr %13
  %101 = zext i1 %100 to i64
  %102 = or i64 %101, 72057594037927936
  %103 = getelementptr i8, ptr addrspace(1) null, i64 %102
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %14
  %108 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %109 = load ptr addrspace(1), ptr %a
  %110 = call i64 @_bal_opt_string_compare(ptr addrspace(1) null, ptr addrspace(1) %109), !dbg !24
  %111 = icmp eq i64 %110, 0
  store i1 %111, ptr %16
  %112 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %112, i64 0, i32 3
  %114 = load ptr addrspace(1), ptr addrspace(1) %113, align 8
  %115 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %116 = load i1, ptr %16
  %117 = zext i1 %116 to i64
  %118 = or i64 %117, 72057594037927936
  %119 = getelementptr i8, ptr addrspace(1) null, i64 %118
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %115, i64 0, i64 0
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %112, i64 0, i32 1
  store i64 1, ptr addrspace(1) %121
  %122 = bitcast ptr addrspace(1) %112 to ptr addrspace(1)
  %123 = getelementptr i8, ptr addrspace(1) %122, i64 864691128455135236
  store ptr addrspace(1) %123, ptr %17
  %124 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %124), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %125 = load ptr addrspace(1), ptr %a
  %126 = call i64 @_bal_opt_string_compare(ptr addrspace(1) null, ptr addrspace(1) %125), !dbg !27
  %127 = icmp sge i64 %126, 1
  store i1 %127, ptr %19
  %128 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 3
  %130 = load ptr addrspace(1), ptr addrspace(1) %129, align 8
  %131 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %132 = load i1, ptr %19
  %133 = zext i1 %132 to i64
  %134 = or i64 %133, 72057594037927936
  %135 = getelementptr i8, ptr addrspace(1) null, i64 %134
  %136 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %131, i64 0, i64 0
  store ptr addrspace(1) %135, ptr addrspace(1) %136
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 1
  store i64 1, ptr addrspace(1) %137
  %138 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %139 = getelementptr i8, ptr addrspace(1) %138, i64 864691128455135236
  store ptr addrspace(1) %139, ptr %20
  %140 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %140), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %141 = load ptr addrspace(1), ptr %a
  %142 = call i64 @_bal_opt_string_compare(ptr addrspace(1) null, ptr addrspace(1) %141), !dbg !30
  %143 = icmp eq i64 %142, 2
  store i1 %143, ptr %22
  %144 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 3
  %146 = load ptr addrspace(1), ptr addrspace(1) %145, align 8
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = load i1, ptr %22
  %149 = zext i1 %148 to i64
  %150 = or i64 %149, 72057594037927936
  %151 = getelementptr i8, ptr addrspace(1) null, i64 %150
  %152 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %147, i64 0, i64 0
  store ptr addrspace(1) %151, ptr addrspace(1) %152
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 1
  store i64 1, ptr addrspace(1) %153
  %154 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %155 = getelementptr i8, ptr addrspace(1) %154, i64 864691128455135236
  store ptr addrspace(1) %155, ptr %23
  %156 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %156), !dbg !32
  store ptr addrspace(1) null, ptr %24
  ret void
157:
  %158 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %158), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 17, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 17, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 17, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 9, column: 17, scope: !5)
!19 = !DILocation(line: 9, column: 15, scope: !5)
!20 = !DILocation(line: 9, column: 4, scope: !5)
!21 = !DILocation(line: 11, column: 18, scope: !5)
!22 = !DILocation(line: 11, column: 15, scope: !5)
!23 = !DILocation(line: 11, column: 4, scope: !5)
!24 = !DILocation(line: 12, column: 18, scope: !5)
!25 = !DILocation(line: 12, column: 15, scope: !5)
!26 = !DILocation(line: 12, column: 4, scope: !5)
!27 = !DILocation(line: 13, column: 18, scope: !5)
!28 = !DILocation(line: 13, column: 15, scope: !5)
!29 = !DILocation(line: 13, column: 4, scope: !5)
!30 = !DILocation(line: 14, column: 18, scope: !5)
!31 = !DILocation(line: 14, column: 15, scope: !5)
!32 = !DILocation(line: 14, column: 4, scope: !5)
