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
  %i = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %39, label %9
9:
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = and i64 72057594037927935, 17
  %15 = or i64 2449958197289549824, %14
  %16 = getelementptr i8, ptr addrspace(1) null, i64 %15
  %17 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 0
  store ptr addrspace(1) %16, ptr addrspace(1) %17
  %18 = and i64 72057594037927935, 42
  %19 = or i64 2449958197289549824, %18
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 1
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = and i64 72057594037927935, -11
  %23 = or i64 2449958197289549824, %22
  %24 = getelementptr i8, ptr addrspace(1) null, i64 %23
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 2
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 3, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %1
  %29 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %29, ptr %v
  store i64 -1, ptr %i
  %30 = load ptr addrspace(1), ptr %v
  %31 = load i64, ptr %i
  %32 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %30, i64 72057594037927928)
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  %35 = load i64, ptr addrspace(1) %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %41, label %58
37:
  %38 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !13
  unreachable
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !8
  unreachable
41:
  %42 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 0
  %43 = load ptr, ptr addrspace(1) %42, align 8
  %44 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = call ptr addrspace(1) %45(ptr addrspace(1) %30, i64 %31)
  %47 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %30, ptr addrspace(1) %46), !dbg !10
  store ptr addrspace(1) %47, ptr %2
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load ptr addrspace(1), ptr %2
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %54
  %55 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 864691128455135236
  store ptr addrspace(1) %56, ptr %3
  %57 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !12
  store ptr addrspace(1) null, ptr %4
  ret void
58:
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %59, ptr %5
  br label %37
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/05-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 6, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 0, scope: !5)
