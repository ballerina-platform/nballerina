@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %31, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %13 = bitcast i8 addrspace(1)* %12 to [1 x i8 addrspace(1)*] addrspace(1)*
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %15 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %13, i64 0, i64 0
  store i8 addrspace(1)* %14, i8 addrspace(1)* addrspace(1)* %15
  %16 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %13 to [0 x i8 addrspace(1)*] addrspace(1)*
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %18 = bitcast i8 addrspace(1)* %17 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %16, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %22
  %23 = getelementptr i8, i8 addrspace(1)* %17, i64 1297036692682702852
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %25 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %24, i64 -5)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %x
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %27 = addrspacecast i8 addrspace(1)* %26 to i8*
  %28 = ptrtoint i8* %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = icmp eq i64 %29, 504403158265495552
  br i1 %30, label %33, label %36
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %26)
  %35 = icmp eq i64 %34, 1
  store i1 %35, i1* %2
  br label %37
36:
  store i1 0, i1* %2
  br label %37
37:
  %38 = load i1, i1* %2, !dbg !8
  %39 = zext i1 %38 to i64, !dbg !8
  %40 = or i64 %39, 72057594037927936, !dbg !8
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %43 = zext i1 1 to i64
  %44 = or i64 %43, 72057594037927936
  %45 = getelementptr i8, i8 addrspace(1)* null, i64 %44
  %46 = icmp ne i8 addrspace(1)* %42, %45
  store i1 %46, i1* %4
  %47 = load i1, i1* %4, !dbg !9
  %48 = zext i1 %47 to i64, !dbg !9
  %49 = or i64 %48, 72057594037927936, !dbg !9
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %52 = icmp eq i8 addrspace(1)* %51, null
  store i1 %52, i1* %6
  %53 = load i1, i1* %6, !dbg !10
  %54 = zext i1 %53 to i64, !dbg !10
  %55 = or i64 %54, 72057594037927936, !dbg !10
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %56), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-equal/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
