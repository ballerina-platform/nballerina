@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %24, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %15
  %16 = getelementptr i8, i8 addrspace(1)* %10, i64 1297036692682702852
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %v
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %20 = call i64 @_bal_list_set(i8 addrspace(1)* %18, i64 0, i8 addrspace(1)* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %39
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %28 = bitcast i8 addrspace(1)* %27 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %30
  %31 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %28, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32
  %33 = getelementptr i8, i8 addrspace(1)* %27, i64 1297036692682702852
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %36 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %35, i64 -5)
  %37 = call i64 @_bal_list_set(i8 addrspace(1)* %34, i64 1, i8 addrspace(1)* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %42, label %48
39:
  %40 = or i64 %20, 2048
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 %40), !dbg !7
  store i8 addrspace(1)* %41, i8 addrspace(1)** %5
  br label %22
42:
  %43 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098321995397294199), i64 10), !dbg !7
  store i8 addrspace(1)* %43, i8 addrspace(1)** %3, !dbg !7
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %46 = call i64 @_bal_list_set(i8 addrspace(1)* %44, i64 2, i8 addrspace(1)* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %51, label %54
48:
  %49 = or i64 %37, 2304
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 %49), !dbg !7
  store i8 addrspace(1)* %50, i8 addrspace(1)** %5
  br label %22
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %53 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %52, i64 -5), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
54:
  %55 = or i64 %46, 2560
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 %55), !dbg !7
  store i8 addrspace(1)* %56, i8 addrspace(1)** %5
  br label %22
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-type/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 4, scope: !5)
