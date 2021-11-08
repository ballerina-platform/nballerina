@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
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
  br i1 %9, label %30, label %10
10:
  %11 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %12 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11 to i8 addrspace(1)*
  %13 = getelementptr i8, i8 addrspace(1)* %12, i64 1297036692682702852
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %14, i8 addrspace(1)** %v1
  %15 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 0)
  %16 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15 to i8 addrspace(1)*
  %17 = getelementptr i8, i8 addrspace(1)* %16, i64 1297036692682702852
  store i8 addrspace(1)* %17, i8 addrspace(1)** %2
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %18, i8 addrspace(1)** %v2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !8
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !8
  %21 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %20, i64 -5), !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %19, i8 addrspace(1)* %21), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %23 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %22, i64 72057594037927928)
  %24 = bitcast i8 addrspace(1)* %23 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %25 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 1
  %26 = load i64, i64 addrspace(1)* %25, align 8
  %27 = icmp ult i64 0, %26
  br i1 %27, label %32, label %45
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 3
  %34 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %33, align 8
  %35 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %34, i64 0, i64 0
  %36 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %35, align 8
  store i8 addrspace(1)* %36, i8 addrspace(1)** %4
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %38 = addrspacecast i8 addrspace(1)* %37 to i8*
  %39 = ptrtoint i8* %38 to i64
  %40 = and i64 %39, 2233785415175766016
  %41 = lshr i64 %40, 56
  %42 = shl i64 1, %41
  %43 = and i64 %42, 262148
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %55
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !7
  store i8 addrspace(1)* %46, i8 addrspace(1)** %6
  br label %28
47:
  store i8 addrspace(1)* %37, i8 addrspace(1)** %5
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %48, i8 addrspace(1)** %v3
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %50 = zext i1 1 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, i8 addrspace(1)* null, i64 %51
  %53 = call i64 @_bal_list_set(i8 addrspace(1)* %49, i64 0, i8 addrspace(1)* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %57, label %58
55:
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !7
  store i8 addrspace(1)* %56, i8 addrspace(1)** %6
  br label %28
57:
  ret void
58:
  %59 = or i64 %53, 1536
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 %59), !dbg !7
  store i8 addrspace(1)* %60, i8 addrspace(1)** %6
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/push1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
