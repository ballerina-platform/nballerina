@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_bal_mapping_indexed_set(ptr addrspace(1), i64, ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %v = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %35, label %12
12:
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = getelementptr i8, ptr addrspace(1) %14, i64 864691128455135236
  store ptr addrspace(1) %15, ptr %1
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !10
  %17 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %17), !dbg !11
  store ptr addrspace(1) %16, ptr %2
  %18 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %18, ptr %r
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !12
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x i64], ptr addrspace(1) %22, i64 0, i64 0
  store i64 255, ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %3
  %27 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %27, ptr %v
  %28 = load ptr addrspace(1), ptr %r
  %29 = load ptr addrspace(1), ptr %v
  %30 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %29), !dbg !13
  %31 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %28, i64 0, ptr addrspace(1) %30), !dbg !14
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %48
33:
  %34 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !19
  unreachable
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !8
  unreachable
37:
  %38 = load ptr addrspace(1), ptr %r
  %39 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %38, i64 0), !dbg !15
  %40 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %38, ptr addrspace(1) %39), !dbg !16
  store ptr addrspace(1) %40, ptr %4
  %41 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %41, ptr %x
  %42 = load ptr addrspace(1), ptr %x
  %43 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %42, i64 72057594037927928)
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  %46 = load i64, ptr addrspace(1) %45, align 8
  %47 = icmp ult i64 0, %46
  br i1 %47, label %51, label %67
48:
  %49 = or i64 %31, 2560
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 %49), !dbg !7
  store ptr addrspace(1) %50, ptr %8
  br label %33
51:
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 0
  %53 = load ptr, ptr addrspace(1) %52, align 8
  %54 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = call ptr addrspace(1) %55(ptr addrspace(1) %42, i64 0)
  store ptr addrspace(1) %56, ptr %5
  %57 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !17
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = load ptr addrspace(1), ptr %5
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %60, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %6
  %66 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %66), !dbg !18
  store ptr addrspace(1) null, ptr %7
  ret void
67:
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !7
  store ptr addrspace(1) %68, ptr %8
  br label %33
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/exact3-v.bal", directory:"")
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
!12 = !DILocation(line: 9, column: 14, scope: !5)
!13 = !DILocation(line: 10, column: 5, scope: !5)
!14 = !DILocation(line: 10, column: 5, scope: !5)
!15 = !DILocation(line: 11, column: 16, scope: !5)
!16 = !DILocation(line: 11, column: 16, scope: !5)
!17 = !DILocation(line: 12, column: 15, scope: !5)
!18 = !DILocation(line: 12, column: 4, scope: !5)
!19 = !DILocation(line: 13, column: 0, scope: !5)
