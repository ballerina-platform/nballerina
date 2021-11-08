@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %36, label %13
13:
  %14 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %15 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %14, i64 0, i32 3
  %16 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %15, align 8
  %17 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %17
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1234567890123456789)
  %19 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 1
  store i8 addrspace(1)* %18, i8 addrspace(1)* addrspace(1)* %19
  %20 = zext i1 1 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21
  %23 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 2
  store i8 addrspace(1)* %22, i8 addrspace(1)* addrspace(1)* %23
  %24 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %14, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %24
  %25 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %14 to i8 addrspace(1)*
  %26 = getelementptr i8, i8 addrspace(1)* %25, i64 1297036692682702852
  store i8 addrspace(1)* %26, i8 addrspace(1)** %1
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %27, i8 addrspace(1)** %v
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %28, i64 72057594037927928)
  %30 = bitcast i8 addrspace(1)* %29 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %31 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 1
  %32 = load i64, i64 addrspace(1)* %31, align 8
  %33 = icmp ult i64 2, %32
  br i1 %33, label %38, label %50
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 3
  %40 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %39, align 8
  %41 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %40, i64 0, i64 2
  %42 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %41, align 8
  store i8 addrspace(1)* %42, i8 addrspace(1)** %2
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %45 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %44, i64 72057594037927928)
  %46 = bitcast i8 addrspace(1)* %45 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %47 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 1
  %48 = load i64, i64 addrspace(1)* %47, align 8
  %49 = icmp ult i64 1, %48
  br i1 %49, label %52, label %64
50:
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285), !dbg !7
  store i8 addrspace(1)* %51, i8 addrspace(1)** %9
  br label %34
52:
  %53 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 3
  %54 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %53, align 8
  %55 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %54, i64 0, i64 1
  %56 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %55, align 8
  store i8 addrspace(1)* %56, i8 addrspace(1)** %4
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %59 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %58, i64 72057594037927928)
  %60 = bitcast i8 addrspace(1)* %59 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %61 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 1
  %62 = load i64, i64 addrspace(1)* %61, align 8
  %63 = icmp ult i64 0, %62
  br i1 %63, label %66, label %81
64:
  %65 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541), !dbg !7
  store i8 addrspace(1)* %65, i8 addrspace(1)** %9
  br label %34
66:
  %67 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 3
  %68 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %67, align 8
  %69 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %68, i64 0, i64 0
  %70 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %69, align 8
  store i8 addrspace(1)* %70, i8 addrspace(1)** %6
  %71 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 1)
  %72 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 3
  %73 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %72, align 8
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %75 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %73, i64 0, i64 0
  store i8 addrspace(1)* %74, i8 addrspace(1)* addrspace(1)* %75
  %76 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %76
  %77 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71 to i8 addrspace(1)*
  %78 = getelementptr i8, i8 addrspace(1)* %77, i64 1297036692682702852
  store i8 addrspace(1)* %78, i8 addrspace(1)** %7
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !10
  %80 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %79, i64 -5), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !10
  ret void
81:
  %82 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797), !dbg !7
  store i8 addrspace(1)* %82, i8 addrspace(1)** %9
  br label %34
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
