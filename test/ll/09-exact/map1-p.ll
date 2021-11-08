@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %m1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %m2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %m3 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %21, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %m1
  %12 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root1, i64 0)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %2
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %13, i8 addrspace(1)** %m2
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  %16 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %15, i64 -5)
  %17 = call i64 @_bal_mapping_set(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %34
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  %25 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %25, i8 addrspace(1)** %3
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %27 = addrspacecast i8 addrspace(1)* %26 to i8*
  %28 = ptrtoint i8* %27 to i64
  %29 = and i64 %28, 2233785415175766016
  %30 = lshr i64 %29, 56
  %31 = shl i64 1, %30
  %32 = and i64 %31, 524296
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %45
34:
  %35 = or i64 %17, 1280
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 %35), !dbg !7
  store i8 addrspace(1)* %36, i8 addrspace(1)** %5
  br label %19
37:
  store i8 addrspace(1)* %26, i8 addrspace(1)** %4
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %38, i8 addrspace(1)** %m3
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %m3
  %40 = zext i1 1 to i64
  %41 = or i64 %40, 72057594037927936
  %42 = getelementptr i8, i8 addrspace(1)* null, i64 %41
  %43 = call i64 @_bal_mapping_set(i8 addrspace(1)* %39, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %47, label %48
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 1539), !dbg !7
  store i8 addrspace(1)* %46, i8 addrspace(1)** %5
  br label %19
47:
  ret void
48:
  %49 = or i64 %43, 1792
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 %49), !dbg !7
  store i8 addrspace(1)* %50, i8 addrspace(1)** %5
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-exact/map1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
