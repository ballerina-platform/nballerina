@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %xy = alloca ptr addrspace(1)
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %33, label %8
8:
  %9 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %10 = and i64 72057594037927935, 44
  %11 = or i64 2449958197289549824, %10
  %12 = getelementptr i8, ptr addrspace(1) null, i64 %11
  call void @_bal_mapping_init_member(ptr addrspace(1) %9, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %12), !dbg !10
  %13 = and i64 72057594037927935, 88
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %9, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %15), !dbg !11
  store ptr addrspace(1) %9, ptr %1
  %16 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %16, ptr %p
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr %xy
  %17 = load ptr addrspace(1), ptr %xy
  %18 = load ptr addrspace(1), ptr %p
  %19 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %18, ptr addrspace(1) %17), !dbg !12
  %20 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %19), !dbg !13
  store i64 %20, ptr %2
  %21 = load i64, ptr %2
  store i64 %21, ptr %x
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = load i64, ptr %x
  %27 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %26), !dbg !15
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %3
  %32 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %32), !dbg !16
  store ptr addrspace(1) null, ptr %4
  ret void
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/proj1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 10, column: 16, scope: !5)
!9 = !DILocation(line: 11, column: 14, scope: !5)
!10 = !DILocation(line: 11, column: 14, scope: !5)
!11 = !DILocation(line: 11, column: 14, scope: !5)
!12 = !DILocation(line: 13, column: 13, scope: !5)
!13 = !DILocation(line: 13, column: 13, scope: !5)
!14 = !DILocation(line: 14, column: 15, scope: !5)
!15 = !DILocation(line: 14, column: 15, scope: !5)
!16 = !DILocation(line: 14, column: 4, scope: !5)
