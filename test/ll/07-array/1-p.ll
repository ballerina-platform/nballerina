@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %21, label %6
6:
  %7 = call ptr addrspace(1) @_B_foo(), !dbg !11
  store ptr addrspace(1) %7, ptr %1
  %8 = load ptr addrspace(1), ptr %1
  %9 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %8), !dbg !12
  store ptr addrspace(1) %9, ptr %v
  %10 = load ptr addrspace(1), ptr %v
  %11 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %10, i64 72057594037927928), !dbg !13
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 0
  %14 = load ptr, ptr addrspace(1) %13, align 8
  %15 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8
  %17 = call i64 %16(ptr addrspace(1) %10, i64 1, i64 1)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %24
19:
  %20 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !14
  unreachable
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !10
  unreachable
23:
  ret void
24:
  %25 = or i64 %17, 1024
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 %25), !dbg !9
  store ptr addrspace(1) %26, ptr %2
  br label %19
}
define internal ptr addrspace(1) @_B_foo() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %10, label %5
5:
  %6 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !17
  %7 = bitcast ptr addrspace(1) %6 to ptr addrspace(1)
  %8 = getelementptr i8, ptr addrspace(1) %7, i64 864691128455135236
  store ptr addrspace(1) %8, ptr %1
  %9 = load ptr addrspace(1), ptr %1
  ret ptr addrspace(1) %9
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !16
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 14, scope: !5)
!12 = !DILocation(line: 3, column: 12, scope: !5)
!13 = !DILocation(line: 4, column: 5, scope: !5)
!14 = !DILocation(line: 5, column: 0, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 7, column: 9, scope: !7)
!17 = !DILocation(line: 8, column: 11, scope: !7)
