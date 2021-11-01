@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %92, label %17
17:
  %18 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %19 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 3
  %20 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %19, align 8
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %22 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %20, i64 0, i64 0
  store i8 addrspace(1)* %21, i8 addrspace(1)* addrspace(1)* %22
  %23 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %23
  %24 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18 to i8 addrspace(1)*
  %25 = getelementptr i8, i8 addrspace(1)* %24, i64 1297036692682702852
  store i8 addrspace(1)* %25, i8 addrspace(1)** %1
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %27 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %26, i64 -5)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %x
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %28, i8 addrspace(1)** %y
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !10
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %y, !dbg !10
  call void @_B_printEq(i8 addrspace(1)* %29, i8 addrspace(1)* %30), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  %31 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %32 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 3
  %33 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %32, align 8
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %35 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %33, i64 0, i64 0
  store i8 addrspace(1)* %34, i8 addrspace(1)* addrspace(1)* %35
  %36 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %36
  %37 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31 to i8 addrspace(1)*
  %38 = getelementptr i8, i8 addrspace(1)* %37, i64 1297036692682702852
  store i8 addrspace(1)* %38, i8 addrspace(1)** %3
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !11
  %40 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %39, i64 -5), !dbg !11
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !11
  call void @_B_printEq(i8 addrspace(1)* %40, i8 addrspace(1)* %41), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %42 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %43 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 3
  %44 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %43, align 8
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %46 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %44, i64 0, i64 0
  store i8 addrspace(1)* %45, i8 addrspace(1)* addrspace(1)* %46
  %47 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %47
  %48 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42 to i8 addrspace(1)*
  %49 = getelementptr i8, i8 addrspace(1)* %48, i64 1297036692682702852
  store i8 addrspace(1)* %49, i8 addrspace(1)** %5
  %50 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %51 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 3
  %52 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %51, align 8
  %53 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %54 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %52, i64 0, i64 0
  store i8 addrspace(1)* %53, i8 addrspace(1)* addrspace(1)* %54
  %55 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %55
  %56 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50 to i8 addrspace(1)*
  %57 = getelementptr i8, i8 addrspace(1)* %56, i64 1297036692682702852
  store i8 addrspace(1)* %57, i8 addrspace(1)** %6
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !12
  %59 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %58, i64 -5), !dbg !12
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %6, !dbg !12
  %61 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %60, i64 -5), !dbg !12
  call void @_B_printEq(i8 addrspace(1)* %59, i8 addrspace(1)* %61), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !12
  %62 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %63 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62 to i8 addrspace(1)*
  %64 = getelementptr i8, i8 addrspace(1)* %63, i64 1297036692682702852
  store i8 addrspace(1)* %64, i8 addrspace(1)** %8
  %65 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %66 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65 to i8 addrspace(1)*
  %67 = getelementptr i8, i8 addrspace(1)* %66, i64 1297036692682702852
  store i8 addrspace(1)* %67, i8 addrspace(1)** %9
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %8, !dbg !13
  %69 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %68, i64 -5), !dbg !13
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !13
  %71 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %70, i64 -5), !dbg !13
  call void @_B_printEq(i8 addrspace(1)* %69, i8 addrspace(1)* %71), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !13
  %72 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %73 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %72, i64 0, i32 3
  %74 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %73, align 8
  %75 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %76 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %74, i64 0, i64 0
  store i8 addrspace(1)* %75, i8 addrspace(1)* addrspace(1)* %76
  %77 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %72, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %77
  %78 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %72 to i8 addrspace(1)*
  %79 = getelementptr i8, i8 addrspace(1)* %78, i64 1297036692682702852
  store i8 addrspace(1)* %79, i8 addrspace(1)** %11
  %80 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %81 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 3
  %82 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %81, align 8
  %83 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %84 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 0
  store i8 addrspace(1)* %83, i8 addrspace(1)* addrspace(1)* %84
  %85 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %85
  %86 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80 to i8 addrspace(1)*
  %87 = getelementptr i8, i8 addrspace(1)* %86, i64 1297036692682702852
  store i8 addrspace(1)* %87, i8 addrspace(1)** %12
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !14
  %89 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %88, i64 -5), !dbg !14
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %12, !dbg !14
  %91 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %90, i64 -5), !dbg !14
  call void @_B_printEq(i8 addrspace(1)* %89, i8 addrspace(1)* %91), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !14
  ret void
92:
  %93 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %93)
  unreachable
}
define internal void @_B_printEq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %26, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %13 = call i1 @_bal_exact_eq(i8 addrspace(1)* %11, i8 addrspace(1)* %12)
  store i1 %13, i1* %3
  %14 = load i1, i1* %3, !dbg !16
  %15 = zext i1 %14 to i64, !dbg !16
  %16 = or i64 %15, 72057594037927936, !dbg !16
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !16
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %20 = call i1 @_bal_exact_eq(i8 addrspace(1)* %18, i8 addrspace(1)* %19)
  %21 = xor i1 %20, 1
  store i1 %21, i1* %5
  %22 = load i1, i1* %5, !dbg !17
  %23 = zext i1 %22 to i64, !dbg !17
  %24 = or i64 %23, 72057594037927936, !dbg !17
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !17
  ret void
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-equal/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printEq", linkageName:"_B_printEq", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 17, column: 4, scope: !5)
!14 = !DILocation(line: 20, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 24, column: 4, scope: !7)
!17 = !DILocation(line: 25, column: 4, scope: !7)
