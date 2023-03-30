@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %signs = alloca ptr addrspace(1)
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
  store ptr addrspace(1) %13, ptr %signs
  %14 = load ptr addrspace(1), ptr %signs
  %15 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %14, i64 72057594037927928), !dbg !10
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 0
  %18 = load ptr, ptr addrspace(1) %17, align 8
  %19 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = call i64 %20(ptr addrspace(1) %14, i64 1, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261355))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %34
23:
  %24 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %24), !dbg !13
  unreachable
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !8
  unreachable
27:
  %28 = load ptr addrspace(1), ptr %signs
  %29 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %28, i64 72057594037927928)
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  %32 = load i64, ptr addrspace(1) %31, align 8
  %33 = icmp ult i64 0, %32
  br i1 %33, label %37, label %53
34:
  %35 = or i64 %21, 1792
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 %35), !dbg !7
  store ptr addrspace(1) %36, ptr %5
  br label %23
37:
  %38 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 0
  %39 = load ptr, ptr addrspace(1) %38, align 8
  %40 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = call ptr addrspace(1) %41(ptr addrspace(1) %28, i64 0)
  store ptr addrspace(1) %42, ptr %2
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load ptr addrspace(1), ptr %2
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %49
  %50 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %3
  %52 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %52), !dbg !12
  store ptr addrspace(1) null, ptr %4
  ret void
53:
  %54 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %54, ptr %5
  br label %23
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/fill4-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 19, scope: !5)
!10 = !DILocation(line: 7, column: 9, scope: !5)
!11 = !DILocation(line: 8, column: 15, scope: !5)
!12 = !DILocation(line: 8, column: 4, scope: !5)
!13 = !DILocation(line: 9, column: 0, scope: !5)
