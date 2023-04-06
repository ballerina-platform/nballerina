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
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %v2.1 = alloca ptr addrspace(1)
  %v2.2 = alloca ptr addrspace(1)
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %v2.3 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %36, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = getelementptr inbounds [0 x i64], ptr addrspace(1) %13, i64 0, i64 0
  store i64 1, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %v1
  %19 = load ptr addrspace(1), ptr %v1
  %20 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %19), !dbg !10
  store ptr addrspace(1) %20, ptr %v2
  %21 = load ptr addrspace(1), ptr %v2
  %22 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %21), !dbg !11
  br i1 %22, label %23, label %32
23:
  %24 = load ptr addrspace(1), ptr %v2
  %25 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %24, ptr @_Be04root1), !dbg !12
  store ptr addrspace(1) %25, ptr %v2.1
  %26 = load ptr addrspace(1), ptr %v2.1
  %27 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 72057594037927928)
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  %30 = load i64, ptr addrspace(1) %29, align 8
  %31 = icmp ult i64 0, %30
  br i1 %31, label %38, label %41
32:
  %33 = load ptr addrspace(1), ptr %v2
  store ptr addrspace(1) %33, ptr %v2.3
  ret void
34:
  %35 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !16
  unreachable
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !8
  unreachable
38:
  %39 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %26, i64 4)
  %40 = icmp ne ptr addrspace(1) %39, null
  br i1 %40, label %43, label %49
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %42, ptr %5
  br label %34
43:
  %44 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = getelementptr inbounds [0 x i64], ptr addrspace(1) %46, i64 0, i64 0
  %48 = load i64, ptr addrspace(1) %47, align 8
  store i64 %48, ptr %2
  br label %55
49:
  %50 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 0
  %51 = load ptr, ptr addrspace(1) %50, align 8
  %52 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = call i64 %53(ptr addrspace(1) %26, i64 0)
  store i64 %54, ptr %2
  br label %55
55:
  %56 = load i64, ptr %2
  store i64 %56, ptr %i
  %57 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = load i64, ptr %i
  %62 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %61), !dbg !14
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %60, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %3
  %67 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !15
  store ptr addrspace(1) null, ptr %4
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-bug/array1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 15, scope: !5)
!10 = !DILocation(line: 7, column: 11, scope: !5)
!11 = !DILocation(line: 8, column: 10, scope: !5)
!12 = !DILocation(line: 8, column: 10, scope: !5)
!13 = !DILocation(line: 10, column: 19, scope: !5)
!14 = !DILocation(line: 10, column: 19, scope: !5)
!15 = !DILocation(line: 10, column: 8, scope: !5)
!16 = !DILocation(line: 12, column: 0, scope: !5)
