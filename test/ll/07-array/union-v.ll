@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i1 @_bal_list_has_type(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_list_exactify(i8 addrspace(1)*, i64) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %38, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %15
  %16 = getelementptr i8, i8 addrspace(1)* %10, i64 1297036692682702852
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %18 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %17, i64 -5)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %x
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %20 = call i1 @_bal_list_has_type(i8 addrspace(1)* %19, i64 8386559)
  store i1 %20, i1* %2
  %21 = load i1, i1* %2
  br i1 %21, label %22, label %25
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %24 = call i8 addrspace(1)* @_bal_list_exactify(i8 addrspace(1)* %23, i64 8386559)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %x.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475845085916769)), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  br label %25
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %27 = addrspacecast i8 addrspace(1)* %26 to i8*
  %28 = ptrtoint i8* %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = lshr i64 %29, 56
  %31 = shl i64 1, %30
  %32 = and i64 %31, 262148
  %33 = icmp ne i64 %32, 0
  store i1 %33, i1* %4
  %34 = load i1, i1* %4
  br i1 %34, label %35, label %37
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %36, i8 addrspace(1)** %x.2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630853441)), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  br label %37
37:
  ret void
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/union-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 8, scope: !5)
!9 = !DILocation(line: 12, column: 8, scope: !5)
