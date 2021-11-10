@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"Wednesday\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Thursday\00\00\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Saturday\00\00\00\00"}, align 8
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
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
  br i1 %13, label %56, label %14
14:
  %15 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 7)
  %16 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 3
  %17 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %16, align 8
  %18 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %17, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857938253), i8 addrspace(1)* addrspace(1)* %18
  %19 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %17, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3060584505835615572), i8 addrspace(1)* addrspace(1)* %19
  %20 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %17, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %20
  %21 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %17, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str3 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %21
  %22 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %17, i64 0, i64 4
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857611334), i8 addrspace(1)* addrspace(1)* %22
  %23 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %17, i64 0, i64 5
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* addrspace(1)* %23
  %24 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %17, i64 0, i64 6
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857939795), i8 addrspace(1)* addrspace(1)* %24
  %25 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15, i64 0, i32 1
  store i64 7, i64 addrspace(1)* %25
  %26 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %15 to i8 addrspace(1)*
  %27 = getelementptr i8, i8 addrspace(1)* %26, i64 1297036692682702852
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %28, i8 addrspace(1)** %days
  %29 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root1, i64 0)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %2
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %30, i8 addrspace(1)** %dayNumber
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %days, !dbg !8
  %32 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %31, i64 -5), !dbg !8
  %33 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %32), !dbg !8
  store i64 %33, i64* %3, !dbg !8
  store i64 0, i64* %i
  br label %34
34:
  %35 = load i64, i64* %i
  %36 = load i64, i64* %3
  %37 = icmp slt i64 %35, %36
  store i1 %37, i1* %4
  %38 = load i1, i1* %4
  br i1 %38, label %43, label %39
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %41 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %40, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098328527857939795))
  store i8 addrspace(1)* %41, i8 addrspace(1)** %8
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %8, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !9
  ret void
43:
  %44 = load i64, i64* %i
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %46 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %45, i64 72057594037927928)
  %47 = bitcast i8 addrspace(1)* %46 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %48 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 1
  %49 = load i64, i64 addrspace(1)* %48, align 8
  %50 = icmp ult i64 %44, %49
  br i1 %50, label %58, label %71
51:
  %52 = load i64, i64* %i
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %i
  br label %34
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %55)
  unreachable
56:
  %57 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %57)
  unreachable
58:
  %59 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 0
  %60 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %59, align 8
  %61 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %60, i64 0, i32 1
  %62 = load i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i8 addrspace(1)*(i8 addrspace(1)*, i64)** %61, align 8
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %days
  %64 = load i64, i64* %i
  %65 = call i8 addrspace(1)* %62(i8 addrspace(1)* %63, i64 %64)
  store i8 addrspace(1)* %65, i8 addrspace(1)** %5
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %67 = addrspacecast i8 addrspace(1)* %66 to i8*
  %68 = ptrtoint i8* %67 to i64
  %69 = and i64 %68, 2233785415175766016
  %70 = icmp eq i64 %69, 720575940379279360
  br i1 %70, label %73, label %77
71:
  %72 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053), !dbg !7
  store i8 addrspace(1)* %72, i8 addrspace(1)** %10
  br label %54
73:
  store i8 addrspace(1)* %66, i8 addrspace(1)** %6
  %74 = load i64, i64* %i
  %75 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %74, i64 1)
  %76 = extractvalue {i64, i1} %75, 1
  br i1 %76, label %87, label %79
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051), !dbg !7
  store i8 addrspace(1)* %78, i8 addrspace(1)** %10
  br label %54
79:
  %80 = extractvalue {i64, i1} %75, 0
  store i64 %80, i64* %7
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %dayNumber
  %83 = load i64, i64* %7
  %84 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %83)
  %85 = call i64 @_bal_mapping_set(i8 addrspace(1)* %82, i8 addrspace(1)* %81, i8 addrspace(1)* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %89, label %90
87:
  %88 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !7
  store i8 addrspace(1)* %88, i8 addrspace(1)** %10
  br label %54
89:
  br label %51
90:
  %91 = or i64 %85, 2048
  %92 = call i8 addrspace(1)* @_bal_panic_construct(i64 %91), !dbg !7
  store i8 addrspace(1)* %92, i8 addrspace(1)** %10
  br label %54
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 38, scope: !5)
!9 = !DILocation(line: 10, column: 4, scope: !5)
