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
declare i64 @_bal_mapping_indexed_set(ptr addrspace(1), i64, ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %27, label %11
11:
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187974082718054), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570998632266)), !dbg !10
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100012908), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187922559298899)), !dbg !11
  store ptr addrspace(1) %12, ptr %1
  %13 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 2), !dbg !12
  %14 = and i64 72057594037927935, 30
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  call void @_bal_mapping_init_member(ptr addrspace(1) %13, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431129953), ptr addrspace(1) %16), !dbg !13
  %17 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %13, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570847961454), ptr addrspace(1) %17), !dbg !14
  store ptr addrspace(1) %13, ptr %2
  %18 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %18, ptr %p
  %19 = load ptr addrspace(1), ptr %p
  %20 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %19, i64 1), !dbg !15
  %21 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %19, ptr addrspace(1) %20), !dbg !16
  store ptr addrspace(1) %21, ptr %3
  %22 = load ptr addrspace(1), ptr %3
  %23 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %22, i64 0, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848026954)), !dbg !17
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %44
25:
  %26 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !23
  unreachable
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !8
  unreachable
29:
  %30 = load ptr addrspace(1), ptr %p
  %31 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %30, i64 1), !dbg !18
  %32 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %30, ptr addrspace(1) %31), !dbg !19
  store ptr addrspace(1) %32, ptr %4
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !20
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = load ptr addrspace(1), ptr %4
  %38 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %37), !dbg !21
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %5
  %43 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !22
  store ptr addrspace(1) null, ptr %6
  ret void
44:
  %45 = or i64 %23, 4608
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 %45), !dbg !7
  store ptr addrspace(1) %46, ptr %7
  br label %25
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fieldlvalue1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 13, column: 16, scope: !5)
!9 = !DILocation(line: 15, column: 14, scope: !5)
!10 = !DILocation(line: 15, column: 14, scope: !5)
!11 = !DILocation(line: 15, column: 14, scope: !5)
!12 = !DILocation(line: 14, column: 15, scope: !5)
!13 = !DILocation(line: 14, column: 15, scope: !5)
!14 = !DILocation(line: 14, column: 15, scope: !5)
!15 = !DILocation(line: 18, column: 5, scope: !5)
!16 = !DILocation(line: 18, column: 5, scope: !5)
!17 = !DILocation(line: 18, column: 10, scope: !5)
!18 = !DILocation(line: 19, column: 16, scope: !5)
!19 = !DILocation(line: 19, column: 16, scope: !5)
!20 = !DILocation(line: 19, column: 15, scope: !5)
!21 = !DILocation(line: 19, column: 15, scope: !5)
!22 = !DILocation(line: 19, column: 4, scope: !5)
!23 = !DILocation(line: 20, column: 0, scope: !5)
