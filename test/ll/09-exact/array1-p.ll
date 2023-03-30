@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %v3 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %31, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %v1
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 0), !dbg !10
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %2
  %17 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %17, ptr %v2
  %18 = load ptr addrspace(1), ptr %v2
  %19 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %18, i64 72057594037927928), !dbg !11
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = load ptr addrspace(1), ptr %v1
  %22 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %21), !dbg !12
  %23 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 0
  %24 = load ptr, ptr addrspace(1) %23, align 8
  %25 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = call i64 %26(ptr addrspace(1) %18, i64 0, ptr addrspace(1) %22)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %40
29:
  %30 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !15
  unreachable
31:
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !8
  unreachable
33:
  %34 = load ptr addrspace(1), ptr %v2
  %35 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %34, i64 72057594037927928)
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  %38 = load i64, ptr addrspace(1) %37, align 8
  %39 = icmp ult i64 0, %38
  br i1 %39, label %43, label %55
40:
  %41 = or i64 %27, 1536
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 %41), !dbg !7
  store ptr addrspace(1) %42, ptr %5
  br label %29
43:
  %44 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 0
  %45 = load ptr, ptr addrspace(1) %44, align 8
  %46 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = call ptr addrspace(1) %47(ptr addrspace(1) %34, i64 0)
  %49 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %34, ptr addrspace(1) %48), !dbg !13
  store ptr addrspace(1) %49, ptr %3
  %50 = load ptr addrspace(1), ptr %3
  %51 = addrspacecast ptr addrspace(1) %50 to ptr
  %52 = ptrtoint ptr %51 to i64
  %53 = and i64 %52, 2233785415175766016
  %54 = icmp eq i64 %53, 864691128455135232
  br i1 %54, label %57, label %71
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %56, ptr %5
  br label %29
57:
  store ptr addrspace(1) %50, ptr %4
  %58 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %58, ptr %v3
  %59 = load ptr addrspace(1), ptr %v3
  %60 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %59, i64 72057594037927928), !dbg !14
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = zext i1 1 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, ptr addrspace(1) null, i64 %63
  %65 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 0
  %66 = load ptr, ptr addrspace(1) %65, align 8
  %67 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8
  %69 = call i64 %68(ptr addrspace(1) %59, i64 0, ptr addrspace(1) %64)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %73, label %74
71:
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 1795), !dbg !7
  store ptr addrspace(1) %72, ptr %5
  br label %29
73:
  ret void
74:
  %75 = or i64 %69, 2048
  %76 = call ptr addrspace(1) @_bal_panic_construct(i64 %75), !dbg !7
  store ptr addrspace(1) %76, ptr %5
  br label %29
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/array1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 6, scope: !5)
!12 = !DILocation(line: 6, column: 6, scope: !5)
!13 = !DILocation(line: 7, column: 24, scope: !5)
!14 = !DILocation(line: 8, column: 6, scope: !5)
!15 = !DILocation(line: 9, column: 0, scope: !5)
