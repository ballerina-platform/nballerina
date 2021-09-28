@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i1 @_bal_mapping_has_type(i8 addrspace(1)*, i64) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %m1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %m2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %m3 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %21, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 0)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %m1
  %12 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8386559, i64 0)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %2
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %13, i8 addrspace(1)** %m2
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  %16 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %15, i64 -5)
  %17 = call i64 @_bal_mapping_set(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %28
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
  %27 = call i1 @_bal_mapping_has_type(i8 addrspace(1)* %26, i64 8388607)
  br i1 %27, label %31, label %39
28:
  %29 = or i64 %17, 1280
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 %29), !dbg !7
  store i8 addrspace(1)* %30, i8 addrspace(1)** %5
  br label %19
31:
  store i8 addrspace(1)* %26, i8 addrspace(1)** %4
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %32, i8 addrspace(1)** %m3
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %m3
  %34 = zext i1 1 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35
  %37 = call i64 @_bal_mapping_set(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %41, label %42
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 1539), !dbg !7
  store i8 addrspace(1)* %40, i8 addrspace(1)** %5
  br label %19
41:
  ret void
42:
  %43 = or i64 %37, 1792
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 %43), !dbg !7
  store i8 addrspace(1)* %44, i8 addrspace(1)** %5
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-exact/map1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
