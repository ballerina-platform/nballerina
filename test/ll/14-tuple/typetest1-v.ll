@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Bt04root4 = external constant {i32, i32, [0 x ptr]}
@_Bt04root5 = external constant {i32, i32, [0 x ptr]}
@_Bt04root6 = external constant {i32, i32, [0 x ptr]}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %si = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
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
  %20 = alloca i8
  %21 = load ptr, ptr @_bal_stack_guard
  %22 = icmp ult ptr %20, %21
  br i1 %22, label %129, label %23
23:
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %28
  %29 = and i64 72057594037927935, 17
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 1
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 2, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %1
  %36 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %36, ptr %si
  %37 = load ptr addrspace(1), ptr %si
  %38 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %37), !dbg !10
  store ptr addrspace(1) %38, ptr %v
  %39 = load ptr addrspace(1), ptr %v
  %40 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %39), !dbg !11
  store i1 %40, ptr %2
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load i1, ptr %2
  %46 = zext i1 %45 to i64
  %47 = or i64 %46, 72057594037927936
  %48 = getelementptr i8, ptr addrspace(1) null, i64 %47
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %48, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %3
  %53 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !13
  store ptr addrspace(1) null, ptr %4
  %54 = load ptr addrspace(1), ptr %v
  %55 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %54), !dbg !14
  store i1 %55, ptr %5
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load i1, ptr %5
  %61 = zext i1 %60 to i64
  %62 = or i64 %61, 72057594037927936
  %63 = getelementptr i8, ptr addrspace(1) null, i64 %62
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %63, ptr addrspace(1) %64
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %65
  %66 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 864691128455135236
  store ptr addrspace(1) %67, ptr %6
  %68 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %68), !dbg !16
  store ptr addrspace(1) null, ptr %7
  %69 = load ptr addrspace(1), ptr %v
  %70 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %69), !dbg !17
  store i1 %70, ptr %8
  %71 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 3
  %73 = load ptr addrspace(1), ptr addrspace(1) %72, align 8
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = load i1, ptr %8
  %76 = zext i1 %75 to i64
  %77 = or i64 %76, 72057594037927936
  %78 = getelementptr i8, ptr addrspace(1) null, i64 %77
  %79 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %74, i64 0, i64 0
  store ptr addrspace(1) %78, ptr addrspace(1) %79
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 1
  store i64 1, ptr addrspace(1) %80
  %81 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %82 = getelementptr i8, ptr addrspace(1) %81, i64 864691128455135236
  store ptr addrspace(1) %82, ptr %9
  %83 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %83), !dbg !19
  store ptr addrspace(1) null, ptr %10
  %84 = load ptr addrspace(1), ptr %v
  %85 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %84), !dbg !20
  store i1 %85, ptr %11
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = load i1, ptr %11
  %91 = zext i1 %90 to i64
  %92 = or i64 %91, 72057594037927936
  %93 = getelementptr i8, ptr addrspace(1) null, i64 %92
  %94 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %89, i64 0, i64 0
  store ptr addrspace(1) %93, ptr addrspace(1) %94
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 1, ptr addrspace(1) %95
  %96 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %97 = getelementptr i8, ptr addrspace(1) %96, i64 864691128455135236
  store ptr addrspace(1) %97, ptr %12
  %98 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %98), !dbg !22
  store ptr addrspace(1) null, ptr %13
  %99 = load ptr addrspace(1), ptr %v
  %100 = call i1 @_bal_type_contains(ptr @_Bt04root5, ptr addrspace(1) %99), !dbg !23
  store i1 %100, ptr %14
  %101 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !24
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 3
  %103 = load ptr addrspace(1), ptr addrspace(1) %102, align 8
  %104 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %105 = load i1, ptr %14
  %106 = zext i1 %105 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %104, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %15
  %113 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !25
  store ptr addrspace(1) null, ptr %16
  %114 = load ptr addrspace(1), ptr %v
  %115 = call i1 @_bal_type_contains(ptr @_Bt04root6, ptr addrspace(1) %114), !dbg !26
  store i1 %115, ptr %17
  %116 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 3
  %118 = load ptr addrspace(1), ptr addrspace(1) %117, align 8
  %119 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %120 = load i1, ptr %17
  %121 = zext i1 %120 to i64
  %122 = or i64 %121, 72057594037927936
  %123 = getelementptr i8, ptr addrspace(1) null, i64 %122
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %119, i64 0, i64 0
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  store i64 1, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %18
  %128 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %128), !dbg !28
  store ptr addrspace(1) null, ptr %19
  ret void
129:
  %130 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %130), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/typetest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 23, scope: !5)
!10 = !DILocation(line: 5, column: 12, scope: !5)
!11 = !DILocation(line: 6, column: 17, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 17, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 17, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 9, column: 17, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 17, scope: !5)
!24 = !DILocation(line: 10, column: 15, scope: !5)
!25 = !DILocation(line: 10, column: 4, scope: !5)
!26 = !DILocation(line: 11, column: 17, scope: !5)
!27 = !DILocation(line: 11, column: 15, scope: !5)
!28 = !DILocation(line: 11, column: 4, scope: !5)
