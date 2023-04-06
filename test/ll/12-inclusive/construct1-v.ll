@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %s = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %50, label %11
11:
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %13 = and i64 72057594037927935, 17
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %15), !dbg !10
  %16 = and i64 72057594037927935, 42
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %18), !dbg !11
  store ptr addrspace(1) %12, ptr %1
  %19 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %19, ptr %r
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr %s
  %20 = load ptr addrspace(1), ptr %s
  %21 = load ptr addrspace(1), ptr %r
  %22 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %21, ptr addrspace(1) %20), !dbg !12
  %23 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %21, ptr addrspace(1) %22), !dbg !13
  store ptr addrspace(1) %23, ptr %2
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load ptr addrspace(1), ptr %2
  %29 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %28), !dbg !15
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %3
  %34 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !16
  store ptr addrspace(1) null, ptr %4
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr %s
  %35 = load ptr addrspace(1), ptr %s
  %36 = load ptr addrspace(1), ptr %r
  %37 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %36, ptr addrspace(1) %35), !dbg !17
  %38 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %36, ptr addrspace(1) %37), !dbg !18
  store ptr addrspace(1) %38, ptr %5
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = load ptr addrspace(1), ptr %5
  %44 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %43), !dbg !20
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) %44, ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 1, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %6
  %49 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %49), !dbg !21
  store ptr addrspace(1) null, ptr %7
  ret void
50:
  %51 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %51), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/construct1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 10, scope: !5)
!10 = !DILocation(line: 9, column: 10, scope: !5)
!11 = !DILocation(line: 9, column: 10, scope: !5)
!12 = !DILocation(line: 11, column: 16, scope: !5)
!13 = !DILocation(line: 11, column: 16, scope: !5)
!14 = !DILocation(line: 11, column: 15, scope: !5)
!15 = !DILocation(line: 11, column: 15, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
!17 = !DILocation(line: 13, column: 16, scope: !5)
!18 = !DILocation(line: 13, column: 16, scope: !5)
!19 = !DILocation(line: 13, column: 15, scope: !5)
!20 = !DILocation(line: 13, column: 15, scope: !5)
!21 = !DILocation(line: 13, column: 4, scope: !5)
