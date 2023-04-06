@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %64, label %15
15:
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %17 = zext i1 1 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %19), !dbg !10
  %20 = zext i1 0 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %22), !dbg !11
  store ptr addrspace(1) %16, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %23, ptr %m
  %24 = load ptr addrspace(1), ptr %m
  %25 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %24, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !12
  store ptr addrspace(1) %25, ptr %2
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load ptr addrspace(1), ptr %2
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %3
  %35 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %36 = load ptr addrspace(1), ptr %m
  %37 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %36, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !15
  store ptr addrspace(1) %37, ptr %5
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = load ptr addrspace(1), ptr %5
  %43 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) %42, ptr addrspace(1) %43
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %44
  %45 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %6
  %47 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %47), !dbg !17
  store ptr addrspace(1) null, ptr %7
  %48 = load ptr addrspace(1), ptr %m
  %49 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %48, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434)), !dbg !18
  store ptr addrspace(1) %49, ptr %8
  %50 = load ptr addrspace(1), ptr %8
  %51 = icmp eq ptr addrspace(1) %50, null
  store i1 %51, ptr %9
  %52 = load i1, ptr %9
  br i1 %52, label %53, label %63
53:
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431589230), ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %10
  %62 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !20
  store ptr addrspace(1) null, ptr %11
  br label %63
63:
  ret void
64:
  %65 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %65), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/boolean-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 21, scope: !5)
!10 = !DILocation(line: 5, column: 21, scope: !5)
!11 = !DILocation(line: 5, column: 21, scope: !5)
!12 = !DILocation(line: 6, column: 16, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 16, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 8, scope: !5)
!19 = !DILocation(line: 9, column: 19, scope: !5)
!20 = !DILocation(line: 9, column: 8, scope: !5)
