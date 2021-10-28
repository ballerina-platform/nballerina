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
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %13, label %12
12:
  call void @_B_printEq(i1 1, i1 1), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  call void @_B_printEq(i1 1, i1 0), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  call void @_B_printEq(i1 0, i1 1), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  call void @_B_printEq(i1 0, i1 0), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  call void @_B_printNotEq(i1 1, i1 1), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !16
  call void @_B_printNotEq(i1 1, i1 0), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !17
  call void @_B_printNotEq(i1 0, i1 1), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !18
  call void @_B_printNotEq(i1 0, i1 0), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !19
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal void @_B_printEq(i1 %0, i1 %1) !dbg !7 {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %19, label %9
9:
  store i1 %0, i1* %b1
  store i1 %1, i1* %b2
  %10 = load i1, i1* %b1
  %11 = load i1, i1* %b2
  %12 = icmp eq i1 %10, %11
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  br i1 %13, label %14, label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !21
  br label %18
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !22
  br label %18
18:
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
define internal void @_B_printNotEq(i1 %0, i1 %1) !dbg !9 {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %19, label %9
9:
  store i1 %0, i1* %b1
  store i1 %1, i1* %b2
  %10 = load i1, i1* %b1
  %11 = load i1, i1* %b2
  %12 = icmp ne i1 %10, %11
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  br i1 %13, label %14, label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !24
  br label %18
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !25
  br label %18
18:
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148), !dbg !23
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-boolean/equal1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printEq", linkageName:"_B_printEq", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"printNotEq", linkageName:"_B_printNotEq", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 11, column: 4, scope: !5)
!19 = !DILocation(line: 12, column: 4, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
!21 = !DILocation(line: 17, column: 8, scope: !7)
!22 = !DILocation(line: 20, column: 8, scope: !7)
!23 = !DILocation(line: 0, column: 0, scope: !9)
!24 = !DILocation(line: 26, column: 8, scope: !9)
!25 = !DILocation(line: 29, column: 8, scope: !9)
