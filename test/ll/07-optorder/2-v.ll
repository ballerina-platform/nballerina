@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_opt_int_compare(ptr addrspace(1), ptr addrspace(1)) readonly
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
  br i1 %27, label %160, label %28
28:
  %29 = and i64 72057594037927935, 5
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  store ptr addrspace(1) %31, ptr %a
  %32 = load ptr addrspace(1), ptr %a
  %33 = call i64 @_bal_opt_int_compare(ptr addrspace(1) %32, ptr addrspace(1) null), !dbg !9
  %34 = icmp ule i64 %33, 1
  store i1 %34, ptr %1
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = load i1, ptr %1
  %40 = zext i1 %39 to i64
  %41 = or i64 %40, 72057594037927936
  %42 = getelementptr i8, ptr addrspace(1) null, i64 %41
  %43 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) %42, ptr addrspace(1) %43
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %44
  %45 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %2
  %47 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %47), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %48 = load ptr addrspace(1), ptr %a
  %49 = call i64 @_bal_opt_int_compare(ptr addrspace(1) %48, ptr addrspace(1) null), !dbg !12
  %50 = icmp eq i64 %49, 0
  store i1 %50, ptr %4
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load i1, ptr %4
  %56 = zext i1 %55 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, ptr addrspace(1) null, i64 %57
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %5
  %63 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %64 = load ptr addrspace(1), ptr %a
  %65 = call i64 @_bal_opt_int_compare(ptr addrspace(1) %64, ptr addrspace(1) null), !dbg !15
  %66 = icmp sge i64 %65, 1
  store i1 %66, ptr %7
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = load i1, ptr %7
  %72 = zext i1 %71 to i64
  %73 = or i64 %72, 72057594037927936
  %74 = getelementptr i8, ptr addrspace(1) null, i64 %73
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %8
  %79 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %79), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %80 = load ptr addrspace(1), ptr %a
  %81 = call i64 @_bal_opt_int_compare(ptr addrspace(1) %80, ptr addrspace(1) null), !dbg !18
  %82 = icmp eq i64 %81, 2
  store i1 %82, ptr %10
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = load i1, ptr %10
  %88 = zext i1 %87 to i64
  %89 = or i64 %88, 72057594037927936
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %11
  %95 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %96 = load ptr addrspace(1), ptr %a
  %97 = call i64 @_bal_opt_int_compare(ptr addrspace(1) null, ptr addrspace(1) %96), !dbg !21
  %98 = icmp ule i64 %97, 1
  store i1 %98, ptr %13
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load i1, ptr %13
  %104 = zext i1 %103 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, ptr addrspace(1) null, i64 %105
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %14
  %111 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %112 = load ptr addrspace(1), ptr %a
  %113 = call i64 @_bal_opt_int_compare(ptr addrspace(1) null, ptr addrspace(1) %112), !dbg !24
  %114 = icmp eq i64 %113, 0
  store i1 %114, ptr %16
  %115 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %116 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %115, i64 0, i32 3
  %117 = load ptr addrspace(1), ptr addrspace(1) %116, align 8
  %118 = bitcast ptr addrspace(1) %117 to ptr addrspace(1)
  %119 = load i1, ptr %16
  %120 = zext i1 %119 to i64
  %121 = or i64 %120, 72057594037927936
  %122 = getelementptr i8, ptr addrspace(1) null, i64 %121
  %123 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %118, i64 0, i64 0
  store ptr addrspace(1) %122, ptr addrspace(1) %123
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %115, i64 0, i32 1
  store i64 1, ptr addrspace(1) %124
  %125 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %126 = getelementptr i8, ptr addrspace(1) %125, i64 864691128455135236
  store ptr addrspace(1) %126, ptr %17
  %127 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %127), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %128 = load ptr addrspace(1), ptr %a
  %129 = call i64 @_bal_opt_int_compare(ptr addrspace(1) null, ptr addrspace(1) %128), !dbg !27
  %130 = icmp sge i64 %129, 1
  store i1 %130, ptr %19
  %131 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %131, i64 0, i32 3
  %133 = load ptr addrspace(1), ptr addrspace(1) %132, align 8
  %134 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %135 = load i1, ptr %19
  %136 = zext i1 %135 to i64
  %137 = or i64 %136, 72057594037927936
  %138 = getelementptr i8, ptr addrspace(1) null, i64 %137
  %139 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %134, i64 0, i64 0
  store ptr addrspace(1) %138, ptr addrspace(1) %139
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %131, i64 0, i32 1
  store i64 1, ptr addrspace(1) %140
  %141 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %142 = getelementptr i8, ptr addrspace(1) %141, i64 864691128455135236
  store ptr addrspace(1) %142, ptr %20
  %143 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %143), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %144 = load ptr addrspace(1), ptr %a
  %145 = call i64 @_bal_opt_int_compare(ptr addrspace(1) null, ptr addrspace(1) %144), !dbg !30
  %146 = icmp eq i64 %145, 2
  store i1 %146, ptr %22
  %147 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = load i1, ptr %22
  %152 = zext i1 %151 to i64
  %153 = or i64 %152, 72057594037927936
  %154 = getelementptr i8, ptr addrspace(1) null, i64 %153
  %155 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 0
  store ptr addrspace(1) %154, ptr addrspace(1) %155
  %156 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 1
  store i64 1, ptr addrspace(1) %156
  %157 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %158 = getelementptr i8, ptr addrspace(1) %157, i64 864691128455135236
  store ptr addrspace(1) %158, ptr %23
  %159 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %159), !dbg !32
  store ptr addrspace(1) null, ptr %24
  ret void
160:
  %161 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %161), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/2-v.bal", directory:"")
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
