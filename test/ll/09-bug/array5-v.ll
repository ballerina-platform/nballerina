@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i1 @_bal_list_has_type(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v2.1 = alloca i8 addrspace(1)*
  %n = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %37, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %11 = bitcast i8 addrspace(1)* %10 to [1 x i8 addrspace(1)*] addrspace(1)*
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
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
  %26 = call i1 @_bal_list_has_type(i8 addrspace(1)* %25, i64 130)
  store i1 %26, i1* %2
  %27 = load i1, i1* %2
  br i1 %27, label %28, label %34
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  store i8 addrspace(1)* %29, i8 addrspace(1)** %v2.1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v2.1
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %32 = call i64 @_bal_list_set(i8 addrspace(1)* %30, i64 0, i8 addrspace(1)* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %46
34:
  ret void
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %v2.1
  %41 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %40, i64 72057594037927928)
  %42 = bitcast i8 addrspace(1)* %41 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %43 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 1
  %44 = load i64, i64 addrspace(1)* %43, align 8
  %45 = icmp ult i64 0, %44
  br i1 %45, label %49, label %58
46:
  %47 = or i64 %32, 2560
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 %47), !dbg !7
  store i8 addrspace(1)* %48, i8 addrspace(1)** %5
  br label %35
49:
  %50 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 3
  %51 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %50, align 8
  %52 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 0
  %53 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %52, align 8
  %54 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %53)
  store i64 %54, i64* %3
  %55 = load i64, i64* %3
  store i64 %55, i64* %n
  %56 = load i64, i64* %n, !dbg !8
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %56), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  br label %34
58:
  %59 = call i8 addrspace(1)* @_bal_panic_construct(i64 2821), !dbg !7
  store i8 addrspace(1)* %59, i8 addrspace(1)** %5
  br label %35
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-bug/array5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 8, scope: !5)
