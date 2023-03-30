@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
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
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %22, label %11
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %15, ptr %m
  %16 = load ptr addrspace(1), ptr %m
  %17 = call {ptr addrspace(1), i64} @_bal_list_filling_get(ptr addrspace(1) %16, i64 1), !dbg !10
  %18 = extractvalue {ptr addrspace(1), i64} %17, 1
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %36, label %24
20:
  %21 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !19
  unreachable
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !8
  unreachable
24:
  %25 = extractvalue {ptr addrspace(1), i64} %17, 0
  %26 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %16, ptr addrspace(1) %25), !dbg !11
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  %28 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %27, i64 0), !dbg !12
  %29 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %27, ptr addrspace(1) %28), !dbg !13
  store ptr addrspace(1) %29, ptr %3
  %30 = load ptr addrspace(1), ptr %3
  %31 = and i64 72057594037927935, 42
  %32 = or i64 2449958197289549824, %31
  %33 = getelementptr i8, ptr addrspace(1) null, i64 %32
  %34 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %30, i64 0, ptr addrspace(1) %33), !dbg !14
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %39, label %46
36:
  %37 = or i64 %18, 2048
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 %37), !dbg !7
  store ptr addrspace(1) %38, ptr %7
  br label %20
39:
  %40 = load ptr addrspace(1), ptr %m
  %41 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %40, i64 72057594037927928)
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  %44 = load i64, ptr addrspace(1) %43, align 8
  %45 = icmp ult i64 1, %44
  br i1 %45, label %49, label %67
46:
  %47 = or i64 %34, 2048
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 %47), !dbg !7
  store ptr addrspace(1) %48, ptr %7
  br label %20
49:
  %50 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 0
  %51 = load ptr, ptr addrspace(1) %50, align 8
  %52 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = call ptr addrspace(1) %53(ptr addrspace(1) %40, i64 1)
  %55 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %40, ptr addrspace(1) %54), !dbg !15
  store ptr addrspace(1) %55, ptr %4
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load ptr addrspace(1), ptr %4
  %61 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %60), !dbg !17
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
  ret void
67:
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %68, ptr %7
  br label %20
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/fill5-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 13, scope: !5)
!10 = !DILocation(line: 8, column: 5, scope: !5)
!11 = !DILocation(line: 8, column: 5, scope: !5)
!12 = !DILocation(line: 8, column: 8, scope: !5)
!13 = !DILocation(line: 8, column: 8, scope: !5)
!14 = !DILocation(line: 8, column: 10, scope: !5)
!15 = !DILocation(line: 9, column: 16, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 0, scope: !5)
