@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i8
  %22 = load ptr, ptr @_bal_stack_guard
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %143, label %24
24:
  %25 = call i1 @_B_intEq(i64 17, i64 17), !dbg !13
  store i1 %25, ptr %1
  %26 = load i1, ptr %1
  store i1 %26, ptr %b
  %27 = load i1, ptr %b
  br i1 %27, label %28, label %41
28:
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = and i64 72057594037927935, 17
  %34 = or i64 2449958197289549824, %33
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %2
  %40 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %40), !dbg !17
  store ptr addrspace(1) null, ptr %3
  br label %54
41:
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = and i64 72057594037927935, 0
  %47 = or i64 2449958197289549824, %46
  %48 = getelementptr i8, ptr addrspace(1) null, i64 %47
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %45, i64 0, i64 0
  store ptr addrspace(1) %48, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %4
  %53 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !15
  store ptr addrspace(1) null, ptr %5
  br label %54
54:
  %55 = call i1 @_B_intNotEq(i64 21, i64 21), !dbg !18
  store i1 %55, ptr %6
  %56 = load i1, ptr %6
  store i1 %56, ptr %b
  %57 = load i1, ptr %b
  br i1 %57, label %58, label %71
58:
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = and i64 72057594037927935, 0
  %64 = or i64 2449958197289549824, %63
  %65 = getelementptr i8, ptr addrspace(1) null, i64 %64
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %7
  %70 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !22
  store ptr addrspace(1) null, ptr %8
  br label %84
71:
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = and i64 72057594037927935, 21
  %77 = or i64 2449958197289549824, %76
  %78 = getelementptr i8, ptr addrspace(1) null, i64 %77
  %79 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %78, ptr addrspace(1) %79
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %80
  %81 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %82 = getelementptr i8, ptr addrspace(1) %81, i64 864691128455135236
  store ptr addrspace(1) %82, ptr %9
  %83 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %83), !dbg !20
  store ptr addrspace(1) null, ptr %10
  br label %84
84:
  %85 = call i1 @_B_intEq(i64 -17, i64 -17), !dbg !23
  store i1 %85, ptr %11
  %86 = load i1, ptr %11
  store i1 %86, ptr %b
  %87 = load i1, ptr %b
  br i1 %87, label %88, label %101
88:
  %89 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 3
  %91 = load ptr addrspace(1), ptr addrspace(1) %90, align 8
  %92 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %93 = and i64 72057594037927935, -17
  %94 = or i64 2449958197289549824, %93
  %95 = getelementptr i8, ptr addrspace(1) null, i64 %94
  %96 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %92, i64 0, i64 0
  store ptr addrspace(1) %95, ptr addrspace(1) %96
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 1
  store i64 1, ptr addrspace(1) %97
  %98 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %99 = getelementptr i8, ptr addrspace(1) %98, i64 864691128455135236
  store ptr addrspace(1) %99, ptr %12
  %100 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %100), !dbg !27
  store ptr addrspace(1) null, ptr %13
  br label %114
101:
  %102 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 3
  %104 = load ptr addrspace(1), ptr addrspace(1) %103, align 8
  %105 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %106 = and i64 72057594037927935, 0
  %107 = or i64 2449958197289549824, %106
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %105, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %14
  %113 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !25
  store ptr addrspace(1) null, ptr %15
  br label %114
114:
  %115 = call i1 @_B_intNotEq(i64 9223372036854775807, i64 -9223372036854775807), !dbg !28
  store i1 %115, ptr %16
  %116 = load i1, ptr %16
  store i1 %116, ptr %b
  %117 = load i1, ptr %b
  br i1 %117, label %118, label %129
118:
  %119 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 3
  %121 = load ptr addrspace(1), ptr addrspace(1) %120, align 8
  %122 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %123 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !32
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %122, i64 0, i64 0
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 1
  store i64 1, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %17
  %128 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %128), !dbg !33
  store ptr addrspace(1) null, ptr %18
  br label %142
129:
  %130 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 3
  %132 = load ptr addrspace(1), ptr addrspace(1) %131, align 8
  %133 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %134 = and i64 72057594037927935, 0
  %135 = or i64 2449958197289549824, %134
  %136 = getelementptr i8, ptr addrspace(1) null, i64 %135
  %137 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %133, i64 0, i64 0
  store ptr addrspace(1) %136, ptr addrspace(1) %137
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 1
  store i64 1, ptr addrspace(1) %138
  %139 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %140 = getelementptr i8, ptr addrspace(1) %139, i64 864691128455135236
  store ptr addrspace(1) %140, ptr %19
  %141 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %141), !dbg !30
  store ptr addrspace(1) null, ptr %20
  br label %142
142:
  ret void
143:
  %144 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %144), !dbg !12
  unreachable
}
define internal i1 @_B_intEq(i64 %0, i64 %1) !dbg !7 {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, ptr %i
  store i64 %1, ptr %j
  %8 = load i64, ptr %i
  %9 = load i64, ptr %j
  %10 = icmp eq i64 %8, %9
  store i1 %10, ptr %3
  %11 = load i1, ptr %3
  ret i1 %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 9732), !dbg !34
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !35
  unreachable
}
define internal i1 @_B_intNotEq(i64 %0, i64 %1) !dbg !9 {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, ptr %i
  store i64 %1, ptr %j
  %8 = load i64, ptr %i
  %9 = load i64, ptr %j
  %10 = icmp ne i64 %8, %9
  store i1 %10, ptr %3
  %11 = load i1, ptr %3
  ret i1 %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 10756), !dbg !36
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !37
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-int/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"intEq", linkageName:"_B_intEq", scope: !1, file: !1, line: 38, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"intNotEq", linkageName:"_B_intNotEq", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 16, scope: !5)
!14 = !DILocation(line: 10, column: 19, scope: !5)
!15 = !DILocation(line: 10, column: 8, scope: !5)
!16 = !DILocation(line: 7, column: 19, scope: !5)
!17 = !DILocation(line: 7, column: 8, scope: !5)
!18 = !DILocation(line: 13, column: 8, scope: !5)
!19 = !DILocation(line: 18, column: 19, scope: !5)
!20 = !DILocation(line: 18, column: 8, scope: !5)
!21 = !DILocation(line: 15, column: 19, scope: !5)
!22 = !DILocation(line: 15, column: 8, scope: !5)
!23 = !DILocation(line: 21, column: 8, scope: !5)
!24 = !DILocation(line: 26, column: 19, scope: !5)
!25 = !DILocation(line: 26, column: 8, scope: !5)
!26 = !DILocation(line: 23, column: 19, scope: !5)
!27 = !DILocation(line: 23, column: 8, scope: !5)
!28 = !DILocation(line: 29, column: 8, scope: !5)
!29 = !DILocation(line: 34, column: 19, scope: !5)
!30 = !DILocation(line: 34, column: 8, scope: !5)
!31 = !DILocation(line: 31, column: 19, scope: !5)
!32 = !DILocation(line: 31, column: 19, scope: !5)
!33 = !DILocation(line: 31, column: 8, scope: !5)
!34 = !DILocation(line: 0, column: 0, scope: !7)
!35 = !DILocation(line: 38, column: 9, scope: !7)
!36 = !DILocation(line: 0, column: 0, scope: !9)
!37 = !DILocation(line: 42, column: 9, scope: !9)
