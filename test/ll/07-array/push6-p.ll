@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %33, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %15
  %16 = getelementptr i8, i8 addrspace(1)* %10, i64 1297036692682702852
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %x
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %18, i64 -5)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %y
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %y, !dbg !8
  %21 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %20, i64 -5), !dbg !8
  %22 = zext i1 1 to i64, !dbg !8
  %23 = or i64 %22, 72057594037927936, !dbg !8
  %24 = getelementptr i8, i8 addrspace(1)* null, i64 %23, !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %21, i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %26 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %25, i64 72057594037927928)
  %27 = bitcast i8 addrspace(1)* %26 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %28 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 1
  %29 = load i64, i64 addrspace(1)* %28, align 8
  %30 = icmp ult i64 0, %29
  br i1 %30, label %35, label %43
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 3
  %37 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36, align 8
  %38 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %37, i64 0, i64 0
  %39 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %38, align 8
  %40 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %39)
  store i64 %40, i64* %3
  %41 = load i64, i64* %3, !dbg !9
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %41), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  ret void
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %44, i8 addrspace(1)** %5
  br label %31
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/push6-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 5, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
