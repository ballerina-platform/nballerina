@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %y.1 = alloca i64
  %y.2 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %52, label %11
11:
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %13 = and i64 72057594037927935, 5
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %15), !dbg !10
  %16 = and i64 72057594037927935, 7
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  call void @_bal_mapping_init_member(ptr addrspace(1) %12, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %18), !dbg !11
  store ptr addrspace(1) %12, ptr %1
  %19 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %19, ptr %m
  %20 = load ptr addrspace(1), ptr %m
  %21 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %20, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !12
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %22, ptr %x
  %23 = load ptr addrspace(1), ptr %m
  %24 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %23, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !13
  store ptr addrspace(1) %24, ptr %3
  %25 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %25, ptr %y
  %26 = load ptr addrspace(1), ptr %x
  %27 = addrspacecast ptr addrspace(1) %26 to ptr
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = icmp eq i64 %29, 144115188075855872
  br i1 %30, label %31, label %39
31:
  %32 = load ptr addrspace(1), ptr %x
  %33 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %32), !dbg !14
  store i64 %33, ptr %x.1
  %34 = load ptr addrspace(1), ptr %y
  %35 = addrspacecast ptr addrspace(1) %34 to ptr
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 %36, 2233785415175766016
  %38 = icmp eq i64 %37, 144115188075855872
  br i1 %38, label %41, label %48
39:
  %40 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %40, ptr %x.2
  ret void
41:
  %42 = load ptr addrspace(1), ptr %y
  %43 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %42), !dbg !15
  store i64 %43, ptr %y.1
  %44 = load i64, ptr %x.1
  %45 = load i64, ptr %y.1
  %46 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %44, i64 %45)
  %47 = extractvalue {i64, i1} %46, 1
  br i1 %47, label %67, label %54
48:
  %49 = load ptr addrspace(1), ptr %y
  store ptr addrspace(1) %49, ptr %y.2
  br label %39
50:
  %51 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %51), !dbg !19
  unreachable
52:
  %53 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %53), !dbg !8
  unreachable
54:
  %55 = extractvalue {i64, i1} %46, 0
  store i64 %55, ptr %4
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load i64, ptr %4
  %61 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %60), !dbg !17
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %5
  %66 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %66), !dbg !18
  store ptr addrspace(1) null, ptr %6
  br label %48
67:
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !7
  store ptr addrspace(1) %68, ptr %7
  br label %50
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/int3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 17, scope: !5)
!10 = !DILocation(line: 5, column: 17, scope: !5)
!11 = !DILocation(line: 5, column: 17, scope: !5)
!12 = !DILocation(line: 6, column: 14, scope: !5)
!13 = !DILocation(line: 7, column: 14, scope: !5)
!14 = !DILocation(line: 8, column: 9, scope: !5)
!15 = !DILocation(line: 9, column: 13, scope: !5)
!16 = !DILocation(line: 10, column: 23, scope: !5)
!17 = !DILocation(line: 10, column: 23, scope: !5)
!18 = !DILocation(line: 10, column: 12, scope: !5)
!19 = !DILocation(line: 13, column: 0, scope: !5)
