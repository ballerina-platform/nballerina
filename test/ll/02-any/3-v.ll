@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %13, label %8
8:
  %9 = call i8 addrspace(1)* @_B_foo(), !dbg !12
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1, !dbg !12
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  %11 = call i8 addrspace(1)* @_B_bar(), !dbg !14
  store i8 addrspace(1)* %11, i8 addrspace(1)** %3, !dbg !14
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal i8 addrspace(1)* @_B_foo() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %6, label %4
4:
  %5 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  ret i8 addrspace(1)* %5
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define internal i8 addrspace(1)* @_B_bar() !dbg !9 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %8, label %4
4:
  %5 = zext i1 0 to i64
  %6 = or i64 %5, 72057594037927936
  %7 = getelementptr i8, i8 addrspace(1)* null, i64 %6
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-any/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 0, column: 0, scope: !9)
