@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare i64 @_bal_mapping_indexed_set(ptr addrspace(1), i64, ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %28, label %11
11:
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %13 = and i64 72057594037927935, 44
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %15), !dbg !10
  %16 = and i64 72057594037927935, 88
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %18), !dbg !11
  store ptr addrspace(1) %12, ptr %1
  %19 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %19, ptr %p
  %20 = load ptr addrspace(1), ptr %p
  %21 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %20, i64 0), !dbg !12
  %22 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %21), !dbg !13
  store i64 %22, ptr %2
  %23 = load i64, ptr %2
  %24 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %23, i64 22)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %37, label %30
26:
  %27 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !21
  unreachable
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !8
  unreachable
30:
  %31 = extractvalue {i64, i1} %24, 0
  store i64 %31, ptr %3
  %32 = load ptr addrspace(1), ptr %p
  %33 = load i64, ptr %3
  %34 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %33), !dbg !14
  %35 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %32, i64 0, ptr addrspace(1) %34), !dbg !15
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %39, label %54
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !7
  store ptr addrspace(1) %38, ptr %7
  br label %26
39:
  %40 = load ptr addrspace(1), ptr %p
  %41 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %40, i64 0), !dbg !16
  %42 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %41), !dbg !17
  store i64 %42, ptr %4
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load i64, ptr %4
  %48 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %47), !dbg !19
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %48, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %5
  %53 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !20
  store ptr addrspace(1) null, ptr %6
  ret void
54:
  %55 = or i64 %35, 2560
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 %55), !dbg !7
  store ptr addrspace(1) %56, ptr %7
  br label %26
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/fieldlvalue4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 14, scope: !5)
!10 = !DILocation(line: 9, column: 14, scope: !5)
!11 = !DILocation(line: 9, column: 14, scope: !5)
!12 = !DILocation(line: 10, column: 8, scope: !5)
!13 = !DILocation(line: 10, column: 8, scope: !5)
!14 = !DILocation(line: 10, column: 5, scope: !5)
!15 = !DILocation(line: 10, column: 5, scope: !5)
!16 = !DILocation(line: 11, column: 16, scope: !5)
!17 = !DILocation(line: 11, column: 16, scope: !5)
!18 = !DILocation(line: 11, column: 15, scope: !5)
!19 = !DILocation(line: 11, column: 15, scope: !5)
!20 = !DILocation(line: 11, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 0, scope: !5)
