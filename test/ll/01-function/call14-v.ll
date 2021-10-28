@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %22, label %10
10:
  %11 = call i64 @_B_foobar(), !dbg !18
  store i64 %11, i64* %1, !dbg !18
  %12 = load i64, i64* %1, !dbg !19
  %13 = call i64 @_B_sum(i64 23, i64 %12), !dbg !19
  store i64 %13, i64* %2, !dbg !19
  %14 = load i64, i64* %2, !dbg !20
  %15 = call i64 @_B_baz(i64 %14), !dbg !20
  store i64 %15, i64* %3, !dbg !20
  %16 = load i64, i64* %3, !dbg !21
  %17 = call i64 @_B_bar(i64 %16), !dbg !21
  store i64 %17, i64* %4, !dbg !21
  %18 = load i64, i64* %4, !dbg !22
  %19 = call i64 @_B_foo(i64 %18), !dbg !22
  store i64 %19, i64* %5, !dbg !22
  %20 = load i64, i64* %5, !dbg !23
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !23
  ret void
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
}
define internal i64 @_B_foo(i64 %0) !dbg !7 {
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
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !24
  call void @_bal_panic(i8 addrspace(1)* %8)
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
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !25
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
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100), !dbg !26
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal i64 @_B_foobar() !dbg !13 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 12
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124), !dbg !27
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal i64 @_B_sum(i64 %0, i64 %1) !dbg !15 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148), !dbg !28
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 6401), !dbg !28
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"baz", linkageName:"_B_baz", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"foobar", linkageName:"_B_foobar", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = distinct !DISubprogram(name:"sum", linkageName:"_B_sum", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !16)
!16 = !{}
!17 = !DILocation(line: 0, column: 0, scope: !5)
!18 = !DILocation(line: 5, column: 35, scope: !5)
!19 = !DILocation(line: 5, column: 27, scope: !5)
!20 = !DILocation(line: 5, column: 23, scope: !5)
!21 = !DILocation(line: 5, column: 19, scope: !5)
!22 = !DILocation(line: 5, column: 15, scope: !5)
!23 = !DILocation(line: 5, column: 4, scope: !5)
!24 = !DILocation(line: 0, column: 0, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 0, column: 0, scope: !11)
!27 = !DILocation(line: 0, column: 0, scope: !13)
!28 = !DILocation(line: 0, column: 0, scope: !15)
