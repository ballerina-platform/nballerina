@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %20, label %10
10:
  %11 = call i64 @_B_foo(i64 1, i64 1), !dbg !14
  store i64 %11, i64* %1, !dbg !14
  %12 = load i64, i64* %1, !dbg !15
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %12), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  %14 = call i64 @_B_foo(i64 1, i64 10), !dbg !16
  store i64 %14, i64* %3, !dbg !16
  %15 = load i64, i64* %3, !dbg !17
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !17
  %17 = call i64 @_B_foo(i64 11, i64 1), !dbg !18
  store i64 %17, i64* %5, !dbg !18
  %18 = load i64, i64* %5, !dbg !19
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !19
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
define internal i64 @_B_foo(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %33, label %12
12:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %13 = load i64, i64* %x, !dbg !21
  %14 = call i64 @_B_bar(i64 %13), !dbg !21
  store i64 %14, i64* %4, !dbg !21
  %15 = load i64, i64* %y, !dbg !22
  %16 = call i64 @_B_baz(i64 %15), !dbg !22
  store i64 %16, i64* %5, !dbg !22
  %17 = load i64, i64* %4
  %18 = load i64, i64* %5
  %19 = icmp eq i64 %17, %18
  store i1 %19, i1* %3
  %20 = load i1, i1* %3
  br i1 %20, label %21, label %22
21:
  ret i64 0
22:
  %23 = load i64, i64* %x, !dbg !23
  %24 = call i64 @_B_bar(i64 %23), !dbg !23
  store i64 %24, i64* %7, !dbg !23
  %25 = load i64, i64* %y, !dbg !24
  %26 = call i64 @_B_baz(i64 %25), !dbg !24
  store i64 %26, i64* %8, !dbg !24
  %27 = load i64, i64* %7
  %28 = load i64, i64* %8
  %29 = icmp sgt i64 %27, %28
  store i1 %29, i1* %6
  %30 = load i1, i1* %6
  br i1 %30, label %31, label %32
31:
  ret i64 1
32:
  ret i64 -1
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
}
define internal i64 @_B_bar(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, i64* %x
  %6 = load i64, i64* %x
  ret i64 %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 5636), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal i64 @_B_baz(i64 %0) !dbg !11 {
  %x = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, i64* %x
  %6 = load i64, i64* %x
  ret i64 %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660), !dbg !26
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"baz", linkageName:"_B_baz", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 15, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 4, scope: !5)
!18 = !DILocation(line: 7, column: 15, scope: !5)
!19 = !DILocation(line: 7, column: 4, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
!21 = !DILocation(line: 11, column: 8, scope: !7)
!22 = !DILocation(line: 11, column: 18, scope: !7)
!23 = !DILocation(line: 14, column: 12, scope: !7)
!24 = !DILocation(line: 14, column: 21, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 0, column: 0, scope: !11)
