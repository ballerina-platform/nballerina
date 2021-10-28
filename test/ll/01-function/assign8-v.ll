@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"test str\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define internal i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %0, i64 %1) !dbg !5 {
  %arr = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %arr
  store i64 %1, i64* %i
  %9 = load i64, i64* %i
  %10 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 10)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %24, label %16
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = extractvalue {i64, i1} %10, 0
  store i64 %17, i64* %3
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %19 = load i64, i64* %i
  %20 = load i64, i64* %3
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20)
  %22 = call i64 @_bal_list_set(i8 addrspace(1)* %18, i64 %19, i8 addrspace(1)* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %28
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !9
  store i8 addrspace(1)* %25, i8 addrspace(1)** %4
  br label %12
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  ret i8 addrspace(1)* %27
28:
  %29 = or i64 %22, 1280
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 %29), !dbg !9
  store i8 addrspace(1)* %30, i8 addrspace(1)** %4
  br label %12
}
define void @_B04rootmain() !dbg !7 {
  %arr = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %_.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %_.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %str = alloca i8 addrspace(1)*
  %_.3 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %35, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %12 = bitcast i8 addrspace(1)* %11 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %15
  %16 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %16
  %17 = getelementptr i8, i8 addrspace(1)* %11, i64 1297036692682702852
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %arr
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %arr, !dbg !11
  %20 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %19, i64 0), !dbg !11
  store i8 addrspace(1)* %20, i8 addrspace(1)** %2, !dbg !11
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %22 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %21, i64 -5)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %_
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %arr, !dbg !12
  %24 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %23, i64 1), !dbg !12
  store i8 addrspace(1)* %24, i8 addrspace(1)** %3, !dbg !12
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %26 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %25, i64 -5)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %_.1
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %arr, !dbg !13
  %28 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %27, i64 2), !dbg !13
  store i8 addrspace(1)* %28, i8 addrspace(1)** %4, !dbg !13
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %30 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %29, i64 -5)
  store i8 addrspace(1)* %30, i8 addrspace(1)** %_.2
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %arr, !dbg !14
  %32 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %31, i64 -5), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %str
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %str
  store i8 addrspace(1)* %33, i8 addrspace(1)** %_.3
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %str, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  ret void
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/assign8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
!11 = !DILocation(line: 11, column: 8, scope: !7)
!12 = !DILocation(line: 12, column: 8, scope: !7)
!13 = !DILocation(line: 13, column: 8, scope: !7)
!14 = !DILocation(line: 14, column: 4, scope: !7)
!15 = !DILocation(line: 18, column: 4, scope: !7)
