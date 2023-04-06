@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %mi = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %ma = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %7, ptr %1
  %8 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %8, ptr %mi
  %9 = load ptr addrspace(1), ptr %mi
  %10 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %9), !dbg !10
  store ptr addrspace(1) %10, ptr %ma
  %11 = load ptr addrspace(1), ptr %ma
  %12 = call i64 @_bal_mapping_set(ptr addrspace(1) %11, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) null), !dbg !11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %21
14:
  %15 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !13
  unreachable
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !8
  unreachable
18:
  %19 = load ptr addrspace(1), ptr %ma
  %20 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %19), !dbg !12
  store ptr addrspace(1) %20, ptr %_
  ret void
21:
  %22 = or i64 %12, 1280
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 %22), !dbg !7
  store ptr addrspace(1) %23, ptr %2
  br label %14
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/int5-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 18, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 6, scope: !5)
!12 = !DILocation(line: 6, column: 6, scope: !5)
!13 = !DILocation(line: 7, column: 0, scope: !5)
