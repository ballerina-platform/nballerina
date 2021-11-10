@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call i1 @_B_foo(), !dbg !14
  store i1 %7, i1* %1, !dbg !14
  %8 = load i1, i1* %1, !dbg !15
  call void @_B_printBoolean(i1 %8), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal i1 @_B_foo() !dbg !7 {
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = call i1 @_B_bar(i64 1), !dbg !17
  store i1 %7, i1* %1, !dbg !17
  %8 = load i1, i1* %1
  %9 = xor i1 1, %8
  store i1 %9, i1* %2
  %10 = load i1, i1* %2
  br i1 %10, label %11, label %12
11:
  ret i1 1
12:
  ret i1 0
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal i1 @_B_bar(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i1
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i64 %0, i64* %x
  %7 = load i64, i64* %x
  %8 = icmp eq i64 %7, 1
  store i1 %8, i1* %2
  %9 = load i1, i1* %2
  ret i1 %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal void @_B_printBoolean(i1 %0) !dbg !11 {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !20
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !21
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124), !dbg !19
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 17, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 9, column: 9, scope: !7)
!18 = !DILocation(line: 0, column: 0, scope: !9)
!19 = !DILocation(line: 0, column: 0, scope: !11)
!20 = !DILocation(line: 22, column: 8, scope: !11)
!21 = !DILocation(line: 24, column: 8, scope: !11)
