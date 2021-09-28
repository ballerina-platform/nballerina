@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i1 @_bal_list_has_type(i8 addrspace(1)*, i64) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %v1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %33, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %15
  %16 = getelementptr i8, i8 addrspace(1)* %10, i64 1297036692682702852
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %v1
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %19 = bitcast i8 addrspace(1)* %18 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %22
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %23
  %24 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702852
  store i8 addrspace(1)* %24, i8 addrspace(1)** %2
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %25, i8 addrspace(1)** %v2
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %28 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %27, i64 -5)
  %29 = call i64 @_bal_list_set(i8 addrspace(1)* %26, i64 0, i8 addrspace(1)* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %42
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %37 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %36, i64 72057594037927928)
  %38 = bitcast i8 addrspace(1)* %37 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %39 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %38, i64 0, i32 1
  %40 = load i64, i64 addrspace(1)* %39, align 8
  %41 = icmp ult i64 0, %40
  br i1 %41, label %45, label %52
42:
  %43 = or i64 %29, 1536
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 %43), !dbg !7
  store i8 addrspace(1)* %44, i8 addrspace(1)** %5
  br label %31
45:
  %46 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %38, i64 0, i32 3
  %47 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %46, align 8
  %48 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %47, i64 0, i64 0
  %49 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %48, align 8
  store i8 addrspace(1)* %49, i8 addrspace(1)** %3
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %51 = call i1 @_bal_list_has_type(i8 addrspace(1)* %50, i64 8388607)
  br i1 %51, label %54, label %62
52:
  %53 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %53, i8 addrspace(1)** %5
  br label %31
54:
  store i8 addrspace(1)* %50, i8 addrspace(1)** %4
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %55, i8 addrspace(1)** %v3
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %57 = zext i1 1 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58
  %60 = call i64 @_bal_list_set(i8 addrspace(1)* %56, i64 0, i8 addrspace(1)* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %64, label %65
62:
  %63 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795), !dbg !7
  store i8 addrspace(1)* %63, i8 addrspace(1)** %5
  br label %31
64:
  ret void
65:
  %66 = or i64 %60, 2048
  %67 = call i8 addrspace(1)* @_bal_panic_construct(i64 %66), !dbg !7
  store i8 addrspace(1)* %67, i8 addrspace(1)** %5
  br label %31
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-exact/array1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
