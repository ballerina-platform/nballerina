@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
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
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8
  %22 = load i8*, i8** @_bal_stack_guard
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %157, label %24
24:
  %25 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %26 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25 to i8 addrspace(1)*
  %27 = getelementptr i8, i8 addrspace(1)* %26, i64 1297036692682702852
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  %29 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %28, i64 -5), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %30 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %31 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 3
  %32 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %31, align 8
  %33 = zext i1 1 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34
  %36 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %32, i64 0, i64 0
  store i8 addrspace(1)* %35, i8 addrspace(1)* addrspace(1)* %36
  %37 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %37
  %38 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30 to i8 addrspace(1)*
  %39 = getelementptr i8, i8 addrspace(1)* %38, i64 1297036692682702852
  store i8 addrspace(1)* %39, i8 addrspace(1)** %3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  %41 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %40, i64 -5), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %42 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %43 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 3
  %44 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %43, align 8
  %45 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %44, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %45
  %46 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %46
  %47 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42 to i8 addrspace(1)*
  %48 = getelementptr i8, i8 addrspace(1)* %47, i64 1297036692682702852
  store i8 addrspace(1)* %48, i8 addrspace(1)** %5
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 -5), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %51 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %52 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 3
  %53 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %52, align 8
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -17)
  %55 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %53, i64 0, i64 0
  store i8 addrspace(1)* %54, i8 addrspace(1)* addrspace(1)* %55
  %56 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %56
  %57 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51 to i8 addrspace(1)*
  %58 = getelementptr i8, i8 addrspace(1)* %57, i64 1297036692682702852
  store i8 addrspace(1)* %58, i8 addrspace(1)** %7
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  %60 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %59, i64 -5), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %61 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %62 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 3
  %63 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %62, align 8
  %64 = zext i1 0 to i64
  %65 = or i64 %64, 72057594037927936
  %66 = getelementptr i8, i8 addrspace(1)* null, i64 %65
  %67 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 0
  store i8 addrspace(1)* %66, i8 addrspace(1)* addrspace(1)* %67
  %68 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %68
  %69 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 43)
  %70 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 2
  store i8 addrspace(1)* %69, i8 addrspace(1)* addrspace(1)* %70
  %71 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %71
  %72 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61 to i8 addrspace(1)*
  %73 = getelementptr i8, i8 addrspace(1)* %72, i64 1297036692682702852
  store i8 addrspace(1)* %73, i8 addrspace(1)** %9
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  %75 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %74, i64 -5), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %75), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %76 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %77 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %76 to i8 addrspace(1)*
  %78 = getelementptr i8, i8 addrspace(1)* %77, i64 1297036692682702852
  store i8 addrspace(1)* %78, i8 addrspace(1)** %11
  %79 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %80 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 3
  %81 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %80, align 8
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %83 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %82, i64 -5)
  %84 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %81, i64 0, i64 0
  store i8 addrspace(1)* %83, i8 addrspace(1)* addrspace(1)* %84
  %85 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %85
  %86 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79 to i8 addrspace(1)*
  %87 = getelementptr i8, i8 addrspace(1)* %86, i64 1297036692682702852
  store i8 addrspace(1)* %87, i8 addrspace(1)** %12
  %88 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %89 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88, i64 0, i32 3
  %90 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %89, align 8
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %92 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %91, i64 -5)
  %93 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %90, i64 0, i64 0
  store i8 addrspace(1)* %92, i8 addrspace(1)* addrspace(1)* %93
  %94 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %94
  %95 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88 to i8 addrspace(1)*
  %96 = getelementptr i8, i8 addrspace(1)* %95, i64 1297036692682702852
  store i8 addrspace(1)* %96, i8 addrspace(1)** %13
  %97 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %98 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97, i64 0, i32 3
  %99 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %98, align 8
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %101 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %100, i64 -5)
  %102 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %99, i64 0, i64 0
  store i8 addrspace(1)* %101, i8 addrspace(1)* addrspace(1)* %102
  %103 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %103
  %104 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97 to i8 addrspace(1)*
  %105 = getelementptr i8, i8 addrspace(1)* %104, i64 1297036692682702852
  store i8 addrspace(1)* %105, i8 addrspace(1)** %14
  %106 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %107 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 3
  %108 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %107, align 8
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %110 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %109, i64 -5)
  %111 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %108, i64 0, i64 0
  store i8 addrspace(1)* %110, i8 addrspace(1)* addrspace(1)* %111
  %112 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %112
  %113 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106 to i8 addrspace(1)*
  %114 = getelementptr i8, i8 addrspace(1)* %113, i64 1297036692682702852
  store i8 addrspace(1)* %114, i8 addrspace(1)** %15
  %115 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 1)
  %116 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %115, i64 0, i32 3
  %117 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %116, align 8
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %119 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %118, i64 -5)
  %120 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 0
  store i8 addrspace(1)* %119, i8 addrspace(1)* addrspace(1)* %120
  %121 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %115, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %121
  %122 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %115 to i8 addrspace(1)*
  %123 = getelementptr i8, i8 addrspace(1)* %122, i64 1297036692682702852
  store i8 addrspace(1)* %123, i8 addrspace(1)** %16
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !13
  %125 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %124, i64 -5), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %125), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !13
  %126 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %127 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %126, i64 0, i32 3
  %128 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %127, align 8
  %129 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %130 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %128, i64 0, i64 0
  store i8 addrspace(1)* %129, i8 addrspace(1)* addrspace(1)* %130
  %131 = zext i1 1 to i64
  %132 = or i64 %131, 72057594037927936
  %133 = getelementptr i8, i8 addrspace(1)* null, i64 %132
  %134 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %128, i64 0, i64 1
  store i8 addrspace(1)* %133, i8 addrspace(1)* addrspace(1)* %134
  %135 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  %136 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %128, i64 0, i64 2
  store i8 addrspace(1)* %135, i8 addrspace(1)* addrspace(1)* %136
  %137 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %126, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %137
  %138 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %126 to i8 addrspace(1)*
  %139 = getelementptr i8, i8 addrspace(1)* %138, i64 1297036692682702852
  store i8 addrspace(1)* %139, i8 addrspace(1)** %18
  %140 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %141 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 3
  %142 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %141, align 8
  %143 = zext i1 0 to i64
  %144 = or i64 %143, 72057594037927936
  %145 = getelementptr i8, i8 addrspace(1)* null, i64 %144
  %146 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 0
  store i8 addrspace(1)* %145, i8 addrspace(1)* addrspace(1)* %146
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %148 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %147, i64 -5)
  %149 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 1
  store i8 addrspace(1)* %148, i8 addrspace(1)* addrspace(1)* %149
  %150 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %151 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %142, i64 0, i64 2
  store i8 addrspace(1)* %150, i8 addrspace(1)* addrspace(1)* %151
  %152 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %152
  %153 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %140 to i8 addrspace(1)*
  %154 = getelementptr i8, i8 addrspace(1)* %153, i64 1297036692682702852
  store i8 addrspace(1)* %154, i8 addrspace(1)** %19
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !14
  %156 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %155, i64 -5), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %156), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !14
  ret void
157:
  %158 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %158)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 4, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
!14 = !DILocation(line: 11, column: 4, scope: !5)
