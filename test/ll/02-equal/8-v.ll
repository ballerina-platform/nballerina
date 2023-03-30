@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %n = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i1
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %b = alloca i1
  %25 = alloca ptr addrspace(1)
  %26 = alloca i1
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca i1
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i8
  %34 = load ptr, ptr @_bal_stack_guard
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %120, label %36
36:
  %37 = call ptr addrspace(1) @_B_mkInt(i64 2), !dbg !13
  store ptr addrspace(1) %37, ptr %1
  %38 = load ptr addrspace(1), ptr %1
  %39 = and i64 72057594037927935, 2
  %40 = or i64 2449958197289549824, %39
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  %42 = icmp eq ptr addrspace(1) %38, %41
  store i1 %42, ptr %2
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load i1, ptr %2
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, ptr addrspace(1) null, i64 %49
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %3
  %55 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %55), !dbg !15
  store ptr addrspace(1) null, ptr %4
  %56 = call ptr addrspace(1) @_B_mkInt(i64 17), !dbg !16
  store ptr addrspace(1) %56, ptr %5
  %57 = load ptr addrspace(1), ptr %5
  %58 = and i64 72057594037927935, 17
  %59 = or i64 2449958197289549824, %58
  %60 = getelementptr i8, ptr addrspace(1) null, i64 %59
  %61 = icmp ne ptr addrspace(1) %57, %60
  store i1 %61, ptr %6
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load i1, ptr %6
  %67 = zext i1 %66 to i64
  %68 = or i64 %67, 72057594037927936
  %69 = getelementptr i8, ptr addrspace(1) null, i64 %68
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %7
  %74 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !18
  store ptr addrspace(1) null, ptr %8
  %75 = call ptr addrspace(1) @_B_mkBoolean(i1 1), !dbg !19
  store ptr addrspace(1) %75, ptr %9
  %76 = load ptr addrspace(1), ptr %9
  %77 = zext i1 1 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, ptr addrspace(1) null, i64 %78
  %80 = icmp eq ptr addrspace(1) %76, %79
  store i1 %80, ptr %10
  %81 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 3
  %83 = load ptr addrspace(1), ptr addrspace(1) %82, align 8
  %84 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %85 = load i1, ptr %10
  %86 = zext i1 %85 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, ptr addrspace(1) null, i64 %87
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %84, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %11
  %93 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !21
  store ptr addrspace(1) null, ptr %12
  %94 = call ptr addrspace(1) @_B_mkBoolean(i1 0), !dbg !22
  store ptr addrspace(1) %94, ptr %13
  %95 = load ptr addrspace(1), ptr %13
  %96 = zext i1 0 to i64
  %97 = or i64 %96, 72057594037927936
  %98 = getelementptr i8, ptr addrspace(1) null, i64 %97
  %99 = icmp ne ptr addrspace(1) %95, %98
  store i1 %99, ptr %14
  %100 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %100, i64 0, i32 3
  %102 = load ptr addrspace(1), ptr addrspace(1) %101, align 8
  %103 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %104 = load i1, ptr %14
  %105 = zext i1 %104 to i64
  %106 = or i64 %105, 72057594037927936
  %107 = getelementptr i8, ptr addrspace(1) null, i64 %106
  %108 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %103, i64 0, i64 0
  store ptr addrspace(1) %107, ptr addrspace(1) %108
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %100, i64 0, i32 1
  store i64 1, ptr addrspace(1) %109
  %110 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %111 = getelementptr i8, ptr addrspace(1) %110, i64 864691128455135236
  store ptr addrspace(1) %111, ptr %15
  %112 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %112), !dbg !24
  store ptr addrspace(1) null, ptr %16
  store i64 2, ptr %n
  %113 = call ptr addrspace(1) @_B_mkInt(i64 2), !dbg !25
  store ptr addrspace(1) %113, ptr %17
  %114 = load ptr addrspace(1), ptr %17
  %115 = load i64, ptr %n
  %116 = addrspacecast ptr addrspace(1) %114 to ptr
  %117 = ptrtoint ptr %116 to i64
  %118 = and i64 %117, 2233785415175766016
  %119 = icmp eq i64 %118, 144115188075855872
  br i1 %119, label %122, label %125
120:
  %121 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %121), !dbg !12
  unreachable
122:
  %123 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %114), !dbg !26
  %124 = icmp eq i64 %123, %115
  store i1 %124, ptr %18
  br label %126
125:
  store i1 0, ptr %18
  br label %126
126:
  %127 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 3
  %129 = load ptr addrspace(1), ptr addrspace(1) %128, align 8
  %130 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %131 = load i1, ptr %18
  %132 = zext i1 %131 to i64
  %133 = or i64 %132, 72057594037927936
  %134 = getelementptr i8, ptr addrspace(1) null, i64 %133
  %135 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %130, i64 0, i64 0
  store ptr addrspace(1) %134, ptr addrspace(1) %135
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 1
  store i64 1, ptr addrspace(1) %136
  %137 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %138 = getelementptr i8, ptr addrspace(1) %137, i64 864691128455135236
  store ptr addrspace(1) %138, ptr %19
  %139 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %139), !dbg !28
  store ptr addrspace(1) null, ptr %20
  store i64 17, ptr %n
  %140 = call ptr addrspace(1) @_B_mkInt(i64 17), !dbg !29
  store ptr addrspace(1) %140, ptr %21
  %141 = load i64, ptr %n
  %142 = load ptr addrspace(1), ptr %21
  %143 = addrspacecast ptr addrspace(1) %142 to ptr
  %144 = ptrtoint ptr %143 to i64
  %145 = and i64 %144, 2233785415175766016
  %146 = icmp eq i64 %145, 144115188075855872
  br i1 %146, label %147, label %150
147:
  %148 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %142), !dbg !30
  %149 = icmp ne i64 %148, %141
  store i1 %149, ptr %22
  br label %151
150:
  store i1 1, ptr %22
  br label %151
151:
  %152 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 3
  %154 = load ptr addrspace(1), ptr addrspace(1) %153, align 8
  %155 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %156 = load i1, ptr %22
  %157 = zext i1 %156 to i64
  %158 = or i64 %157, 72057594037927936
  %159 = getelementptr i8, ptr addrspace(1) null, i64 %158
  %160 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %155, i64 0, i64 0
  store ptr addrspace(1) %159, ptr addrspace(1) %160
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 1
  store i64 1, ptr addrspace(1) %161
  %162 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %163 = getelementptr i8, ptr addrspace(1) %162, i64 864691128455135236
  store ptr addrspace(1) %163, ptr %23
  %164 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %164), !dbg !32
  store ptr addrspace(1) null, ptr %24
  store i1 1, ptr %b
  %165 = call ptr addrspace(1) @_B_mkBoolean(i1 1), !dbg !33
  store ptr addrspace(1) %165, ptr %25
  %166 = load ptr addrspace(1), ptr %25
  %167 = load i1, ptr %b
  %168 = zext i1 %167 to i64
  %169 = or i64 %168, 72057594037927936
  %170 = getelementptr i8, ptr addrspace(1) null, i64 %169
  %171 = icmp eq ptr addrspace(1) %166, %170
  store i1 %171, ptr %26
  %172 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 3
  %174 = load ptr addrspace(1), ptr addrspace(1) %173, align 8
  %175 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %176 = load i1, ptr %26
  %177 = zext i1 %176 to i64
  %178 = or i64 %177, 72057594037927936
  %179 = getelementptr i8, ptr addrspace(1) null, i64 %178
  %180 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %175, i64 0, i64 0
  store ptr addrspace(1) %179, ptr addrspace(1) %180
  %181 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 1
  store i64 1, ptr addrspace(1) %181
  %182 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %183 = getelementptr i8, ptr addrspace(1) %182, i64 864691128455135236
  store ptr addrspace(1) %183, ptr %27
  %184 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %184), !dbg !35
  store ptr addrspace(1) null, ptr %28
  store i1 0, ptr %b
  %185 = call ptr addrspace(1) @_B_mkBoolean(i1 0), !dbg !36
  store ptr addrspace(1) %185, ptr %29
  %186 = load i1, ptr %b
  %187 = load ptr addrspace(1), ptr %29
  %188 = zext i1 %186 to i64
  %189 = or i64 %188, 72057594037927936
  %190 = getelementptr i8, ptr addrspace(1) null, i64 %189
  %191 = icmp ne ptr addrspace(1) %187, %190
  store i1 %191, ptr %30
  %192 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %193 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 3
  %194 = load ptr addrspace(1), ptr addrspace(1) %193, align 8
  %195 = bitcast ptr addrspace(1) %194 to ptr addrspace(1)
  %196 = load i1, ptr %30
  %197 = zext i1 %196 to i64
  %198 = or i64 %197, 72057594037927936
  %199 = getelementptr i8, ptr addrspace(1) null, i64 %198
  %200 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %195, i64 0, i64 0
  store ptr addrspace(1) %199, ptr addrspace(1) %200
  %201 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 1
  store i64 1, ptr addrspace(1) %201
  %202 = bitcast ptr addrspace(1) %192 to ptr addrspace(1)
  %203 = getelementptr i8, ptr addrspace(1) %202, i64 864691128455135236
  store ptr addrspace(1) %203, ptr %31
  %204 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %204), !dbg !38
  store ptr addrspace(1) null, ptr %32
  ret void
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
  %7 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %6), !dbg !41
  ret ptr addrspace(1) %7
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 4868), !dbg !39
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !40
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
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !42
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !43
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-equal/8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"mkBoolean", linkageName:"_B_mkBoolean", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 6, column: 21, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 4, scope: !5)
!22 = !DILocation(line: 8, column: 24, scope: !5)
!23 = !DILocation(line: 8, column: 15, scope: !5)
!24 = !DILocation(line: 8, column: 4, scope: !5)
!25 = !DILocation(line: 10, column: 15, scope: !5)
!26 = !DILocation(line: 10, column: 24, scope: !5)
!27 = !DILocation(line: 10, column: 15, scope: !5)
!28 = !DILocation(line: 10, column: 4, scope: !5)
!29 = !DILocation(line: 12, column: 20, scope: !5)
!30 = !DILocation(line: 12, column: 17, scope: !5)
!31 = !DILocation(line: 12, column: 15, scope: !5)
!32 = !DILocation(line: 12, column: 4, scope: !5)
!33 = !DILocation(line: 14, column: 15, scope: !5)
!34 = !DILocation(line: 14, column: 15, scope: !5)
!35 = !DILocation(line: 14, column: 4, scope: !5)
!36 = !DILocation(line: 16, column: 20, scope: !5)
!37 = !DILocation(line: 16, column: 15, scope: !5)
!38 = !DILocation(line: 16, column: 4, scope: !5)
!39 = !DILocation(line: 0, column: 0, scope: !7)
!40 = !DILocation(line: 19, column: 9, scope: !7)
!41 = !DILocation(line: 20, column: 4, scope: !7)
!42 = !DILocation(line: 0, column: 0, scope: !9)
!43 = !DILocation(line: 23, column: 9, scope: !9)
