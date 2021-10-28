@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define internal i1 @_B_checkEquality(i1 %0, i1 %1) !dbg !5 {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i1 %0, i1* %b1
  store i1 %1, i1* %b2
  %8 = load i1, i1* %b1
  %9 = load i1, i1* %b2
  %10 = icmp eq i1 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal i1 @_B_checkInEquality(i1 %0, i1 %1) !dbg !7 {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i1 %0, i1* %b1
  store i1 %1, i1* %b2
  %8 = load i1, i1* %b1
  %9 = load i1, i1* %b2
  %10 = icmp ne i1 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define void @_B04rootmain() !dbg !9 {
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
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %38, label %13
13:
  %14 = call i1 @_B_checkEquality(i1 1, i1 1), !dbg !14
  store i1 %14, i1* %1, !dbg !14
  %15 = load i1, i1* %1
  store i1 %15, i1* %b
  %16 = load i1, i1* %b
  br i1 %16, label %17, label %19
17:
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  br label %21
19:
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !16
  br label %21
21:
  %22 = call i1 @_B_checkEquality(i1 0, i1 0), !dbg !17
  store i1 %22, i1* %4, !dbg !17
  %23 = load i1, i1* %4
  store i1 %23, i1* %b
  %24 = load i1, i1* %b
  br i1 %24, label %25, label %27
25:
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !18
  br label %29
27:
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 7), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !19
  br label %29
29:
  %30 = call i1 @_B_checkInEquality(i1 1, i1 1), !dbg !20
  store i1 %30, i1* %7, !dbg !20
  %31 = load i1, i1* %7
  store i1 %31, i1* %b
  %32 = load i1, i1* %b
  br i1 %32, label %33, label %35
33:
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !21
  br label %37
35:
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !22
  br label %37
37:
  ret void
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-boolean/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"checkEquality", linkageName:"_B_checkEquality", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"checkInEquality", linkageName:"_B_checkInEquality", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 0, column: 0, scope: !9)
!14 = !DILocation(line: 13, column: 16, scope: !9)
!15 = !DILocation(line: 15, column: 8, scope: !9)
!16 = !DILocation(line: 18, column: 8, scope: !9)
!17 = !DILocation(line: 20, column: 8, scope: !9)
!18 = !DILocation(line: 22, column: 8, scope: !9)
!19 = !DILocation(line: 25, column: 8, scope: !9)
!20 = !DILocation(line: 27, column: 8, scope: !9)
!21 = !DILocation(line: 29, column: 8, scope: !9)
!22 = !DILocation(line: 32, column: 8, scope: !9)
