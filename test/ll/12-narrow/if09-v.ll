@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !11
  %8 = zext i1 1 to i64
  %9 = or i64 %8, 72057594037927936
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  call void @_bal_mapping_init_member(ptr addrspace(1) %7, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %10), !dbg !12
  store ptr addrspace(1) %7, ptr %1
  %11 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %11, ptr %r
  %12 = load ptr addrspace(1), ptr %r
  call void @_B_func(ptr addrspace(1) %12), !dbg !13
  store ptr addrspace(1) null, ptr %2
  ret void
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !10
  unreachable
}
define internal void @_B_func(ptr addrspace(1) %0) !dbg !7 {
  %r = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca i1
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %bf1 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %bf2 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %55, label %11
11:
  store ptr addrspace(1) %0, ptr %r
  %12 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.1), !dbg !16
  store ptr addrspace(1) %12, ptr %x
  %13 = load ptr addrspace(1), ptr %r
  %14 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %13, i64 0), !dbg !17
  %15 = addrspacecast ptr addrspace(1) %14 to ptr
  %16 = ptrtoint ptr %15 to i64
  %17 = trunc i64 %16 to i1
  store i1 %17, ptr %2
  %18 = load i1, ptr %2
  %19 = icmp eq i1 %18, 1
  store i1 %19, ptr %3
  %20 = load i1, ptr %3
  br i1 %20, label %21, label %27
21:
  %22 = load ptr addrspace(1), ptr %x
  %23 = addrspacecast ptr addrspace(1) %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 144115188075855872
  br i1 %26, label %39, label %42
27:
  %28 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %28, ptr %bf2
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load ptr addrspace(1), ptr %bf2
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %33, ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %6
  %38 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %38), !dbg !21
  store ptr addrspace(1) null, ptr %7
  ret void
39:
  %40 = load ptr addrspace(1), ptr %x
  %41 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %40), !dbg !22
  store i64 %41, ptr %x.1
  ret void
42:
  %43 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %43, ptr %x.2
  %44 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %44, ptr %bf1
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = load ptr addrspace(1), ptr %bf1
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %4
  %54 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !19
  store ptr addrspace(1) null, ptr %5
  br label %27
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %56), !dbg !15
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if09-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"func", linkageName:"_B_func", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 7, column: 16, scope: !5)
!11 = !DILocation(line: 8, column: 10, scope: !5)
!12 = !DILocation(line: 8, column: 10, scope: !5)
!13 = !DILocation(line: 9, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 12, column: 9, scope: !7)
!16 = !DILocation(line: 13, column: 24, scope: !7)
!17 = !DILocation(line: 14, column: 8, scope: !7)
!18 = !DILocation(line: 19, column: 19, scope: !7)
!19 = !DILocation(line: 19, column: 8, scope: !7)
!20 = !DILocation(line: 23, column: 15, scope: !7)
!21 = !DILocation(line: 23, column: 4, scope: !7)
!22 = !DILocation(line: 24, column: 0, scope: !7)
