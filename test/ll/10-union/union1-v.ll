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
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %y.1 = alloca ptr addrspace(1)
  %y.2 = alloca ptr addrspace(1)
  %b = alloca i1
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %y.3 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %42, label %8
8:
  %9 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %10 = zext i1 1 to i64
  %11 = or i64 %10, 72057594037927936
  %12 = getelementptr i8, ptr addrspace(1) null, i64 %11
  call void @_bal_mapping_init_member(ptr addrspace(1) %9, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %12), !dbg !10
  store ptr addrspace(1) %9, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %x
  %14 = load ptr addrspace(1), ptr %x
  %15 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %14), !dbg !11
  store ptr addrspace(1) %15, ptr %y
  %16 = load ptr addrspace(1), ptr %y
  %17 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %16), !dbg !12
  br i1 %17, label %18, label %40
18:
  %19 = load ptr addrspace(1), ptr %y
  %20 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %19, ptr @_Be04root1), !dbg !13
  store ptr addrspace(1) %20, ptr %y.1
  %21 = load ptr addrspace(1), ptr %y.1
  %22 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %21, i64 0), !dbg !14
  %23 = addrspacecast ptr addrspace(1) %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  %25 = trunc i64 %24 to i1
  store i1 %25, ptr %2
  %26 = load i1, ptr %2
  store i1 %26, ptr %b
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load i1, ptr %b
  %32 = zext i1 %31 to i64
  %33 = or i64 %32, 72057594037927936
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %3
  %39 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !16
  store ptr addrspace(1) null, ptr %4
  br label %40
40:
  %41 = load ptr addrspace(1), ptr %y
  store ptr addrspace(1) %41, ptr %y.3
  ret void
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-union/union1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 13, column: 16, scope: !5)
!9 = !DILocation(line: 14, column: 10, scope: !5)
!10 = !DILocation(line: 14, column: 10, scope: !5)
!11 = !DILocation(line: 15, column: 9, scope: !5)
!12 = !DILocation(line: 16, column: 9, scope: !5)
!13 = !DILocation(line: 16, column: 9, scope: !5)
!14 = !DILocation(line: 17, column: 21, scope: !5)
!15 = !DILocation(line: 18, column: 19, scope: !5)
!16 = !DILocation(line: 18, column: 8, scope: !5)
