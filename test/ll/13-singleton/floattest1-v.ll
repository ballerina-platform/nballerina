@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
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
  %22 = alloca i8
  %23 = load ptr, ptr @_bal_stack_guard
  %24 = icmp ult ptr %22, %23
  br i1 %24, label %140, label %25
25:
  %26 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.0), !dbg !9
  store ptr addrspace(1) %26, ptr %x
  %27 = load ptr addrspace(1), ptr %x
  %28 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %27), !dbg !10
  store i1 %28, ptr %1
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load i1, ptr %1
  %34 = zext i1 %33 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, ptr addrspace(1) null, i64 %35
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %2
  %41 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !12
  store ptr addrspace(1) null, ptr %3
  %42 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF0000000000000), !dbg !13
  store ptr addrspace(1) %42, ptr %x
  %43 = load ptr addrspace(1), ptr %x
  %44 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %43), !dbg !14
  store i1 %44, ptr %4
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = load i1, ptr %4
  %50 = zext i1 %49 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %54
  %55 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 864691128455135236
  store ptr addrspace(1) %56, ptr %5
  %57 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %58 = call ptr addrspace(1) @_bal_float_to_tagged(double 0xFFF0000000000000), !dbg !17
  store ptr addrspace(1) %58, ptr %x
  %59 = load ptr addrspace(1), ptr %x
  %60 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %59), !dbg !18
  store i1 %60, ptr %7
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = load i1, ptr %7
  %66 = zext i1 %65 to i64
  %67 = or i64 %66, 72057594037927936
  %68 = getelementptr i8, ptr addrspace(1) null, i64 %67
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %64, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %8
  %73 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !20
  store ptr addrspace(1) null, ptr %9
  %74 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !21
  store ptr addrspace(1) %74, ptr %x
  %75 = load ptr addrspace(1), ptr %x
  %76 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %75), !dbg !22
  store i1 %76, ptr %10
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load i1, ptr %10
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, ptr addrspace(1) null, i64 %83
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %11
  %89 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !24
  store ptr addrspace(1) null, ptr %12
  %90 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !25
  store ptr addrspace(1) %90, ptr %x
  %91 = load ptr addrspace(1), ptr %x
  %92 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %91), !dbg !26
  store i1 %92, ptr %13
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = load i1, ptr %13
  %98 = zext i1 %97 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, ptr addrspace(1) null, i64 %99
  %101 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %100, ptr addrspace(1) %101
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %102
  %103 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %104 = getelementptr i8, ptr addrspace(1) %103, i64 864691128455135236
  store ptr addrspace(1) %104, ptr %14
  %105 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %105), !dbg !28
  store ptr addrspace(1) null, ptr %15
  %106 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.0), !dbg !29
  store ptr addrspace(1) %106, ptr %x
  %107 = load ptr addrspace(1), ptr %x
  %108 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %107), !dbg !30
  store i1 %108, ptr %16
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !31
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = load i1, ptr %16
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, ptr addrspace(1) null, i64 %115
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 1, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %17
  %121 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %121), !dbg !32
  store ptr addrspace(1) null, ptr %18
  %122 = and i64 72057594037927935, 1
  %123 = or i64 2449958197289549824, %122
  %124 = getelementptr i8, ptr addrspace(1) null, i64 %123
  store ptr addrspace(1) %124, ptr %x
  %125 = load ptr addrspace(1), ptr %x
  %126 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %125), !dbg !33
  store i1 %126, ptr %19
  %127 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !34
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 3
  %129 = load ptr addrspace(1), ptr addrspace(1) %128, align 8
  %130 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %131 = load i1, ptr %19
  %132 = zext i1 %131 to i64
  %133 = or i64 %132, 72057594037927936
  %134 = getelementptr i8, ptr addrspace(1) null, i64 %133
  %135 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %130, i64 0, i64 0
  store ptr addrspace(1) %134, ptr addrspace(1) %135
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 1
  store i64 1, ptr addrspace(1) %136
  %137 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %138 = getelementptr i8, ptr addrspace(1) %137, i64 864691128455135236
  store ptr addrspace(1) %138, ptr %20
  %139 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %139), !dbg !35
  store ptr addrspace(1) null, ptr %21
  ret void
140:
  %141 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %141), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/floattest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 10, scope: !5)
!10 = !DILocation(line: 10, column: 17, scope: !5)
!11 = !DILocation(line: 10, column: 15, scope: !5)
!12 = !DILocation(line: 10, column: 4, scope: !5)
!13 = !DILocation(line: 11, column: 6, scope: !5)
!14 = !DILocation(line: 12, column: 17, scope: !5)
!15 = !DILocation(line: 12, column: 15, scope: !5)
!16 = !DILocation(line: 12, column: 4, scope: !5)
!17 = !DILocation(line: 13, column: 6, scope: !5)
!18 = !DILocation(line: 14, column: 17, scope: !5)
!19 = !DILocation(line: 14, column: 15, scope: !5)
!20 = !DILocation(line: 14, column: 4, scope: !5)
!21 = !DILocation(line: 15, column: 6, scope: !5)
!22 = !DILocation(line: 16, column: 17, scope: !5)
!23 = !DILocation(line: 16, column: 15, scope: !5)
!24 = !DILocation(line: 16, column: 4, scope: !5)
!25 = !DILocation(line: 17, column: 6, scope: !5)
!26 = !DILocation(line: 18, column: 17, scope: !5)
!27 = !DILocation(line: 18, column: 15, scope: !5)
!28 = !DILocation(line: 18, column: 4, scope: !5)
!29 = !DILocation(line: 19, column: 6, scope: !5)
!30 = !DILocation(line: 20, column: 17, scope: !5)
!31 = !DILocation(line: 20, column: 15, scope: !5)
!32 = !DILocation(line: 20, column: 4, scope: !5)
!33 = !DILocation(line: 22, column: 17, scope: !5)
!34 = !DILocation(line: 22, column: 15, scope: !5)
!35 = !DILocation(line: 22, column: 4, scope: !5)
