@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %27, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %8 = bitcast i8 addrspace(1)* %7 to [3 x i8 addrspace(1)*] addrspace(1)*
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %10 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %8, i64 0, i64 0
  store i8 addrspace(1)* %9, i8 addrspace(1)* addrspace(1)* %10
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %12 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %8, i64 0, i64 1
  store i8 addrspace(1)* %11, i8 addrspace(1)* addrspace(1)* %12
  %13 = zext i1 0 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %8, i64 0, i64 2
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %8 to [0 x i8 addrspace(1)*] addrspace(1)*
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
  store i8 addrspace(1)* %25, i8 addrspace(1)** %v
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !10
  call void @_B_foo(i8 addrspace(1)* %26), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  ret void
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !12
  %8 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %7, i64 -5), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %8), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !12
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/09-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 9, column: 4, scope: !7)
