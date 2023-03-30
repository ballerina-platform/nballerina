@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca i1
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i1
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i1
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca i8
  %37 = load ptr, ptr @_bal_stack_guard
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %167, label %39
39:
  %40 = call ptr addrspace(1) @_B_mkNil(), !dbg !15
  store ptr addrspace(1) %40, ptr %1
  %41 = call ptr addrspace(1) @_B_mkNil(), !dbg !16
  store ptr addrspace(1) %41, ptr %2
  %42 = load ptr addrspace(1), ptr %1
  %43 = load ptr addrspace(1), ptr %2
  %44 = call i1 @_bal_exact_eq(ptr addrspace(1) %42, ptr addrspace(1) %43), !dbg !17
  store i1 %44, ptr %3
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = load i1, ptr %3
  %50 = zext i1 %49 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %54
  %55 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 864691128455135236
  store ptr addrspace(1) %56, ptr %4
  %57 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !19
  store ptr addrspace(1) null, ptr %5
  %58 = call ptr addrspace(1) @_B_mkInt(i64 1), !dbg !20
  store ptr addrspace(1) %58, ptr %6
  %59 = call ptr addrspace(1) @_B_mkInt(i64 1), !dbg !21
  store ptr addrspace(1) %59, ptr %7
  %60 = load ptr addrspace(1), ptr %6
  %61 = load ptr addrspace(1), ptr %7
  %62 = call i1 @_bal_exact_eq(ptr addrspace(1) %60, ptr addrspace(1) %61), !dbg !22
  %63 = xor i1 %62, 1
  store i1 %63, ptr %8
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load i1, ptr %8
  %69 = zext i1 %68 to i64
  %70 = or i64 %69, 72057594037927936
  %71 = getelementptr i8, ptr addrspace(1) null, i64 %70
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %9
  %76 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !24
  store ptr addrspace(1) null, ptr %10
  %77 = call ptr addrspace(1) @_B_mkBoolean(i1 1), !dbg !25
  store ptr addrspace(1) %77, ptr %11
  %78 = call ptr addrspace(1) @_B_mkBoolean(i1 1), !dbg !26
  store ptr addrspace(1) %78, ptr %12
  %79 = load ptr addrspace(1), ptr %11
  %80 = load ptr addrspace(1), ptr %12
  %81 = call i1 @_bal_exact_eq(ptr addrspace(1) %79, ptr addrspace(1) %80), !dbg !27
  store i1 %81, ptr %13
  %82 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 3
  %84 = load ptr addrspace(1), ptr addrspace(1) %83, align 8
  %85 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %86 = load i1, ptr %13
  %87 = zext i1 %86 to i64
  %88 = or i64 %87, 72057594037927936
  %89 = getelementptr i8, ptr addrspace(1) null, i64 %88
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %85, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %14
  %94 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !29
  store ptr addrspace(1) null, ptr %15
  %95 = call ptr addrspace(1) @_B_mkInt(i64 -36028797018963969), !dbg !30
  store ptr addrspace(1) %95, ptr %16
  %96 = call ptr addrspace(1) @_B_mkInt(i64 -36028797018963969), !dbg !31
  store ptr addrspace(1) %96, ptr %17
  %97 = load ptr addrspace(1), ptr %16
  %98 = load ptr addrspace(1), ptr %17
  %99 = call i1 @_bal_exact_eq(ptr addrspace(1) %97, ptr addrspace(1) %98), !dbg !32
  store i1 %99, ptr %18
  %100 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %100, i64 0, i32 3
  %102 = load ptr addrspace(1), ptr addrspace(1) %101, align 8
  %103 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %104 = load i1, ptr %18
  %105 = zext i1 %104 to i64
  %106 = or i64 %105, 72057594037927936
  %107 = getelementptr i8, ptr addrspace(1) null, i64 %106
  %108 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %103, i64 0, i64 0
  store ptr addrspace(1) %107, ptr addrspace(1) %108
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %100, i64 0, i32 1
  store i64 1, ptr addrspace(1) %109
  %110 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %111 = getelementptr i8, ptr addrspace(1) %110, i64 864691128455135236
  store ptr addrspace(1) %111, ptr %19
  %112 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %112), !dbg !34
  store ptr addrspace(1) null, ptr %20
  %113 = call ptr addrspace(1) @_B_mkInt(i64 -36028797018963968), !dbg !35
  store ptr addrspace(1) %113, ptr %21
  %114 = call ptr addrspace(1) @_B_mkInt(i64 -36028797018963968), !dbg !36
  store ptr addrspace(1) %114, ptr %22
  %115 = load ptr addrspace(1), ptr %21
  %116 = load ptr addrspace(1), ptr %22
  %117 = call i1 @_bal_exact_eq(ptr addrspace(1) %115, ptr addrspace(1) %116), !dbg !37
  store i1 %117, ptr %23
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !38
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = load i1, ptr %23
  %123 = zext i1 %122 to i64
  %124 = or i64 %123, 72057594037927936
  %125 = getelementptr i8, ptr addrspace(1) null, i64 %124
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %24
  %130 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !39
  store ptr addrspace(1) null, ptr %25
  %131 = call ptr addrspace(1) @_B_mkInt(i64 36028797018963967), !dbg !40
  store ptr addrspace(1) %131, ptr %26
  %132 = call ptr addrspace(1) @_B_mkInt(i64 36028797018963967), !dbg !41
  store ptr addrspace(1) %132, ptr %27
  %133 = load ptr addrspace(1), ptr %26
  %134 = load ptr addrspace(1), ptr %27
  %135 = call i1 @_bal_exact_eq(ptr addrspace(1) %133, ptr addrspace(1) %134), !dbg !42
  store i1 %135, ptr %28
  %136 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 3
  %138 = load ptr addrspace(1), ptr addrspace(1) %137, align 8
  %139 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %140 = load i1, ptr %28
  %141 = zext i1 %140 to i64
  %142 = or i64 %141, 72057594037927936
  %143 = getelementptr i8, ptr addrspace(1) null, i64 %142
  %144 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %139, i64 0, i64 0
  store ptr addrspace(1) %143, ptr addrspace(1) %144
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 1
  store i64 1, ptr addrspace(1) %145
  %146 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %147 = getelementptr i8, ptr addrspace(1) %146, i64 864691128455135236
  store ptr addrspace(1) %147, ptr %29
  %148 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %148), !dbg !44
  store ptr addrspace(1) null, ptr %30
  %149 = call ptr addrspace(1) @_B_mkInt(i64 36028797018963968), !dbg !45
  store ptr addrspace(1) %149, ptr %31
  %150 = call ptr addrspace(1) @_B_mkInt(i64 36028797018963968), !dbg !46
  store ptr addrspace(1) %150, ptr %32
  %151 = load ptr addrspace(1), ptr %31
  %152 = load ptr addrspace(1), ptr %32
  %153 = call i1 @_bal_exact_eq(ptr addrspace(1) %151, ptr addrspace(1) %152), !dbg !47
  store i1 %153, ptr %33
  %154 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %155 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 3
  %156 = load ptr addrspace(1), ptr addrspace(1) %155, align 8
  %157 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %158 = load i1, ptr %33
  %159 = zext i1 %158 to i64
  %160 = or i64 %159, 72057594037927936
  %161 = getelementptr i8, ptr addrspace(1) null, i64 %160
  %162 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %157, i64 0, i64 0
  store ptr addrspace(1) %161, ptr addrspace(1) %162
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 1
  store i64 1, ptr addrspace(1) %163
  %164 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %165 = getelementptr i8, ptr addrspace(1) %164, i64 864691128455135236
  store ptr addrspace(1) %165, ptr %34
  %166 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %166), !dbg !49
  store ptr addrspace(1) null, ptr %35
  ret void
167:
  %168 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %168), !dbg !14
  unreachable
}
define internal ptr addrspace(1) @_B_mkNil() !dbg !7 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret ptr addrspace(1) null
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 4100), !dbg !50
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !51
  unreachable
}
define internal ptr addrspace(1) @_B_mkInt(i64 %0) !dbg !9 {
  %n = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, ptr %n
  %6 = load i64, ptr %n
  %7 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %6), !dbg !54
  ret ptr addrspace(1) %7
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 5124), !dbg !52
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !53
  unreachable
}
define internal ptr addrspace(1) @_B_mkBoolean(i1 %0) !dbg !11 {
  %b = alloca i1
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %10, label %5
5:
  store i1 %0, ptr %b
  %6 = load i1, ptr %b
  %7 = zext i1 %6 to i64
  %8 = or i64 %7, 72057594037927936
  %9 = getelementptr i8, ptr addrspace(1) null, i64 %8
  ret ptr addrspace(1) %9
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 6148), !dbg !55
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !56
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-misc/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkNil", linkageName:"_B_mkNil", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"mkBoolean", linkageName:"_B_mkBoolean", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 27, scope: !5)
!17 = !DILocation(line: 5, column: 23, scope: !5)
!18 = !DILocation(line: 5, column: 15, scope: !5)
!19 = !DILocation(line: 5, column: 4, scope: !5)
!20 = !DILocation(line: 6, column: 15, scope: !5)
!21 = !DILocation(line: 6, column: 28, scope: !5)
!22 = !DILocation(line: 6, column: 24, scope: !5)
!23 = !DILocation(line: 6, column: 15, scope: !5)
!24 = !DILocation(line: 6, column: 4, scope: !5)
!25 = !DILocation(line: 7, column: 15, scope: !5)
!26 = !DILocation(line: 7, column: 35, scope: !5)
!27 = !DILocation(line: 7, column: 31, scope: !5)
!28 = !DILocation(line: 7, column: 15, scope: !5)
!29 = !DILocation(line: 7, column: 4, scope: !5)
!30 = !DILocation(line: 10, column: 15, scope: !5)
!31 = !DILocation(line: 10, column: 45, scope: !5)
!32 = !DILocation(line: 10, column: 41, scope: !5)
!33 = !DILocation(line: 10, column: 15, scope: !5)
!34 = !DILocation(line: 10, column: 4, scope: !5)
!35 = !DILocation(line: 11, column: 15, scope: !5)
!36 = !DILocation(line: 11, column: 45, scope: !5)
!37 = !DILocation(line: 11, column: 41, scope: !5)
!38 = !DILocation(line: 11, column: 15, scope: !5)
!39 = !DILocation(line: 11, column: 4, scope: !5)
!40 = !DILocation(line: 12, column: 15, scope: !5)
!41 = !DILocation(line: 12, column: 44, scope: !5)
!42 = !DILocation(line: 12, column: 40, scope: !5)
!43 = !DILocation(line: 12, column: 15, scope: !5)
!44 = !DILocation(line: 12, column: 4, scope: !5)
!45 = !DILocation(line: 13, column: 15, scope: !5)
!46 = !DILocation(line: 13, column: 44, scope: !5)
!47 = !DILocation(line: 13, column: 40, scope: !5)
!48 = !DILocation(line: 13, column: 15, scope: !5)
!49 = !DILocation(line: 13, column: 4, scope: !5)
!50 = !DILocation(line: 0, column: 0, scope: !7)
!51 = !DILocation(line: 16, column: 9, scope: !7)
!52 = !DILocation(line: 0, column: 0, scope: !9)
!53 = !DILocation(line: 20, column: 9, scope: !9)
!54 = !DILocation(line: 21, column: 4, scope: !9)
!55 = !DILocation(line: 0, column: 0, scope: !11)
!56 = !DILocation(line: 24, column: 9, scope: !11)
