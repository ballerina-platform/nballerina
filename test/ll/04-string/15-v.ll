@_bal_stack_guard = external global i8*
@.str6 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 6, [12 x i8] c"smile\F0\9F\99\82\00\00\00"}, align 8
@.str8 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 6, [12 x i8] c"\F0\9F\99\82frown\00\00\00"}, align 8
@.str10 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 2, [12 x i8] c"\F0\9F\99\81\F0\9F\99\82\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_Bb0m4lang6stringlength(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %10, label %9
9:
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247)), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860897)), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879729818995), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541527039984), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str6 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541527039984), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475918569468518), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  call void @_B_concatTest(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541510262768), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541527039984), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str10 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal void @_B_concatTest(i8 addrspace(1)* %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2) !dbg !7 {
  %s1 = alloca i8 addrspace(1)*
  %s2 = alloca i8 addrspace(1)*
  %expected = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %30, label %13
13:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %s2
  store i8 addrspace(1)* %2, i8 addrspace(1)** %expected
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %16 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %14, i8 addrspace(1)* %15)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %4
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %17, i8 addrspace(1)** %s
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !16
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !17
  %20 = call i64 @_Bb0m4lang6stringlength(i8 addrspace(1)* %19), !dbg !17
  store i64 %20, i64* %6, !dbg !17
  %21 = load i64, i64* %6, !dbg !18
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !18
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %expected
  %25 = call i1 @_bal_string_eq(i8 addrspace(1)* %23, i8 addrspace(1)* %24)
  store i1 %25, i1* %8
  %26 = load i1, i1* %8, !dbg !19
  %27 = zext i1 %26 to i64, !dbg !19
  %28 = or i64 %27, 72057594037927936, !dbg !19
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !19
  ret void
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 6404), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/15-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"concatTest", linkageName:"_B_concatTest", scope: !1, file: !1, line: 25, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 4, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 16, column: 4, scope: !5)
!14 = !DILocation(line: 20, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 27, column: 4, scope: !7)
!17 = !DILocation(line: 28, column: 16, scope: !7)
!18 = !DILocation(line: 28, column: 4, scope: !7)
!19 = !DILocation(line: 29, column: 4, scope: !7)
