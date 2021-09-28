@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %answers = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %34, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %10 = bitcast i8 addrspace(1)* %9 to [3 x i8 addrspace(1)*] addrspace(1)*
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 11324106)
  %12 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 0
  store i8 addrspace(1)* %11, i8 addrspace(1)* addrspace(1)* %12
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 229354698)
  %14 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 1
  store i8 addrspace(1)* %13, i8 addrspace(1)* addrspace(1)* %14
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2898971338)
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 2
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %10 to [0 x i8 addrspace(1)*] addrspace(1)*
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %19 = bitcast i8 addrspace(1)* %18 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %22
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %17, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %23
  %24 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702852
  store i8 addrspace(1)* %24, i8 addrspace(1)** %1
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %25, i8 addrspace(1)** %answers
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %answers
  %27 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %26, i64 72057594037927928)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  %30 = load i64, i64 addrspace(1)* %29, align 8
  %31 = icmp ult i64 1, %30
  br i1 %31, label %36, label %42
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 3
  %38 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %37, align 8
  %39 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 1
  %40 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %39, align 8
  store i8 addrspace(1)* %40, i8 addrspace(1)** %2
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  ret void
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %43, i8 addrspace(1)** %4
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-int/hex-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
