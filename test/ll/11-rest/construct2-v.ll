@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %33, label %7
7:
  %8 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 4), !dbg !9
  %9 = and i64 72057594037927935, 1
  %10 = or i64 2449958197289549824, %9
  %11 = getelementptr i8, ptr addrspace(1) null, i64 %10
  call void @_bal_mapping_init_member(ptr addrspace(1) %8, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %11), !dbg !10
  %12 = and i64 72057594037927935, 2
  %13 = or i64 2449958197289549824, %12
  %14 = getelementptr i8, ptr addrspace(1) null, i64 %13
  call void @_bal_mapping_init_member(ptr addrspace(1) %8, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %14), !dbg !11
  %15 = and i64 72057594037927935, 3
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  call void @_bal_mapping_init_member(ptr addrspace(1) %8, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %17), !dbg !12
  %18 = and i64 72057594037927935, 4
  %19 = or i64 2449958197289549824, %18
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  call void @_bal_mapping_init_member(ptr addrspace(1) %8, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %20), !dbg !13
  store ptr addrspace(1) %8, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %21, ptr %r
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = load ptr addrspace(1), ptr %r
  %27 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %26), !dbg !15
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %2
  %32 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %32), !dbg !16
  store ptr addrspace(1) null, ptr %3
  ret void
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-rest/construct2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 10, scope: !5)
!10 = !DILocation(line: 10, column: 10, scope: !5)
!11 = !DILocation(line: 10, column: 10, scope: !5)
!12 = !DILocation(line: 10, column: 10, scope: !5)
!13 = !DILocation(line: 10, column: 10, scope: !5)
!14 = !DILocation(line: 14, column: 15, scope: !5)
!15 = !DILocation(line: 14, column: 15, scope: !5)
!16 = !DILocation(line: 14, column: 4, scope: !5)
