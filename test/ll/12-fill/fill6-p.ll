@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare i64 @_bal_mapping_indexed_set(ptr addrspace(1), i64, ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %21, label %10
10:
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = getelementptr i8, ptr addrspace(1) %12, i64 864691128455135236
  store ptr addrspace(1) %13, ptr %1
  %14 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %14, ptr %m
  %15 = load ptr addrspace(1), ptr %m
  %16 = call {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1) %15, i64 1), !dbg !10
  %17 = extractvalue {ptr addrspace(1), i64} %16, 1
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %32, label %23
19:
  %20 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !17
  unreachable
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !8
  unreachable
23:
  %24 = extractvalue {ptr addrspace(1), i64} %16, 0
  %25 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %15, ptr addrspace(1) %24), !dbg !11
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  %27 = and i64 72057594037927935, 42
  %28 = or i64 2449958197289549824, %27
  %29 = getelementptr i8, ptr addrspace(1) null, i64 %28
  %30 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %26, i64 0, ptr addrspace(1) %29), !dbg !12
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %42
32:
  %33 = or i64 %17, 1792
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 %33), !dbg !7
  store ptr addrspace(1) %34, ptr %6
  br label %19
35:
  %36 = load ptr addrspace(1), ptr %m
  %37 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %36, i64 72057594037927928)
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  %40 = load i64, ptr addrspace(1) %39, align 8
  %41 = icmp ult i64 1, %40
  br i1 %41, label %45, label %63
42:
  %43 = or i64 %30, 1792
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 %43), !dbg !7
  store ptr addrspace(1) %44, ptr %6
  br label %19
45:
  %46 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 0
  %47 = load ptr, ptr addrspace(1) %46, align 8
  %48 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = call ptr addrspace(1) %49(ptr addrspace(1) %36, i64 1)
  %51 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %36, ptr addrspace(1) %50), !dbg !13
  store ptr addrspace(1) %51, ptr %3
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = load ptr addrspace(1), ptr %3
  %57 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %56), !dbg !15
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %4
  %62 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !16
  store ptr addrspace(1) null, ptr %5
  ret void
63:
  %64 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %64, ptr %6
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/fill6-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 12, scope: !5)
!10 = !DILocation(line: 7, column: 5, scope: !5)
!11 = !DILocation(line: 7, column: 5, scope: !5)
!12 = !DILocation(line: 7, column: 8, scope: !5)
!13 = !DILocation(line: 8, column: 16, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 0, scope: !5)
