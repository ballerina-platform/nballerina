@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %27, label %8
8:
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr i8, ptr addrspace(1) %10, i64 864691128455135236
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %12, ptr %x
  %13 = load ptr addrspace(1), ptr %x
  %14 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %13, i64 72057594037927928), !dbg !10
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = zext i1 1 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 0
  %20 = load ptr, ptr addrspace(1) %19, align 8
  %21 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = call i64 %22(ptr addrspace(1) %13, i64 1, ptr addrspace(1) %18)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %42
25:
  %26 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !15
  unreachable
27:
  %28 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %28), !dbg !8
  unreachable
29:
  %30 = load ptr addrspace(1), ptr %x
  %31 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %30, i64 72057594037927928), !dbg !11
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = zext i1 1 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  %36 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 0
  %37 = load ptr, ptr addrspace(1) %36, align 8
  %38 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8
  %40 = call i64 %39(ptr addrspace(1) %30, i64 3, ptr addrspace(1) %35)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %57
42:
  %43 = or i64 %23, 1536
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 %43), !dbg !7
  store ptr addrspace(1) %44, ptr %4
  br label %25
45:
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !12
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load ptr addrspace(1), ptr %x
  %51 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %50), !dbg !13
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %2
  %56 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !14
  store ptr addrspace(1) null, ptr %3
  ret void
57:
  %58 = or i64 %40, 1792
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 %58), !dbg !7
  store ptr addrspace(1) %59, ptr %4
  br label %25
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/boolean2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 18, scope: !5)
!10 = !DILocation(line: 6, column: 5, scope: !5)
!11 = !DILocation(line: 7, column: 5, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 0, scope: !5)
