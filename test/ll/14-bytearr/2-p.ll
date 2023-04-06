@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_1(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %b1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_1(ptr @_Bi04root0, i64 0), !dbg !11
  %8 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %9 = getelementptr i8, ptr addrspace(1) %8, i64 864691128455135236
  store ptr addrspace(1) %9, ptr %1
  %10 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %10, ptr %b1
  %11 = load ptr addrspace(1), ptr %b1
  %12 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %11), !dbg !12
  call void @_B_f(ptr addrspace(1) %12), !dbg !13
  store ptr addrspace(1) null, ptr %2
  ret void
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 260), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !10
  unreachable
}
define internal void @_B_f(ptr addrspace(1) %0) !dbg !7 {
  %a = alloca ptr addrspace(1)
  %b = alloca i64
  %i = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %19, label %6
6:
  store ptr addrspace(1) %0, ptr %a
  store i64 2, ptr %b
  %7 = load ptr addrspace(1), ptr %a
  %8 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %7, i64 72057594037927928), !dbg !16
  %9 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %10 = load i64, ptr %b
  %11 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 0
  %12 = load ptr, ptr addrspace(1) %11, align 8
  %13 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = call i64 %14(ptr addrspace(1) %7, i64 0, i64 %10)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %32
17:
  %18 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !19
  unreachable
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !15
  unreachable
21:
  store i64 4, ptr %i
  %22 = load ptr addrspace(1), ptr %a
  %23 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %22, i64 72057594037927928), !dbg !17
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load i64, ptr %i
  %26 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 0
  %27 = load ptr, ptr addrspace(1) %26, align 8
  %28 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8
  %30 = call i64 %29(ptr addrspace(1) %22, i64 1, i64 %25)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %45
32:
  %33 = or i64 %15, 2048
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 %33), !dbg !14
  store ptr addrspace(1) %34, ptr %2
  br label %17
35:
  %36 = load ptr addrspace(1), ptr %a
  %37 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %36, i64 72057594037927928), !dbg !18
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %38, i64 0, i32 0
  %40 = load ptr, ptr addrspace(1) %39, align 8
  %41 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = call i64 %42(ptr addrspace(1) %36, i64 2, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %49
45:
  %46 = or i64 %30, 2816
  %47 = call ptr addrspace(1) @_bal_panic_construct(i64 %46), !dbg !14
  store ptr addrspace(1) %47, ptr %2
  br label %17
48:
  ret void
49:
  %50 = or i64 %43, 3328
  %51 = call ptr addrspace(1) @_bal_panic_construct(i64 %50), !dbg !14
  store ptr addrspace(1) %51, ptr %2
  br label %17
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bytearr/2-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B_f", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 1, column: 16, scope: !5)
!11 = !DILocation(line: 2, column: 16, scope: !5)
!12 = !DILocation(line: 3, column: 4, scope: !5)
!13 = !DILocation(line: 3, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 6, column: 9, scope: !7)
!16 = !DILocation(line: 8, column: 5, scope: !7)
!17 = !DILocation(line: 11, column: 5, scope: !7)
!18 = !DILocation(line: 13, column: 5, scope: !7)
!19 = !DILocation(line: 14, column: 0, scope: !7)
