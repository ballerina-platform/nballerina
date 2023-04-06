@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_bal_mapping_indexed_set(ptr addrspace(1), i64, ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %23, label %9
9:
  %10 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  call void @_bal_mapping_init_member(ptr addrspace(1) %10, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) null), !dbg !10
  store ptr addrspace(1) %10, ptr %1
  %11 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %11, ptr %r
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 0), !dbg !11
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %2
  %15 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %15, ptr %v
  %16 = load ptr addrspace(1), ptr %r
  %17 = load ptr addrspace(1), ptr %v
  %18 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %17), !dbg !12
  %19 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %16, i64 0, ptr addrspace(1) %18), !dbg !13
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %34
21:
  %22 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !17
  unreachable
23:
  %24 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %24), !dbg !8
  unreachable
25:
  %26 = load ptr addrspace(1), ptr %r
  %27 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %26, i64 0), !dbg !14
  %28 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %26, ptr addrspace(1) %27), !dbg !15
  store ptr addrspace(1) %28, ptr %3
  %29 = load ptr addrspace(1), ptr %3
  %30 = addrspacecast ptr addrspace(1) %29 to ptr
  %31 = ptrtoint ptr %30 to i64
  %32 = and i64 %31, 2233785415175766016
  %33 = icmp eq i64 %32, 864691128455135232
  br i1 %33, label %37, label %51
34:
  %35 = or i64 %19, 1792
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 %35), !dbg !7
  store ptr addrspace(1) %36, ptr %5
  br label %21
37:
  store ptr addrspace(1) %29, ptr %4
  %38 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %38, ptr %v2
  %39 = load ptr addrspace(1), ptr %v2
  %40 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %39, i64 72057594037927928), !dbg !16
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = zext i1 1 to i64
  %43 = or i64 %42, 72057594037927936
  %44 = getelementptr i8, ptr addrspace(1) null, i64 %43
  %45 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 0
  %46 = load ptr, ptr addrspace(1) %45, align 8
  %47 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 %48(ptr addrspace(1) %39, i64 0, ptr addrspace(1) %44)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %53, label %54
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 2051), !dbg !7
  store ptr addrspace(1) %52, ptr %5
  br label %21
53:
  ret void
54:
  %55 = or i64 %49, 2304
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 %55), !dbg !7
  store ptr addrspace(1) %56, ptr %5
  br label %21
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/record1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 11, scope: !5)
!10 = !DILocation(line: 5, column: 11, scope: !5)
!11 = !DILocation(line: 6, column: 14, scope: !5)
!12 = !DILocation(line: 7, column: 5, scope: !5)
!13 = !DILocation(line: 7, column: 5, scope: !5)
!14 = !DILocation(line: 8, column: 39, scope: !5)
!15 = !DILocation(line: 8, column: 39, scope: !5)
!16 = !DILocation(line: 9, column: 6, scope: !5)
!17 = !DILocation(line: 10, column: 0, scope: !5)
