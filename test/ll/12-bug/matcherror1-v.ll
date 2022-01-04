@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 16, i16 16, [20 x i8] c"should not match\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %19, label %7
7:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %9 = addrspacecast i8 addrspace(1)* %8 to i8*
  %10 = ptrtoint i8* %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = lshr i64 %11, 56
  %13 = shl i64 1, %12
  %14 = and i64 %13, 8386559
  %15 = icmp ne i64 %14, 0
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %clause.0, label %pattern.0
clause.0:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %17, i8 addrspace(1)** %v.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  br label %18
pattern.0:
  br label %18
18:
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %10, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630862696), i64 12), !dbg !11
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1, !dbg !11
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !12
  call void @_B_foo(i8 addrspace(1)* %9), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037670244)), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !13
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/matcherror1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 6, column: 12, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 12, column: 4, scope: !7)
!13 = !DILocation(line: 13, column: 4, scope: !7)
