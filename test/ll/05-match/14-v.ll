@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %21, label %12
12:
  %13 = call i8 addrspace(1)* @_B04rootfoo(i64 1), !dbg !10
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1, !dbg !10
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %15 = call i8 addrspace(1)* @_B04rootfoo(i64 2), !dbg !12
  store i8 addrspace(1)* %15, i8 addrspace(1)** %3, !dbg !12
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %17 = call i8 addrspace(1)* @_B04rootfoo(i64 3), !dbg !14
  store i8 addrspace(1)* %17, i8 addrspace(1)** %5, !dbg !14
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %19 = call i8 addrspace(1)* @_B04rootfoo(i64 4), !dbg !16
  store i8 addrspace(1)* %19, i8 addrspace(1)** %7, !dbg !16
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
define i8 addrspace(1)* @_B04rootfoo(i64 %0) !dbg !7 {
  %x = alloca i64
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %x.1 = alloca i64
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %34, label %12
12:
  store i64 %0, i64* %x
  %13 = load i64, i64* %x
  %14 = icmp eq i64 %13, 1
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %clause.0, label %pattern.0
clause.0:
  %16 = load i64, i64* %x
  store i64 %16, i64* %x.1
  %17 = load i64, i64* %x.1
  %18 = load i64, i64* %x.1
  %19 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %17, i64 %18)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %41, label %36
pattern.0:
  %21 = load i64, i64* %x
  %22 = icmp eq i64 %21, 2
  store i1 %22, i1* %3
  %23 = load i1, i1* %3
  br i1 %23, label %clause.0, label %pattern.1
pattern.1:
  %24 = load i64, i64* %x
  %25 = icmp eq i64 %24, 3
  store i1 %25, i1* %4
  %26 = load i1, i1* %4
  br i1 %26, label %clause.0, label %pattern.2
pattern.2:
  br label %31
clause.0.1:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475655112368177)
clause.1:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475659407335474)
pattern.0.1:
  %27 = load i64, i64* %5
  %28 = icmp eq i64 %27, 4
  store i1 %28, i1* %7
  %29 = load i1, i1* %7
  br i1 %29, label %clause.1, label %pattern.1.1
pattern.1.1:
  br label %30
30:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901043)
31:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541272877421)
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = extractvalue {i64, i1} %19, 0
  store i64 %37, i64* %5
  %38 = load i64, i64* %5
  %39 = icmp eq i64 %38, 2
  store i1 %39, i1* %6
  %40 = load i1, i1* %6
  br i1 %40, label %clause.0.1, label %pattern.0.1
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !18
  store i8 addrspace(1)* %42, i8 addrspace(1)** %8
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-match/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B04rootfoo", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
