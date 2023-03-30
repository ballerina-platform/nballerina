@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %60, label %19
19:
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %1
  %23 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !10
  %24 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %23, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %24), !dbg !11
  store ptr addrspace(1) %23, ptr %2
  %25 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 1), !dbg !12
  %26 = load ptr addrspace(1), ptr %2
  call void @_bal_mapping_init_member(ptr addrspace(1) %25, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %26), !dbg !13
  store ptr addrspace(1) %25, ptr %3
  %27 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root3, i64 1), !dbg !14
  %28 = load ptr addrspace(1), ptr %3
  call void @_bal_mapping_init_member(ptr addrspace(1) %27, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %28), !dbg !15
  store ptr addrspace(1) %27, ptr %4
  %29 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %29, ptr %r
  %30 = load ptr addrspace(1), ptr %r
  %31 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %30, i64 0), !dbg !16
  %32 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %30, ptr addrspace(1) %31), !dbg !17
  store ptr addrspace(1) %32, ptr %5
  %33 = load ptr addrspace(1), ptr %5
  %34 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %33, i64 0), !dbg !18
  %35 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %33, ptr addrspace(1) %34), !dbg !19
  store ptr addrspace(1) %35, ptr %6
  %36 = load ptr addrspace(1), ptr %6
  %37 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %36, i64 0), !dbg !20
  %38 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %36, ptr addrspace(1) %37), !dbg !21
  store ptr addrspace(1) %38, ptr %7
  %39 = load ptr addrspace(1), ptr %7
  %40 = and i64 72057594037927935, 11
  %41 = or i64 2449958197289549824, %40
  %42 = getelementptr i8, ptr addrspace(1) null, i64 %41
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %39, ptr addrspace(1) %42), !dbg !22
  store ptr addrspace(1) null, ptr %8
  %43 = load ptr addrspace(1), ptr %r
  %44 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %43, i64 0), !dbg !23
  %45 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %43, ptr addrspace(1) %44), !dbg !24
  store ptr addrspace(1) %45, ptr %9
  %46 = load ptr addrspace(1), ptr %9
  %47 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %46, i64 0), !dbg !25
  %48 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %46, ptr addrspace(1) %47), !dbg !26
  store ptr addrspace(1) %48, ptr %10
  %49 = load ptr addrspace(1), ptr %10
  %50 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %49, i64 0), !dbg !27
  %51 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %49, ptr addrspace(1) %50), !dbg !28
  store ptr addrspace(1) %51, ptr %11
  %52 = load ptr addrspace(1), ptr %11
  %53 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %52, i64 72057594037927928)
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  %56 = load i64, ptr addrspace(1) %55, align 8
  %57 = icmp ult i64 0, %56
  br i1 %57, label %62, label %65
58:
  %59 = load ptr addrspace(1), ptr %15
  call void @_bal_panic(ptr addrspace(1) %59), !dbg !32
  unreachable
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %61), !dbg !8
  unreachable
62:
  %63 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %52, i64 4)
  %64 = icmp ne ptr addrspace(1) %63, null
  br i1 %64, label %67, label %73
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 4613), !dbg !7
  store ptr addrspace(1) %66, ptr %15
  br label %58
67:
  %68 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = getelementptr inbounds [0 x i64], ptr addrspace(1) %70, i64 0, i64 0
  %72 = load i64, ptr addrspace(1) %71, align 8
  store i64 %72, ptr %12
  br label %79
73:
  %74 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 0
  %75 = load ptr, ptr addrspace(1) %74, align 8
  %76 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %75, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8
  %78 = call i64 %77(ptr addrspace(1) %52, i64 0)
  store i64 %78, ptr %12
  br label %79
79:
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !29
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i64, ptr %12
  %85 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %84), !dbg !30
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %13
  %90 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !31
  store ptr addrspace(1) null, ptr %14
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/methodcall2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 16, scope: !5)
!9 = !DILocation(line: 16, column: 25, scope: !5)
!10 = !DILocation(line: 16, column: 20, scope: !5)
!11 = !DILocation(line: 16, column: 20, scope: !5)
!12 = !DILocation(line: 16, column: 15, scope: !5)
!13 = !DILocation(line: 16, column: 15, scope: !5)
!14 = !DILocation(line: 16, column: 11, scope: !5)
!15 = !DILocation(line: 16, column: 11, scope: !5)
!16 = !DILocation(line: 17, column: 5, scope: !5)
!17 = !DILocation(line: 17, column: 5, scope: !5)
!18 = !DILocation(line: 17, column: 7, scope: !5)
!19 = !DILocation(line: 17, column: 7, scope: !5)
!20 = !DILocation(line: 17, column: 9, scope: !5)
!21 = !DILocation(line: 17, column: 9, scope: !5)
!22 = !DILocation(line: 17, column: 12, scope: !5)
!23 = !DILocation(line: 18, column: 16, scope: !5)
!24 = !DILocation(line: 18, column: 16, scope: !5)
!25 = !DILocation(line: 18, column: 18, scope: !5)
!26 = !DILocation(line: 18, column: 18, scope: !5)
!27 = !DILocation(line: 18, column: 20, scope: !5)
!28 = !DILocation(line: 18, column: 20, scope: !5)
!29 = !DILocation(line: 18, column: 15, scope: !5)
!30 = !DILocation(line: 18, column: 15, scope: !5)
!31 = !DILocation(line: 18, column: 4, scope: !5)
!32 = !DILocation(line: 19, column: 0, scope: !5)
