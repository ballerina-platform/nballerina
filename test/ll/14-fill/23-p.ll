@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %45, label %8
8:
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr i8, ptr addrspace(1) %10, i64 864691128455135236
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %12, ptr %a
  %13 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !10
  %14 = and i64 72057594037927935, 1
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  call void @_bal_mapping_init_member(ptr addrspace(1) %13, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %16), !dbg !11
  store ptr addrspace(1) %13, ptr %2
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 4), !dbg !12
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = and i64 72057594037927935, 1
  %22 = or i64 2449958197289549824, %21
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = load ptr addrspace(1), ptr %2
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 1
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = call ptr addrspace(1) @_bal_float_to_tagged(double 3.1), !dbg !13
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 2
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 3
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013940), ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 4, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %3
  %33 = load ptr addrspace(1), ptr %a
  %34 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %33, i64 72057594037927928), !dbg !14
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load ptr addrspace(1), ptr %3
  %37 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 0
  %38 = load ptr, ptr addrspace(1) %37, align 8
  %39 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = call i64 %40(ptr addrspace(1) %33, i64 1, ptr addrspace(1) %36)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %48
43:
  %44 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !15
  unreachable
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !8
  unreachable
47:
  ret void
48:
  %49 = or i64 %41, 2304
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 %49), !dbg !7
  store ptr addrspace(1) %50, ptr %4
  br label %43
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/23-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 12, scope: !5)
!10 = !DILocation(line: 9, column: 15, scope: !5)
!11 = !DILocation(line: 9, column: 15, scope: !5)
!12 = !DILocation(line: 9, column: 11, scope: !5)
!13 = !DILocation(line: 9, column: 11, scope: !5)
!14 = !DILocation(line: 9, column: 5, scope: !5)
!15 = !DILocation(line: 10, column: 0, scope: !5)
