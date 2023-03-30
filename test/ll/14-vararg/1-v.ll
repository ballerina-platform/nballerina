@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i8
  %18 = load ptr, ptr @_bal_stack_guard
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %109, label %20
20:
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = getelementptr inbounds [0 x i64], ptr addrspace(1) %24, i64 0, i64 0
  store i64 1, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %1
  %29 = load ptr addrspace(1), ptr %1
  %30 = call i64 @_B_addAll(ptr addrspace(1) %29), !dbg !12
  store i64 %30, ptr %2
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load i64, ptr %2
  %36 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %35), !dbg !14
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %3
  %41 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !15
  store ptr addrspace(1) null, ptr %4
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !16
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = getelementptr inbounds [0 x i64], ptr addrspace(1) %45, i64 0, i64 0
  store i64 1, ptr addrspace(1) %46
  %47 = getelementptr inbounds [0 x i64], ptr addrspace(1) %45, i64 0, i64 1
  store i64 2, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 2, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %5
  %51 = load ptr addrspace(1), ptr %5
  %52 = call i64 @_B_addAll(ptr addrspace(1) %51), !dbg !17
  store i64 %52, ptr %6
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = load i64, ptr %6
  %58 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %57), !dbg !19
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %7
  %63 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !20
  store ptr addrspace(1) null, ptr %8
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !21
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = getelementptr inbounds [0 x i64], ptr addrspace(1) %67, i64 0, i64 0
  store i64 1, ptr addrspace(1) %68
  %69 = getelementptr inbounds [0 x i64], ptr addrspace(1) %67, i64 0, i64 1
  store i64 2, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 2, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %9
  %73 = load ptr addrspace(1), ptr %9
  %74 = call i64 @_B_addAll(ptr addrspace(1) %73), !dbg !22
  store i64 %74, ptr %10
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = load i64, ptr %10
  %80 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %79), !dbg !24
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %11
  %85 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %85), !dbg !25
  store ptr addrspace(1) null, ptr %12
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !26
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = getelementptr inbounds [0 x i64], ptr addrspace(1) %89, i64 0, i64 0
  store i64 1, ptr addrspace(1) %90
  %91 = getelementptr inbounds [0 x i64], ptr addrspace(1) %89, i64 0, i64 1
  store i64 2, ptr addrspace(1) %91
  %92 = getelementptr inbounds [0 x i64], ptr addrspace(1) %89, i64 0, i64 2
  store i64 3, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 3, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %13
  %96 = load ptr addrspace(1), ptr %13
  %97 = call i64 @_B_addAll(ptr addrspace(1) %96), !dbg !27
  store i64 %97, ptr %14
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !28
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load i64, ptr %14
  %103 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %102), !dbg !29
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %15
  %108 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !30
  store ptr addrspace(1) null, ptr %16
  ret void
109:
  %110 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %110), !dbg !10
  unreachable
}
define internal i64 @_B_addAll(ptr addrspace(1) %0) !dbg !7 {
  %args = alloca ptr addrspace(1)
  %sum = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %36, label %11
11:
  store ptr addrspace(1) %0, ptr %args
  store i64 0, ptr %sum
  %12 = load ptr addrspace(1), ptr %args
  %13 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %12), !dbg !33
  %14 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %13), !dbg !34
  store i64 %14, ptr %2
  store i64 0, ptr %i
  br label %15
15:
  %16 = load i64, ptr %i
  %17 = load i64, ptr %2
  %18 = icmp slt i64 %16, %17
  store i1 %18, ptr %3
  %19 = load i1, ptr %3
  br i1 %19, label %22, label %20
20:
  %21 = load i64, ptr %sum
  ret i64 %21
22:
  %23 = load ptr addrspace(1), ptr %args
  %24 = load i64, ptr %i
  %25 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 72057594037927928)
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  %28 = load i64, ptr addrspace(1) %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %38, label %41
30:
  %31 = load i64, ptr %i
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %6
  %33 = load i64, ptr %6
  store i64 %33, ptr %i
  br label %15
34:
  %35 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !35
  unreachable
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !31
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !32
  unreachable
38:
  %39 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 4)
  %40 = icmp ne ptr addrspace(1) %39, null
  br i1 %40, label %43, label %49
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !31
  store ptr addrspace(1) %42, ptr %7
  br label %34
43:
  %44 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = getelementptr inbounds [0 x i64], ptr addrspace(1) %46, i64 0, i64 %24
  %48 = load i64, ptr addrspace(1) %47, align 8
  store i64 %48, ptr %4
  br label %55
49:
  %50 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 0
  %51 = load ptr, ptr addrspace(1) %50, align 8
  %52 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = call i64 %53(ptr addrspace(1) %23, i64 %24)
  store i64 %54, ptr %4
  br label %55
55:
  %56 = load i64, ptr %sum
  %57 = load i64, ptr %4
  %58 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %56, i64 %57)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %63, label %60
60:
  %61 = extractvalue {i64, i1} %58, 0
  store i64 %61, ptr %5
  %62 = load i64, ptr %5
  store i64 %62, ptr %sum
  br label %30
63:
  %64 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !31
  store ptr addrspace(1) %64, ptr %7
  br label %34
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-vararg/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"addAll", linkageName:"_B_addAll", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 22, scope: !5)
!12 = !DILocation(line: 3, column: 15, scope: !5)
!13 = !DILocation(line: 3, column: 15, scope: !5)
!14 = !DILocation(line: 3, column: 15, scope: !5)
!15 = !DILocation(line: 3, column: 4, scope: !5)
!16 = !DILocation(line: 4, column: 22, scope: !5)
!17 = !DILocation(line: 4, column: 15, scope: !5)
!18 = !DILocation(line: 4, column: 15, scope: !5)
!19 = !DILocation(line: 4, column: 15, scope: !5)
!20 = !DILocation(line: 4, column: 4, scope: !5)
!21 = !DILocation(line: 5, column: 22, scope: !5)
!22 = !DILocation(line: 5, column: 15, scope: !5)
!23 = !DILocation(line: 5, column: 15, scope: !5)
!24 = !DILocation(line: 5, column: 15, scope: !5)
!25 = !DILocation(line: 5, column: 4, scope: !5)
!26 = !DILocation(line: 6, column: 22, scope: !5)
!27 = !DILocation(line: 6, column: 15, scope: !5)
!28 = !DILocation(line: 6, column: 15, scope: !5)
!29 = !DILocation(line: 6, column: 15, scope: !5)
!30 = !DILocation(line: 6, column: 4, scope: !5)
!31 = !DILocation(line: 0, column: 0, scope: !7)
!32 = !DILocation(line: 9, column: 9, scope: !7)
!33 = !DILocation(line: 11, column: 32, scope: !7)
!34 = !DILocation(line: 11, column: 32, scope: !7)
!35 = !DILocation(line: 15, column: 0, scope: !7)
