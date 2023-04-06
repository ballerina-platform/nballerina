@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %x = alloca i64
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %b = alloca i1
  %21 = alloca ptr addrspace(1)
  %22 = alloca i1
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i8
  %27 = load ptr, ptr @_bal_stack_guard
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %58, label %29
29:
  %30 = call ptr addrspace(1) @_B_ifElse(i1 1, i64 17, i1 0), !dbg !11
  store ptr addrspace(1) %30, ptr %1
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load ptr addrspace(1), ptr %1
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %2
  %40 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %40), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %41 = call ptr addrspace(1) @_B_ifElse(i1 0, i64 32, i1 1), !dbg !14
  store ptr addrspace(1) %41, ptr %4
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = load ptr addrspace(1), ptr %4
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %45, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %5
  %51 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %52 = call ptr addrspace(1) @_B_ifElse(i1 1, i64 32, i1 1), !dbg !17
  store ptr addrspace(1) %52, ptr %7
  %53 = load ptr addrspace(1), ptr %7
  %54 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %53), !dbg !18
  %55 = extractvalue {ptr addrspace(1), i1} %54, 1
  br i1 %55, label %67, label %60
56:
  %57 = load ptr addrspace(1), ptr %25
  call void @_bal_panic(ptr addrspace(1) %57), !dbg !35
  unreachable
58:
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %59), !dbg !10
  unreachable
60:
  %61 = extractvalue {ptr addrspace(1), i1} %54, 0
  store ptr addrspace(1) %61, ptr %8
  %62 = load ptr addrspace(1), ptr %8
  %63 = addrspacecast ptr addrspace(1) %62 to ptr
  %64 = ptrtoint ptr %63 to i64
  %65 = and i64 %64, 2233785415175766016
  %66 = icmp eq i64 %65, 144115188075855872
  br i1 %66, label %69, label %86
67:
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !9
  store ptr addrspace(1) %68, ptr %25
  br label %56
69:
  %70 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %62), !dbg !19
  store i64 %70, ptr %9
  %71 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 3
  %73 = load ptr addrspace(1), ptr addrspace(1) %72, align 8
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = load i64, ptr %9
  %76 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %75), !dbg !21
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %74, i64 0, i64 0
  store ptr addrspace(1) %76, ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 1
  store i64 1, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %10
  %81 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %81), !dbg !22
  store ptr addrspace(1) null, ptr %11
  %82 = call ptr addrspace(1) @_B_ifElse(i1 1, i64 42, i1 0), !dbg !23
  store ptr addrspace(1) %82, ptr %12
  %83 = load ptr addrspace(1), ptr %12
  %84 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %83), !dbg !24
  %85 = extractvalue {ptr addrspace(1), i1} %84, 1
  br i1 %85, label %95, label %88
86:
  %87 = call ptr addrspace(1) @_bal_panic_construct(i64 1795), !dbg !9
  store ptr addrspace(1) %87, ptr %25
  br label %56
88:
  %89 = extractvalue {ptr addrspace(1), i1} %84, 0
  store ptr addrspace(1) %89, ptr %13
  %90 = load ptr addrspace(1), ptr %13
  %91 = addrspacecast ptr addrspace(1) %90 to ptr
  %92 = ptrtoint ptr %91 to i64
  %93 = and i64 %92, 2233785415175766016
  %94 = icmp eq i64 %93, 144115188075855872
  br i1 %94, label %97, label %117
95:
  %96 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !9
  store ptr addrspace(1) %96, ptr %25
  br label %56
97:
  %98 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %90), !dbg !25
  store i64 %98, ptr %14
  %99 = load i64, ptr %14
  store i64 %99, ptr %x
  %100 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %100, i64 0, i32 3
  %102 = load ptr addrspace(1), ptr addrspace(1) %101, align 8
  %103 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %104 = load i64, ptr %x
  %105 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %104), !dbg !27
  %106 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %103, i64 0, i64 0
  store ptr addrspace(1) %105, ptr addrspace(1) %106
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %100, i64 0, i32 1
  store i64 1, ptr addrspace(1) %107
  %108 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %109 = getelementptr i8, ptr addrspace(1) %108, i64 864691128455135236
  store ptr addrspace(1) %109, ptr %15
  %110 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %110), !dbg !28
  store ptr addrspace(1) null, ptr %16
  %111 = call ptr addrspace(1) @_B_ifElse(i1 0, i64 21, i1 1), !dbg !29
  store ptr addrspace(1) %111, ptr %17
  %112 = load ptr addrspace(1), ptr %17
  %113 = addrspacecast ptr addrspace(1) %112 to ptr
  %114 = ptrtoint ptr %113 to i64
  %115 = and i64 %114, 2233785415175766016
  %116 = icmp eq i64 %115, 72057594037927936
  br i1 %116, label %119, label %142
117:
  %118 = call ptr addrspace(1) @_bal_panic_construct(i64 2051), !dbg !9
  store ptr addrspace(1) %118, ptr %25
  br label %56
119:
  %120 = addrspacecast ptr addrspace(1) %112 to ptr
  %121 = ptrtoint ptr %120 to i64
  %122 = trunc i64 %121 to i1
  store i1 %122, ptr %18
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load i1, ptr %18
  %128 = zext i1 %127 to i64
  %129 = or i64 %128, 72057594037927936
  %130 = getelementptr i8, ptr addrspace(1) null, i64 %129
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %19
  %135 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %135), !dbg !31
  store ptr addrspace(1) null, ptr %20
  %136 = call ptr addrspace(1) @_B_ifElse(i1 0, i64 21, i1 0), !dbg !32
  store ptr addrspace(1) %136, ptr %21
  %137 = load ptr addrspace(1), ptr %21
  %138 = addrspacecast ptr addrspace(1) %137 to ptr
  %139 = ptrtoint ptr %138 to i64
  %140 = and i64 %139, 2233785415175766016
  %141 = icmp eq i64 %140, 72057594037927936
  br i1 %141, label %144, label %162
142:
  %143 = call ptr addrspace(1) @_bal_panic_construct(i64 2563), !dbg !9
  store ptr addrspace(1) %143, ptr %25
  br label %56
144:
  %145 = addrspacecast ptr addrspace(1) %137 to ptr
  %146 = ptrtoint ptr %145 to i64
  %147 = trunc i64 %146 to i1
  store i1 %147, ptr %22
  %148 = load i1, ptr %22
  store i1 %148, ptr %b
  %149 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 3
  %151 = load ptr addrspace(1), ptr addrspace(1) %150, align 8
  %152 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %153 = load i1, ptr %b
  %154 = zext i1 %153 to i64
  %155 = or i64 %154, 72057594037927936
  %156 = getelementptr i8, ptr addrspace(1) null, i64 %155
  %157 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %152, i64 0, i64 0
  store ptr addrspace(1) %156, ptr addrspace(1) %157
  %158 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 1
  store i64 1, ptr addrspace(1) %158
  %159 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %160 = getelementptr i8, ptr addrspace(1) %159, i64 864691128455135236
  store ptr addrspace(1) %160, ptr %23
  %161 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %161), !dbg !34
  store ptr addrspace(1) null, ptr %24
  ret void
162:
  %163 = call ptr addrspace(1) @_bal_panic_construct(i64 2819), !dbg !9
  store ptr addrspace(1) %163, ptr %25
  br label %56
}
define internal ptr addrspace(1) @_B_ifElse(i1 %0, i64 %1, i1 %2) !dbg !7 {
  %t = alloca i1
  %n = alloca i64
  %b = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %17, label %7
7:
  store i1 %0, ptr %t
  store i64 %1, ptr %n
  store i1 %2, ptr %b
  %8 = load i1, ptr %t
  br i1 %8, label %9, label %12
9:
  %10 = load i64, ptr %n
  %11 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %10), !dbg !38
  ret ptr addrspace(1) %11
12:
  %13 = load i1, ptr %b
  %14 = zext i1 %13 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  ret ptr addrspace(1) %16
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !36
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !37
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-typecast/7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"ifElse", linkageName:"_B_ifElse", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 20, scope: !5)
!18 = !DILocation(line: 7, column: 15, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 4, scope: !5)
!23 = !DILocation(line: 8, column: 17, scope: !5)
!24 = !DILocation(line: 8, column: 12, scope: !5)
!25 = !DILocation(line: 8, column: 12, scope: !5)
!26 = !DILocation(line: 9, column: 15, scope: !5)
!27 = !DILocation(line: 9, column: 15, scope: !5)
!28 = !DILocation(line: 9, column: 4, scope: !5)
!29 = !DILocation(line: 10, column: 24, scope: !5)
!30 = !DILocation(line: 10, column: 15, scope: !5)
!31 = !DILocation(line: 10, column: 4, scope: !5)
!32 = !DILocation(line: 11, column: 25, scope: !5)
!33 = !DILocation(line: 12, column: 15, scope: !5)
!34 = !DILocation(line: 12, column: 4, scope: !5)
!35 = !DILocation(line: 13, column: 0, scope: !5)
!36 = !DILocation(line: 0, column: 0, scope: !7)
!37 = !DILocation(line: 15, column: 9, scope: !7)
!38 = !DILocation(line: 17, column: 8, scope: !7)
