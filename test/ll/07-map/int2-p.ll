@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %mi = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %ma = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %31, label %10
10:
  %11 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %12, ptr %mi
  %13 = load ptr addrspace(1), ptr %mi
  %14 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %13), !dbg !10
  store ptr addrspace(1) %14, ptr %ma
  %15 = load ptr addrspace(1), ptr %ma
  %16 = zext i1 1 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = call i64 @_bal_mapping_set(ptr addrspace(1) %15, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %18), !dbg !11
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %33, label %42
21:
  %22 = load ptr addrspace(1), ptr %x
  %23 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %22), !dbg !13
  store i64 %23, ptr %x.1
  %24 = load i64, ptr %x.1
  %25 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %24, i64 1)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %58, label %45
27:
  %28 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %28, ptr %x.2
  ret void
29:
  %30 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !17
  unreachable
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !8
  unreachable
33:
  %34 = load ptr addrspace(1), ptr %mi
  %35 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %34, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !12
  store ptr addrspace(1) %35, ptr %2
  %36 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %36, ptr %x
  %37 = load ptr addrspace(1), ptr %x
  %38 = addrspacecast ptr addrspace(1) %37 to ptr
  %39 = ptrtoint ptr %38 to i64
  %40 = and i64 %39, 2233785415175766016
  %41 = icmp eq i64 %40, 144115188075855872
  br i1 %41, label %21, label %27
42:
  %43 = or i64 %19, 1536
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 %43), !dbg !7
  store ptr addrspace(1) %44, ptr %6
  br label %29
45:
  %46 = extractvalue {i64, i1} %25, 0
  store i64 %46, ptr %3
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = load i64, ptr %3
  %52 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %51), !dbg !15
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 1, ptr addrspace(1) %54
  %55 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 864691128455135236
  store ptr addrspace(1) %56, ptr %4
  %57 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !16
  store ptr addrspace(1) null, ptr %5
  br label %27
58:
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !7
  store ptr addrspace(1) %59, ptr %6
  br label %29
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/int2-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 18, scope: !5)
!10 = !DILocation(line: 5, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 6, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 9, scope: !5)
!14 = !DILocation(line: 9, column: 19, scope: !5)
!15 = !DILocation(line: 9, column: 19, scope: !5)
!16 = !DILocation(line: 9, column: 8, scope: !5)
!17 = !DILocation(line: 11, column: 0, scope: !5)
