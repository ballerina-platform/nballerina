@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
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
  br i1 %8, label %33, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %15
  %16 = getelementptr i8, i8 addrspace(1)* %10, i64 1297036692682702852
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %v1
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %19 = bitcast i8 addrspace(1)* %18 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %22
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %23
  %24 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702852
  store i8 addrspace(1)* %24, i8 addrspace(1)** %2
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %25, i8 addrspace(1)** %v2
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %28 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %27, i64 -5)
  %29 = call i64 @_bal_list_set(i8 addrspace(1)* %26, i64 0, i8 addrspace(1)* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %42
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %37 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %36, i64 72057594037927928)
  %38 = bitcast i8 addrspace(1)* %37 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %39 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %38, i64 0, i32 1
  %40 = load i64, i64 addrspace(1)* %39, align 8
  %41 = icmp ult i64 0, %40
  br i1 %41, label %45, label %58
42:
  %43 = or i64 %29, 1536
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 %43), !dbg !7
  store i8 addrspace(1)* %44, i8 addrspace(1)** %5
  br label %31
45:
  %46 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %38, i64 0, i32 3
  %47 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %46, align 8
  %48 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %47, i64 0, i64 0
  %49 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %48, align 8
  store i8 addrspace(1)* %49, i8 addrspace(1)** %3
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %51 = addrspacecast i8 addrspace(1)* %50 to i8*
  %52 = ptrtoint i8* %51 to i64
  %53 = and i64 %52, 2233785415175766016
  %54 = lshr i64 %53, 56
  %55 = shl i64 1, %54
  %56 = and i64 %55, 262148
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %68
58:
  %59 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %59, i8 addrspace(1)** %5
  br label %31
60:
  store i8 addrspace(1)* %50, i8 addrspace(1)** %4
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %61, i8 addrspace(1)** %v3
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %63 = zext i1 1 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  %66 = call i64 @_bal_list_set(i8 addrspace(1)* %62, i64 0, i8 addrspace(1)* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %70, label %71
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795), !dbg !7
  store i8 addrspace(1)* %69, i8 addrspace(1)** %5
  br label %31
70:
  ret void
71:
  %72 = or i64 %66, 2048
  %73 = call i8 addrspace(1)* @_bal_panic_construct(i64 %72), !dbg !7
  store i8 addrspace(1)* %73, i8 addrspace(1)** %5
  br label %31
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/array1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
