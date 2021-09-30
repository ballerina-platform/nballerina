@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_printInts(i64 5), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  ret void
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define internal void @_B_printInts(i64 %0) !dbg !7 {
  %maxExclusive = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %21, label %8
8:
  store i64 %0, i64* %maxExclusive
  store i64 0, i64* %i
  br label %9
9:
  %10 = load i64, i64* %i
  %11 = load i64, i64* %maxExclusive
  %12 = icmp slt i64 %10, %11
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %14, label %20
14:
  %15 = load i64, i64* %i, !dbg !14
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  %17 = load i64, i64* %i, !dbg !15
  %18 = call i64 @_B_increase(i64 %17), !dbg !15
  store i64 %18, i64* %4, !dbg !15
  %19 = load i64, i64* %4
  store i64 %19, i64* %i
  br label %9
20:
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
define internal i64 @_B_increase(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, i64* %x
  %8 = load i64, i64* %x
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 5380), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, i64* %2
  %17 = load i64, i64* %2
  ret i64 %17
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 5633), !dbg !16
  store i8 addrspace(1)* %19, i8 addrspace(1)** %3
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/while04-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printInts", linkageName:"_B_printInts", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"increase", linkageName:"_B_increase", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 16, column: 8, scope: !7)
!15 = !DILocation(line: 17, column: 12, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
