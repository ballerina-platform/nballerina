@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %25, label %9
9:
  %10 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %11 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10 to i8 addrspace(1)*
  %12 = getelementptr i8, i8 addrspace(1)* %11, i64 1297036692682702852
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %v1
  %14 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 0)
  %15 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %14 to i8 addrspace(1)*
  %16 = getelementptr i8, i8 addrspace(1)* %15, i64 1297036692682702852
  store i8 addrspace(1)* %16, i8 addrspace(1)** %2
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %17, i8 addrspace(1)** %v2
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %20 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %19, i64 -5)
  %21 = call i64 @_bal_list_set(i8 addrspace(1)* %18, i64 0, i8 addrspace(1)* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %34
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %29 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %28, i64 72057594037927928)
  %30 = bitcast i8 addrspace(1)* %29 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %31 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 1
  %32 = load i64, i64 addrspace(1)* %31, align 8
  %33 = icmp ult i64 0, %32
  br i1 %33, label %37, label %50
34:
  %35 = or i64 %21, 1536
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 %35), !dbg !7
  store i8 addrspace(1)* %36, i8 addrspace(1)** %5
  br label %23
37:
  %38 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 3
  %39 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %38, align 8
  %40 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %39, i64 0, i64 0
  %41 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %40, align 8
  store i8 addrspace(1)* %41, i8 addrspace(1)** %3
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %43 = addrspacecast i8 addrspace(1)* %42 to i8*
  %44 = ptrtoint i8* %43 to i64
  %45 = and i64 %44, 2233785415175766016
  %46 = lshr i64 %45, 56
  %47 = shl i64 1, %46
  %48 = and i64 %47, 262148
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %60
50:
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %51, i8 addrspace(1)** %5
  br label %23
52:
  store i8 addrspace(1)* %42, i8 addrspace(1)** %4
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %53, i8 addrspace(1)** %v3
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %55 = zext i1 1 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56
  %58 = call i64 @_bal_list_set(i8 addrspace(1)* %54, i64 0, i8 addrspace(1)* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %62, label %63
60:
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795), !dbg !7
  store i8 addrspace(1)* %61, i8 addrspace(1)** %5
  br label %23
62:
  ret void
63:
  %64 = or i64 %58, 2048
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 %64), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %5
  br label %23
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/array1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
