@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %l = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %33, label %9
9:
  %10 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !11
  %11 = and i64 72057594037927935, 40
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417), ptr addrspace(1) %13), !dbg !12
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100341614), ptr addrspace(1) null), !dbg !13
  store ptr addrspace(1) %10, ptr %1
  %14 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !14
  %15 = and i64 72057594037927935, 42
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417), ptr addrspace(1) %17), !dbg !15
  %18 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100341614), ptr addrspace(1) %18), !dbg !16
  store ptr addrspace(1) %14, ptr %2
  %19 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %19, ptr %l
  %20 = load ptr addrspace(1), ptr %l
  %21 = call i64 @_B_sum(ptr addrspace(1) %20), !dbg !17
  store i64 %21, ptr %3
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = load i64, ptr %3
  %27 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %26), !dbg !19
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %4
  %32 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %32), !dbg !20
  store ptr addrspace(1) null, ptr %5
  ret void
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !10
  unreachable
}
define internal i64 @_B_sum(ptr addrspace(1) %0) !dbg !7 {
  %intList = alloca ptr addrspace(1)
  %temp = alloca ptr addrspace(1)
  %total = alloca i64
  %temp.1 = alloca ptr addrspace(1)
  %temp.2 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %31, label %9
9:
  store ptr addrspace(1) %0, ptr %intList
  %10 = load ptr addrspace(1), ptr %intList
  store ptr addrspace(1) %10, ptr %temp
  store i64 0, ptr %total
  br label %11
11:
  %12 = load ptr addrspace(1), ptr %temp
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 936748722493063168
  br i1 %16, label %17, label %26
17:
  %18 = load ptr addrspace(1), ptr %temp
  store ptr addrspace(1) %18, ptr %temp.1
  %19 = load ptr addrspace(1), ptr %temp.1
  %20 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417)), !dbg !23
  %21 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %20), !dbg !24
  store i64 %21, ptr %2
  %22 = load i64, ptr %total
  %23 = load i64, ptr %2
  %24 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %22, i64 %23)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %40, label %33
26:
  %27 = load ptr addrspace(1), ptr %temp
  store ptr addrspace(1) %27, ptr %temp.2
  %28 = load i64, ptr %total
  ret i64 %28
29:
  %30 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !27
  unreachable
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !22
  unreachable
33:
  %34 = extractvalue {i64, i1} %24, 0
  store i64 %34, ptr %3
  %35 = load i64, ptr %3
  store i64 %35, ptr %total
  %36 = load ptr addrspace(1), ptr %temp.1
  %37 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %36, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100341614)), !dbg !25
  %38 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %36, ptr addrspace(1) %37), !dbg !26
  store ptr addrspace(1) %38, ptr %4
  %39 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %39, ptr %temp
  br label %11
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 4353), !dbg !21
  store ptr addrspace(1) %41, ptr %5
  br label %29
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/while01-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"sum", linkageName:"_B_sum", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 16, scope: !5)
!11 = !DILocation(line: 9, column: 31, scope: !5)
!12 = !DILocation(line: 9, column: 31, scope: !5)
!13 = !DILocation(line: 9, column: 31, scope: !5)
!14 = !DILocation(line: 9, column: 16, scope: !5)
!15 = !DILocation(line: 9, column: 16, scope: !5)
!16 = !DILocation(line: 9, column: 16, scope: !5)
!17 = !DILocation(line: 10, column: 15, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 0, column: 0, scope: !7)
!22 = !DILocation(line: 13, column: 9, scope: !7)
!23 = !DILocation(line: 17, column: 19, scope: !7)
!24 = !DILocation(line: 17, column: 19, scope: !7)
!25 = !DILocation(line: 18, column: 17, scope: !7)
!26 = !DILocation(line: 18, column: 17, scope: !7)
!27 = !DILocation(line: 21, column: 0, scope: !7)
