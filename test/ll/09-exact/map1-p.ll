@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
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
  %10 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %m1
  %12 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 0)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %2
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %13, i8 addrspace(1)** %m2
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  %16 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %15)
  %17 = call i64 @_bal_mapping_set(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %35
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
  %26 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %24, i8 addrspace(1)* %25)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %3
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %28 = addrspacecast i8 addrspace(1)* %27 to i8*
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 2233785415175766016
  %31 = lshr i64 %30, 56
  %32 = shl i64 1, %31
  %33 = and i64 %32, 524296
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %46
35:
  %36 = or i64 %17, 1280
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 %36), !dbg !7
  store i8 addrspace(1)* %37, i8 addrspace(1)** %5
  br label %19
38:
  store i8 addrspace(1)* %27, i8 addrspace(1)** %4
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %39, i8 addrspace(1)** %m3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %m3
  %41 = zext i1 1 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42
  %44 = call i64 @_bal_mapping_set(i8 addrspace(1)* %40, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %48, label %49
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 1539), !dbg !7
  store i8 addrspace(1)* %47, i8 addrspace(1)** %5
  br label %19
48:
  ret void
49:
  %50 = or i64 %44, 1792
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 %50), !dbg !7
  store i8 addrspace(1)* %51, i8 addrspace(1)** %5
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
