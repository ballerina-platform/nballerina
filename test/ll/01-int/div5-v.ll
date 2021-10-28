@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %42, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 30), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !16
  %27 = call i64 @_B_div(i64 120, i64 3), !dbg !17
  store i64 %27, i64* %8, !dbg !17
  %28 = call i64 @_B_div(i64 16, i64 4), !dbg !18
  store i64 %28, i64* %9, !dbg !18
  %29 = load i64, i64* %8, !dbg !19
  %30 = load i64, i64* %9, !dbg !19
  %31 = call i64 @_B_div(i64 %29, i64 %30), !dbg !19
  store i64 %31, i64* %10, !dbg !19
  %32 = call i64 @_B_div(i64 400, i64 20), !dbg !20
  store i64 %32, i64* %11, !dbg !20
  %33 = call i64 @_B_div(i64 100, i64 10), !dbg !21
  store i64 %33, i64* %12, !dbg !21
  %34 = load i64, i64* %11, !dbg !22
  %35 = load i64, i64* %12, !dbg !22
  %36 = call i64 @_B_div(i64 %34, i64 %35), !dbg !22
  store i64 %36, i64* %13, !dbg !22
  %37 = load i64, i64* %10, !dbg !23
  %38 = load i64, i64* %13, !dbg !23
  %39 = call i64 @_B_div(i64 %37, i64 %38), !dbg !23
  store i64 %39, i64* %14, !dbg !23
  %40 = load i64, i64* %14, !dbg !24
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %40), !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !24
  ret void
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %43)
  unreachable
}
define internal i64 @_B_div(i64 %0, i64 %1) !dbg !7 {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %i
  store i64 %1, i64* %j
  %9 = load i64, i64* %i
  %10 = load i64, i64* %j
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %18
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 4098), !dbg !25
  store i8 addrspace(1)* %17, i8 addrspace(1)** %4
  br label %12
18:
  %19 = icmp eq i64 %9, -9223372036854775808
  %20 = icmp eq i64 %10, -1
  %21 = and i1 %19, %20
  br i1 %21, label %25, label %22
22:
  %23 = sdiv i64 %9, %10
  store i64 %23, i64* %3
  %24 = load i64, i64* %3
  ret i64 %24
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !25
  store i8 addrspace(1)* %26, i8 addrspace(1)** %4
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/div5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"div", linkageName:"_B_div", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
!17 = !DILocation(line: 12, column: 23, scope: !5)
!18 = !DILocation(line: 12, column: 36, scope: !5)
!19 = !DILocation(line: 12, column: 19, scope: !5)
!20 = !DILocation(line: 12, column: 53, scope: !5)
!21 = !DILocation(line: 12, column: 67, scope: !5)
!22 = !DILocation(line: 12, column: 49, scope: !5)
!23 = !DILocation(line: 12, column: 15, scope: !5)
!24 = !DILocation(line: 12, column: 4, scope: !5)
!25 = !DILocation(line: 0, column: 0, scope: !7)
