@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Be04root1 = external constant i32
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %iv = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v = alloca ptr addrspace(1)
  %iv2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %30, label %12
12:
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 0
  store i64 1, ptr addrspace(1) %17
  %18 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 1
  store i64 2, ptr addrspace(1) %18
  %19 = getelementptr inbounds [0 x i64], ptr addrspace(1) %16, i64 0, i64 2
  store i64 3, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 3, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %23, ptr %iv
  %24 = load ptr addrspace(1), ptr %iv
  %25 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %24), !dbg !10
  store ptr addrspace(1) %25, ptr %v
  %26 = load ptr addrspace(1), ptr %v
  %27 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %26), !dbg !11
  br i1 %27, label %32, label %62
28:
  %29 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !19
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %26, ptr @_Be04root1), !dbg !12
  store ptr addrspace(1) %33, ptr %2
  %34 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %34, ptr %iv2
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = load ptr addrspace(1), ptr %iv2
  %40 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %39), !dbg !14
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %3
  %45 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !15
  store ptr addrspace(1) null, ptr %4
  %46 = load ptr addrspace(1), ptr %iv
  %47 = load ptr addrspace(1), ptr %iv2
  %48 = call i1 @_bal_exact_eq(ptr addrspace(1) %46, ptr addrspace(1) %47), !dbg !16
  store i1 %48, ptr %5
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !17
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 3
  %51 = load ptr addrspace(1), ptr addrspace(1) %50, align 8
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = load i1, ptr %5
  %54 = zext i1 %53 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, ptr addrspace(1) null, i64 %55
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %52, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %6
  %61 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %61), !dbg !18
  store ptr addrspace(1) null, ptr %7
  ret void
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 1795), !dbg !7
  store ptr addrspace(1) %63, ptr %8
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/int8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 15, scope: !5)
!10 = !DILocation(line: 6, column: 10, scope: !5)
!11 = !DILocation(line: 7, column: 16, scope: !5)
!12 = !DILocation(line: 7, column: 16, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 18, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 0, scope: !5)
