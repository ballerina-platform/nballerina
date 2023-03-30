@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %w = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %32, label %8
8:
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr i8, ptr addrspace(1) %10, i64 864691128455135236
  store ptr addrspace(1) %11, ptr %1
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !10
  %13 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %13), !dbg !11
  store ptr addrspace(1) %12, ptr %2
  %14 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %14, ptr %r
  %15 = load ptr addrspace(1), ptr %r
  %16 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %15), !dbg !12
  store ptr addrspace(1) %16, ptr %w
  %17 = load ptr addrspace(1), ptr %w
  %18 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %17, i64 0), !dbg !13
  %19 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %17, ptr addrspace(1) %18), !dbg !14
  store ptr addrspace(1) %19, ptr %3
  %20 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %20, ptr %x
  %21 = load ptr addrspace(1), ptr %x
  %22 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %21, i64 72057594037927928), !dbg !15
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 0
  %25 = load ptr, ptr addrspace(1) %24, align 8
  %26 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = call i64 %27(ptr addrspace(1) %21, i64 0, ptr addrspace(1) null)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %35
30:
  %31 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !16
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !8
  unreachable
34:
  ret void
35:
  %36 = or i64 %28, 3328
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 %36), !dbg !7
  store ptr addrspace(1) %37, ptr %4
  br label %30
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/exact2-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 15, scope: !5)
!10 = !DILocation(line: 10, column: 10, scope: !5)
!11 = !DILocation(line: 10, column: 10, scope: !5)
!12 = !DILocation(line: 11, column: 8, scope: !5)
!13 = !DILocation(line: 12, column: 16, scope: !5)
!14 = !DILocation(line: 12, column: 16, scope: !5)
!15 = !DILocation(line: 13, column: 5, scope: !5)
!16 = !DILocation(line: 14, column: 0, scope: !5)
