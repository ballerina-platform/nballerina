@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %51, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = and i64 72057594037927935, 1
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  %17 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 0
  store ptr addrspace(1) %16, ptr addrspace(1) %17
  %18 = and i64 72057594037927935, 2
  %19 = or i64 2449958197289549824, %18
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 1
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = and i64 72057594037927935, 3
  %23 = or i64 2449958197289549824, %22
  %24 = getelementptr i8, ptr addrspace(1) null, i64 %23
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 2
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 3, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %1
  %29 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 2), !dbg !10
  %30 = and i64 72057594037927935, 1
  %31 = or i64 2449958197289549824, %30
  %32 = getelementptr i8, ptr addrspace(1) null, i64 %31
  call void @_bal_mapping_init_member(ptr addrspace(1) %29, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %32), !dbg !11
  %33 = and i64 72057594037927935, 2
  %34 = or i64 2449958197289549824, %33
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  call void @_bal_mapping_init_member(ptr addrspace(1) %29, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %35), !dbg !12
  store ptr addrspace(1) %29, ptr %2
  %36 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 2), !dbg !13
  %37 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %36, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100014956), ptr addrspace(1) %37), !dbg !14
  %38 = load ptr addrspace(1), ptr %2
  call void @_bal_mapping_init_member(ptr addrspace(1) %36, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2695244301141565805), ptr addrspace(1) %38), !dbg !15
  store ptr addrspace(1) %36, ptr %3
  %39 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %39, ptr %m
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load ptr addrspace(1), ptr %m
  %45 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %44), !dbg !17
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %4
  %50 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !18
  store ptr addrspace(1) null, ptr %5
  ret void
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %52), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/05-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 25, scope: !5)
!10 = !DILocation(line: 5, column: 43, scope: !5)
!11 = !DILocation(line: 5, column: 43, scope: !5)
!12 = !DILocation(line: 5, column: 43, scope: !5)
!13 = !DILocation(line: 5, column: 17, scope: !5)
!14 = !DILocation(line: 5, column: 17, scope: !5)
!15 = !DILocation(line: 5, column: 17, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
