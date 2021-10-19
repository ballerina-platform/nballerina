@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"Wednesday\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Thursday\00\00\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Saturday\00\00\00\00"}, align 8
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %days = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %dayNumber = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %60, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_alloc(i64 56)
  %16 = bitcast i8 addrspace(1)* %15 to [7 x i8 addrspace(1)*] addrspace(1)*
  %17 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857938253), i8 addrspace(1)* addrspace(1)* %17
  %18 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3060584505835615572), i8 addrspace(1)* addrspace(1)* %18
  %19 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %19
  %20 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str3 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %20
  %21 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 4
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857611334), i8 addrspace(1)* addrspace(1)* %21
  %22 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 5
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %22
  %23 = getelementptr inbounds [7 x i8 addrspace(1)*], [7 x i8 addrspace(1)*] addrspace(1)* %16, i64 0, i64 6
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857939795), i8 addrspace(1)* addrspace(1)* %23
  %24 = bitcast [7 x i8 addrspace(1)*] addrspace(1)* %16 to [0 x i8 addrspace(1)*] addrspace(1)*
  %25 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  store i64 7, i64 addrspace(1)* %28
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  store i64 7, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %24, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %30
  %31 = getelementptr i8, i8 addrspace(1)* %25, i64 1297036692682702852
  store i8 addrspace(1)* %31, i8 addrspace(1)** %1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %32, i8 addrspace(1)** %days
  %33 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %34, i8 addrspace(1)** %dayNumber
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %days, !dbg !8
  %36 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %35, i64 -5), !dbg !8
  %37 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %36), !dbg !8
  store i64 %37, i64* %3, !dbg !8
  store i64 0, i64* %i
  br label %38
38:
  %39 = load i64, i64* %i
  %40 = load i64, i64* %3
  %41 = icmp slt i64 %39, %40
  store i1 %41, i1* %4
  %42 = load i1, i1* %4
  br i1 %42, label %47, label %43
43:
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %45 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %44, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857939795))
  store i8 addrspace(1)* %45, i8 addrspace(1)** %8
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %8, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  ret void
47:
  %48 = load i64, i64* %i
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 72057594037927928)
  %51 = bitcast i8 addrspace(1)* %50 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %52 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 1
  %53 = load i64, i64 addrspace(1)* %52, align 8
  %54 = icmp ult i64 %48, %53
  br i1 %54, label %62, label %72
55:
  %56 = load i64, i64* %i
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %i
  br label %38
58:
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %59)
  unreachable
60:
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %61)
  unreachable
62:
  %63 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 3
  %64 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %63, align 8
  %65 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %64, i64 0, i64 %48
  %66 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %65, align 8
  store i8 addrspace(1)* %66, i8 addrspace(1)** %5
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %68 = addrspacecast i8 addrspace(1)* %67 to i8*
  %69 = ptrtoint i8* %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = icmp eq i64 %70, 720575940379279360
  br i1 %71, label %74, label %78
72:
  %73 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %73, i8 addrspace(1)** %10
  br label %58
74:
  store i8 addrspace(1)* %67, i8 addrspace(1)** %6
  %75 = load i64, i64* %i
  %76 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %75, i64 1)
  %77 = extractvalue {i64, i1} %76, 1
  br i1 %77, label %88, label %80
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051), !dbg !7
  store i8 addrspace(1)* %79, i8 addrspace(1)** %10
  br label %58
80:
  %81 = extractvalue {i64, i1} %76, 0
  store i64 %81, i64* %7
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %84 = load i64, i64* %7
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %84)
  %86 = call i64 @_bal_mapping_set(i8 addrspace(1)* %83, i8 addrspace(1)* %82, i8 addrspace(1)* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %90, label %91
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !7
  store i8 addrspace(1)* %89, i8 addrspace(1)** %10
  br label %58
90:
  br label %55
91:
  %92 = or i64 %86, 2048
  %93 = call i8 addrspace(1)* @_bal_panic_construct(i64 %92), !dbg !7
  store i8 addrspace(1)* %93, i8 addrspace(1)** %10
  br label %58
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 31, scope: !5)
!9 = !DILocation(line: 10, column: 4, scope: !5)
