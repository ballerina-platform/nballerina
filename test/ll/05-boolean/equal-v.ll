@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define internal i1 @_B_foo(i64 %0, i64 %1, i64 %2) !dbg !5 {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %17, label %9
9:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  store i64 %2, i64* %c
  %10 = load i64, i64* %a
  %11 = load i64, i64* %b
  %12 = or i64 %10, %11
  store i64 %12, i64* %4
  %13 = load i64, i64* %4
  %14 = load i64, i64* %c
  %15 = icmp eq i64 %13, %14
  store i1 %15, i1* %5
  %16 = load i1, i1* %5
  ret i1 %16
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  %7 = call i1 @_B_foo(i64 1, i64 1, i64 2), !dbg !11
  store i1 %7, i1* %1, !dbg !11
  %8 = load i1, i1* %1, !dbg !12
  %9 = zext i1 %8 to i64, !dbg !12
  %10 = or i64 %9, 72057594037927936, !dbg !12
  %11 = getelementptr i8, i8 addrspace(1)* null, i64 %10, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  ret void
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-boolean/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
!11 = !DILocation(line: 9, column: 15, scope: !7)
!12 = !DILocation(line: 9, column: 4, scope: !7)
