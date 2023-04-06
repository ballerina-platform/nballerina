@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %29, label %9
9:
  %10 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !9
  %11 = and i64 72057594037927935, 44
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %13), !dbg !10
  %14 = and i64 72057594037927935, 88
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %16), !dbg !11
  %17 = and i64 72057594037927935, 10
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %19), !dbg !12
  store ptr addrspace(1) %10, ptr %1
  %20 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %20, ptr %p
  %21 = load ptr addrspace(1), ptr %p
  %22 = and i64 72057594037927935, 22
  %23 = or i64 2449958197289549824, %22
  %24 = getelementptr i8, ptr addrspace(1) null, i64 %23
  %25 = call i64 @_bal_mapping_set(ptr addrspace(1) %21, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %24), !dbg !13
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %46
27:
  %28 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !19
  unreachable
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !8
  unreachable
31:
  %32 = load ptr addrspace(1), ptr %p
  %33 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %32, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434)), !dbg !14
  %34 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %32, ptr addrspace(1) %33), !dbg !15
  store ptr addrspace(1) %34, ptr %2
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = load ptr addrspace(1), ptr %2
  %40 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %39), !dbg !17
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %3
  %45 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !18
  store ptr addrspace(1) null, ptr %4
  ret void
46:
  %47 = or i64 %25, 2560
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 %47), !dbg !7
  store ptr addrspace(1) %48, ptr %5
  br label %27
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/fieldlvalue7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 14, scope: !5)
!10 = !DILocation(line: 9, column: 14, scope: !5)
!11 = !DILocation(line: 9, column: 14, scope: !5)
!12 = !DILocation(line: 9, column: 14, scope: !5)
!13 = !DILocation(line: 10, column: 5, scope: !5)
!14 = !DILocation(line: 11, column: 16, scope: !5)
!15 = !DILocation(line: 11, column: 16, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 11, column: 15, scope: !5)
!18 = !DILocation(line: 11, column: 4, scope: !5)
!19 = !DILocation(line: 12, column: 0, scope: !5)
