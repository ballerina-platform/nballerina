@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %42, label %11
11:
  %12 = and i64 72057594037927935, 1
  %13 = or i64 2449958197289549824, %12
  %14 = getelementptr i8, ptr addrspace(1) null, i64 %13
  %15 = call ptr addrspace(1) @_B_wrap(ptr addrspace(1) %14), !dbg !11
  store ptr addrspace(1) %15, ptr %1
  %16 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %18 = load ptr addrspace(1), ptr addrspace(1) %17, align 8
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = load ptr addrspace(1), ptr %1
  %21 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %20), !dbg !13
  %22 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 0
  store ptr addrspace(1) %21, ptr addrspace(1) %22
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  store i64 1, ptr addrspace(1) %23
  %24 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %25 = getelementptr i8, ptr addrspace(1) %24, i64 864691128455135236
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %26), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %27 = call ptr addrspace(1) @_B_wrap(ptr addrspace(1) null), !dbg !15
  store ptr addrspace(1) %27, ptr %4
  %28 = load ptr addrspace(1), ptr %4
  %29 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %28), !dbg !16
  %30 = call ptr addrspace(1) @_B_wrap(ptr addrspace(1) %29), !dbg !17
  store ptr addrspace(1) %30, ptr %5
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load ptr addrspace(1), ptr %5
  %36 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %35), !dbg !19
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %6
  %41 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !20
  store ptr addrspace(1) null, ptr %7
  ret void
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_wrap(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %10, label %6
6:
  store ptr addrspace(1) %0, ptr %x
  %7 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !23
  %8 = load ptr addrspace(1), ptr %x
  call void @_bal_mapping_init_member(ptr addrspace(1) %7, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187909691367798), ptr addrspace(1) %8), !dbg !24
  store ptr addrspace(1) %7, ptr %2
  %9 = load ptr addrspace(1), ptr %2
  ret ptr addrspace(1) %9
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !22
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"wrap", linkageName:"_B_wrap", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 20, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 15, scope: !5)
!19 = !DILocation(line: 6, column: 15, scope: !5)
!20 = !DILocation(line: 6, column: 4, scope: !5)
!21 = !DILocation(line: 0, column: 0, scope: !7)
!22 = !DILocation(line: 9, column: 9, scope: !7)
!23 = !DILocation(line: 10, column: 11, scope: !7)
!24 = !DILocation(line: 10, column: 11, scope: !7)
