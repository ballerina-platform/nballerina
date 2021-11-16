@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %v4 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %126, label %22
22:
  %23 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %24 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 3
  %25 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %24, align 8
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %27 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %25, i64 0, i64 0
  store i8 addrspace(1)* %26, i8 addrspace(1)* addrspace(1)* %27
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %29 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %25, i64 0, i64 1
  store i8 addrspace(1)* %28, i8 addrspace(1)* addrspace(1)* %29
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %31 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %25, i64 0, i64 2
  store i8 addrspace(1)* %30, i8 addrspace(1)* addrspace(1)* %31
  %32 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %32
  %33 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23 to i8 addrspace(1)*
  %34 = getelementptr i8, i8 addrspace(1)* %33, i64 1297036692682702852
  store i8 addrspace(1)* %34, i8 addrspace(1)** %1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %35, i8 addrspace(1)** %v1
  %36 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %37 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %36, i64 0, i32 3
  %38 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %37, align 8
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %40 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 0
  store i8 addrspace(1)* %39, i8 addrspace(1)* addrspace(1)* %40
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %42 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 1
  store i8 addrspace(1)* %41, i8 addrspace(1)* addrspace(1)* %42
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %44 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 2
  store i8 addrspace(1)* %43, i8 addrspace(1)* addrspace(1)* %44
  %45 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %36, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %45
  %46 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %36 to i8 addrspace(1)*
  %47 = getelementptr i8, i8 addrspace(1)* %46, i64 1297036692682702852
  store i8 addrspace(1)* %47, i8 addrspace(1)** %2
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %48, i8 addrspace(1)** %v2
  %49 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %50 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 3
  %51 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %50, align 8
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %53 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 0
  store i8 addrspace(1)* %52, i8 addrspace(1)* addrspace(1)* %53
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %55 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 1
  store i8 addrspace(1)* %54, i8 addrspace(1)* addrspace(1)* %55
  %56 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %57 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 2
  store i8 addrspace(1)* %56, i8 addrspace(1)* addrspace(1)* %57
  %58 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %58
  %59 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49 to i8 addrspace(1)*
  %60 = getelementptr i8, i8 addrspace(1)* %59, i64 1297036692682702852
  store i8 addrspace(1)* %60, i8 addrspace(1)** %3
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %61, i8 addrspace(1)** %v3
  %62 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 4)
  %63 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 3
  %64 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %63, align 8
  %65 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %66 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %64, i64 0, i64 0
  store i8 addrspace(1)* %65, i8 addrspace(1)* addrspace(1)* %66
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %68 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %64, i64 0, i64 1
  store i8 addrspace(1)* %67, i8 addrspace(1)* addrspace(1)* %68
  %69 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %70 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %64, i64 0, i64 2
  store i8 addrspace(1)* %69, i8 addrspace(1)* addrspace(1)* %70
  %71 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %72 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %64, i64 0, i64 3
  store i8 addrspace(1)* %71, i8 addrspace(1)* addrspace(1)* %72
  %73 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %73
  %74 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %62 to i8 addrspace(1)*
  %75 = getelementptr i8, i8 addrspace(1)* %74, i64 1297036692682702852
  store i8 addrspace(1)* %75, i8 addrspace(1)** %4
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %76, i8 addrspace(1)** %v4
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %79 = call i1 @_bal_eq(i8 addrspace(1)* %77, i8 addrspace(1)* %78)
  store i1 %79, i1* %5
  %80 = load i1, i1* %5, !dbg !8
  %81 = zext i1 %80 to i64, !dbg !8
  %82 = or i64 %81, 72057594037927936, !dbg !8
  %83 = getelementptr i8, i8 addrspace(1)* null, i64 %82, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %83), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !8
  %84 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %86 = call i1 @_bal_eq(i8 addrspace(1)* %84, i8 addrspace(1)* %85)
  store i1 %86, i1* %7
  %87 = load i1, i1* %7, !dbg !9
  %88 = zext i1 %87 to i64, !dbg !9
  %89 = or i64 %88, 72057594037927936, !dbg !9
  %90 = getelementptr i8, i8 addrspace(1)* null, i64 %89, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %90), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !9
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %v3
  %93 = call i1 @_bal_eq(i8 addrspace(1)* %91, i8 addrspace(1)* %92)
  store i1 %93, i1* %9
  %94 = load i1, i1* %9, !dbg !10
  %95 = zext i1 %94 to i64, !dbg !10
  %96 = or i64 %95, 72057594037927936, !dbg !10
  %97 = getelementptr i8, i8 addrspace(1)* null, i64 %96, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %97), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !10
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %100 = call i1 @_bal_eq(i8 addrspace(1)* %98, i8 addrspace(1)* %99)
  store i1 %100, i1* %11
  %101 = load i1, i1* %11, !dbg !11
  %102 = zext i1 %101 to i64, !dbg !11
  %103 = or i64 %102, 72057594037927936, !dbg !11
  %104 = getelementptr i8, i8 addrspace(1)* null, i64 %103, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %104), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !11
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %v4
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %107 = call i1 @_bal_eq(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  store i1 %107, i1* %13
  %108 = load i1, i1* %13, !dbg !12
  %109 = zext i1 %108 to i64, !dbg !12
  %110 = or i64 %109, 72057594037927936, !dbg !12
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !12
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %114 = call i1 @_bal_exact_eq(i8 addrspace(1)* %112, i8 addrspace(1)* %113)
  store i1 %114, i1* %15
  %115 = load i1, i1* %15, !dbg !13
  %116 = zext i1 %115 to i64, !dbg !13
  %117 = or i64 %116, 72057594037927936, !dbg !13
  %118 = getelementptr i8, i8 addrspace(1)* null, i64 %117, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %118), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !13
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %121 = call i1 @_bal_exact_eq(i8 addrspace(1)* %119, i8 addrspace(1)* %120)
  store i1 %121, i1* %17
  %122 = load i1, i1* %17, !dbg !14
  %123 = zext i1 %122 to i64, !dbg !14
  %124 = or i64 %123, 72057594037927936, !dbg !14
  %125 = getelementptr i8, i8 addrspace(1)* null, i64 %124, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %125), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !14
  ret void
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %127)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 10, column: 4, scope: !5)
!9 = !DILocation(line: 11, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 13, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 15, column: 4, scope: !5)
!14 = !DILocation(line: 16, column: 4, scope: !5)
