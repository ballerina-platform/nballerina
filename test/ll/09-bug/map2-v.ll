@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %m2 = alloca ptr addrspace(1)
  %m2.1 = alloca ptr addrspace(1)
  %m2.2 = alloca ptr addrspace(1)
  %i = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %35, label %8
8:
  %9 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %10 = and i64 72057594037927935, 1
  %11 = or i64 2449958197289549824, %10
  %12 = getelementptr i8, ptr addrspace(1) null, i64 %11
  call void @_bal_mapping_init_member(ptr addrspace(1) %9, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %12), !dbg !10
  store ptr addrspace(1) %9, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %m1
  %14 = load ptr addrspace(1), ptr %m1
  %15 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %14), !dbg !11
  store ptr addrspace(1) %15, ptr %m2
  %16 = load ptr addrspace(1), ptr %m2
  %17 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %16), !dbg !12
  br i1 %17, label %18, label %33
18:
  %19 = load ptr addrspace(1), ptr %m2
  store ptr addrspace(1) %19, ptr %m2.1
  %20 = load ptr addrspace(1), ptr %m2.1
  %21 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %20, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !13
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %22, ptr %i
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !14
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load ptr addrspace(1), ptr %i
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %3
  %32 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %32), !dbg !15
  store ptr addrspace(1) null, ptr %4
  br label %33
33:
  %34 = load ptr addrspace(1), ptr %m2
  store ptr addrspace(1) %34, ptr %m2.2
  ret void
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-bug/map2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 18, scope: !5)
!10 = !DILocation(line: 4, column: 18, scope: !5)
!11 = !DILocation(line: 5, column: 23, scope: !5)
!12 = !DILocation(line: 6, column: 10, scope: !5)
!13 = !DILocation(line: 7, column: 19, scope: !5)
!14 = !DILocation(line: 8, column: 19, scope: !5)
!15 = !DILocation(line: 8, column: 8, scope: !5)
