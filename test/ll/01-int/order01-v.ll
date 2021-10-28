@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %y = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %39, label %20
20:
  store i64 1, i64* %x
  store i64 2, i64* %y
  %21 = load i64, i64* %x
  %22 = load i64, i64* %y
  %23 = icmp slt i64 %21, %22
  store i1 %23, i1* %1
  %24 = load i1, i1* %1, !dbg !14
  call void @_B_printBoolean(i1 %24), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !14
  %25 = call i1 @_B_greaterThan(i64 1, i64 2), !dbg !15
  store i1 %25, i1* %3, !dbg !15
  %26 = load i1, i1* %3, !dbg !16
  call void @_B_printBoolean(i1 %26), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !16
  %27 = call i1 @_B_greaterThan(i64 2, i64 1), !dbg !17
  store i1 %27, i1* %5, !dbg !17
  %28 = load i1, i1* %5, !dbg !18
  call void @_B_printBoolean(i1 %28), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !18
  %29 = call i1 @_B_greaterThan(i64 2, i64 -1), !dbg !19
  store i1 %29, i1* %7, !dbg !19
  %30 = load i1, i1* %7, !dbg !20
  call void @_B_printBoolean(i1 %30), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !20
  %31 = call i1 @_B_lessThan(i64 1, i64 2), !dbg !21
  store i1 %31, i1* %9, !dbg !21
  %32 = load i1, i1* %9, !dbg !22
  call void @_B_printBoolean(i1 %32), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !22
  %33 = call i1 @_B_lessThan(i64 0, i64 0), !dbg !23
  store i1 %33, i1* %11, !dbg !23
  %34 = load i1, i1* %11, !dbg !24
  call void @_B_printBoolean(i1 %34), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !24
  %35 = call i1 @_B_lessThan(i64 2, i64 1), !dbg !25
  store i1 %35, i1* %13, !dbg !25
  %36 = load i1, i1* %13, !dbg !26
  call void @_B_printBoolean(i1 %36), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !26
  %37 = call i1 @_B_lessThan(i64 -1, i64 17), !dbg !27
  store i1 %37, i1* %15, !dbg !27
  %38 = load i1, i1* %15, !dbg !28
  call void @_B_printBoolean(i1 %38), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !28
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
}
define internal void @_B_printBoolean(i1 %0) !dbg !7 {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !30
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !31
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 4356), !dbg !29
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
define internal i1 @_B_lessThan(i64 %0, i64 %1) !dbg !9 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %8 = load i64, i64* %x
  %9 = load i64, i64* %y
  %10 = icmp slt i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660), !dbg !32
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal i1 @_B_greaterThan(i64 %0, i64 %1) !dbg !11 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %8 = load i64, i64* %x
  %9 = load i64, i64* %y
  %10 = icmp sgt i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684), !dbg !33
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/order01-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"lessThan", linkageName:"_B_lessThan", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"greaterThan", linkageName:"_B_greaterThan", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 17, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 17, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 17, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 11, column: 17, scope: !5)
!22 = !DILocation(line: 11, column: 4, scope: !5)
!23 = !DILocation(line: 12, column: 17, scope: !5)
!24 = !DILocation(line: 12, column: 4, scope: !5)
!25 = !DILocation(line: 13, column: 17, scope: !5)
!26 = !DILocation(line: 13, column: 4, scope: !5)
!27 = !DILocation(line: 14, column: 17, scope: !5)
!28 = !DILocation(line: 14, column: 4, scope: !5)
!29 = !DILocation(line: 0, column: 0, scope: !7)
!30 = !DILocation(line: 19, column: 8, scope: !7)
!31 = !DILocation(line: 22, column: 8, scope: !7)
!32 = !DILocation(line: 0, column: 0, scope: !9)
!33 = !DILocation(line: 0, column: 0, scope: !11)
