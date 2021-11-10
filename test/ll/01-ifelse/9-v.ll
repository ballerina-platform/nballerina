@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %7, label %6
6:
  call void @_B_printTrue(), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  call void @_B_printFalse(), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal void @_B_printTrue() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %6), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !15
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal void @_B_printFalse() !dbg !9 {
  %b = alloca i1
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  store i1 0, i1* %b
  %7 = load i1, i1* %b
  br i1 %7, label %8, label %10
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !17
  br label %12
10:
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !18
  br label %12
12:
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printTrue", linkageName:"_B_printTrue", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"printFalse", linkageName:"_B_printFalse", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 11, column: 8, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
!17 = !DILocation(line: 18, column: 8, scope: !9)
!18 = !DILocation(line: 20, column: 8, scope: !9)
