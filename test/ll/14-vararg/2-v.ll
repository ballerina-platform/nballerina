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
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %81, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 0
  store i64 2, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %1
  %25 = load ptr addrspace(1), ptr %1
  %26 = call i64 @_B_addAllTo(i64 1, ptr addrspace(1) %25), !dbg !12
  store i64 %26, ptr %2
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load i64, ptr %2
  %32 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %31), !dbg !14
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %3
  %37 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !15
  store ptr addrspace(1) null, ptr %4
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = getelementptr inbounds [0 x i64], ptr addrspace(1) %41, i64 0, i64 0
  store i64 2, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %5
  %46 = load ptr addrspace(1), ptr %5
  %47 = call i64 @_B_addAllTo(i64 1, ptr addrspace(1) %46), !dbg !17
  store i64 %47, ptr %6
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load i64, ptr %6
  %53 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %52), !dbg !19
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %7
  %58 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !20
  store ptr addrspace(1) null, ptr %8
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !21
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = getelementptr inbounds [0 x i64], ptr addrspace(1) %62, i64 0, i64 0
  store i64 2, ptr addrspace(1) %63
  %64 = getelementptr inbounds [0 x i64], ptr addrspace(1) %62, i64 0, i64 1
  store i64 3, ptr addrspace(1) %64
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 2, ptr addrspace(1) %65
  %66 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 864691128455135236
  store ptr addrspace(1) %67, ptr %9
  %68 = load ptr addrspace(1), ptr %9
  %69 = call i64 @_B_addAllTo(i64 1, ptr addrspace(1) %68), !dbg !22
  store i64 %69, ptr %10
  %70 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 3
  %72 = load ptr addrspace(1), ptr addrspace(1) %71, align 8
  %73 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %74 = load i64, ptr %10
  %75 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %74), !dbg !24
  %76 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %73, i64 0, i64 0
  store ptr addrspace(1) %75, ptr addrspace(1) %76
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 1
  store i64 1, ptr addrspace(1) %77
  %78 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %79 = getelementptr i8, ptr addrspace(1) %78, i64 864691128455135236
  store ptr addrspace(1) %79, ptr %11
  %80 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %80), !dbg !25
  store ptr addrspace(1) null, ptr %12
  ret void
81:
  %82 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %82), !dbg !10
  unreachable
}
define internal i64 @_B_addAllTo(i64 %0, ptr addrspace(1) %1) !dbg !7 {
  %base = alloca i64
  %args = alloca ptr addrspace(1)
  %sum = alloca i64
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %38, label %12
12:
  store i64 %0, ptr %base
  store ptr addrspace(1) %1, ptr %args
  %13 = load i64, ptr %base
  store i64 %13, ptr %sum
  %14 = load ptr addrspace(1), ptr %args
  %15 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %14), !dbg !28
  %16 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %15), !dbg !29
  store i64 %16, ptr %3
  store i64 0, ptr %i
  br label %17
17:
  %18 = load i64, ptr %i
  %19 = load i64, ptr %3
  %20 = icmp slt i64 %18, %19
  store i1 %20, ptr %4
  %21 = load i1, ptr %4
  br i1 %21, label %24, label %22
22:
  %23 = load i64, ptr %sum
  ret i64 %23
24:
  %25 = load ptr addrspace(1), ptr %args
  %26 = load i64, ptr %i
  %27 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 72057594037927928)
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  %30 = load i64, ptr addrspace(1) %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %40, label %43
32:
  %33 = load i64, ptr %i
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %7
  %35 = load i64, ptr %7
  store i64 %35, ptr %i
  br label %17
36:
  %37 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !30
  unreachable
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !26
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !27
  unreachable
40:
  %41 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 4)
  %42 = icmp ne ptr addrspace(1) %41, null
  br i1 %42, label %45, label %51
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 2821), !dbg !26
  store ptr addrspace(1) %44, ptr %8
  br label %36
45:
  %46 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x i64], ptr addrspace(1) %48, i64 0, i64 %26
  %50 = load i64, ptr addrspace(1) %49, align 8
  store i64 %50, ptr %5
  br label %57
51:
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 0
  %53 = load ptr, ptr addrspace(1) %52, align 8
  %54 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8
  %56 = call i64 %55(ptr addrspace(1) %25, i64 %26)
  store i64 %56, ptr %5
  br label %57
57:
  %58 = load i64, ptr %sum
  %59 = load i64, ptr %5
  %60 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %58, i64 %59)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %65, label %62
62:
  %63 = extractvalue {i64, i1} %60, 0
  store i64 %63, ptr %6
  %64 = load i64, ptr %6
  store i64 %64, ptr %sum
  br label %32
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !26
  store ptr addrspace(1) %66, ptr %8
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-vararg/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"addAllTo", linkageName:"_B_addAllTo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 27, scope: !5)
!12 = !DILocation(line: 3, column: 15, scope: !5)
!13 = !DILocation(line: 3, column: 15, scope: !5)
!14 = !DILocation(line: 3, column: 15, scope: !5)
!15 = !DILocation(line: 3, column: 4, scope: !5)
!16 = !DILocation(line: 4, column: 27, scope: !5)
!17 = !DILocation(line: 4, column: 15, scope: !5)
!18 = !DILocation(line: 4, column: 15, scope: !5)
!19 = !DILocation(line: 4, column: 15, scope: !5)
!20 = !DILocation(line: 4, column: 4, scope: !5)
!21 = !DILocation(line: 5, column: 27, scope: !5)
!22 = !DILocation(line: 5, column: 15, scope: !5)
!23 = !DILocation(line: 5, column: 15, scope: !5)
!24 = !DILocation(line: 5, column: 15, scope: !5)
!25 = !DILocation(line: 5, column: 4, scope: !5)
!26 = !DILocation(line: 0, column: 0, scope: !7)
!27 = !DILocation(line: 8, column: 9, scope: !7)
!28 = !DILocation(line: 10, column: 32, scope: !7)
!29 = !DILocation(line: 10, column: 32, scope: !7)
!30 = !DILocation(line: 14, column: 0, scope: !7)
