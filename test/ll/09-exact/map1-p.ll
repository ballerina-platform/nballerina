@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %m1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %m2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %m3 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %21, label %9
9:
  %10 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %10, ptr %1
  %11 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %11, ptr %m1
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 0), !dbg !10
  store ptr addrspace(1) %12, ptr %2
  %13 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %13, ptr %m2
  %14 = load ptr addrspace(1), ptr %m2
  %15 = load ptr addrspace(1), ptr %m1
  %16 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %15), !dbg !11
  %17 = call i64 @_bal_mapping_set(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %16), !dbg !12
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %32
19:
  %20 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !16
  unreachable
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !8
  unreachable
23:
  %24 = load ptr addrspace(1), ptr %m2
  %25 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %24, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !13
  %26 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %24, ptr addrspace(1) %25), !dbg !14
  store ptr addrspace(1) %26, ptr %3
  %27 = load ptr addrspace(1), ptr %3
  %28 = addrspacecast ptr addrspace(1) %27 to ptr
  %29 = ptrtoint ptr %28 to i64
  %30 = and i64 %29, 2233785415175766016
  %31 = icmp eq i64 %30, 936748722493063168
  br i1 %31, label %35, label %43
32:
  %33 = or i64 %17, 1280
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 %33), !dbg !7
  store ptr addrspace(1) %34, ptr %5
  br label %19
35:
  store ptr addrspace(1) %27, ptr %4
  %36 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %36, ptr %m3
  %37 = load ptr addrspace(1), ptr %m3
  %38 = zext i1 1 to i64
  %39 = or i64 %38, 72057594037927936
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  %41 = call i64 @_bal_mapping_set(ptr addrspace(1) %37, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %40), !dbg !15
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %46
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 1539), !dbg !7
  store ptr addrspace(1) %44, ptr %5
  br label %19
45:
  ret void
46:
  %47 = or i64 %41, 1792
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 %47), !dbg !7
  store ptr addrspace(1) %48, ptr %5
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/map1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 18, scope: !5)
!10 = !DILocation(line: 4, column: 18, scope: !5)
!11 = !DILocation(line: 5, column: 6, scope: !5)
!12 = !DILocation(line: 5, column: 6, scope: !5)
!13 = !DILocation(line: 6, column: 42, scope: !5)
!14 = !DILocation(line: 6, column: 42, scope: !5)
!15 = !DILocation(line: 7, column: 6, scope: !5)
!16 = !DILocation(line: 8, column: 0, scope: !5)
