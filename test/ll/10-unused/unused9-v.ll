@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %31, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %9 = bitcast i8 addrspace(1)* %8 to [3 x i8 addrspace(1)*] addrspace(1)*
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %11 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %9, i64 0, i64 0
  store i8 addrspace(1)* %10, i8 addrspace(1)* addrspace(1)* %11
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %13 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %9, i64 0, i64 1
  store i8 addrspace(1)* %12, i8 addrspace(1)* addrspace(1)* %13
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %15 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %9, i64 0, i64 2
  store i8 addrspace(1)* %14, i8 addrspace(1)* addrspace(1)* %15
  %16 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %9 to [0 x i8 addrspace(1)*] addrspace(1)*
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %18 = bitcast i8 addrspace(1)* %17 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %16, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %22
  %23 = getelementptr i8, i8 addrspace(1)* %17, i64 1297036692682702852
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %24, i8 addrspace(1)** %v
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 20)
  %27 = call i64 @_bal_list_set(i8 addrspace(1)* %25, i64 2, i8 addrspace(1)* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %40
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %34, i8 addrspace(1)** %2
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %35, i8 addrspace(1)** %m
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %38 = call i64 @_bal_mapping_set(i8 addrspace(1)* %36, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620771439), i8 addrspace(1)* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %44
40:
  %41 = or i64 %27, 1024
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 %41), !dbg !7
  store i8 addrspace(1)* %42, i8 addrspace(1)** %3
  br label %29
43:
  ret void
44:
  %45 = or i64 %38, 1792
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 %45), !dbg !7
  store i8 addrspace(1)* %46, i8 addrspace(1)** %3
  br label %29
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-unused/unused9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
