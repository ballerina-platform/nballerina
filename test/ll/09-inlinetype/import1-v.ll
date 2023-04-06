@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %arr = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %30, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = and i64 72057594037927935, 88
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  %17 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 0
  store ptr addrspace(1) %16, ptr addrspace(1) %17
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 1, ptr addrspace(1) %18
  %19 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 864691128455135236
  store ptr addrspace(1) %20, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %21, ptr %arr
  %22 = load ptr addrspace(1), ptr %arr
  %23 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %22, i64 72057594037927928)
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  %26 = load i64, ptr addrspace(1) %25, align 8
  %27 = icmp ult i64 0, %26
  br i1 %27, label %32, label %48
28:
  %29 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !12
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 0
  %34 = load ptr, ptr addrspace(1) %33, align 8
  %35 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = call ptr addrspace(1) %36(ptr addrspace(1) %22, i64 0)
  store ptr addrspace(1) %37, ptr %2
  %38 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 3
  %40 = load ptr addrspace(1), ptr addrspace(1) %39, align 8
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = load ptr addrspace(1), ptr %2
  %43 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %41, i64 0, i64 0
  store ptr addrspace(1) %42, ptr addrspace(1) %43
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 1
  store i64 1, ptr addrspace(1) %44
  %45 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %3
  %47 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %47), !dbg !11
  store ptr addrspace(1) null, ptr %4
  ret void
48:
  %49 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %49, ptr %5
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-inlinetype/import1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 30, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 0, scope: !5)
