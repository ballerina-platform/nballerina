@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %8, label %7
7:
  call void @_B_printIfBetween(i64 6, i64 5, i64 7), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B_printIfBetween(i64 1, i64 2, i64 3), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_printIfBetween(i64 0, i64 -1, i64 4), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal void @_B_printIfBetween(i64 %0, i64 %1, i64 %2) !dbg !7 {
  %n = alloca i64
  %min = alloca i64
  %max = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %34, label %12
12:
  store i64 %0, i64* %n
  store i64 %1, i64* %min
  store i64 %2, i64* %max
  %13 = load i64, i64* %min
  store i64 %13, i64* %i
  br label %14
14:
  %15 = load i64, i64* %i
  %16 = load i64, i64* %max
  %17 = icmp sle i64 %15, %16
  store i1 %17, i1* %4
  %18 = load i1, i1* %4
  br i1 %18, label %19, label %24
19:
  %20 = load i64, i64* %i
  %21 = load i64, i64* %n
  %22 = icmp eq i64 %20, %21
  store i1 %22, i1* %5
  %23 = load i1, i1* %5
  br i1 %23, label %25, label %28
24:
  ret void
25:
  %26 = load i64, i64* %n, !dbg !14
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %26), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !14
  br label %24
28:
  %29 = load i64, i64* %i
  %30 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %39, label %36
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = extractvalue {i64, i1} %30, 0
  store i64 %37, i64* %7
  %38 = load i64, i64* %7
  store i64 %38, i64* %i
  br label %14
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353), !dbg !13
  store i8 addrspace(1)* %40, i8 addrspace(1)** %8
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/break2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printIfBetween", linkageName:"_B_printIfBetween", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 14, column: 12, scope: !7)
