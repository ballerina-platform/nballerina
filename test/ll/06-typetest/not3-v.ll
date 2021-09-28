@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"not string\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %s = alloca i8 addrspace(1)*
  %i = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)** %s
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %i
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !10
  call void @_B_foo(i8 addrspace(1)* %8), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %i, !dbg !11
  call void @_B_foo(i8 addrspace(1)* %9), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %x.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %21, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 720575940379279360
  %14 = xor i1 1, %13
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %16, label %18
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %17, i8 addrspace(1)** %x.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !13
  br label %20
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x.2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675)), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  br label %20
20:
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typetest/not3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 13, column: 8, scope: !7)
!14 = !DILocation(line: 16, column: 8, scope: !7)
