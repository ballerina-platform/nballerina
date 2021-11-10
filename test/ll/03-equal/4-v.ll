@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
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
  br i1 %18, label %36, label %19
19:
  %20 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %21 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 3
  %22 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %21, align 8
  %23 = zext i1 1 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24
  %26 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 0
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %27
  %28 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20 to i8 addrspace(1)*
  %29 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702852
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %30, i8 addrspace(1)** %x
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %32 = addrspacecast i8 addrspace(1)* %31 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 %33, 2233785415175766016
  %35 = icmp eq i64 %34, 504403158265495552
  br i1 %35, label %38, label %41
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %31)
  %40 = icmp eq i64 %39, 1
  store i1 %40, i1* %2
  br label %42
41:
  store i1 0, i1* %2
  br label %42
42:
  %43 = load i1, i1* %2, !dbg !8
  %44 = zext i1 %43 to i64, !dbg !8
  %45 = or i64 %44, 72057594037927936, !dbg !8
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %48 = zext i1 1 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49
  %51 = icmp eq i8 addrspace(1)* %47, %50
  store i1 %51, i1* %4
  %52 = load i1, i1* %4, !dbg !9
  %53 = zext i1 %52 to i64, !dbg !9
  %54 = or i64 %53, 72057594037927936, !dbg !9
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %57 = icmp eq i8 addrspace(1)* %56, null
  store i1 %57, i1* %6
  %58 = load i1, i1* %6, !dbg !10
  %59 = zext i1 %58 to i64, !dbg !10
  %60 = or i64 %59, 72057594037927936, !dbg !10
  %61 = getelementptr i8, i8 addrspace(1)* null, i64 %60, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  %62 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %63 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62 to i8 addrspace(1)*
  %64 = getelementptr i8, i8 addrspace(1)* %63, i64 1297036692682702852
  store i8 addrspace(1)* %64, i8 addrspace(1)** %8
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %65, i8 addrspace(1)** %x
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %67 = addrspacecast i8 addrspace(1)* %66 to i8*
  %68 = ptrtoint i8* %67 to i64
  %69 = and i64 %68, 2233785415175766016
  %70 = icmp eq i64 %69, 504403158265495552
  br i1 %70, label %71, label %74
71:
  %72 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %66)
  %73 = icmp ne i64 %72, 1
  store i1 %73, i1* %9
  br label %75
74:
  store i1 1, i1* %9
  br label %75
75:
  %76 = load i1, i1* %9, !dbg !11
  %77 = zext i1 %76 to i64, !dbg !11
  %78 = or i64 %77, 72057594037927936, !dbg !11
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %80 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %81 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 3
  %82 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %81, align 8
  %83 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %84 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 0
  store i8 addrspace(1)* %83, i8 addrspace(1)* addrspace(1)* %84
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %86 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 1
  store i8 addrspace(1)* %85, i8 addrspace(1)* addrspace(1)* %86
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %88 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 2
  store i8 addrspace(1)* %87, i8 addrspace(1)* addrspace(1)* %88
  %89 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %89
  %90 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80 to i8 addrspace(1)*
  %91 = getelementptr i8, i8 addrspace(1)* %90, i64 1297036692682702852
  store i8 addrspace(1)* %91, i8 addrspace(1)** %11
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %92, i8 addrspace(1)** %x
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %94 = zext i1 1 to i64
  %95 = or i64 %94, 72057594037927936
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95
  %97 = icmp ne i8 addrspace(1)* %93, %96
  store i1 %97, i1* %12
  %98 = load i1, i1* %12, !dbg !12
  %99 = zext i1 %98 to i64, !dbg !12
  %100 = or i64 %99, 72057594037927936, !dbg !12
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %103 = icmp ne i8 addrspace(1)* %102, null
  store i1 %103, i1* %14
  %104 = load i1, i1* %14, !dbg !13
  %105 = zext i1 %104 to i64, !dbg !13
  %106 = or i64 %105, 72057594037927936, !dbg !13
  %107 = getelementptr i8, i8 addrspace(1)* null, i64 %106, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %107), !dbg !13
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
