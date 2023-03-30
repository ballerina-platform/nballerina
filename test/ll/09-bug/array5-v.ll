@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %v2.1 = alloca ptr addrspace(1)
  %v2.2 = alloca ptr addrspace(1)
  %n = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
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
  store i64 42, ptr addrspace(1) %14
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
  %22 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %21), !dbg !11
  br i1 %22, label %23, label %34
23:
  %24 = load ptr addrspace(1), ptr %v2
  store ptr addrspace(1) %24, ptr %v2.1
  %25 = load ptr addrspace(1), ptr %v2.1
  %26 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 72057594037927928), !dbg !12
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 0
  %29 = load ptr, ptr addrspace(1) %28, align 8
  %30 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8
  %32 = call i64 %31(ptr addrspace(1) %25, i64 0, i64 17)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %47
34:
  %35 = load ptr addrspace(1), ptr %v2
  store ptr addrspace(1) %35, ptr %v2.2
  ret void
36:
  %37 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !16
  unreachable
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !8
  unreachable
40:
  %41 = load ptr addrspace(1), ptr %v2.1
  %42 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %41, i64 72057594037927928)
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  %45 = load i64, ptr addrspace(1) %44, align 8
  %46 = icmp ult i64 0, %45
  br i1 %46, label %50, label %68
47:
  %48 = or i64 %32, 2560
  %49 = call ptr addrspace(1) @_bal_panic_construct(i64 %48), !dbg !7
  store ptr addrspace(1) %49, ptr %5
  br label %36
50:
  %51 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 0
  %52 = load ptr, ptr addrspace(1) %51, align 8
  %53 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %52, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = call i64 %54(ptr addrspace(1) %41, i64 0)
  store i64 %55, ptr %2
  %56 = load i64, ptr %2
  store i64 %56, ptr %n
  %57 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = load i64, ptr %n
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
  br label %34
68:
  %69 = call ptr addrspace(1) @_bal_panic_construct(i64 2821), !dbg !7
  store ptr addrspace(1) %69, ptr %5
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-bug/array5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 15, scope: !5)
!10 = !DILocation(line: 8, column: 11, scope: !5)
!11 = !DILocation(line: 9, column: 10, scope: !5)
!12 = !DILocation(line: 10, column: 10, scope: !5)
!13 = !DILocation(line: 12, column: 19, scope: !5)
!14 = !DILocation(line: 12, column: 19, scope: !5)
!15 = !DILocation(line: 12, column: 8, scope: !5)
!16 = !DILocation(line: 14, column: 0, scope: !5)
