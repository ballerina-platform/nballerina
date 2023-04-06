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
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %22, label %10
10:
  %11 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %12 = and i64 72057594037927935, 42
  %13 = or i64 2449958197289549824, %12
  %14 = getelementptr i8, ptr addrspace(1) null, i64 %13
  call void @_bal_mapping_init_member(ptr addrspace(1) %11, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187909691367798), ptr addrspace(1) %14), !dbg !10
  store ptr addrspace(1) %11, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %15, ptr %x
  %16 = load ptr addrspace(1), ptr %x
  %17 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %16), !dbg !11
  store ptr addrspace(1) %17, ptr %y
  %18 = load ptr addrspace(1), ptr %y
  %19 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %18), !dbg !12
  br i1 %19, label %24, label %39
20:
  %21 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !18
  unreachable
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !8
  unreachable
24:
  %25 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %18, ptr @_Be04root1), !dbg !13
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  %27 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %26, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187909691367798)), !dbg !14
  %28 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %26, ptr addrspace(1) %27), !dbg !15
  store ptr addrspace(1) %28, ptr %3
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load ptr addrspace(1), ptr %3
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %33, ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %4
  %38 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %38), !dbg !17
  store ptr addrspace(1) null, ptr %5
  ret void
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 1795), !dbg !7
  store ptr addrspace(1) %40, ptr %6
  br label %20
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-typecast/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 17, scope: !5)
!10 = !DILocation(line: 5, column: 17, scope: !5)
!11 = !DILocation(line: 6, column: 10, scope: !5)
!12 = !DILocation(line: 7, column: 16, scope: !5)
!13 = !DILocation(line: 7, column: 16, scope: !5)
!14 = !DILocation(line: 7, column: 28, scope: !5)
!15 = !DILocation(line: 7, column: 28, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 0, scope: !5)
