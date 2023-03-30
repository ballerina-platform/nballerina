@_bal_stack_guard = external global ptr
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define internal void @_B_foo(i64 %0, ptr addrspace(1) %1) !dbg !5 {
  %i = alloca i64
  %s = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %7, label %6
6:
  store i64 %0, ptr %i
  store ptr addrspace(1) %1, ptr %s
  ret void
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !12
  unreachable
}
define internal i64 @_B_bar(i64 %0) !dbg !7 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %i
  %8 = load i64, ptr %i
  %9 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %8, i64 2)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !15
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !14
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 1537), !dbg !13
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
define void @_B04rootmain() !dbg !9 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_foo(i64 6, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431985267)), !dbg !18
  store ptr addrspace(1) null, ptr %1
  ret void
6:
  %7 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %7), !dbg !17
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-unused/unused7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 2, column: 9, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 5, column: 9, scope: !7)
!15 = !DILocation(line: 7, column: 0, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
!17 = !DILocation(line: 9, column: 16, scope: !9)
!18 = !DILocation(line: 10, column: 4, scope: !9)
