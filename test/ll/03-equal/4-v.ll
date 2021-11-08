@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %37, label %19
19:
  %20 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %21 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 3
  %22 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %21, align 8
  %23 = zext i1 1 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24
  %26 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 0
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %27
  %28 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20 to i8 addrspace(1)*
  %29 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702852
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %31 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %30, i64 -5)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %33 = addrspacecast i8 addrspace(1)* %32 to i8*
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 2233785415175766016
  %36 = icmp eq i64 %35, 504403158265495552
  br i1 %36, label %39, label %42
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %32)
  %41 = icmp eq i64 %40, 1
  store i1 %41, i1* %2
  br label %43
42:
  store i1 0, i1* %2
  br label %43
43:
  %44 = load i1, i1* %2, !dbg !8
  %45 = zext i1 %44 to i64, !dbg !8
  %46 = or i64 %45, 72057594037927936, !dbg !8
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %49 = zext i1 1 to i64
  %50 = or i64 %49, 72057594037927936
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50
  %52 = icmp eq i8 addrspace(1)* %48, %51
  store i1 %52, i1* %4
  %53 = load i1, i1* %4, !dbg !9
  %54 = zext i1 %53 to i64, !dbg !9
  %55 = or i64 %54, 72057594037927936, !dbg !9
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %56), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %58 = icmp eq i8 addrspace(1)* %57, null
  store i1 %58, i1* %6
  %59 = load i1, i1* %6, !dbg !10
  %60 = zext i1 %59 to i64, !dbg !10
  %61 = or i64 %60, 72057594037927936, !dbg !10
  %62 = getelementptr i8, i8 addrspace(1)* null, i64 %61, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %62), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %63 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %64 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63 to i8 addrspace(1)*
  %65 = getelementptr i8, i8 addrspace(1)* %64, i64 1297036692682702852
  store i8 addrspace(1)* %65, i8 addrspace(1)** %8
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %67 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %66, i64 -5)
  store i8 addrspace(1)* %67, i8 addrspace(1)** %x
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %69 = addrspacecast i8 addrspace(1)* %68 to i8*
  %70 = ptrtoint i8* %69 to i64
  %71 = and i64 %70, 2233785415175766016
  %72 = icmp eq i64 %71, 504403158265495552
  br i1 %72, label %73, label %76
73:
  %74 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %68)
  %75 = icmp ne i64 %74, 1
  store i1 %75, i1* %9
  br label %77
76:
  store i1 1, i1* %9
  br label %77
77:
  %78 = load i1, i1* %9, !dbg !11
  %79 = zext i1 %78 to i64, !dbg !11
  %80 = or i64 %79, 72057594037927936, !dbg !11
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %82 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %83 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 3
  %84 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %83, align 8
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %86 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %84, i64 0, i64 0
  store i8 addrspace(1)* %85, i8 addrspace(1)* addrspace(1)* %86
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %88 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %84, i64 0, i64 1
  store i8 addrspace(1)* %87, i8 addrspace(1)* addrspace(1)* %88
  %89 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %90 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %84, i64 0, i64 2
  store i8 addrspace(1)* %89, i8 addrspace(1)* addrspace(1)* %90
  %91 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %91
  %92 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %82 to i8 addrspace(1)*
  %93 = getelementptr i8, i8 addrspace(1)* %92, i64 1297036692682702852
  store i8 addrspace(1)* %93, i8 addrspace(1)** %11
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %95 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %94, i64 -5)
  store i8 addrspace(1)* %95, i8 addrspace(1)** %x
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %97 = zext i1 1 to i64
  %98 = or i64 %97, 72057594037927936
  %99 = getelementptr i8, i8 addrspace(1)* null, i64 %98
  %100 = icmp ne i8 addrspace(1)* %96, %99
  store i1 %100, i1* %12
  %101 = load i1, i1* %12, !dbg !12
  %102 = zext i1 %101 to i64, !dbg !12
  %103 = or i64 %102, 72057594037927936, !dbg !12
  %104 = getelementptr i8, i8 addrspace(1)* null, i64 %103, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %104), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %106 = icmp ne i8 addrspace(1)* %105, null
  store i1 %106, i1* %14
  %107 = load i1, i1* %14, !dbg !13
  %108 = zext i1 %107 to i64, !dbg !13
  %109 = or i64 %108, 72057594037927936, !dbg !13
  %110 = getelementptr i8, i8 addrspace(1)* null, i64 %109, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %110), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-equal/4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
