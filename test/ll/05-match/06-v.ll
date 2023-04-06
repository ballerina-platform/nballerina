@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %92, label %19
19:
  %20 = call i64 @_B_foo(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824)), !dbg !11
  store i64 %20, ptr %1
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load i64, ptr %1
  %26 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %25), !dbg !13
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %2
  %31 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %32 = and i64 72057594037927935, 1
  %33 = or i64 2449958197289549824, %32
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  %35 = call i64 @_B_foo(ptr addrspace(1) %34), !dbg !15
  store i64 %35, ptr %4
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i64, ptr %4
  %41 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %40), !dbg !17
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %5
  %46 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %47 = and i64 72057594037927935, 2
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  %50 = call i64 @_B_foo(ptr addrspace(1) %49), !dbg !19
  store i64 %50, ptr %7
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load i64, ptr %7
  %56 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %55), !dbg !21
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %8
  %61 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %61), !dbg !22
  store ptr addrspace(1) null, ptr %9
  %62 = and i64 72057594037927935, 3
  %63 = or i64 2449958197289549824, %62
  %64 = getelementptr i8, ptr addrspace(1) null, i64 %63
  %65 = call i64 @_B_foo(ptr addrspace(1) %64), !dbg !23
  store i64 %65, ptr %10
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = load i64, ptr %10
  %71 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %70), !dbg !25
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %11
  %76 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %77 = and i64 72057594037927935, -4
  %78 = or i64 2449958197289549824, %77
  %79 = getelementptr i8, ptr addrspace(1) null, i64 %78
  %80 = call i64 @_B_foo(ptr addrspace(1) %79), !dbg !27
  store i64 %80, ptr %13
  %81 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 3
  %83 = load ptr addrspace(1), ptr addrspace(1) %82, align 8
  %84 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %85 = load i64, ptr %13
  %86 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %85), !dbg !29
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %84, i64 0, i64 0
  store ptr addrspace(1) %86, ptr addrspace(1) %87
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 1
  store i64 1, ptr addrspace(1) %88
  %89 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %90 = getelementptr i8, ptr addrspace(1) %89, i64 864691128455135236
  store ptr addrspace(1) %90, ptr %14
  %91 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %91), !dbg !30
  store ptr addrspace(1) null, ptr %15
  ret void
92:
  %93 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %93), !dbg !10
  unreachable
}
define internal i64 @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %v.1 = alloca i64
  %v.2 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %32, label %9
9:
  store ptr addrspace(1) %0, ptr %v
  %10 = load ptr addrspace(1), ptr %v
  %11 = addrspacecast ptr addrspace(1) %10 to ptr
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 144115188075855872
  br i1 %14, label %15, label %22
15:
  %16 = load ptr addrspace(1), ptr %v
  %17 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %16), !dbg !33
  store i64 %17, ptr %v.1
  %18 = load i64, ptr %v.1
  %19 = icmp sle i64 1, %18
  %20 = icmp sge i64 3, %18
  %21 = and i1 %19, %20
  br i1 %21, label %clause.0, label %gard.0
22:
  %23 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %23, ptr %v.2
  ret i64 0
clause.0:
  %24 = load i64, ptr %v.1
  store i64 %24, ptr %2
  %25 = load i64, ptr %2
  ret i64 %25
clause.1:
  %26 = load i64, ptr %3
  %27 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %26)
  %28 = extractvalue {i64, i1} %27, 1
  br i1 %28, label %37, label %34
gard.0:
  %29 = load i64, ptr %v.1
  store i64 %29, ptr %3
  br label %clause.1
30:
  %31 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !34
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !31
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !32
  unreachable
34:
  %35 = extractvalue {i64, i1} %27, 0
  store i64 %35, ptr %4
  %36 = load i64, ptr %4
  ret i64 %36
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 4865), !dbg !31
  store ptr addrspace(1) %38, ptr %5
  br label %30
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-match/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 4, scope: !5)
!23 = !DILocation(line: 8, column: 15, scope: !5)
!24 = !DILocation(line: 8, column: 15, scope: !5)
!25 = !DILocation(line: 8, column: 15, scope: !5)
!26 = !DILocation(line: 8, column: 4, scope: !5)
!27 = !DILocation(line: 9, column: 15, scope: !5)
!28 = !DILocation(line: 9, column: 15, scope: !5)
!29 = !DILocation(line: 9, column: 15, scope: !5)
!30 = !DILocation(line: 9, column: 4, scope: !5)
!31 = !DILocation(line: 0, column: 0, scope: !7)
!32 = !DILocation(line: 12, column: 9, scope: !7)
!33 = !DILocation(line: 23, column: 4, scope: !7)
!34 = !DILocation(line: 24, column: 0, scope: !7)
