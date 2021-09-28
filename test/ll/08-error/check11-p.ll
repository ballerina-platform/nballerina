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
  br i1 %5, label %8, label %6
6:
  call void @_B_doPanic(), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %7), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal void @_B_doPanic() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %24, label %9
9:
  %10 = call i8 addrspace(1)* @_B_alwaysErr(), !dbg !15
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1, !dbg !15
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 792633534417207296
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %19, label %17
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %4
  ret void
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %3
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %21, i8 addrspace(1)** %5
  br label %22
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %25)
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
!1 = !DIFile(filename:"../../../compiler/testSuite/08-error/check11-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"doPanic", linkageName:"_B_doPanic", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"alwaysErr", linkageName:"_B_alwaysErr", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 3, column: 15, scope: !5)
!13 = !DILocation(line: 3, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 7, column: 21, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
