@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"This is \00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 15, [20 x i8] c"This is integer\00\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"test str\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define internal void @_B_stringFoo(i8 addrspace(1)* %0) !dbg !5 {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %11, label %7
7:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %9 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %8)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  ret void
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
define internal void @_B_intFoo(i64 %0) !dbg !7 {
  %i = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %7, label %6
6:
  store i64 %0, i64* %i
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !16
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !9 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %x.2 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %24, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 504403158265495552
  store i1 %13, i1* %2
  %14 = load i1, i1* %2
  br i1 %14, label %15, label %19
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %17 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %16)
  store i64 %17, i64* %x.1
  %18 = load i64, i64* %x.1, !dbg !18
  call void @_B_intFoo(i64 %18), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !18
  br label %23
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %20, i8 addrspace(1)** %x.2
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %21, i8 addrspace(1)** %_
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2, !dbg !19
  call void @_B_stringFoo(i8 addrspace(1)* %22), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !19
  br label %23
23:
  ret void
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
}
define void @_B04rootmain() !dbg !11 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !21
  call void @_B_foo(i8 addrspace(1)* %7), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !21
  call void @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !22
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 5636), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-wildcard/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"stringFoo", linkageName:"_B_stringFoo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"intFoo", linkageName:"_B_intFoo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 9, column: 4, scope: !7)
!17 = !DILocation(line: 0, column: 0, scope: !9)
!18 = !DILocation(line: 14, column: 8, scope: !9)
!19 = !DILocation(line: 18, column: 8, scope: !9)
!20 = !DILocation(line: 0, column: 0, scope: !11)
!21 = !DILocation(line: 23, column: 4, scope: !11)
!22 = !DILocation(line: 24, column: 4, scope: !11)
