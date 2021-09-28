@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  %8 = call i1 @_B_foo(), !dbg !14
  store i1 %8, i1* %1, !dbg !14
  %9 = load i1, i1* %1
  br i1 %9, label %10, label %11
10:
  call void @_B_bar(i64 100), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  br label %12
11:
  call void @_B_baz(i64 200), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !16
  br label %12
12:
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal i1 @_B_foo() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i1 1
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal void @_B_bar(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  store i64 %0, i64* %x
  %7 = load i64, i64* %x, !dbg !19
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %7), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %8), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !19
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_baz(i64 %0) !dbg !11 {
  %x = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  store i64 %0, i64* %x
  %7 = load i64, i64* %x, !dbg !21
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %7), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %8), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !21
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"baz", linkageName:"_B_baz", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 8, scope: !5)
!15 = !DILocation(line: 6, column: 8, scope: !5)
!16 = !DILocation(line: 8, column: 8, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 0, column: 0, scope: !9)
!19 = !DILocation(line: 17, column: 4, scope: !9)
!20 = !DILocation(line: 0, column: 0, scope: !11)
!21 = !DILocation(line: 21, column: 4, scope: !11)
