@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i1 @_bal_list_has_type(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_list_exactify(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v2.1 = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %40, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %11 = bitcast i8 addrspace(1)* %10 to [1 x i8 addrspace(1)*] addrspace(1)*
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %13 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 0
  store i8 addrspace(1)* %12, i8 addrspace(1)* addrspace(1)* %13
  %14 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %11 to [0 x i8 addrspace(1)*] addrspace(1)*
  %15 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %16 = bitcast i8 addrspace(1)* %15 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %17 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %17
  %18 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %18
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %14, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %20
  %21 = getelementptr i8, i8 addrspace(1)* %15, i64 1297036692682702852
  store i8 addrspace(1)* %21, i8 addrspace(1)** %1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %22, i8 addrspace(1)** %v1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 -5)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %v2
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %26 = call i1 @_bal_list_has_type(i8 addrspace(1)* %25, i64 128)
  store i1 %26, i1* %2
  %27 = load i1, i1* %2
  br i1 %27, label %28, label %37
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %30 = call i8 addrspace(1)* @_bal_list_exactify(i8 addrspace(1)* %29, i64 128)
  store i8 addrspace(1)* %30, i8 addrspace(1)** %v2.1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v2.1
  %32 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %31, i64 72057594037927928)
  %33 = bitcast i8 addrspace(1)* %32 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %34 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 1
  %35 = load i64, i64 addrspace(1)* %34, align 8
  %36 = icmp ult i64 0, %35
  br i1 %36, label %42, label %51
37:
  ret void
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
42:
  %43 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 3
  %44 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %43, align 8
  %45 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %44, i64 0, i64 0
  %46 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %45, align 8
  %47 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %46)
  store i64 %47, i64* %3
  %48 = load i64, i64* %3
  store i64 %48, i64* %i
  %49 = load i64, i64* %i, !dbg !8
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %49), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  br label %37
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309), !dbg !7
  store i8 addrspace(1)* %52, i8 addrspace(1)** %5
  br label %38
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-bug/array1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 10, column: 8, scope: !5)
