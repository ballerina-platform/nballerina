@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %38, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %13 = bitcast i8 addrspace(1)* %12 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %15
  %16 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %16
  %17 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %17
  %18 = getelementptr i8, i8 addrspace(1)* %12, i64 1297036692682702852
  store i8 addrspace(1)* %18, i8 addrspace(1)** %1
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %19, i8 addrspace(1)** %v
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %21 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %20, i64 -5), !dbg !8
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %21, i8 addrspace(1)* %22), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !9
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 -5), !dbg !9
  %25 = zext i1 1 to i64, !dbg !9
  %26 = or i64 %25, 72057594037927936, !dbg !9
  %27 = getelementptr i8, i8 addrspace(1)* null, i64 %26, !dbg !9
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %24, i8 addrspace(1)* %27), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !10
  %29 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %28, i64 -5), !dbg !10
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !10
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %29, i8 addrspace(1)* %30), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !10
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !11
  %32 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %31, i64 -5), !dbg !11
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %32, i8 addrspace(1)* null), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !11
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !12
  %34 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %33, i64 -5), !dbg !12
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4), !dbg !12
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %34, i8 addrspace(1)* %35), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !12
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !13
  %37 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %36, i64 -5), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !13
  ret void
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/18-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 5, scope: !5)
!9 = !DILocation(line: 6, column: 5, scope: !5)
!10 = !DILocation(line: 7, column: 5, scope: !5)
!11 = !DILocation(line: 8, column: 5, scope: !5)
!12 = !DILocation(line: 9, column: 5, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
