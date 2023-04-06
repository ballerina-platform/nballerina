@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %s = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %51, label %11
11:
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !9
  %13 = and i64 72057594037927935, 17
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %15), !dbg !10
  %16 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.0), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %16), !dbg !12
  %17 = and i64 72057594037927935, 10
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %19), !dbg !13
  store ptr addrspace(1) %12, ptr %1
  %20 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %20, ptr %r
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr %s
  %21 = load ptr addrspace(1), ptr %s
  %22 = load ptr addrspace(1), ptr %r
  %23 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %22, ptr addrspace(1) %21), !dbg !14
  %24 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %22, ptr addrspace(1) %23), !dbg !15
  store ptr addrspace(1) %24, ptr %2
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = load ptr addrspace(1), ptr %2
  %30 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %29), !dbg !17
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %3
  %35 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !18
  store ptr addrspace(1) null, ptr %4
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr %s
  %36 = load ptr addrspace(1), ptr %s
  %37 = load ptr addrspace(1), ptr %r
  %38 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %37, ptr addrspace(1) %36), !dbg !19
  %39 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %37, ptr addrspace(1) %38), !dbg !20
  store ptr addrspace(1) %39, ptr %5
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load ptr addrspace(1), ptr %5
  %45 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %44), !dbg !22
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %6
  %50 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !23
  store ptr addrspace(1) null, ptr %7
  ret void
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %52), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/construct2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 10, scope: !5)
!10 = !DILocation(line: 9, column: 10, scope: !5)
!11 = !DILocation(line: 9, column: 10, scope: !5)
!12 = !DILocation(line: 9, column: 10, scope: !5)
!13 = !DILocation(line: 9, column: 10, scope: !5)
!14 = !DILocation(line: 11, column: 16, scope: !5)
!15 = !DILocation(line: 11, column: 16, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 11, column: 15, scope: !5)
!18 = !DILocation(line: 11, column: 4, scope: !5)
!19 = !DILocation(line: 13, column: 16, scope: !5)
!20 = !DILocation(line: 13, column: 16, scope: !5)
!21 = !DILocation(line: 13, column: 15, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 4, scope: !5)
