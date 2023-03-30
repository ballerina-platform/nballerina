@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452139628359057408], align 8
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %d = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %27, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr i8, ptr addrspace(1) %11, i64 864691128455135236
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %d
  %14 = load ptr addrspace(1), ptr %d
  %15 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %14, i64 72057594037927928), !dbg !10
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %18 = getelementptr i8, ptr addrspace(1) %17, i64 288230376151711744
  %19 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 0
  %20 = load ptr, ptr addrspace(1) %19, align 8
  %21 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = call i64 %22(ptr addrspace(1) %14, i64 1, ptr addrspace(1) %18)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %36
25:
  %26 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !13
  unreachable
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !8
  unreachable
29:
  %30 = load ptr addrspace(1), ptr %d
  %31 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %30, i64 72057594037927928)
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  %34 = load i64, ptr addrspace(1) %33, align 8
  %35 = icmp ult i64 1, %34
  br i1 %35, label %39, label %55
36:
  %37 = or i64 %23, 1024
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 %37), !dbg !7
  store ptr addrspace(1) %38, ptr %5
  br label %25
39:
  %40 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 0
  %41 = load ptr, ptr addrspace(1) %40, align 8
  %42 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = call ptr addrspace(1) %43(ptr addrspace(1) %30, i64 1)
  store ptr addrspace(1) %44, ptr %2
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = load ptr addrspace(1), ptr %2
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %3
  %54 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !12
  store ptr addrspace(1) null, ptr %4
  ret void
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %56, ptr %5
  br label %25
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 18, scope: !5)
!10 = !DILocation(line: 4, column: 5, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 0, scope: !5)
