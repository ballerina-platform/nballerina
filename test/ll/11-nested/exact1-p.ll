@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %k = alloca ptr addrspace(1)
  %xy = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %xy.1 = alloca ptr addrspace(1)
  %xy.2 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %45, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 0), !dbg !10
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = getelementptr i8, ptr addrspace(1) %14, i64 864691128455135236
  store ptr addrspace(1) %15, ptr %2
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 2), !dbg !11
  %17 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %17), !dbg !12
  %18 = load ptr addrspace(1), ptr %2
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %18), !dbg !13
  store ptr addrspace(1) %16, ptr %3
  %19 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %19, ptr %r
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr %k
  %20 = load ptr addrspace(1), ptr %k
  %21 = load ptr addrspace(1), ptr %r
  %22 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %21, ptr addrspace(1) %20), !dbg !14
  %23 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %22), !dbg !15
  store ptr addrspace(1) %23, ptr %4
  %24 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %24, ptr %xy
  %25 = load ptr addrspace(1), ptr %xy
  %26 = addrspacecast ptr addrspace(1) %25 to ptr
  %27 = ptrtoint ptr %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 864691128455135232
  br i1 %29, label %30, label %41
30:
  %31 = load ptr addrspace(1), ptr %xy
  store ptr addrspace(1) %31, ptr %xy.1
  %32 = load ptr addrspace(1), ptr %xy.1
  %33 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %32, i64 72057594037927928), !dbg !16
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 0
  %36 = load ptr, ptr addrspace(1) %35, align 8
  %37 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = call i64 %38(ptr addrspace(1) %32, i64 0, ptr addrspace(1) null)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %47, label %48
41:
  %42 = load ptr addrspace(1), ptr %xy
  store ptr addrspace(1) %42, ptr %xy.2
  ret void
43:
  %44 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !17
  unreachable
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !8
  unreachable
47:
  br label %41
48:
  %49 = or i64 %39, 2816
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 %49), !dbg !7
  store ptr addrspace(1) %50, ptr %5
  br label %43
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/exact1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 15, scope: !5)
!10 = !DILocation(line: 7, column: 22, scope: !5)
!11 = !DILocation(line: 7, column: 10, scope: !5)
!12 = !DILocation(line: 7, column: 10, scope: !5)
!13 = !DILocation(line: 7, column: 10, scope: !5)
!14 = !DILocation(line: 9, column: 24, scope: !5)
!15 = !DILocation(line: 9, column: 24, scope: !5)
!16 = !DILocation(line: 11, column: 10, scope: !5)
!17 = !DILocation(line: 13, column: 0, scope: !5)
