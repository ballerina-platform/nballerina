@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_div(i64 5, i64 0), !dbg !12
  store i64 %7, i64* %1, !dbg !12
  %8 = load i64, i64* %1, !dbg !13
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal i64 @_B_div(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %32, label %12
12:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %13 = load i64, i64* %y, !dbg !15
  %14 = call i8 addrspace(1)* @_B_nonZero(i64 %13), !dbg !15
  store i8 addrspace(1)* %14, i8 addrspace(1)** %3, !dbg !15
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %16 = addrspacecast i8 addrspace(1)* %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, 2233785415175766016
  %19 = icmp eq i64 %18, 792633534417207296
  store i1 %19, i1* %4
  %20 = load i1, i1* %4
  br i1 %20, label %27, label %21
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %23 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %22)
  store i64 %23, i64* %6
  %24 = load i64, i64* %x
  %25 = load i64, i64* %6
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %34, label %36
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %28, i8 addrspace(1)** %5
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %29, i8 addrspace(1)** %8
  br label %30
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 2050), !dbg !14
  store i8 addrspace(1)* %35, i8 addrspace(1)** %8
  br label %30
36:
  %37 = icmp eq i64 %24, -9223372036854775808
  %38 = icmp eq i64 %25, -1
  %39 = and i1 %37, %38
  br i1 %39, label %43, label %40
40:
  %41 = sdiv i64 %24, %25
  store i64 %41, i64* %7
  %42 = load i64, i64* %7
  ret i64 %42
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !14
  store i8 addrspace(1)* %44, i8 addrspace(1)** %8
  br label %30
}
define internal i8 addrspace(1)* @_B_nonZero(i64 %0) !dbg !9 {
  %n = alloca i64
  %2 = alloca i1
  %n.1 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %n.2 = alloca i64
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %19, label %7
7:
  store i64 %0, i64* %n
  %8 = load i64, i64* %n
  %9 = icmp eq i64 %8, 0
  store i1 %9, i1* %2
  %10 = load i1, i1* %2
  br i1 %10, label %11, label %15
11:
  %12 = load i64, i64* %n
  store i64 %12, i64* %n.1
  %13 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541205702010), i64 13), !dbg !16
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3, !dbg !16
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  ret i8 addrspace(1)* %14
15:
  %16 = load i64, i64* %n
  store i64 %16, i64* %n.2
  %17 = load i64, i64* %n.2
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17)
  ret i8 addrspace(1)* %18
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/check3-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"div", linkageName:"_B_div", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"nonZero", linkageName:"_B_nonZero", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 8, column: 26, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
