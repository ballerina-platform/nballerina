@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %25, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %v
  %14 = load ptr addrspace(1), ptr %v
  %15 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %14, i64 72057594037927928), !dbg !10
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 0
  %18 = load ptr, ptr addrspace(1) %17, align 8
  %19 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8
  %21 = call i64 %20(ptr addrspace(1) %14, i64 0, i64 1)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %34
23:
  %24 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %24), !dbg !14
  unreachable
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !8
  unreachable
27:
  %28 = load ptr addrspace(1), ptr %v
  %29 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %28, i64 72057594037927928)
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  %32 = load i64, ptr addrspace(1) %31, align 8
  %33 = icmp ult i64 0, %32
  br i1 %33, label %37, label %54
34:
  %35 = or i64 %21, 1536
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 %35), !dbg !7
  store ptr addrspace(1) %36, ptr %5
  br label %23
37:
  %38 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 0
  %39 = load ptr, ptr addrspace(1) %38, align 8
  %40 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = call ptr addrspace(1) %41(ptr addrspace(1) %28, i64 0)
  %43 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %28, ptr addrspace(1) %42), !dbg !11
  store ptr addrspace(1) %43, ptr %2
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = load ptr addrspace(1), ptr %2
  %49 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %48, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %3
  %53 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %53), !dbg !13
  store ptr addrspace(1) null, ptr %4
  ret void
54:
  %55 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %55, ptr %5
  br label %23
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/22-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 14, scope: !5)
!10 = !DILocation(line: 6, column: 5, scope: !5)
!11 = !DILocation(line: 7, column: 16, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 0, scope: !5)
