@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %34, label %11
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = getelementptr inbounds [0 x i64], ptr addrspace(1) %15, i64 0, i64 0
  store i64 42, ptr addrspace(1) %16
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %17
  %18 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %19 = getelementptr i8, ptr addrspace(1) %18, i64 864691128455135236
  store ptr addrspace(1) %19, ptr %1
  %20 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !10
  %21 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %20, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %21), !dbg !11
  store ptr addrspace(1) %20, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %22, ptr %v
  %23 = load ptr addrspace(1), ptr %v
  %24 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %23, i64 0), !dbg !12
  %25 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %23, ptr addrspace(1) %24), !dbg !13
  store ptr addrspace(1) %25, ptr %3
  %26 = load ptr addrspace(1), ptr %3
  %27 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 72057594037927928)
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  %30 = load i64, ptr addrspace(1) %29, align 8
  %31 = icmp ult i64 0, %30
  br i1 %31, label %36, label %39
32:
  %33 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !17
  unreachable
34:
  %35 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !8
  unreachable
36:
  %37 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 4)
  %38 = icmp ne ptr addrspace(1) %37, null
  br i1 %38, label %41, label %47
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %40, ptr %7
  br label %32
41:
  %42 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr inbounds [0 x i64], ptr addrspace(1) %44, i64 0, i64 0
  %46 = load i64, ptr addrspace(1) %45, align 8
  store i64 %46, ptr %4
  br label %53
47:
  %48 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 0
  %49 = load ptr, ptr addrspace(1) %48, align 8
  %50 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = call i64 %51(ptr addrspace(1) %26, i64 0)
  store i64 %52, ptr %4
  br label %53
53:
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !14
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = load i64, ptr %4
  %59 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %58), !dbg !15
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %5
  %64 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %64), !dbg !16
  store ptr addrspace(1) null, ptr %6
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/record2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 15, scope: !5)
!10 = !DILocation(line: 8, column: 10, scope: !5)
!11 = !DILocation(line: 8, column: 10, scope: !5)
!12 = !DILocation(line: 9, column: 16, scope: !5)
!13 = !DILocation(line: 9, column: 16, scope: !5)
!14 = !DILocation(line: 9, column: 15, scope: !5)
!15 = !DILocation(line: 9, column: 15, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 0, scope: !5)
