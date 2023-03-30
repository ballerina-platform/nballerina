@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %40, label %15
15:
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %17 = and i64 72057594037927935, 3
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %19), !dbg !10
  %20 = and i64 72057594037927935, 4
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %22), !dbg !11
  store ptr addrspace(1) %16, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %23, ptr %p
  %24 = load ptr addrspace(1), ptr %p
  %25 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %24, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !12
  %26 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %25), !dbg !13
  store i64 %26, ptr %2
  %27 = load ptr addrspace(1), ptr %p
  %28 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %27, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !14
  %29 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %28), !dbg !15
  store i64 %29, ptr %3
  %30 = load i64, ptr %2
  %31 = load i64, ptr %3
  %32 = or i64 %30, %31
  store i64 %32, ptr %4
  %33 = load ptr addrspace(1), ptr %p
  %34 = load i64, ptr %4
  %35 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %34), !dbg !16
  %36 = call i64 @_bal_mapping_set(ptr addrspace(1) %33, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %35), !dbg !17
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %71
38:
  %39 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !28
  unreachable
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !8
  unreachable
42:
  %43 = load ptr addrspace(1), ptr %p
  %44 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !18
  %45 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %44), !dbg !19
  store i64 %45, ptr %5
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load i64, ptr %5
  %51 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %50), !dbg !21
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %6
  %56 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !22
  store ptr addrspace(1) null, ptr %7
  %57 = load ptr addrspace(1), ptr %p
  %58 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %57, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !23
  %59 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %58), !dbg !24
  store i64 %59, ptr %8
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load i64, ptr %8
  %65 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %64), !dbg !26
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %9
  %70 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !27
  store ptr addrspace(1) null, ptr %10
  ret void
71:
  %72 = or i64 %36, 2560
  %73 = call ptr addrspace(1) @_bal_panic_construct(i64 %72), !dbg !7
  store ptr addrspace(1) %73, ptr %11
  br label %38
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/fieldlvalue4-v.bal", directory:"")
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
!14 = !DILocation(line: 10, column: 12, scope: !5)
!15 = !DILocation(line: 10, column: 12, scope: !5)
!16 = !DILocation(line: 10, column: 5, scope: !5)
!17 = !DILocation(line: 10, column: 5, scope: !5)
!18 = !DILocation(line: 11, column: 16, scope: !5)
!19 = !DILocation(line: 11, column: 16, scope: !5)
!20 = !DILocation(line: 11, column: 15, scope: !5)
!21 = !DILocation(line: 11, column: 15, scope: !5)
!22 = !DILocation(line: 11, column: 4, scope: !5)
!23 = !DILocation(line: 12, column: 16, scope: !5)
!24 = !DILocation(line: 12, column: 16, scope: !5)
!25 = !DILocation(line: 12, column: 15, scope: !5)
!26 = !DILocation(line: 12, column: 15, scope: !5)
!27 = !DILocation(line: 12, column: 4, scope: !5)
!28 = !DILocation(line: 13, column: 0, scope: !5)
