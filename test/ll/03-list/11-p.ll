@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %val = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %36, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %13 = bitcast i8 addrspace(1)* %12 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %15
  %16 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %16
  %17 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %17
  %18 = getelementptr i8, i8 addrspace(1)* %12, i64 1297036692682702852
  store i8 addrspace(1)* %18, i8 addrspace(1)** %1
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %19, i8 addrspace(1)** %v
  store i64 1, i64* %val
  store i64 0, i64* %i
  br label %20
20:
  %21 = load i64, i64* %i
  %22 = icmp slt i64 %21, 62
  store i1 %22, i1* %2
  %23 = load i1, i1* %2
  br i1 %23, label %24, label %28
24:
  %25 = load i64, i64* %val
  %26 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %25, i64 2)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %44, label %38
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %30 = load i64, i64* %val
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %32 = call i64 @_bal_list_set(i8 addrspace(1)* %29, i64 %30, i8 addrspace(1)* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %51, label %59
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = extractvalue {i64, i1} %26, 0
  store i64 %39, i64* %3
  %40 = load i64, i64* %3
  store i64 %40, i64* %val
  %41 = load i64, i64* %i
  %42 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %41, i64 1)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %49, label %46
44:
  %45 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %45, i8 addrspace(1)** %7
  br label %34
46:
  %47 = extractvalue {i64, i1} %42, 0
  store i64 %47, i64* %4
  %48 = load i64, i64* %4
  store i64 %48, i64* %i
  br label %20
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %50, i8 addrspace(1)** %7
  br label %34
51:
  %52 = load i64, i64* %val
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %54 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %53, i64 72057594037927928)
  %55 = bitcast i8 addrspace(1)* %54 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %56 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 1
  %57 = load i64, i64 addrspace(1)* %56, align 8
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %62, label %68
59:
  %60 = or i64 %32, 3072
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 %60), !dbg !7
  store i8 addrspace(1)* %61, i8 addrspace(1)** %7
  br label %34
62:
  %63 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 3
  %64 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %63, align 8
  %65 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %64, i64 0, i64 %52
  %66 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %65, align 8
  store i8 addrspace(1)* %66, i8 addrspace(1)** %5
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !8
  ret void
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 3333), !dbg !7
  store i8 addrspace(1)* %69, i8 addrspace(1)** %7
  br label %34
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/11-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 13, column: 4, scope: !5)
