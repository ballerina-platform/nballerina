@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %m = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %26, label %7
7:
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr inbounds [0 x i64], ptr addrspace(1) %11, i64 0, i64 0
  store i64 1, ptr addrspace(1) %12
  %13 = getelementptr inbounds [0 x i64], ptr addrspace(1) %11, i64 0, i64 1
  store i64 2, ptr addrspace(1) %13
  %14 = getelementptr inbounds [0 x i64], ptr addrspace(1) %11, i64 0, i64 2
  store i64 3, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 3, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %v
  %19 = load ptr addrspace(1), ptr %v
  %20 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %19, i64 72057594037927928), !dbg !10
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %19, i64 4)
  %23 = icmp ne ptr addrspace(1) %22, null
  br i1 %23, label %28, label %32
24:
  %25 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !13
  unreachable
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !8
  unreachable
28:
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  %30 = load i64, ptr addrspace(1) %29, align 8
  %31 = icmp ult i64 2, %30
  br i1 %31, label %48, label %32
32:
  %33 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 0
  %34 = load ptr, ptr addrspace(1) %33, align 8
  %35 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = call i64 %36(ptr addrspace(1) %19, i64 2, i64 20)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %53, label %54
39:
  %40 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 0), !dbg !11
  store ptr addrspace(1) %40, ptr %2
  %41 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %41, ptr %m
  %42 = load ptr addrspace(1), ptr %m
  %43 = and i64 72057594037927935, 1
  %44 = or i64 2449958197289549824, %43
  %45 = getelementptr i8, ptr addrspace(1) null, i64 %44
  %46 = call i64 @_bal_mapping_set(ptr addrspace(1) %42, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431131759), ptr addrspace(1) %45), !dbg !12
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %58
48:
  %49 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = getelementptr inbounds [0 x i64], ptr addrspace(1) %51, i64 0, i64 2
  store i64 20, ptr addrspace(1) %52
  br label %39
53:
  br label %39
54:
  %55 = or i64 %37, 1024
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 %55), !dbg !7
  store ptr addrspace(1) %56, ptr %3
  br label %24
57:
  ret void
58:
  %59 = or i64 %46, 1792
  %60 = call ptr addrspace(1) @_bal_panic_construct(i64 %59), !dbg !7
  store ptr addrspace(1) %60, ptr %3
  br label %24
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-unused/unused9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 14, scope: !5)
!10 = !DILocation(line: 4, column: 5, scope: !5)
!11 = !DILocation(line: 6, column: 17, scope: !5)
!12 = !DILocation(line: 7, column: 5, scope: !5)
!13 = !DILocation(line: 8, column: 0, scope: !5)
