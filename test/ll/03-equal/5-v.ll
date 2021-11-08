@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %27, label %11
11:
  %12 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %13 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 3
  %14 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %13, align 8
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %16 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 0
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %17
  %18 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12 to i8 addrspace(1)*
  %19 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702852
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %21 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %20, i64 -5)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %x
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %23 = addrspacecast i8 addrspace(1)* %22 to i8*
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 504403158265495552
  br i1 %26, label %29, label %32
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %22)
  %31 = icmp eq i64 %30, 1
  store i1 %31, i1* %2
  br label %33
32:
  store i1 0, i1* %2
  br label %33
33:
  %34 = load i1, i1* %2, !dbg !8
  %35 = zext i1 %34 to i64, !dbg !8
  %36 = or i64 %35, 72057594037927936, !dbg !8
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %39 = zext i1 1 to i64
  %40 = or i64 %39, 72057594037927936
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40
  %42 = icmp ne i8 addrspace(1)* %38, %41
  store i1 %42, i1* %4
  %43 = load i1, i1* %4, !dbg !9
  %44 = zext i1 %43 to i64, !dbg !9
  %45 = or i64 %44, 72057594037927936, !dbg !9
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %48 = icmp eq i8 addrspace(1)* %47, null
  store i1 %48, i1* %6
  %49 = load i1, i1* %6, !dbg !10
  %50 = zext i1 %49 to i64, !dbg !10
  %51 = or i64 %50, 72057594037927936, !dbg !10
  %52 = getelementptr i8, i8 addrspace(1)* null, i64 %51, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %52), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
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
