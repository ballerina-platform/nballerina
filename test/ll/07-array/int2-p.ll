@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %vi = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %va = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %24, label %9
9:
  %10 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %11 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10 to i8 addrspace(1)*
  %12 = getelementptr i8, i8 addrspace(1)* %11, i64 1297036692682702852
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %vi
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %vi
  %15 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %14, i64 -5)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %va
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %va
  %17 = zext i1 1 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18
  %20 = call i64 @_bal_list_set(i8 addrspace(1)* %16, i64 0, i8 addrspace(1)* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %33
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %vi
  %28 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %27, i64 72057594037927928)
  %29 = bitcast i8 addrspace(1)* %28 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %30 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  %31 = load i64, i64 addrspace(1)* %30, align 8
  %32 = icmp ult i64 0, %31
  br i1 %32, label %36, label %45
33:
  %34 = or i64 %20, 1536
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 %34), !dbg !7
  store i8 addrspace(1)* %35, i8 addrspace(1)** %5
  br label %22
36:
  %37 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %29, i64 0, i32 3
  %38 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %37, align 8
  %39 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 0
  %40 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %39, align 8
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  store i64 %41, i64* %2
  %42 = load i64, i64* %2
  %43 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %42, i64 1)
  %44 = extractvalue {i64, i1} %43, 1
  br i1 %44, label %51, label %47
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %46, i8 addrspace(1)** %5
  br label %22
47:
  %48 = extractvalue {i64, i1} %43, 0
  store i64 %48, i64* %3
  %49 = load i64, i64* %3, !dbg !8
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %49), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !7
  store i8 addrspace(1)* %52, i8 addrspace(1)** %5
  br label %22
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/int2-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
