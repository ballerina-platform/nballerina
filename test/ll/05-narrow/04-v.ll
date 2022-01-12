@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !10
  call void @_B_foo(i8 addrspace(1)* %7), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %8 = zext i1 1 to i64, !dbg !11
  %9 = or i64 %8, 72057594037927936, !dbg !11
  %10 = getelementptr i8, i8 addrspace(1)* null, i64 %9, !dbg !11
  call void @_B_foo(i8 addrspace(1)* %10), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  ret void
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %2 = alloca i1
  %n.1 = alloca i64
  %n.2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %21, label %7
7:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %8, i8 addrspace(1)** %n
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 504403158265495552
  store i1 %13, i1* %2
  %14 = load i1, i1* %2
  br i1 %14, label %15, label %18
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %17 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %16)
  store i64 %17, i64* %n.1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473), i8 addrspace(1)** %n
  br label %18
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  store i8 addrspace(1)* %19, i8 addrspace(1)** %n.2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %n, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !13
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-narrow/04-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 14, column: 4, scope: !7)
