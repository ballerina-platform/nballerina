@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %91, label %18
18:
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = and i64 72057594037927935, 2
  %24 = or i64 2449958197289549824, %23
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %1
  %30 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !12
  store ptr addrspace(1) null, ptr %2
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = and i64 72057594037927935, 2
  %36 = or i64 2449958197289549824, %35
  %37 = getelementptr i8, ptr addrspace(1) null, i64 %36
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %39
  %40 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %41 = getelementptr i8, ptr addrspace(1) %40, i64 864691128455135236
  store ptr addrspace(1) %41, ptr %3
  %42 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %42), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = and i64 72057594037927935, 12
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %5
  %54 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %55 = call i64 @_B_add(i64 3, i64 5, i64 -5, i64 9), !dbg !17
  store i64 %55, ptr %7
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load i64, ptr %7
  %61 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %60), !dbg !19
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %8
  %66 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %66), !dbg !20
  store ptr addrspace(1) null, ptr %9
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = and i64 72057594037927935, 3
  %72 = or i64 2449958197289549824, %71
  %73 = getelementptr i8, ptr addrspace(1) null, i64 %72
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %73, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %10
  %78 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %78), !dbg !22
  store ptr addrspace(1) null, ptr %11
  %79 = call i64 @_B_add(i64 3, i64 -5, i64 9, i64 -4), !dbg !23
  store i64 %79, ptr %12
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i64, ptr %12
  %85 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %84), !dbg !25
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %13
  %90 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !26
  store ptr addrspace(1) null, ptr %14
  ret void
91:
  %92 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %92), !dbg !10
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1, i64 %2, i64 %3) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %d = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %19, label %12
12:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  store i64 %2, ptr %c
  store i64 %3, ptr %d
  %13 = load i64, ptr %a
  %14 = load i64, ptr %b
  %15 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %13, i64 %14)
  %16 = extractvalue {i64, i1} %15, 1
  br i1 %16, label %27, label %21
17:
  %18 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !29
  unreachable
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !28
  unreachable
21:
  %22 = extractvalue {i64, i1} %15, 0
  store i64 %22, ptr %5
  %23 = load i64, ptr %5
  %24 = load i64, ptr %c
  %25 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %23, i64 %24)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %35, label %29
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !27
  store ptr addrspace(1) %28, ptr %8
  br label %17
29:
  %30 = extractvalue {i64, i1} %25, 0
  store i64 %30, ptr %6
  %31 = load i64, ptr %6
  %32 = load i64, ptr %d
  %33 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %31, i64 %32)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %40, label %37
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !27
  store ptr addrspace(1) %36, ptr %8
  br label %17
37:
  %38 = extractvalue {i64, i1} %33, 0
  store i64 %38, ptr %7
  %39 = load i64, ptr %7
  ret i64 %39
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !27
  store ptr addrspace(1) %41, ptr %8
  br label %17
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/add9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"add", linkageName:"_B_add", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 15, scope: !5)
!25 = !DILocation(line: 10, column: 15, scope: !5)
!26 = !DILocation(line: 10, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 13, column: 9, scope: !7)
!29 = !DILocation(line: 15, column: 0, scope: !7)
