@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %31, label %9
9:
  %10 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !11
  %11 = and i64 72057594037927935, 99
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431129953), ptr addrspace(1) %13), !dbg !12
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570847961454), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187969552539978)), !dbg !13
  store ptr addrspace(1) %10, ptr %1
  %14 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %14, ptr %p
  %15 = load ptr addrspace(1), ptr %p
  %16 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %15), !dbg !14
  call void @_B_foo(ptr addrspace(1) %16), !dbg !15
  store ptr addrspace(1) null, ptr %2
  %17 = load ptr addrspace(1), ptr %p
  %18 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %17, i64 0), !dbg !16
  %19 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %18), !dbg !17
  store i64 %19, ptr %3
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load i64, ptr %3
  %25 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %24), !dbg !19
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %4
  %30 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !20
  store ptr addrspace(1) null, ptr %5
  ret void
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !10
  unreachable
}
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %m = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %12, label %6
6:
  store ptr addrspace(1) %0, ptr %m
  %7 = load ptr addrspace(1), ptr %m
  %8 = call i64 @_bal_mapping_set(ptr addrspace(1) %7, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431129953), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2694397701615742836)), !dbg !23
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %15
10:
  %11 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !24
  unreachable
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !22
  unreachable
14:
  ret void
15:
  %16 = or i64 %8, 3840
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 %16), !dbg !21
  store ptr addrspace(1) %17, ptr %2
  br label %10
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/inherent1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 16, scope: !5)
!11 = !DILocation(line: 9, column: 15, scope: !5)
!12 = !DILocation(line: 9, column: 15, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 10, column: 4, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 11, column: 16, scope: !5)
!17 = !DILocation(line: 11, column: 16, scope: !5)
!18 = !DILocation(line: 11, column: 15, scope: !5)
!19 = !DILocation(line: 11, column: 15, scope: !5)
!20 = !DILocation(line: 11, column: 4, scope: !5)
!21 = !DILocation(line: 0, column: 0, scope: !7)
!22 = !DILocation(line: 14, column: 9, scope: !7)
!23 = !DILocation(line: 15, column: 5, scope: !7)
!24 = !DILocation(line: 16, column: 0, scope: !7)
