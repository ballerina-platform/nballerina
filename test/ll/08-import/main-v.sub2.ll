@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
define internal i64 @_B_main2() !dbg !5 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 2
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define i64 @_B0m4root4sub2foo() !dbg !7 {
  %1 = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  %6 = call i64 @_B_main2(), !dbg !11
  store i64 %6, i64* %1, !dbg !11
  %7 = load i64, i64* %1
  ret i64 %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-import/main-v.modules/sub2/main2.bal", directory:"../../../compiler/testSuite/08-import/main-v.modules/sub2")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main2", linkageName:"_B_main2", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B0m4root4sub2foo", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
!11 = !DILocation(line: 6, column: 11, scope: !7)
