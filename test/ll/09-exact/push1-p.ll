@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %38, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %12 = bitcast i8 addrspace(1)* %11 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %15
  %16 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %16
  %17 = getelementptr i8, i8 addrspace(1)* %11, i64 1297036692682702852
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %v1
  %19 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %20 = bitcast i8 addrspace(1)* %19 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %22
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %23
  %24 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %24
  %25 = getelementptr i8, i8 addrspace(1)* %19, i64 1297036692682702852
  store i8 addrspace(1)* %25, i8 addrspace(1)** %2
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %26, i8 addrspace(1)** %v2
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !8
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !8
  %29 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %28, i64 -5), !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %27, i8 addrspace(1)* %29), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %31 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %30, i64 72057594037927928)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 1
  %34 = load i64, i64 addrspace(1)* %33, align 8
  %35 = icmp ult i64 0, %34
  br i1 %35, label %40, label %53
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 3
  %42 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %41, align 8
  %43 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %42, i64 0, i64 0
  %44 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %43, align 8
  store i8 addrspace(1)* %44, i8 addrspace(1)** %4
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %46 = addrspacecast i8 addrspace(1)* %45 to i8*
  %47 = ptrtoint i8* %46 to i64
  %48 = and i64 %47, 2233785415175766016
  %49 = lshr i64 %48, 56
  %50 = shl i64 1, %49
  %51 = and i64 %50, 262148
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %63
53:
  %54 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !7
  store i8 addrspace(1)* %54, i8 addrspace(1)** %6
  br label %36
55:
  store i8 addrspace(1)* %45, i8 addrspace(1)** %5
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %56, i8 addrspace(1)** %v3
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %58 = zext i1 1 to i64
  %59 = or i64 %58, 72057594037927936
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59
  %61 = call i64 @_bal_list_set(i8 addrspace(1)* %57, i64 0, i8 addrspace(1)* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %65, label %66
63:
  %64 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !7
  store i8 addrspace(1)* %64, i8 addrspace(1)** %6
  br label %36
65:
  ret void
66:
  %67 = or i64 %61, 1536
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 %67), !dbg !7
  store i8 addrspace(1)* %68, i8 addrspace(1)** %6
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/push1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
