@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
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
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %122, label %22
22:
  %23 = zext i1 1 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  store ptr addrspace(1) %25, ptr %v
  %26 = load ptr addrspace(1), ptr %v
  %27 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %26), !dbg !9
  store i1 %27, ptr %1
  %28 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %30 = load ptr addrspace(1), ptr addrspace(1) %29, align 8
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = load i1, ptr %1
  %33 = zext i1 %32 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %31, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  store i64 1, ptr addrspace(1) %37
  %38 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %2
  %40 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %40), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %41 = load ptr addrspace(1), ptr %v
  %42 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %41), !dbg !12
  store i1 %42, ptr %4
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load i1, ptr %4
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, ptr addrspace(1) null, i64 %49
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %5
  %55 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %55), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %56 = zext i1 0 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, ptr addrspace(1) null, i64 %57
  store ptr addrspace(1) %58, ptr %v
  %59 = load ptr addrspace(1), ptr %v
  %60 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %59), !dbg !15
  store i1 %60, ptr %7
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
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
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %74 = load ptr addrspace(1), ptr %v
  %75 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %74), !dbg !18
  store i1 %75, ptr %10
  %76 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = load i1, ptr %10
  %81 = zext i1 %80 to i64
  %82 = or i64 %81, 72057594037927936
  %83 = getelementptr i8, ptr addrspace(1) null, i64 %82
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 0
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 1
  store i64 1, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %11
  %88 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %88), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %89 = and i64 72057594037927935, 0
  %90 = or i64 2449958197289549824, %89
  %91 = getelementptr i8, ptr addrspace(1) null, i64 %90
  store ptr addrspace(1) %91, ptr %v
  %92 = load ptr addrspace(1), ptr %v
  %93 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %92), !dbg !21
  store i1 %93, ptr %13
  %94 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = load i1, ptr %13
  %99 = zext i1 %98 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, ptr addrspace(1) null, i64 %100
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %97, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %14
  %106 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %107 = load ptr addrspace(1), ptr %v
  %108 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %107), !dbg !24
  store i1 %108, ptr %16
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
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
  call void @_Bb02ioprintln(ptr addrspace(1) %121), !dbg !26
  store ptr addrspace(1) null, ptr %18
  ret void
122:
  %123 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %123), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/booleantest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 17, scope: !5)
!10 = !DILocation(line: 8, column: 15, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 17, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 12, column: 17, scope: !5)
!16 = !DILocation(line: 12, column: 15, scope: !5)
!17 = !DILocation(line: 12, column: 4, scope: !5)
!18 = !DILocation(line: 13, column: 17, scope: !5)
!19 = !DILocation(line: 13, column: 15, scope: !5)
!20 = !DILocation(line: 13, column: 4, scope: !5)
!21 = !DILocation(line: 15, column: 17, scope: !5)
!22 = !DILocation(line: 15, column: 15, scope: !5)
!23 = !DILocation(line: 15, column: 4, scope: !5)
!24 = !DILocation(line: 16, column: 17, scope: !5)
!25 = !DILocation(line: 16, column: 15, scope: !5)
!26 = !DILocation(line: 16, column: 4, scope: !5)
