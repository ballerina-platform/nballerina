@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare i64 @_bal_mapping_inexact_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %m = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
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
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %17 = and i64 72057594037927935, 0
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417), ptr addrspace(1) %19), !dbg !10
  store ptr addrspace(1) %16, ptr %1
  %20 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !11
  %21 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %20, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411), ptr addrspace(1) %21), !dbg !12
  store ptr addrspace(1) %20, ptr %2
  %22 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 1), !dbg !13
  %23 = load ptr addrspace(1), ptr %2
  call void @_bal_mapping_init_member(ptr addrspace(1) %22, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %23), !dbg !14
  store ptr addrspace(1) %22, ptr %3
  %24 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %24, ptr %a
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417), ptr %m
  %25 = load ptr addrspace(1), ptr %a
  %26 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %25, i64 0), !dbg !15
  %27 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %25, ptr addrspace(1) %26), !dbg !16
  store ptr addrspace(1) %27, ptr %4
  %28 = load ptr addrspace(1), ptr %4
  %29 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %28, i64 0), !dbg !17
  %30 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %28, ptr addrspace(1) %29), !dbg !18
  store ptr addrspace(1) %30, ptr %5
  %31 = load ptr addrspace(1), ptr %m
  %32 = load ptr addrspace(1), ptr %5
  %33 = and i64 72057594037927935, 8
  %34 = or i64 2449958197289549824, %33
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  %36 = call i64 @_bal_mapping_inexact_set(ptr addrspace(1) %32, ptr addrspace(1) %31, ptr addrspace(1) %35), !dbg !19
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %63
38:
  %39 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !29
  unreachable
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !8
  unreachable
42:
  %43 = load ptr addrspace(1), ptr %a
  %44 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %43, i64 0), !dbg !20
  %45 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %43, ptr addrspace(1) %44), !dbg !21
  store ptr addrspace(1) %45, ptr %6
  %46 = load ptr addrspace(1), ptr %6
  %47 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %46, i64 0), !dbg !22
  %48 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %46, ptr addrspace(1) %47), !dbg !23
  store ptr addrspace(1) %48, ptr %7
  %49 = load ptr addrspace(1), ptr %7
  %50 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %49, i64 0), !dbg !24
  %51 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %50), !dbg !25
  store i64 %51, ptr %8
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !26
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = load i64, ptr %8
  %57 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %56), !dbg !27
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %9
  %62 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !28
  store ptr addrspace(1) null, ptr %10
  ret void
63:
  %64 = or i64 %36, 4608
  %65 = call ptr addrspace(1) @_bal_panic_construct(i64 %64), !dbg !7
  store ptr addrspace(1) %65, ptr %11
  br label %38
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fieldlvalue3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 16, scope: !5)
!9 = !DILocation(line: 16, column: 20, scope: !5)
!10 = !DILocation(line: 16, column: 20, scope: !5)
!11 = !DILocation(line: 16, column: 15, scope: !5)
!12 = !DILocation(line: 16, column: 15, scope: !5)
!13 = !DILocation(line: 16, column: 10, scope: !5)
!14 = !DILocation(line: 16, column: 10, scope: !5)
!15 = !DILocation(line: 18, column: 5, scope: !5)
!16 = !DILocation(line: 18, column: 5, scope: !5)
!17 = !DILocation(line: 18, column: 7, scope: !5)
!18 = !DILocation(line: 18, column: 7, scope: !5)
!19 = !DILocation(line: 18, column: 9, scope: !5)
!20 = !DILocation(line: 19, column: 16, scope: !5)
!21 = !DILocation(line: 19, column: 16, scope: !5)
!22 = !DILocation(line: 19, column: 18, scope: !5)
!23 = !DILocation(line: 19, column: 18, scope: !5)
!24 = !DILocation(line: 19, column: 20, scope: !5)
!25 = !DILocation(line: 19, column: 20, scope: !5)
!26 = !DILocation(line: 19, column: 15, scope: !5)
!27 = !DILocation(line: 19, column: 15, scope: !5)
!28 = !DILocation(line: 19, column: 4, scope: !5)
!29 = !DILocation(line: 20, column: 0, scope: !5)
