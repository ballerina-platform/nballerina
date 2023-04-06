@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca i8
  %28 = load ptr, ptr @_bal_stack_guard
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %39, label %30
30:
  %31 = call i64 @_B_foo(), !dbg !13
  store i64 %31, ptr %1
  %32 = call i64 @_B_bar(), !dbg !14
  store i64 %32, ptr %2
  %33 = load i64, ptr %1
  %34 = load i64, ptr %2
  %35 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %33, i64 %34)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %60, label %41
37:
  %38 = load ptr addrspace(1), ptr %26
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !38
  unreachable
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !12
  unreachable
41:
  %42 = extractvalue {i64, i1} %35, 0
  store i64 %42, ptr %3
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load i64, ptr %3
  %48 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %47), !dbg !16
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %48, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %4
  %53 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !17
  store ptr addrspace(1) null, ptr %5
  %54 = call i64 @_B_foo(), !dbg !18
  store i64 %54, ptr %6
  %55 = call i64 @_B_bar(), !dbg !19
  store i64 %55, ptr %7
  %56 = load i64, ptr %6
  %57 = load i64, ptr %7
  %58 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %56, i64 %57)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %81, label %62
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !11
  store ptr addrspace(1) %61, ptr %26
  br label %37
62:
  %63 = extractvalue {i64, i1} %58, 0
  store i64 %63, ptr %8
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load i64, ptr %8
  %69 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %68), !dbg !21
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %9
  %74 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !22
  store ptr addrspace(1) null, ptr %10
  %75 = call i64 @_B_foo(), !dbg !23
  store i64 %75, ptr %11
  %76 = call i64 @_B_bar(), !dbg !24
  store i64 %76, ptr %12
  %77 = load i64, ptr %11
  %78 = load i64, ptr %12
  %79 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %77, i64 %78)
  %80 = extractvalue {i64, i1} %79, 1
  br i1 %80, label %101, label %83
81:
  %82 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !11
  store ptr addrspace(1) %82, ptr %26
  br label %37
83:
  %84 = extractvalue {i64, i1} %79, 0
  store i64 %84, ptr %13
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 3
  %87 = load ptr addrspace(1), ptr addrspace(1) %86, align 8
  %88 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %89 = load i64, ptr %13
  %90 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %89), !dbg !26
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %88, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %14
  %95 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !27
  store ptr addrspace(1) null, ptr %15
  %96 = call i64 @_B_foo(), !dbg !28
  store i64 %96, ptr %16
  %97 = call i64 @_B_bar(), !dbg !29
  store i64 %97, ptr %17
  %98 = load i64, ptr %16
  %99 = load i64, ptr %17
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %103, label %105
101:
  %102 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !11
  store ptr addrspace(1) %102, ptr %26
  br label %37
103:
  %104 = call ptr addrspace(1) @_bal_panic_construct(i64 2050), !dbg !11
  store ptr addrspace(1) %104, ptr %26
  br label %37
105:
  %106 = icmp eq i64 %98, -9223372036854775808
  %107 = icmp eq i64 %99, -1
  %108 = and i1 %106, %107
  br i1 %108, label %127, label %109
109:
  %110 = sdiv i64 %98, %99
  store i64 %110, ptr %18
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = load i64, ptr %18
  %116 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %115), !dbg !31
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %19
  %121 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %121), !dbg !32
  store ptr addrspace(1) null, ptr %20
  %122 = call i64 @_B_foo(), !dbg !33
  store i64 %122, ptr %21
  %123 = call i64 @_B_bar(), !dbg !34
  store i64 %123, ptr %22
  %124 = load i64, ptr %21
  %125 = load i64, ptr %22
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %129, label %131
127:
  %128 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !11
  store ptr addrspace(1) %128, ptr %26
  br label %37
129:
  %130 = call ptr addrspace(1) @_bal_panic_construct(i64 2306), !dbg !11
  store ptr addrspace(1) %130, ptr %26
  br label %37
131:
  %132 = icmp eq i64 %124, -9223372036854775808
  %133 = icmp eq i64 %125, -1
  %134 = and i1 %132, %133
  br i1 %134, label %137, label %135
135:
  %136 = srem i64 %124, %125
  store i64 %136, ptr %23
  br label %138
137:
  store i64 0, ptr %23
  br label %138
138:
  %139 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !35
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = load i64, ptr %23
  %144 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %143), !dbg !36
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %142, i64 0, i64 0
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 1
  store i64 1, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %24
  %149 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %149), !dbg !37
  store ptr addrspace(1) null, ptr %25
  ret void
}
define internal i64 @_B_foo() !dbg !7 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 105
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !39
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !40
  unreachable
}
define internal i64 @_B_bar() !dbg !9 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 2
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 4100), !dbg !41
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !42
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call04-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 23, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 4, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 23, scope: !5)
!20 = !DILocation(line: 6, column: 15, scope: !5)
!21 = !DILocation(line: 6, column: 15, scope: !5)
!22 = !DILocation(line: 6, column: 4, scope: !5)
!23 = !DILocation(line: 7, column: 15, scope: !5)
!24 = !DILocation(line: 7, column: 23, scope: !5)
!25 = !DILocation(line: 7, column: 15, scope: !5)
!26 = !DILocation(line: 7, column: 15, scope: !5)
!27 = !DILocation(line: 7, column: 4, scope: !5)
!28 = !DILocation(line: 8, column: 15, scope: !5)
!29 = !DILocation(line: 8, column: 23, scope: !5)
!30 = !DILocation(line: 8, column: 15, scope: !5)
!31 = !DILocation(line: 8, column: 15, scope: !5)
!32 = !DILocation(line: 8, column: 4, scope: !5)
!33 = !DILocation(line: 9, column: 15, scope: !5)
!34 = !DILocation(line: 9, column: 23, scope: !5)
!35 = !DILocation(line: 9, column: 15, scope: !5)
!36 = !DILocation(line: 9, column: 15, scope: !5)
!37 = !DILocation(line: 9, column: 4, scope: !5)
!38 = !DILocation(line: 10, column: 0, scope: !5)
!39 = !DILocation(line: 0, column: 0, scope: !7)
!40 = !DILocation(line: 12, column: 9, scope: !7)
!41 = !DILocation(line: 0, column: 0, scope: !9)
!42 = !DILocation(line: 16, column: 9, scope: !9)
