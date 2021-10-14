@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %39, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to [4 x i8 addrspace(1)*] addrspace(1)*
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %13 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 0
  store i8 addrspace(1)* %12, i8 addrspace(1)* addrspace(1)* %13
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %15 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 1
  store i8 addrspace(1)* %14, i8 addrspace(1)* addrspace(1)* %15
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %17 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 2
  store i8 addrspace(1)* %16, i8 addrspace(1)* addrspace(1)* %17
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %19 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 3
  store i8 addrspace(1)* %18, i8 addrspace(1)* addrspace(1)* %19
  %20 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %11 to [0 x i8 addrspace(1)*] addrspace(1)*
  %21 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %22 = bitcast i8 addrspace(1)* %21 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %22, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %23
  %24 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %22, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %22, i64 0, i32 2
  store i64 4, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %22, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %20, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %26
  %27 = getelementptr i8, i8 addrspace(1)* %21, i64 1297036692682702852
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %28, i8 addrspace(1)** %v
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %30 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %29, i64 -5), !dbg !8
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5), !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %30, i8 addrspace(1)* %31), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !9
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 -5), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !10
  %35 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %34, i64 -5), !dbg !10
  %36 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %35), !dbg !10
  store i64 %36, i64* %4, !dbg !10
  %37 = load i64, i64* %4, !dbg !11
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %37), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !11
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/19-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 5, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 7, column: 16, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
