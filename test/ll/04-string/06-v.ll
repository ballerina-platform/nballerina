@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %10, label %7
7:
  call void @_B_greet(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504)), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  %8 = call i8 addrspace(1)* @_B_greeting(), !dbg !13
  store i8 addrspace(1)* %8, i8 addrspace(1)** %2, !dbg !13
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal void @_B_greet(i8 addrspace(1)* %0) !dbg !7 {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %7), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !16
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal i8 addrspace(1)* @_B_greeting() !dbg !9 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696)
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"greet", linkageName:"_B_greet", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"greeting", linkageName:"_B_greeting", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 10, column: 4, scope: !7)
!17 = !DILocation(line: 0, column: 0, scope: !9)
