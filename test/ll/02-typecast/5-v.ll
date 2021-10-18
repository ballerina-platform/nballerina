@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %n = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %18, label %9
9:
  %10 = call i8 addrspace(1)* @_B_foo(i64 1017), !dbg !10
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1, !dbg !10
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 576460752303423488
  br i1 %15, label %26, label %30
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 504403158265495552
  br i1 %25, label %36, label %41
26:
  %27 = call double @_bal_tagged_to_float(i8 addrspace(1)* %11)
  %28 = call {i64, i1} @_bal_float_to_int(double %27)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %34, label %31
30:
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2
  br label %20
31:
  %32 = extractvalue {i64, i1} %28, 0
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %32)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2
  br label %20
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !9
  store i8 addrspace(1)* %35, i8 addrspace(1)** %5
  br label %16
36:
  %37 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %21)
  store i64 %37, i64* %3
  %38 = load i64, i64* %3
  store i64 %38, i64* %n
  %39 = load i64, i64* %n, !dbg !11
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  ret void
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !9
  store i8 addrspace(1)* %42, i8 addrspace(1)** %5
  br label %16
}
define internal i8 addrspace(1)* @_B_foo(i64 %0) !dbg !7 {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-typecast/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 17, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
