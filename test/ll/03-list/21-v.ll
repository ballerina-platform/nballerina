@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %29, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %10 = bitcast i8 addrspace(1)* %9 to [1 x i8 addrspace(1)*] addrspace(1)*
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %12 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 0
  store i8 addrspace(1)* %11, i8 addrspace(1)* addrspace(1)* %12
  %13 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %10 to [0 x i8 addrspace(1)*] addrspace(1)*
  %14 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %15 = bitcast i8 addrspace(1)* %14 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %16 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %16
  %17 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %17
  %18 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %18
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %13, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %19
  %20 = getelementptr i8, i8 addrspace(1)* %14, i64 1297036692682702852
  store i8 addrspace(1)* %20, i8 addrspace(1)** %1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %21, i8 addrspace(1)** %v
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %n
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %25 = call i64 @_bal_list_set(i8 addrspace(1)* %23, i64 0, i8 addrspace(1)* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %38
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 72057594037927928)
  %34 = bitcast i8 addrspace(1)* %33 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %35 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 1
  %36 = load i64, i64 addrspace(1)* %35, align 8
  %37 = icmp ult i64 0, %36
  br i1 %37, label %41, label %47
38:
  %39 = or i64 %25, 1792
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 %39), !dbg !7
  store i8 addrspace(1)* %40, i8 addrspace(1)** %4
  br label %27
41:
  %42 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 3
  %43 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %42, align 8
  %44 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %43, i64 0, i64 0
  %45 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %44, align 8
  store i8 addrspace(1)* %45, i8 addrspace(1)** %2
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  ret void
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %48, i8 addrspace(1)** %4
  br label %27
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/21-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
