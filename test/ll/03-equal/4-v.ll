@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
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
  %20 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %21 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %20, i64 0, i32 3
  %22 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %21, align 8
  %23 = bitcast i8* addrspace(1)* %22 to [0 x i8 addrspace(1)*] addrspace(1)*
  %24 = zext i1 1 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25
  %27 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %23, i64 0, i64 0
  store i8 addrspace(1)* %26, i8 addrspace(1)* addrspace(1)* %27
  %28 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %20, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %28
  %29 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %20 to i8 addrspace(1)*
  %30 = getelementptr i8, i8 addrspace(1)* %29, i64 1297036692682702852
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %1
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
  %63 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %64 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %63 to i8 addrspace(1)*
  %65 = getelementptr i8, i8 addrspace(1)* %64, i64 1297036692682702852
  store i8 addrspace(1)* %65, i8 addrspace(1)** %8
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %66, i8 addrspace(1)** %x
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %68 = addrspacecast i8 addrspace(1)* %67 to i8*
  %69 = ptrtoint i8* %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = icmp eq i64 %70, 504403158265495552
  br i1 %71, label %72, label %75
72:
  %73 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %67)
  %74 = icmp ne i64 %73, 1
  store i1 %74, i1* %9
  br label %76
75:
  store i1 1, i1* %9
  br label %76
76:
  %77 = load i1, i1* %9, !dbg !11
  %78 = zext i1 %77 to i64, !dbg !11
  %79 = or i64 %78, 72057594037927936, !dbg !11
  %80 = getelementptr i8, i8 addrspace(1)* null, i64 %79, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %81 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 3)
  %82 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %81, i64 0, i32 3
  %83 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %82, align 8
  %84 = bitcast i8* addrspace(1)* %83 to [0 x i8 addrspace(1)*] addrspace(1)*
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %86 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %84, i64 0, i64 0
  store i8 addrspace(1)* %85, i8 addrspace(1)* addrspace(1)* %86
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %88 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %84, i64 0, i64 1
  store i8 addrspace(1)* %87, i8 addrspace(1)* addrspace(1)* %88
  %89 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %90 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %84, i64 0, i64 2
  store i8 addrspace(1)* %89, i8 addrspace(1)* addrspace(1)* %90
  %91 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %81, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %91
  %92 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %81 to i8 addrspace(1)*
  %93 = getelementptr i8, i8 addrspace(1)* %92, i64 1297036692682702852
  store i8 addrspace(1)* %93, i8 addrspace(1)** %11
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %94, i8 addrspace(1)** %x
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %96 = zext i1 1 to i64
  %97 = or i64 %96, 72057594037927936
  %98 = getelementptr i8, i8 addrspace(1)* null, i64 %97
  %99 = icmp ne i8 addrspace(1)* %95, %98
  store i1 %99, i1* %12
  %100 = load i1, i1* %12, !dbg !12
  %101 = zext i1 %100 to i64, !dbg !12
  %102 = or i64 %101, 72057594037927936, !dbg !12
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %105 = icmp ne i8 addrspace(1)* %104, null
  store i1 %105, i1* %14
  %106 = load i1, i1* %14, !dbg !13
  %107 = zext i1 %106 to i64, !dbg !13
  %108 = or i64 %107, 72057594037927936, !dbg !13
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %109), !dbg !13
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
