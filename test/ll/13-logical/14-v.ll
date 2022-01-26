@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"empty str\00\00\00"}, align 8
@.str4 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 13, i16 13, [20 x i8] c"non-empty str\00\00\00\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %9, label %7
7:
  call void @_B04rootf(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089)), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  call void @_B04rootf(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247)), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !14
  call void @_B04rootf(i8 addrspace(1)* %8), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define void @_B04rootf(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %x.3 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %x.4 = alloca i64
  %_.1 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %x.5 = alloca i8 addrspace(1)*
  %_.2 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %47, label %12
12:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 720575940379279360
  store i1 %17, i1* %2
  %18 = load i1, i1* %2
  br i1 %18, label %19, label %24
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %20, i8 addrspace(1)** %x.1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1, !dbg !16
  %22 = call i1 @_B_isEmpty(i8 addrspace(1)* %21), !dbg !16
  store i1 %22, i1* %3, !dbg !16
  %23 = load i1, i1* %3
  store i1 %23, i1* %4
  br label %26
24:
  %25 = load i1, i1* %2
  store i1 %25, i1* %4
  br label %26
26:
  %27 = load i1, i1* %4
  br i1 %27, label %28, label %31
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %29, i8 addrspace(1)** %x.2
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %30, i8 addrspace(1)** %_
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !17
  ret void
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %32, i8 addrspace(1)** %x.3
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %34 = addrspacecast i8 addrspace(1)* %33 to i8*
  %35 = ptrtoint i8* %34 to i64
  %36 = and i64 %35, 2233785415175766016
  %37 = icmp eq i64 %36, 504403158265495552
  store i1 %37, i1* %6
  %38 = load i1, i1* %6
  br i1 %38, label %39, label %43
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  store i64 %41, i64* %x.4
  %42 = load i64, i64* %x.4
  store i64 %42, i64* %_.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473)), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !18
  ret void
43:
  br label %44
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  store i8 addrspace(1)* %45, i8 addrspace(1)** %x.5
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %x.5
  store i8 addrspace(1)* %46, i8 addrspace(1)** %_.2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str4 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !19
  ret void
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %48)
  unreachable
}
define internal i1 @_B_isEmpty(i8 addrspace(1)* %0) !dbg !9 {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %8 = icmp eq i8 addrspace(1)* %7, getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247)
  store i1 %8, i1* %2
  %9 = load i1, i1* %2
  ret i1 %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B04rootf", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"isEmpty", linkageName:"_B_isEmpty", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 3, column: 4, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 9, column: 22, scope: !7)
!17 = !DILocation(line: 11, column: 8, scope: !7)
!18 = !DILocation(line: 16, column: 8, scope: !7)
!19 = !DILocation(line: 20, column: 4, scope: !7)
!20 = !DILocation(line: 0, column: 0, scope: !9)
