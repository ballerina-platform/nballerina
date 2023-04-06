@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Be04root1 = external constant i32
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %xyz = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %xyz.1 = alloca ptr addrspace(1)
  %xyz.2 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %xyz.3 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %42, label %8
8:
  %9 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !9
  %10 = and i64 72057594037927935, 1
  %11 = or i64 2449958197289549824, %10
  %12 = getelementptr i8, ptr addrspace(1) null, i64 %11
  call void @_bal_mapping_init_member(ptr addrspace(1) %9, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %12), !dbg !10
  %13 = and i64 72057594037927935, 2
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %9, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %15), !dbg !11
  %16 = and i64 72057594037927935, 3
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  call void @_bal_mapping_init_member(ptr addrspace(1) %9, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %18), !dbg !12
  store ptr addrspace(1) %9, ptr %1
  %19 = load ptr addrspace(1), ptr %1
  %20 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %19), !dbg !13
  store ptr addrspace(1) %20, ptr %xyz
  %21 = load ptr addrspace(1), ptr %xyz
  %22 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %21), !dbg !14
  br i1 %22, label %23, label %40
23:
  %24 = load ptr addrspace(1), ptr %xyz
  %25 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %24, ptr @_Be04root1), !dbg !15
  store ptr addrspace(1) %25, ptr %xyz.1
  %26 = load ptr addrspace(1), ptr %xyz.1
  %27 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %26, i64 2), !dbg !16
  %28 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %27), !dbg !17
  store i64 %28, ptr %2
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !18
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load i64, ptr %2
  %34 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %33), !dbg !19
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %3
  %39 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !20
  store ptr addrspace(1) null, ptr %4
  br label %40
40:
  %41 = load ptr addrspace(1), ptr %xyz
  store ptr addrspace(1) %41, ptr %xyz.3
  ret void
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-union/construct4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 14, column: 16, scope: !5)
!9 = !DILocation(line: 15, column: 16, scope: !5)
!10 = !DILocation(line: 15, column: 16, scope: !5)
!11 = !DILocation(line: 15, column: 16, scope: !5)
!12 = !DILocation(line: 15, column: 16, scope: !5)
!13 = !DILocation(line: 15, column: 14, scope: !5)
!14 = !DILocation(line: 16, column: 11, scope: !5)
!15 = !DILocation(line: 16, column: 11, scope: !5)
!16 = !DILocation(line: 17, column: 22, scope: !5)
!17 = !DILocation(line: 17, column: 22, scope: !5)
!18 = !DILocation(line: 17, column: 19, scope: !5)
!19 = !DILocation(line: 17, column: 19, scope: !5)
!20 = !DILocation(line: 17, column: 8, scope: !5)
