@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
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
  br i1 %8, label %31, label %9
9:
  %10 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187974082718054), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570998632266)), !dbg !10
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100012908), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187922559298899)), !dbg !11
  store ptr addrspace(1) %10, ptr %1
  %11 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 2), !dbg !12
  %12 = and i64 72057594037927935, 30
  %13 = or i64 2449958197289549824, %12
  %14 = getelementptr i8, ptr addrspace(1) null, i64 %13
  call void @_bal_mapping_init_member(ptr addrspace(1) %11, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431129953), ptr addrspace(1) %14), !dbg !13
  %15 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %11, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570847961454), ptr addrspace(1) %15), !dbg !14
  store ptr addrspace(1) %11, ptr %2
  %16 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %16, ptr %p
  %17 = load ptr addrspace(1), ptr %p
  %18 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %17, i64 1), !dbg !15
  %19 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %17, ptr addrspace(1) %18), !dbg !16
  store ptr addrspace(1) %19, ptr %3
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !17
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load ptr addrspace(1), ptr %3
  %25 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %24), !dbg !18
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %4
  %30 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !19
  store ptr addrspace(1) null, ptr %5
  ret void
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/record1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 13, column: 16, scope: !5)
!9 = !DILocation(line: 15, column: 14, scope: !5)
!10 = !DILocation(line: 15, column: 14, scope: !5)
!11 = !DILocation(line: 15, column: 14, scope: !5)
!12 = !DILocation(line: 14, column: 15, scope: !5)
!13 = !DILocation(line: 14, column: 15, scope: !5)
!14 = !DILocation(line: 14, column: 15, scope: !5)
!15 = !DILocation(line: 18, column: 16, scope: !5)
!16 = !DILocation(line: 18, column: 16, scope: !5)
!17 = !DILocation(line: 18, column: 15, scope: !5)
!18 = !DILocation(line: 18, column: 15, scope: !5)
!19 = !DILocation(line: 18, column: 4, scope: !5)
