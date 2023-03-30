@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %v3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %30, label %10
10:
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = getelementptr i8, ptr addrspace(1) %12, i64 864691128455135236
  store ptr addrspace(1) %13, ptr %1
  %14 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %14, ptr %v1
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 0), !dbg !10
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %2
  %18 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %18, ptr %v2
  %19 = load ptr addrspace(1), ptr %v2
  %20 = load ptr addrspace(1), ptr %v1
  %21 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %20), !dbg !11
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %19, ptr addrspace(1) %21), !dbg !12
  store ptr addrspace(1) null, ptr %3
  %22 = load ptr addrspace(1), ptr %v2
  %23 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %22, i64 72057594037927928)
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  %26 = load i64, ptr addrspace(1) %25, align 8
  %27 = icmp ult i64 0, %26
  br i1 %27, label %32, label %44
28:
  %29 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !15
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 0
  %34 = load ptr, ptr addrspace(1) %33, align 8
  %35 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = call ptr addrspace(1) %36(ptr addrspace(1) %22, i64 0)
  %38 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %22, ptr addrspace(1) %37), !dbg !13
  store ptr addrspace(1) %38, ptr %4
  %39 = load ptr addrspace(1), ptr %4
  %40 = addrspacecast ptr addrspace(1) %39 to ptr
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 864691128455135232
  br i1 %43, label %46, label %60
44:
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %45, ptr %6
  br label %28
46:
  store ptr addrspace(1) %39, ptr %5
  %47 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %47, ptr %v3
  %48 = load ptr addrspace(1), ptr %v3
  %49 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %48, i64 72057594037927928), !dbg !14
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = zext i1 1 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, ptr addrspace(1) null, i64 %52
  %54 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 0
  %55 = load ptr, ptr addrspace(1) %54, align 8
  %56 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8
  %58 = call i64 %57(ptr addrspace(1) %48, i64 0, ptr addrspace(1) %53)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %62, label %63
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 1283), !dbg !7
  store ptr addrspace(1) %61, ptr %6
  br label %28
62:
  ret void
63:
  %64 = or i64 %58, 1536
  %65 = call ptr addrspace(1) @_bal_panic_construct(i64 %64), !dbg !7
  store ptr addrspace(1) %65, ptr %6
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/push1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 1, column: 16, scope: !5)
!9 = !DILocation(line: 2, column: 15, scope: !5)
!10 = !DILocation(line: 3, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 7, scope: !5)
!12 = !DILocation(line: 4, column: 7, scope: !5)
!13 = !DILocation(line: 5, column: 40, scope: !5)
!14 = !DILocation(line: 6, column: 6, scope: !5)
!15 = !DILocation(line: 7, column: 0, scope: !5)
