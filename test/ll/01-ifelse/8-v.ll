@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %9, label %8
8:
  call void @_B_printIfFalse(i1 1), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  call void @_B_printIfFalse(i1 0), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  call void @_B_printIfTrue(i1 1), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  call void @_B_printIfTrue(i1 0), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_printIfFalse(i1 %0) !dbg !7 {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i1 %0, i1* %b
  %7 = load i1, i1* %b
  br i1 %7, label %8, label %9
8:
  br label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !17
  br label %11
11:
  ret void
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal void @_B_printIfTrue(i1 %0) !dbg !9 {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i1 %0, i1* %b
  %7 = load i1, i1* %b
  br i1 %7, label %8, label %10
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !19
  br label %11
10:
  br label %11
11:
  ret void
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printIfFalse", linkageName:"_B_printIfFalse", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"printIfTrue", linkageName:"_B_printIfTrue", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 16, column: 8, scope: !7)
!18 = !DILocation(line: 0, column: 0, scope: !9)
!19 = !DILocation(line: 22, column: 8, scope: !9)
