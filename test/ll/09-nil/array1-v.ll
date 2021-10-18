@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_alloc(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  %8 = call i8 addrspace(1)* @_B04rootpairOfNothings(), !dbg !10
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1, !dbg !10
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  %10 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %9, i64 -5), !dbg !11
  %11 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %10), !dbg !11
  store i64 %11, i64* %2, !dbg !11
  %12 = load i64, i64* %2, !dbg !12
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %12), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
define i8 addrspace(1)* @_B04rootpairOfNothings() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %19, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %7 = bitcast i8 addrspace(1)* %6 to [2 x i8 addrspace(1)*] addrspace(1)*
  %8 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %7, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %8
  %9 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %7, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %9
  %10 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %7 to [0 x i8 addrspace(1)*] addrspace(1)*
  %11 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %12 = bitcast i8 addrspace(1)* %11 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 2
  store i64 2, i64 addrspace(1)* %15
  %16 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %10, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %16
  %17 = getelementptr i8, i8 addrspace(1)* %11, i64 1297036692682702852
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  ret i8 addrspace(1)* %18
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-nil/array1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"pairOfNothings", linkageName:"_B04rootpairOfNothings", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 31, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
