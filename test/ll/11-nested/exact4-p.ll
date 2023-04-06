@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %w = alloca ptr addrspace(1)
  %w0 = alloca ptr addrspace(1)
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
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = load ptr addrspace(1), ptr %1
  %17 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %16, ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %2
  %21 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %21, ptr %r
  %22 = load ptr addrspace(1), ptr %r
  %23 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %22), !dbg !11
  store ptr addrspace(1) %23, ptr %w
  %24 = load ptr addrspace(1), ptr %w
  %25 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %24, i64 72057594037927928)
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  %28 = load i64, ptr addrspace(1) %27, align 8
  %29 = icmp ult i64 0, %28
  br i1 %29, label %34, label %51
30:
  %31 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !14
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !8
  unreachable
34:
  %35 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 0
  %36 = load ptr, ptr addrspace(1) %35, align 8
  %37 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = call ptr addrspace(1) %38(ptr addrspace(1) %24, i64 0)
  %40 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %24, ptr addrspace(1) %39), !dbg !12
  store ptr addrspace(1) %40, ptr %3
  %41 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %41, ptr %w0
  %42 = load ptr addrspace(1), ptr %w0
  %43 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %42, i64 72057594037927928), !dbg !13
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 0
  %46 = load ptr, ptr addrspace(1) %45, align 8
  %47 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 %48(ptr addrspace(1) %42, i64 0, ptr addrspace(1) null)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %53, label %54
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %52, ptr %4
  br label %30
53:
  ret void
54:
  %55 = or i64 %49, 1536
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 %55), !dbg !7
  store ptr addrspace(1) %56, ptr %4
  br label %30
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/exact4-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 17, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 16, scope: !5)
!12 = !DILocation(line: 5, column: 17, scope: !5)
!13 = !DILocation(line: 6, column: 6, scope: !5)
!14 = !DILocation(line: 7, column: 0, scope: !5)
