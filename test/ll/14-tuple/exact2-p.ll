@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %t = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %i = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %35, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = zext i1 1 to i64
  %12 = or i64 %11, 72057594037927936
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) %13, ptr addrspace(1) %14
  %15 = and i64 72057594037927935, 7
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  %18 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 1
  store ptr addrspace(1) %17, ptr addrspace(1) %18
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 2, ptr addrspace(1) %19
  %20 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %1
  %22 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %22, ptr %t
  store i64 0, ptr %i
  %23 = load ptr addrspace(1), ptr %t
  %24 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 72057594037927928), !dbg !10
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = load i64, ptr %i
  %27 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 0
  %28 = load ptr, ptr addrspace(1) %27, align 8
  %29 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = call i64 %30(ptr addrspace(1) %23, i64 %26, i64 1)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %38
33:
  %34 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !11
  unreachable
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !8
  unreachable
37:
  ret void
38:
  %39 = or i64 %31, 1024
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 %39), !dbg !7
  store ptr addrspace(1) %40, ptr %2
  br label %33
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/exact2-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 1, column: 16, scope: !5)
!9 = !DILocation(line: 2, column: 23, scope: !5)
!10 = !DILocation(line: 4, column: 5, scope: !5)
!11 = !DILocation(line: 5, column: 0, scope: !5)
