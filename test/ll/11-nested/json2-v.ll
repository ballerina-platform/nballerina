@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Be04root2 = external constant i32
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %iv = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %ij = alloca ptr addrspace(1)
  %j = alloca ptr addrspace(1)
  %j.1 = alloca ptr addrspace(1)
  %j.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %j.3 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %38, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = getelementptr inbounds [0 x i64], ptr addrspace(1) %13, i64 0, i64 0
  store i64 17, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %iv
  %19 = load ptr addrspace(1), ptr %iv
  %20 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %19), !dbg !10
  store ptr addrspace(1) %20, ptr %ij
  %21 = load ptr addrspace(1), ptr %ij
  %22 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %21), !dbg !11
  store ptr addrspace(1) %22, ptr %j
  %23 = load ptr addrspace(1), ptr %j
  %24 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %23), !dbg !12
  br i1 %24, label %25, label %34
25:
  %26 = load ptr addrspace(1), ptr %j
  %27 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %26, ptr @_Be04root2), !dbg !13
  store ptr addrspace(1) %27, ptr %j.1
  %28 = load ptr addrspace(1), ptr %j.1
  %29 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %28, i64 72057594037927928)
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  %32 = load i64, ptr addrspace(1) %31, align 8
  %33 = icmp ult i64 0, %32
  br i1 %33, label %40, label %58
34:
  %35 = load ptr addrspace(1), ptr %j
  store ptr addrspace(1) %35, ptr %j.3
  ret void
36:
  %37 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !18
  unreachable
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !8
  unreachable
40:
  %41 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 0
  %42 = load ptr, ptr addrspace(1) %41, align 8
  %43 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = call ptr addrspace(1) %44(ptr addrspace(1) %28, i64 0)
  %46 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %28, ptr addrspace(1) %45), !dbg !14
  store ptr addrspace(1) %46, ptr %2
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !15
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = load ptr addrspace(1), ptr %2
  %52 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %51), !dbg !16
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 1, ptr addrspace(1) %54
  %55 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 864691128455135236
  store ptr addrspace(1) %56, ptr %3
  %57 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !17
  store ptr addrspace(1) null, ptr %4
  br label %34
58:
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !7
  store ptr addrspace(1) %59, ptr %5
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/json2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 15, scope: !5)
!10 = !DILocation(line: 9, column: 12, scope: !5)
!11 = !DILocation(line: 10, column: 8, scope: !5)
!12 = !DILocation(line: 11, column: 9, scope: !5)
!13 = !DILocation(line: 11, column: 9, scope: !5)
!14 = !DILocation(line: 12, column: 20, scope: !5)
!15 = !DILocation(line: 12, column: 19, scope: !5)
!16 = !DILocation(line: 12, column: 19, scope: !5)
!17 = !DILocation(line: 12, column: 8, scope: !5)
!18 = !DILocation(line: 14, column: 0, scope: !5)
