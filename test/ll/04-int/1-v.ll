@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %two48 = alloca i64
  %1 = alloca i8 addrspace(1)*
  %two55 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %two56 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %two62 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %19, label %12
12:
  store i64 281474976710656, i64* %two48
  %13 = load i64, i64* %two48, !dbg !14
  call void @_B_testAround(i64 %13), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !14
  %14 = load i64, i64* %two48
  %15 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %14, i64 128)
  %16 = extractvalue {i64, i1} %15, 1
  br i1 %16, label %28, label %21
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = extractvalue {i64, i1} %15, 0
  store i64 %22, i64* %2
  %23 = load i64, i64* %2
  store i64 %23, i64* %two55
  %24 = load i64, i64* %two55, !dbg !15
  call void @_B_testAround(i64 %24), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !15
  %25 = load i64, i64* %two55
  %26 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %25, i64 2)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %37, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !13
  store i8 addrspace(1)* %29, i8 addrspace(1)** %8
  br label %17
30:
  %31 = extractvalue {i64, i1} %26, 0
  store i64 %31, i64* %4
  %32 = load i64, i64* %4
  store i64 %32, i64* %two56
  %33 = load i64, i64* %two56, !dbg !16
  call void @_B_testAround(i64 %33), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !16
  %34 = load i64, i64* %two56
  %35 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %34, i64 64)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %43, label %39
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353), !dbg !13
  store i8 addrspace(1)* %38, i8 addrspace(1)** %8
  br label %17
39:
  %40 = extractvalue {i64, i1} %35, 0
  store i64 %40, i64* %6
  %41 = load i64, i64* %6
  store i64 %41, i64* %two62
  %42 = load i64, i64* %two62, !dbg !17
  call void @_B_testAround(i64 %42), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !17
  ret void
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 5889), !dbg !13
  store i8 addrspace(1)* %44, i8 addrspace(1)** %8
  br label %17
}
define internal void @_B_testAround(i64 %0) !dbg !7 {
  %pow2 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %20, label %14
14:
  store i64 %0, i64* %pow2
  %15 = load i64, i64* %pow2
  %16 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %15, i64 1)
  %17 = extractvalue {i64, i1} %16, 1
  br i1 %17, label %28, label %22
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 7940), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = extractvalue {i64, i1} %16, 0
  store i64 %23, i64* %2
  %24 = load i64, i64* %2, !dbg !19
  call void @_B_roundTrip(i64 %24), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !19
  %25 = load i64, i64* %pow2
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %25)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %37, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 8193), !dbg !18
  store i8 addrspace(1)* %29, i8 addrspace(1)** %10
  br label %18
30:
  %31 = extractvalue {i64, i1} %26, 0
  store i64 %31, i64* %4
  %32 = load i64, i64* %4, !dbg !20
  call void @_B_roundTrip(i64 %32), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !20
  %33 = load i64, i64* %pow2, !dbg !21
  call void @_B_roundTrip(i64 %33), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !21
  %34 = load i64, i64* %pow2
  %35 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %34)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %44, label %39
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 8449), !dbg !18
  store i8 addrspace(1)* %38, i8 addrspace(1)** %10
  br label %18
39:
  %40 = extractvalue {i64, i1} %35, 0
  store i64 %40, i64* %7
  %41 = load i64, i64* %7
  %42 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %41, i64 1)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %49, label %46
44:
  %45 = call i8 addrspace(1)* @_bal_panic_construct(i64 8961), !dbg !18
  store i8 addrspace(1)* %45, i8 addrspace(1)** %10
  br label %18
46:
  %47 = extractvalue {i64, i1} %42, 0
  store i64 %47, i64* %8
  %48 = load i64, i64* %8, !dbg !22
  call void @_B_roundTrip(i64 %48), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !22
  ret void
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 8961), !dbg !18
  store i8 addrspace(1)* %50, i8 addrspace(1)** %10
  br label %18
}
define internal void @_B_roundTrip(i64 %0) !dbg !9 {
  %n = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %19, label %11
11:
  store i64 %0, i64* %n
  %12 = load i64, i64* %n, !dbg !24
  %13 = call i8 addrspace(1)* @_B_toAny(i64 %12), !dbg !24
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3, !dbg !24
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %15 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %14)
  %16 = extractvalue {i8 addrspace(1)*, i1} %15, 1
  br i1 %16, label %28, label %21
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 9732), !dbg !23
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = extractvalue {i8 addrspace(1)*, i1} %15, 0
  store i8 addrspace(1)* %22, i8 addrspace(1)** %4
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %24 = addrspacecast i8 addrspace(1)* %23 to i8*
  %25 = ptrtoint i8* %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 504403158265495552
  br i1 %27, label %30, label %39
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 9985), !dbg !23
  store i8 addrspace(1)* %29, i8 addrspace(1)** %7
  br label %17
30:
  %31 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %23)
  store i64 %31, i64* %5
  %32 = load i64, i64* %n
  %33 = load i64, i64* %5
  %34 = icmp eq i64 %32, %33
  store i1 %34, i1* %2
  %35 = load i1, i1* %2, !dbg !25
  %36 = zext i1 %35 to i64, !dbg !25
  %37 = or i64 %36, 72057594037927936, !dbg !25
  %38 = getelementptr i8, i8 addrspace(1)* null, i64 %37, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !25
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 9987), !dbg !23
  store i8 addrspace(1)* %40, i8 addrspace(1)** %7
  br label %17
}
define internal i8 addrspace(1)* @_B_toAny(i64 %0) !dbg !11 {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 10756), !dbg !26
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-int/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"testAround", linkageName:"_B_testAround", scope: !1, file: !1, line: 31, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"roundTrip", linkageName:"_B_roundTrip", scope: !1, file: !1, line: 38, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"toAny", linkageName:"_B_toAny", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 12, column: 4, scope: !5)
!16 = !DILocation(line: 18, column: 4, scope: !5)
!17 = !DILocation(line: 24, column: 4, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 32, column: 4, scope: !7)
!20 = !DILocation(line: 33, column: 4, scope: !7)
!21 = !DILocation(line: 34, column: 4, scope: !7)
!22 = !DILocation(line: 35, column: 4, scope: !7)
!23 = !DILocation(line: 0, column: 0, scope: !9)
!24 = !DILocation(line: 39, column: 25, scope: !9)
!25 = !DILocation(line: 39, column: 4, scope: !9)
!26 = !DILocation(line: 0, column: 0, scope: !11)
