@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %49, label %16
16:
  %17 = call i1 @_B_intEq(i64 17, i64 17), !dbg !12
  store i1 %17, i1* %1, !dbg !12
  %18 = load i1, i1* %1
  store i1 %18, i1* %b
  %19 = load i1, i1* %b
  br i1 %19, label %20, label %22
20:
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  br label %24
22:
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  br label %24
24:
  %25 = call i1 @_B_intNotEq(i64 21, i64 21), !dbg !15
  store i1 %25, i1* %4, !dbg !15
  %26 = load i1, i1* %4
  store i1 %26, i1* %b
  %27 = load i1, i1* %b
  br i1 %27, label %28, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !16
  br label %32
30:
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !17
  br label %32
32:
  %33 = call i1 @_B_intEq(i64 -17, i64 -17), !dbg !18
  store i1 %33, i1* %7, !dbg !18
  %34 = load i1, i1* %7
  store i1 %34, i1* %b
  %35 = load i1, i1* %b
  br i1 %35, label %36, label %38
36:
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -17), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !19
  br label %40
38:
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !20
  br label %40
40:
  %41 = call i1 @_B_intNotEq(i64 9223372036854775807, i64 -9223372036854775807), !dbg !21
  store i1 %41, i1* %10, !dbg !21
  %42 = load i1, i1* %10
  store i1 %42, i1* %b
  %43 = load i1, i1* %b
  br i1 %43, label %44, label %46
44:
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !22
  br label %48
46:
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !23
  br label %48
48:
  ret void
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %50)
  unreachable
}
define internal i1 @_B_intEq(i64 %0, i64 %1) !dbg !7 {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %i
  store i64 %1, i64* %j
  %8 = load i64, i64* %i
  %9 = load i64, i64* %j
  %10 = icmp eq i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 9732), !dbg !24
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal i1 @_B_intNotEq(i64 %0, i64 %1) !dbg !9 {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %i
  store i64 %1, i64* %j
  %8 = load i64, i64* %i
  %9 = load i64, i64* %j
  %10 = icmp ne i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 10756), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-int/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"intEq", linkageName:"_B_intEq", scope: !1, file: !1, line: 38, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"intNotEq", linkageName:"_B_intNotEq", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 16, scope: !5)
!13 = !DILocation(line: 7, column: 8, scope: !5)
!14 = !DILocation(line: 10, column: 8, scope: !5)
!15 = !DILocation(line: 13, column: 8, scope: !5)
!16 = !DILocation(line: 15, column: 8, scope: !5)
!17 = !DILocation(line: 18, column: 8, scope: !5)
!18 = !DILocation(line: 21, column: 8, scope: !5)
!19 = !DILocation(line: 23, column: 8, scope: !5)
!20 = !DILocation(line: 26, column: 8, scope: !5)
!21 = !DILocation(line: 29, column: 8, scope: !5)
!22 = !DILocation(line: 31, column: 8, scope: !5)
!23 = !DILocation(line: 34, column: 8, scope: !5)
!24 = !DILocation(line: 0, column: 0, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
