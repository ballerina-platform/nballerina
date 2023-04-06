@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare zeroext i1 @_bal_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %v3 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %v4 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca i1
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca i1
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i8
  %27 = load ptr, ptr @_bal_stack_guard
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %189, label %29
29:
  %30 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !9
  %31 = and i64 72057594037927935, 1
  %32 = or i64 2449958197289549824, %31
  %33 = getelementptr i8, ptr addrspace(1) null, i64 %32
  call void @_bal_mapping_init_member(ptr addrspace(1) %30, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %33), !dbg !10
  %34 = and i64 72057594037927935, 2
  %35 = or i64 2449958197289549824, %34
  %36 = getelementptr i8, ptr addrspace(1) null, i64 %35
  call void @_bal_mapping_init_member(ptr addrspace(1) %30, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %36), !dbg !11
  %37 = and i64 72057594037927935, 3
  %38 = or i64 2449958197289549824, %37
  %39 = getelementptr i8, ptr addrspace(1) null, i64 %38
  call void @_bal_mapping_init_member(ptr addrspace(1) %30, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %39), !dbg !12
  store ptr addrspace(1) %30, ptr %1
  %40 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %40, ptr %v1
  %41 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !13
  %42 = and i64 72057594037927935, 3
  %43 = or i64 2449958197289549824, %42
  %44 = getelementptr i8, ptr addrspace(1) null, i64 %43
  call void @_bal_mapping_init_member(ptr addrspace(1) %41, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %44), !dbg !14
  %45 = and i64 72057594037927935, 2
  %46 = or i64 2449958197289549824, %45
  %47 = getelementptr i8, ptr addrspace(1) null, i64 %46
  call void @_bal_mapping_init_member(ptr addrspace(1) %41, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %47), !dbg !15
  %48 = and i64 72057594037927935, 1
  %49 = or i64 2449958197289549824, %48
  %50 = getelementptr i8, ptr addrspace(1) null, i64 %49
  call void @_bal_mapping_init_member(ptr addrspace(1) %41, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %50), !dbg !16
  store ptr addrspace(1) %41, ptr %2
  %51 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %51, ptr %v2
  %52 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !17
  %53 = and i64 72057594037927935, 1
  %54 = or i64 2449958197289549824, %53
  %55 = getelementptr i8, ptr addrspace(1) null, i64 %54
  call void @_bal_mapping_init_member(ptr addrspace(1) %52, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %55), !dbg !18
  %56 = and i64 72057594037927935, 2
  %57 = or i64 2449958197289549824, %56
  %58 = getelementptr i8, ptr addrspace(1) null, i64 %57
  call void @_bal_mapping_init_member(ptr addrspace(1) %52, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %58), !dbg !19
  %59 = and i64 72057594037927935, 4
  %60 = or i64 2449958197289549824, %59
  %61 = getelementptr i8, ptr addrspace(1) null, i64 %60
  call void @_bal_mapping_init_member(ptr addrspace(1) %52, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %61), !dbg !20
  store ptr addrspace(1) %52, ptr %3
  %62 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %62, ptr %v3
  %63 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 4), !dbg !21
  %64 = and i64 72057594037927935, 1
  %65 = or i64 2449958197289549824, %64
  %66 = getelementptr i8, ptr addrspace(1) null, i64 %65
  call void @_bal_mapping_init_member(ptr addrspace(1) %63, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %66), !dbg !22
  %67 = and i64 72057594037927935, 2
  %68 = or i64 2449958197289549824, %67
  %69 = getelementptr i8, ptr addrspace(1) null, i64 %68
  call void @_bal_mapping_init_member(ptr addrspace(1) %63, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %69), !dbg !23
  %70 = and i64 72057594037927935, 3
  %71 = or i64 2449958197289549824, %70
  %72 = getelementptr i8, ptr addrspace(1) null, i64 %71
  call void @_bal_mapping_init_member(ptr addrspace(1) %63, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %72), !dbg !24
  %73 = and i64 72057594037927935, 4
  %74 = or i64 2449958197289549824, %73
  %75 = getelementptr i8, ptr addrspace(1) null, i64 %74
  call void @_bal_mapping_init_member(ptr addrspace(1) %63, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261431), ptr addrspace(1) %75), !dbg !25
  store ptr addrspace(1) %63, ptr %4
  %76 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %76, ptr %v4
  %77 = load ptr addrspace(1), ptr %v1
  %78 = load ptr addrspace(1), ptr %v1
  %79 = call i1 @_bal_eq(ptr addrspace(1) %77, ptr addrspace(1) %78), !dbg !26
  store i1 %79, ptr %5
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i1, ptr %5
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, ptr addrspace(1) null, i64 %86
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %6
  %92 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !28
  store ptr addrspace(1) null, ptr %7
  %93 = load ptr addrspace(1), ptr %v1
  %94 = load ptr addrspace(1), ptr %v2
  %95 = call i1 @_bal_eq(ptr addrspace(1) %93, ptr addrspace(1) %94), !dbg !29
  store i1 %95, ptr %8
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !30
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = load i1, ptr %8
  %101 = zext i1 %100 to i64
  %102 = or i64 %101, 72057594037927936
  %103 = getelementptr i8, ptr addrspace(1) null, i64 %102
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %9
  %108 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !31
  store ptr addrspace(1) null, ptr %10
  %109 = load ptr addrspace(1), ptr %v1
  %110 = load ptr addrspace(1), ptr %v3
  %111 = call i1 @_bal_eq(ptr addrspace(1) %109, ptr addrspace(1) %110), !dbg !32
  store i1 %111, ptr %11
  %112 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !33
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %112, i64 0, i32 3
  %114 = load ptr addrspace(1), ptr addrspace(1) %113, align 8
  %115 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %116 = load i1, ptr %11
  %117 = zext i1 %116 to i64
  %118 = or i64 %117, 72057594037927936
  %119 = getelementptr i8, ptr addrspace(1) null, i64 %118
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %115, i64 0, i64 0
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %112, i64 0, i32 1
  store i64 1, ptr addrspace(1) %121
  %122 = bitcast ptr addrspace(1) %112 to ptr addrspace(1)
  %123 = getelementptr i8, ptr addrspace(1) %122, i64 864691128455135236
  store ptr addrspace(1) %123, ptr %12
  %124 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %124), !dbg !34
  store ptr addrspace(1) null, ptr %13
  %125 = load ptr addrspace(1), ptr %v1
  %126 = load ptr addrspace(1), ptr %v4
  %127 = call i1 @_bal_eq(ptr addrspace(1) %125, ptr addrspace(1) %126), !dbg !35
  store i1 %127, ptr %14
  %128 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !36
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 3
  %130 = load ptr addrspace(1), ptr addrspace(1) %129, align 8
  %131 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %132 = load i1, ptr %14
  %133 = zext i1 %132 to i64
  %134 = or i64 %133, 72057594037927936
  %135 = getelementptr i8, ptr addrspace(1) null, i64 %134
  %136 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %131, i64 0, i64 0
  store ptr addrspace(1) %135, ptr addrspace(1) %136
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 1
  store i64 1, ptr addrspace(1) %137
  %138 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %139 = getelementptr i8, ptr addrspace(1) %138, i64 864691128455135236
  store ptr addrspace(1) %139, ptr %15
  %140 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %140), !dbg !37
  store ptr addrspace(1) null, ptr %16
  %141 = load ptr addrspace(1), ptr %v4
  %142 = load ptr addrspace(1), ptr %v1
  %143 = call i1 @_bal_eq(ptr addrspace(1) %141, ptr addrspace(1) %142), !dbg !38
  store i1 %143, ptr %17
  %144 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !39
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 3
  %146 = load ptr addrspace(1), ptr addrspace(1) %145, align 8
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = load i1, ptr %17
  %149 = zext i1 %148 to i64
  %150 = or i64 %149, 72057594037927936
  %151 = getelementptr i8, ptr addrspace(1) null, i64 %150
  %152 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %147, i64 0, i64 0
  store ptr addrspace(1) %151, ptr addrspace(1) %152
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 1
  store i64 1, ptr addrspace(1) %153
  %154 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %155 = getelementptr i8, ptr addrspace(1) %154, i64 864691128455135236
  store ptr addrspace(1) %155, ptr %18
  %156 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %156), !dbg !40
  store ptr addrspace(1) null, ptr %19
  %157 = load ptr addrspace(1), ptr %v1
  %158 = load ptr addrspace(1), ptr %v1
  %159 = call i1 @_bal_exact_eq(ptr addrspace(1) %157, ptr addrspace(1) %158), !dbg !41
  store i1 %159, ptr %20
  %160 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !42
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = load i1, ptr %20
  %165 = zext i1 %164 to i64
  %166 = or i64 %165, 72057594037927936
  %167 = getelementptr i8, ptr addrspace(1) null, i64 %166
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %21
  %172 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !43
  store ptr addrspace(1) null, ptr %22
  %173 = load ptr addrspace(1), ptr %v1
  %174 = load ptr addrspace(1), ptr %v2
  %175 = call i1 @_bal_exact_eq(ptr addrspace(1) %173, ptr addrspace(1) %174), !dbg !44
  store i1 %175, ptr %23
  %176 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !45
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 3
  %178 = load ptr addrspace(1), ptr addrspace(1) %177, align 8
  %179 = bitcast ptr addrspace(1) %178 to ptr addrspace(1)
  %180 = load i1, ptr %23
  %181 = zext i1 %180 to i64
  %182 = or i64 %181, 72057594037927936
  %183 = getelementptr i8, ptr addrspace(1) null, i64 %182
  %184 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %179, i64 0, i64 0
  store ptr addrspace(1) %183, ptr addrspace(1) %184
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 1
  store i64 1, ptr addrspace(1) %185
  %186 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %187 = getelementptr i8, ptr addrspace(1) %186, i64 864691128455135236
  store ptr addrspace(1) %187, ptr %24
  %188 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %188), !dbg !46
  store ptr addrspace(1) null, ptr %25
  ret void
189:
  %190 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %190), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 18, scope: !5)
!10 = !DILocation(line: 5, column: 18, scope: !5)
!11 = !DILocation(line: 5, column: 18, scope: !5)
!12 = !DILocation(line: 5, column: 18, scope: !5)
!13 = !DILocation(line: 6, column: 18, scope: !5)
!14 = !DILocation(line: 6, column: 18, scope: !5)
!15 = !DILocation(line: 6, column: 18, scope: !5)
!16 = !DILocation(line: 6, column: 18, scope: !5)
!17 = !DILocation(line: 7, column: 18, scope: !5)
!18 = !DILocation(line: 7, column: 18, scope: !5)
!19 = !DILocation(line: 7, column: 18, scope: !5)
!20 = !DILocation(line: 7, column: 18, scope: !5)
!21 = !DILocation(line: 8, column: 18, scope: !5)
!22 = !DILocation(line: 8, column: 18, scope: !5)
!23 = !DILocation(line: 8, column: 18, scope: !5)
!24 = !DILocation(line: 8, column: 18, scope: !5)
!25 = !DILocation(line: 8, column: 18, scope: !5)
!26 = !DILocation(line: 10, column: 18, scope: !5)
!27 = !DILocation(line: 10, column: 15, scope: !5)
!28 = !DILocation(line: 10, column: 4, scope: !5)
!29 = !DILocation(line: 11, column: 18, scope: !5)
!30 = !DILocation(line: 11, column: 15, scope: !5)
!31 = !DILocation(line: 11, column: 4, scope: !5)
!32 = !DILocation(line: 12, column: 18, scope: !5)
!33 = !DILocation(line: 12, column: 15, scope: !5)
!34 = !DILocation(line: 12, column: 4, scope: !5)
!35 = !DILocation(line: 13, column: 18, scope: !5)
!36 = !DILocation(line: 13, column: 15, scope: !5)
!37 = !DILocation(line: 13, column: 4, scope: !5)
!38 = !DILocation(line: 14, column: 18, scope: !5)
!39 = !DILocation(line: 14, column: 15, scope: !5)
!40 = !DILocation(line: 14, column: 4, scope: !5)
!41 = !DILocation(line: 15, column: 18, scope: !5)
!42 = !DILocation(line: 15, column: 15, scope: !5)
!43 = !DILocation(line: 15, column: 4, scope: !5)
!44 = !DILocation(line: 16, column: 18, scope: !5)
!45 = !DILocation(line: 16, column: 15, scope: !5)
!46 = !DILocation(line: 16, column: 4, scope: !5)
