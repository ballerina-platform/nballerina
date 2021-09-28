@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %25, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %8 = bitcast i8 addrspace(1)* %7 to [3 x i8 addrspace(1)*] addrspace(1)*
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %10 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %8, i64 0, i64 0
  store i8 addrspace(1)* %9, i8 addrspace(1)* addrspace(1)* %10
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %12 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %8, i64 0, i64 1
  store i8 addrspace(1)* %11, i8 addrspace(1)* addrspace(1)* %12
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %14 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %8, i64 0, i64 2
  store i8 addrspace(1)* %13, i8 addrspace(1)* addrspace(1)* %14
  %15 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %8 to [0 x i8 addrspace(1)*] addrspace(1)*
  %16 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %17 = bitcast i8 addrspace(1)* %16 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %18 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %18
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %17, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %15, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %21
  %22 = getelementptr i8, i8 addrspace(1)* %16, i64 1297036692682702852
  store i8 addrspace(1)* %22, i8 addrspace(1)** %1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 -5), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  ret void
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/03-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
