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
  call void @_B_printBranch(i1 1, i1 1), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B_printBranch(i1 1, i1 0), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_printBranch(i1 0, i1 1), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  call void @_B_printBranch(i1 0, i1 0), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_printBranch(i1 %0, i1 %1) !dbg !7 {
  %x = alloca i1
  %y = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %27, label %10
10:
  store i1 %0, i1* %x
  store i1 %1, i1* %y
  %11 = load i1, i1* %x
  br i1 %11, label %12, label %19
12:
  %13 = load i1, i1* %y
  br i1 %13, label %14, label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !15
  br label %18
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !16
  br label %18
18:
  br label %26
19:
  %20 = load i1, i1* %y
  br i1 %20, label %21, label %23
21:
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !17
  br label %25
23:
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !18
  br label %25
25:
  br label %26
26:
  ret void
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBranch", linkageName:"_B_printBranch", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 14, column: 12, scope: !7)
!16 = !DILocation(line: 16, column: 12, scope: !7)
!17 = !DILocation(line: 20, column: 12, scope: !7)
!18 = !DILocation(line: 22, column: 12, scope: !7)
