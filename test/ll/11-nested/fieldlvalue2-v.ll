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
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare i64 @_bal_mapping_indexed_set(ptr addrspace(1), i64, ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i8
  %15 = load ptr, ptr @_bal_stack_guard
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %36, label %17
17:
  %18 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %19 = and i64 72057594037927935, 0
  %20 = or i64 2449958197289549824, %19
  %21 = getelementptr i8, ptr addrspace(1) null, i64 %20
  call void @_bal_mapping_init_member(ptr addrspace(1) %18, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417), ptr addrspace(1) %21), !dbg !10
  store ptr addrspace(1) %18, ptr %1
  %22 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !11
  %23 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %22, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %23), !dbg !12
  store ptr addrspace(1) %22, ptr %2
  %24 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %24, ptr %a
  %25 = load ptr addrspace(1), ptr %a
  %26 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %25, i64 0), !dbg !13
  %27 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %25, ptr addrspace(1) %26), !dbg !14
  store ptr addrspace(1) %27, ptr %3
  %28 = load ptr addrspace(1), ptr %3
  %29 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %28, i64 0), !dbg !15
  %30 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %29), !dbg !16
  store i64 %30, ptr %4
  %31 = load i64, ptr %4
  %32 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %31, i64 4)
  %33 = extractvalue {i64, i1} %32, 1
  br i1 %33, label %45, label %38
34:
  %35 = load ptr addrspace(1), ptr %13
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !32
  unreachable
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !8
  unreachable
38:
  %39 = extractvalue {i64, i1} %32, 0
  store i64 %39, ptr %5
  %40 = load ptr addrspace(1), ptr %3
  %41 = load i64, ptr %5
  %42 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %41), !dbg !17
  %43 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %40, i64 0, ptr addrspace(1) %42), !dbg !18
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %57
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 3329), !dbg !7
  store ptr addrspace(1) %46, ptr %13
  br label %34
47:
  %48 = load ptr addrspace(1), ptr %a
  %49 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %48, i64 0), !dbg !19
  %50 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %48, ptr addrspace(1) %49), !dbg !20
  store ptr addrspace(1) %50, ptr %6
  %51 = load ptr addrspace(1), ptr %6
  %52 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %51, i64 0), !dbg !21
  %53 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %52), !dbg !22
  store i64 %53, ptr %7
  %54 = load i64, ptr %7
  %55 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %54, i64 2)
  %56 = extractvalue {i64, i1} %55, 1
  br i1 %56, label %67, label %60
57:
  %58 = or i64 %43, 3328
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 %58), !dbg !7
  store ptr addrspace(1) %59, ptr %13
  br label %34
60:
  %61 = extractvalue {i64, i1} %55, 0
  store i64 %61, ptr %8
  %62 = load ptr addrspace(1), ptr %6
  %63 = load i64, ptr %8
  %64 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %63), !dbg !23
  %65 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %62, i64 0, ptr addrspace(1) %64), !dbg !24
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %69, label %87
67:
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !7
  store ptr addrspace(1) %68, ptr %13
  br label %34
69:
  %70 = load ptr addrspace(1), ptr %a
  %71 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %70, i64 0), !dbg !25
  %72 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %70, ptr addrspace(1) %71), !dbg !26
  store ptr addrspace(1) %72, ptr %9
  %73 = load ptr addrspace(1), ptr %9
  %74 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %73, i64 0), !dbg !27
  %75 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %74), !dbg !28
  store i64 %75, ptr %10
  %76 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !29
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = load i64, ptr %10
  %81 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %80), !dbg !30
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 1
  store i64 1, ptr addrspace(1) %83
  %84 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %85 = getelementptr i8, ptr addrspace(1) %84, i64 864691128455135236
  store ptr addrspace(1) %85, ptr %11
  %86 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %86), !dbg !31
  store ptr addrspace(1) null, ptr %12
  ret void
87:
  %88 = or i64 %65, 3584
  %89 = call ptr addrspace(1) @_bal_panic_construct(i64 %88), !dbg !7
  store ptr addrspace(1) %89, ptr %13
  br label %34
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fieldlvalue2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 16, scope: !5)
!9 = !DILocation(line: 12, column: 15, scope: !5)
!10 = !DILocation(line: 12, column: 15, scope: !5)
!11 = !DILocation(line: 12, column: 10, scope: !5)
!12 = !DILocation(line: 12, column: 10, scope: !5)
!13 = !DILocation(line: 13, column: 5, scope: !5)
!14 = !DILocation(line: 13, column: 5, scope: !5)
!15 = !DILocation(line: 13, column: 10, scope: !5)
!16 = !DILocation(line: 13, column: 10, scope: !5)
!17 = !DILocation(line: 13, column: 7, scope: !5)
!18 = !DILocation(line: 13, column: 7, scope: !5)
!19 = !DILocation(line: 14, column: 5, scope: !5)
!20 = !DILocation(line: 14, column: 5, scope: !5)
!21 = !DILocation(line: 14, column: 10, scope: !5)
!22 = !DILocation(line: 14, column: 10, scope: !5)
!23 = !DILocation(line: 14, column: 7, scope: !5)
!24 = !DILocation(line: 14, column: 7, scope: !5)
!25 = !DILocation(line: 15, column: 16, scope: !5)
!26 = !DILocation(line: 15, column: 16, scope: !5)
!27 = !DILocation(line: 15, column: 18, scope: !5)
!28 = !DILocation(line: 15, column: 18, scope: !5)
!29 = !DILocation(line: 15, column: 15, scope: !5)
!30 = !DILocation(line: 15, column: 15, scope: !5)
!31 = !DILocation(line: 15, column: 4, scope: !5)
!32 = !DILocation(line: 16, column: 0, scope: !5)
