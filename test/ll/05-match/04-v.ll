@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Bt04root4 = external constant {i32, i32, [0 x ptr]}
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"greeting\00\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i8
  %27 = load ptr, ptr @_bal_stack_guard
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %145, label %29
29:
  %30 = and i64 72057594037927935, 0
  %31 = or i64 2449958197289549824, %30
  %32 = getelementptr i8, ptr addrspace(1) null, i64 %31
  %33 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %32), !dbg !11
  store ptr addrspace(1) %33, ptr %1
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load ptr addrspace(1), ptr %1
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %2
  %43 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %44 = and i64 72057594037927935, 1
  %45 = or i64 2449958197289549824, %44
  %46 = getelementptr i8, ptr addrspace(1) null, i64 %45
  %47 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %46), !dbg !14
  store ptr addrspace(1) %47, ptr %4
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load ptr addrspace(1), ptr %4
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %54
  %55 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 864691128455135236
  store ptr addrspace(1) %56, ptr %5
  %57 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %58 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824)), !dbg !17
  store ptr addrspace(1) %58, ptr %7
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = load ptr addrspace(1), ptr %7
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) %63, ptr addrspace(1) %64
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 1, ptr addrspace(1) %65
  %66 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 864691128455135236
  store ptr addrspace(1) %67, ptr %8
  %68 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %68), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %69 = zext i1 1 to i64
  %70 = or i64 %69, 72057594037927936
  %71 = getelementptr i8, ptr addrspace(1) null, i64 %70
  %72 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %71), !dbg !20
  store ptr addrspace(1) %72, ptr %10
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = load ptr addrspace(1), ptr %10
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %77, ptr addrspace(1) %78
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %79
  %80 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 864691128455135236
  store ptr addrspace(1) %81, ptr %11
  %82 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %82), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %83 = and i64 72057594037927935, 9
  %84 = or i64 2449958197289549824, %83
  %85 = getelementptr i8, ptr addrspace(1) null, i64 %84
  %86 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %85), !dbg !23
  store ptr addrspace(1) %86, ptr %13
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = load ptr addrspace(1), ptr %13
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %14
  %96 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !25
  store ptr addrspace(1) null, ptr %15
  %97 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223016)), !dbg !26
  store ptr addrspace(1) %97, ptr %16
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load ptr addrspace(1), ptr %16
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 1, ptr addrspace(1) %104
  %105 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %106 = getelementptr i8, ptr addrspace(1) %105, i64 864691128455135236
  store ptr addrspace(1) %106, ptr %17
  %107 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %107), !dbg !28
  store ptr addrspace(1) null, ptr %18
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = and i64 72057594037927935, 0
  %113 = or i64 2449958197289549824, %112
  %114 = getelementptr i8, ptr addrspace(1) null, i64 %113
  %115 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %114, ptr addrspace(1) %115
  %116 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %116
  %117 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %118 = getelementptr i8, ptr addrspace(1) %117, i64 864691128455135236
  store ptr addrspace(1) %118, ptr %19
  %119 = load ptr addrspace(1), ptr %19
  %120 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %119), !dbg !30
  store ptr addrspace(1) %120, ptr %20
  %121 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 3
  %123 = load ptr addrspace(1), ptr addrspace(1) %122, align 8
  %124 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %125 = load ptr addrspace(1), ptr %20
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %124, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %21
  %130 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !32
  store ptr addrspace(1) null, ptr %22
  %131 = zext i1 0 to i64
  %132 = or i64 %131, 72057594037927936
  %133 = getelementptr i8, ptr addrspace(1) null, i64 %132
  %134 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %133), !dbg !33
  store ptr addrspace(1) %134, ptr %23
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load ptr addrspace(1), ptr %23
  %140 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %139, ptr addrspace(1) %140
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %141
  %142 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %143 = getelementptr i8, ptr addrspace(1) %142, i64 864691128455135236
  store ptr addrspace(1) %143, ptr %24
  %144 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %144), !dbg !35
  store ptr addrspace(1) null, ptr %25
  ret void
145:
  %146 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %146), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %v.1 = alloca i64
  %v.2 = alloca ptr addrspace(1)
  %v.3 = alloca i64
  %v.4 = alloca ptr addrspace(1)
  %v.5 = alloca i1
  %v.6 = alloca ptr addrspace(1)
  %v.7 = alloca ptr addrspace(1)
  %v.8 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %27, label %5
5:
  store ptr addrspace(1) %0, ptr %v
  %6 = load ptr addrspace(1), ptr %v
  %7 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %6), !dbg !38
  br i1 %7, label %clause.0, label %gard.0
clause.0:
  %8 = load ptr addrspace(1), ptr %v
  %9 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %8), !dbg !43
  store i64 %9, ptr %v.1
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571016062330)
clause.1:
  %10 = load ptr addrspace(1), ptr %v
  %11 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %10), !dbg !42
  store i64 %11, ptr %v.3
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431063663)
clause.2:
  %12 = load ptr addrspace(1), ptr %v
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = trunc i64 %14 to i1
  store i1 %15, ptr %v.5
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2697200315080339298)
clause.3:
  %16 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %16, ptr %v.7
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str3 to ptr) to ptr addrspace(1)), i64 360287970189639680)
clause.4:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187965257249903)
gard.0:
  %17 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %17, ptr %v.2
  %18 = load ptr addrspace(1), ptr %v.2
  %19 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %18), !dbg !39
  br i1 %19, label %clause.1, label %gard.1
gard.1:
  %20 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %20, ptr %v.4
  %21 = load ptr addrspace(1), ptr %v.4
  %22 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %21), !dbg !40
  br i1 %22, label %clause.2, label %gard.2
gard.2:
  %23 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %23, ptr %v.6
  %24 = load ptr addrspace(1), ptr %v.6
  %25 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %24), !dbg !41
  br i1 %25, label %clause.3, label %gard.3
gard.3:
  %26 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %26, ptr %v.8
  br label %clause.4
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 4100), !dbg !36
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !37
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-match/04-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 15, scope: !5)
!19 = !DILocation(line: 7, column: 4, scope: !5)
!20 = !DILocation(line: 8, column: 15, scope: !5)
!21 = !DILocation(line: 8, column: 15, scope: !5)
!22 = !DILocation(line: 8, column: 4, scope: !5)
!23 = !DILocation(line: 9, column: 15, scope: !5)
!24 = !DILocation(line: 9, column: 15, scope: !5)
!25 = !DILocation(line: 9, column: 4, scope: !5)
!26 = !DILocation(line: 10, column: 15, scope: !5)
!27 = !DILocation(line: 10, column: 15, scope: !5)
!28 = !DILocation(line: 10, column: 4, scope: !5)
!29 = !DILocation(line: 11, column: 19, scope: !5)
!30 = !DILocation(line: 11, column: 15, scope: !5)
!31 = !DILocation(line: 11, column: 15, scope: !5)
!32 = !DILocation(line: 11, column: 4, scope: !5)
!33 = !DILocation(line: 12, column: 15, scope: !5)
!34 = !DILocation(line: 12, column: 15, scope: !5)
!35 = !DILocation(line: 12, column: 4, scope: !5)
!36 = !DILocation(line: 0, column: 0, scope: !7)
!37 = !DILocation(line: 16, column: 9, scope: !7)
!38 = !DILocation(line: 18, column: 10, scope: !7)
!39 = !DILocation(line: 21, column: 18, scope: !7)
!40 = !DILocation(line: 24, column: 13, scope: !7)
!41 = !DILocation(line: 27, column: 16, scope: !7)
!42 = !DILocation(line: 25, column: 12, scope: !7)
!43 = !DILocation(line: 22, column: 12, scope: !7)
