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
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i1
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i1
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca i1
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i1
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca i8
  %37 = load ptr, ptr @_bal_stack_guard
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %190, label %39
39:
  %40 = call ptr addrspace(1) @_B_mkInt(i64 2), !dbg !13
  store ptr addrspace(1) %40, ptr %1
  %41 = call ptr addrspace(1) @_B_mkBoolean(i1 1), !dbg !14
  store ptr addrspace(1) %41, ptr %2
  %42 = load ptr addrspace(1), ptr %1
  %43 = load ptr addrspace(1), ptr %2
  %44 = call i1 @_bal_exact_eq(ptr addrspace(1) %42, ptr addrspace(1) %43), !dbg !15
  store i1 %44, ptr %3
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
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
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !17
  store ptr addrspace(1) null, ptr %5
  %58 = call ptr addrspace(1) @_B_mkInt(i64 0), !dbg !18
  store ptr addrspace(1) %58, ptr %6
  %59 = call ptr addrspace(1) @_B_mkBoolean(i1 0), !dbg !19
  store ptr addrspace(1) %59, ptr %7
  %60 = load ptr addrspace(1), ptr %6
  %61 = load ptr addrspace(1), ptr %7
  %62 = call i1 @_bal_exact_eq(ptr addrspace(1) %60, ptr addrspace(1) %61), !dbg !20
  %63 = xor i1 %62, 1
  store i1 %63, ptr %8
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
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
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !22
  store ptr addrspace(1) null, ptr %10
  %77 = call ptr addrspace(1) @_B_mkBoolean(i1 1), !dbg !23
  store ptr addrspace(1) %77, ptr %11
  %78 = call ptr addrspace(1) @_B_mkInt(i64 1), !dbg !24
  store ptr addrspace(1) %78, ptr %12
  %79 = load ptr addrspace(1), ptr %11
  %80 = load ptr addrspace(1), ptr %12
  %81 = call i1 @_bal_exact_eq(ptr addrspace(1) %79, ptr addrspace(1) %80), !dbg !25
  store i1 %81, ptr %13
  %82 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
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
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !27
  store ptr addrspace(1) null, ptr %15
  %95 = call ptr addrspace(1) @_B_mkInt(i64 0), !dbg !28
  store ptr addrspace(1) %95, ptr %16
  %96 = load ptr addrspace(1), ptr %16
  %97 = zext i1 0 to i64
  %98 = or i64 %97, 72057594037927936
  %99 = getelementptr i8, ptr addrspace(1) null, i64 %98
  %100 = icmp ne ptr addrspace(1) %96, %99
  store i1 %100, ptr %17
  %101 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 3
  %103 = load ptr addrspace(1), ptr addrspace(1) %102, align 8
  %104 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %105 = load i1, ptr %17
  %106 = zext i1 %105 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %104, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %18
  %113 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !30
  store ptr addrspace(1) null, ptr %19
  %114 = call ptr addrspace(1) @_B_mkBoolean(i1 1), !dbg !31
  store ptr addrspace(1) %114, ptr %20
  %115 = load ptr addrspace(1), ptr %20
  %116 = and i64 72057594037927935, 1
  %117 = or i64 2449958197289549824, %116
  %118 = getelementptr i8, ptr addrspace(1) null, i64 %117
  %119 = icmp eq ptr addrspace(1) %115, %118
  store i1 %119, ptr %21
  %120 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %122 = load ptr addrspace(1), ptr addrspace(1) %121, align 8
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = load i1, ptr %21
  %125 = zext i1 %124 to i64
  %126 = or i64 %125, 72057594037927936
  %127 = getelementptr i8, ptr addrspace(1) null, i64 %126
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %22
  %132 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !33
  store ptr addrspace(1) null, ptr %23
  %133 = call ptr addrspace(1) @_B_mkBoolean(i1 0), !dbg !34
  store ptr addrspace(1) %133, ptr %24
  %134 = load ptr addrspace(1), ptr %24
  %135 = and i64 72057594037927935, 0
  %136 = or i64 2449958197289549824, %135
  %137 = getelementptr i8, ptr addrspace(1) null, i64 %136
  %138 = icmp ne ptr addrspace(1) %134, %137
  store i1 %138, ptr %25
  %139 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !35
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = load i1, ptr %25
  %144 = zext i1 %143 to i64
  %145 = or i64 %144, 72057594037927936
  %146 = getelementptr i8, ptr addrspace(1) null, i64 %145
  %147 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %142, i64 0, i64 0
  store ptr addrspace(1) %146, ptr addrspace(1) %147
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 1
  store i64 1, ptr addrspace(1) %148
  %149 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %150 = getelementptr i8, ptr addrspace(1) %149, i64 864691128455135236
  store ptr addrspace(1) %150, ptr %26
  %151 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %151), !dbg !36
  store ptr addrspace(1) null, ptr %27
  %152 = call ptr addrspace(1) @_B_mkInt(i64 1), !dbg !37
  store ptr addrspace(1) %152, ptr %28
  %153 = load ptr addrspace(1), ptr %28
  %154 = zext i1 1 to i64
  %155 = or i64 %154, 72057594037927936
  %156 = getelementptr i8, ptr addrspace(1) null, i64 %155
  %157 = icmp eq ptr addrspace(1) %153, %156
  store i1 %157, ptr %29
  %158 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !38
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 3
  %160 = load ptr addrspace(1), ptr addrspace(1) %159, align 8
  %161 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %162 = load i1, ptr %29
  %163 = zext i1 %162 to i64
  %164 = or i64 %163, 72057594037927936
  %165 = getelementptr i8, ptr addrspace(1) null, i64 %164
  %166 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %161, i64 0, i64 0
  store ptr addrspace(1) %165, ptr addrspace(1) %166
  %167 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 1
  store i64 1, ptr addrspace(1) %167
  %168 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %169 = getelementptr i8, ptr addrspace(1) %168, i64 864691128455135236
  store ptr addrspace(1) %169, ptr %30
  %170 = load ptr addrspace(1), ptr %30
  call void @_Bb02ioprintln(ptr addrspace(1) %170), !dbg !39
  store ptr addrspace(1) null, ptr %31
  %171 = call ptr addrspace(1) @_B_mkInt(i64 0), !dbg !40
  store ptr addrspace(1) %171, ptr %32
  %172 = load ptr addrspace(1), ptr %32
  %173 = zext i1 0 to i64
  %174 = or i64 %173, 72057594037927936
  %175 = getelementptr i8, ptr addrspace(1) null, i64 %174
  %176 = icmp ne ptr addrspace(1) %172, %175
  store i1 %176, ptr %33
  %177 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !41
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 3
  %179 = load ptr addrspace(1), ptr addrspace(1) %178, align 8
  %180 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %181 = load i1, ptr %33
  %182 = zext i1 %181 to i64
  %183 = or i64 %182, 72057594037927936
  %184 = getelementptr i8, ptr addrspace(1) null, i64 %183
  %185 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %180, i64 0, i64 0
  store ptr addrspace(1) %184, ptr addrspace(1) %185
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 1
  store i64 1, ptr addrspace(1) %186
  %187 = bitcast ptr addrspace(1) %177 to ptr addrspace(1)
  %188 = getelementptr i8, ptr addrspace(1) %187, i64 864691128455135236
  store ptr addrspace(1) %188, ptr %34
  %189 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %189), !dbg !42
  store ptr addrspace(1) null, ptr %35
  ret void
190:
  %191 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %191), !dbg !12
  unreachable
}
define internal ptr addrspace(1) @_B_mkInt(i64 %0) !dbg !7 {
  %n = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, ptr %n
  %6 = load i64, ptr %n
  %7 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %6), !dbg !45
  ret ptr addrspace(1) %7
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !43
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !44
  unreachable
}
define internal ptr addrspace(1) @_B_mkBoolean(i1 %0) !dbg !9 {
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
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 4868), !dbg !46
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !47
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-equal/6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"mkBoolean", linkageName:"_B_mkBoolean", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 28, scope: !5)
!15 = !DILocation(line: 5, column: 24, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 4, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 28, scope: !5)
!20 = !DILocation(line: 6, column: 24, scope: !5)
!21 = !DILocation(line: 6, column: 15, scope: !5)
!22 = !DILocation(line: 6, column: 4, scope: !5)
!23 = !DILocation(line: 7, column: 15, scope: !5)
!24 = !DILocation(line: 7, column: 35, scope: !5)
!25 = !DILocation(line: 7, column: 31, scope: !5)
!26 = !DILocation(line: 7, column: 15, scope: !5)
!27 = !DILocation(line: 7, column: 4, scope: !5)
!28 = !DILocation(line: 8, column: 25, scope: !5)
!29 = !DILocation(line: 8, column: 15, scope: !5)
!30 = !DILocation(line: 8, column: 4, scope: !5)
!31 = !DILocation(line: 9, column: 21, scope: !5)
!32 = !DILocation(line: 9, column: 15, scope: !5)
!33 = !DILocation(line: 9, column: 4, scope: !5)
!34 = !DILocation(line: 10, column: 21, scope: !5)
!35 = !DILocation(line: 10, column: 15, scope: !5)
!36 = !DILocation(line: 10, column: 4, scope: !5)
!37 = !DILocation(line: 11, column: 24, scope: !5)
!38 = !DILocation(line: 11, column: 15, scope: !5)
!39 = !DILocation(line: 11, column: 4, scope: !5)
!40 = !DILocation(line: 12, column: 25, scope: !5)
!41 = !DILocation(line: 12, column: 15, scope: !5)
!42 = !DILocation(line: 12, column: 4, scope: !5)
!43 = !DILocation(line: 0, column: 0, scope: !7)
!44 = !DILocation(line: 15, column: 9, scope: !7)
!45 = !DILocation(line: 16, column: 4, scope: !7)
!46 = !DILocation(line: 0, column: 0, scope: !9)
!47 = !DILocation(line: 19, column: 9, scope: !9)
