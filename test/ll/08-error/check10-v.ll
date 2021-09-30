@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call i8 addrspace(1)* @_B_passAlong(), !dbg !12
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1, !dbg !12
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %8), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal i8 addrspace(1)* @_B_passAlong() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %21, label %8
8:
  %9 = call i8 addrspace(1)* @_B_alwaysErr(), !dbg !15
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1, !dbg !15
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 792633534417207296
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %18, label %16
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %4
  ret i8 addrspace(1)* null
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %19, i8 addrspace(1)** %3
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  ret i8 addrspace(1)* %20
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
define internal i8 addrspace(1)* @_B_alwaysErr() !dbg !9 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621624421), i64 11), !dbg !16
  store i8 addrspace(1)* %6, i8 addrspace(1)** %1, !dbg !16
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-error/check10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"passAlong", linkageName:"_B_passAlong", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"alwaysErr", linkageName:"_B_alwaysErr", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 3, column: 15, scope: !5)
!13 = !DILocation(line: 3, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 7, column: 21, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
