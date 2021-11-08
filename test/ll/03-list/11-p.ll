@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
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
  br i1 %10, label %32, label %11
11:
  %12 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %13 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %12 to i8 addrspace(1)*
  %14 = getelementptr i8, i8 addrspace(1)* %13, i64 1297036692682702852
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %v
  store i64 1, i64* %val
  store i64 0, i64* %i
  br label %16
16:
  %17 = load i64, i64* %i
  %18 = icmp slt i64 %17, 62
  store i1 %18, i1* %2
  %19 = load i1, i1* %2
  br i1 %19, label %20, label %24
20:
  %21 = load i64, i64* %val
  %22 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %21, i64 2)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %40, label %34
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = load i64, i64* %val
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %28 = call i64 @_bal_list_set(i8 addrspace(1)* %25, i64 %26, i8 addrspace(1)* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %47, label %55
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = extractvalue {i64, i1} %22, 0
  store i64 %35, i64* %3
  %36 = load i64, i64* %3
  store i64 %36, i64* %val
  %37 = load i64, i64* %i
  %38 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %37, i64 1)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %45, label %42
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %41, i8 addrspace(1)** %7
  br label %30
42:
  %43 = extractvalue {i64, i1} %38, 0
  store i64 %43, i64* %4
  %44 = load i64, i64* %4
  store i64 %44, i64* %i
  br label %16
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %46, i8 addrspace(1)** %7
  br label %30
47:
  %48 = load i64, i64* %val
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 72057594037927928)
  %51 = bitcast i8 addrspace(1)* %50 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %52 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 1
  %53 = load i64, i64 addrspace(1)* %52, align 8
  %54 = icmp ult i64 %48, %53
  br i1 %54, label %58, label %64
55:
  %56 = or i64 %28, 3072
  %57 = call i8 addrspace(1)* @_bal_panic_construct(i64 %56), !dbg !7
  store i8 addrspace(1)* %57, i8 addrspace(1)** %7
  br label %30
58:
  %59 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 3
  %60 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %59, align 8
  %61 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %60, i64 0, i64 %48
  %62 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %61, align 8
  store i8 addrspace(1)* %62, i8 addrspace(1)** %5
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !8
  ret void
64:
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 3333), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %7
  br label %30
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/11-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 13, column: 4, scope: !5)
