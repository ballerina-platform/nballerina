@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_mapping_indexed_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %23, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %10, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* null)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %r
  %12 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 0)
  %13 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12 to i8 addrspace(1)*
  %14 = getelementptr i8, i8 addrspace(1)* %13, i64 1297036692682702852
  store i8 addrspace(1)* %14, i8 addrspace(1)** %2
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %15, i8 addrspace(1)** %v
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %18 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %17, i64 -5)
  %19 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %16, i64 0, i8 addrspace(1)* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %36
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %27 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %26, i64 0)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %3
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %29 = addrspacecast i8 addrspace(1)* %28 to i8*
  %30 = ptrtoint i8* %29 to i64
  %31 = and i64 %30, 2233785415175766016
  %32 = lshr i64 %31, 56
  %33 = shl i64 1, %32
  %34 = and i64 %33, 262148
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %47
36:
  %37 = or i64 %19, 1792
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 %37), !dbg !7
  store i8 addrspace(1)* %38, i8 addrspace(1)** %5
  br label %21
39:
  store i8 addrspace(1)* %28, i8 addrspace(1)** %4
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %40, i8 addrspace(1)** %v2
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %42 = zext i1 1 to i64
  %43 = or i64 %42, 72057594037927936
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43
  %45 = call i64 @_bal_list_set(i8 addrspace(1)* %41, i64 0, i8 addrspace(1)* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %49, label %50
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051), !dbg !7
  store i8 addrspace(1)* %48, i8 addrspace(1)** %5
  br label %21
49:
  ret void
50:
  %51 = or i64 %45, 2304
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 %51), !dbg !7
  store i8 addrspace(1)* %52, i8 addrspace(1)** %5
  br label %21
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/record1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
