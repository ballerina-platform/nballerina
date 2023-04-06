@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %24, label %8
8:
  %9 = call ptr addrspace(1) @_B_origin(), !dbg !11
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  %11 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434)), !dbg !12
  %12 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %10, ptr addrspace(1) %11), !dbg !13
  store ptr addrspace(1) %12, ptr %2
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = load ptr addrspace(1), ptr %2
  %18 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %17), !dbg !15
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %3
  %23 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !16
  store ptr addrspace(1) null, ptr %4
  ret void
24:
  %25 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_origin() !dbg !7 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %18, label %5
5:
  %6 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 3), !dbg !19
  %7 = and i64 72057594037927935, 0
  %8 = or i64 2449958197289549824, %7
  %9 = getelementptr i8, ptr addrspace(1) null, i64 %8
  call void @_bal_mapping_init_member(ptr addrspace(1) %6, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %9), !dbg !20
  %10 = and i64 72057594037927935, 0
  %11 = or i64 2449958197289549824, %10
  %12 = getelementptr i8, ptr addrspace(1) null, i64 %11
  call void @_bal_mapping_init_member(ptr addrspace(1) %6, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %12), !dbg !21
  %13 = and i64 72057594037927935, 10
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %6, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %15), !dbg !22
  store ptr addrspace(1) %6, ptr %1
  %16 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %16, ptr %p
  %17 = load ptr addrspace(1), ptr %p
  ret ptr addrspace(1) %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !18
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/fieldexpr7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"origin", linkageName:"_B_origin", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 16, scope: !5)
!11 = !DILocation(line: 9, column: 15, scope: !5)
!12 = !DILocation(line: 9, column: 23, scope: !5)
!13 = !DILocation(line: 9, column: 23, scope: !5)
!14 = !DILocation(line: 9, column: 15, scope: !5)
!15 = !DILocation(line: 9, column: 15, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 12, column: 9, scope: !7)
!19 = !DILocation(line: 13, column: 14, scope: !7)
!20 = !DILocation(line: 13, column: 14, scope: !7)
!21 = !DILocation(line: 13, column: 14, scope: !7)
!22 = !DILocation(line: 13, column: 14, scope: !7)
