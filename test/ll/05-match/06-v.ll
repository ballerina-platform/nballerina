@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %34, label %14
14:
  %15 = call i64 @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504)), !dbg !10
  store i64 %15, i64* %1, !dbg !10
  %16 = load i64, i64* %1, !dbg !11
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !12
  %19 = call i64 @_B_foo(i8 addrspace(1)* %18), !dbg !12
  store i64 %19, i64* %3, !dbg !12
  %20 = load i64, i64* %3, !dbg !13
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !14
  %23 = call i64 @_B_foo(i8 addrspace(1)* %22), !dbg !14
  store i64 %23, i64* %5, !dbg !14
  %24 = load i64, i64* %5, !dbg !15
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3), !dbg !16
  %27 = call i64 @_B_foo(i8 addrspace(1)* %26), !dbg !16
  store i64 %27, i64* %7, !dbg !16
  %28 = load i64, i64* %7, !dbg !17
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -4), !dbg !18
  %31 = call i64 @_B_foo(i8 addrspace(1)* %30), !dbg !18
  store i64 %31, i64* %9, !dbg !18
  %32 = load i64, i64* %9, !dbg !19
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %32), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  ret void
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
}
define internal i64 @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v.1 = alloca i64
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %v.2 = alloca i64
  %v.3 = alloca i64
  %6 = alloca i64
  %v.4 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %40, label %11
11:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 504403158265495552
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  br i1 %17, label %18, label %36
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %v.1
  %21 = load i64, i64* %v.1
  %22 = icmp eq i64 %21, 1
  store i1 %22, i1* %3
  %23 = load i1, i1* %3
  br i1 %23, label %clause.0, label %pattern.0
clause.0:
  %24 = load i64, i64* %v.1
  store i64 %24, i64* %v.2
  %25 = load i64, i64* %v.2
  ret i64 %25
clause.1:
  %26 = load i64, i64* %v.1
  store i64 %26, i64* %v.3
  %27 = load i64, i64* %v.3
  %28 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %27)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %45, label %42
pattern.0:
  %30 = load i64, i64* %v.1
  %31 = icmp eq i64 %30, 2
  store i1 %31, i1* %4
  %32 = load i1, i1* %4
  br i1 %32, label %clause.0, label %pattern.1
pattern.1:
  %33 = load i64, i64* %v.1
  %34 = icmp eq i64 %33, 3
  store i1 %34, i1* %5
  %35 = load i1, i1* %5
  br i1 %35, label %clause.0, label %pattern.2
pattern.2:
  br label %clause.1
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %37, i8 addrspace(1)** %v.4
  ret i64 0
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
42:
  %43 = extractvalue {i64, i1} %28, 0
  store i64 %43, i64* %6
  %44 = load i64, i64* %6
  ret i64 %44
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !20
  store i8 addrspace(1)* %46, i8 addrspace(1)** %7
  br label %38
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-match/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 9, column: 15, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
