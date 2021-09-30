@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i1 @_bal_list_has_type(i8 addrspace(1)*, i64) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %iv = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %iv2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %12 = bitcast i8 addrspace(1)* %11 to [3 x i8 addrspace(1)*] addrspace(1)*
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %14 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 0
  store i8 addrspace(1)* %13, i8 addrspace(1)* addrspace(1)* %14
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 1
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %18 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 2
  store i8 addrspace(1)* %17, i8 addrspace(1)* addrspace(1)* %18
  %19 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %12 to [0 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %21 = bitcast i8 addrspace(1)* %20 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %22
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %23
  %24 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %19, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %25
  %26 = getelementptr i8, i8 addrspace(1)* %20, i64 1297036692682702852
  store i8 addrspace(1)* %26, i8 addrspace(1)** %1
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %27, i8 addrspace(1)** %iv
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %iv
  %29 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %28, i64 -5)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %v
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %31 = call i1 @_bal_list_has_type(i8 addrspace(1)* %30, i64 128)
  br i1 %31, label %36, label %47
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  store i8 addrspace(1)* %30, i8 addrspace(1)** %2
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %37, i8 addrspace(1)** %iv2
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %iv2, !dbg !8
  %39 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %38, i64 -5), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %iv
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %iv2
  %42 = call i1 @_bal_exact_eq(i8 addrspace(1)* %40, i8 addrspace(1)* %41)
  store i1 %42, i1* %4
  %43 = load i1, i1* %4, !dbg !9
  %44 = zext i1 %43 to i64, !dbg !9
  %45 = or i64 %44, 72057594037927936, !dbg !9
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  ret void
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795), !dbg !7
  store i8 addrspace(1)* %48, i8 addrspace(1)** %6
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/int8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
