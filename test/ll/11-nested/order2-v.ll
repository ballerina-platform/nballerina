@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i64 @_bal_array_generic_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %a = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %d = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i1
  %25 = alloca i8 addrspace(1)*
  %f = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %g = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i1
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i1
  %31 = alloca i8 addrspace(1)*
  %h = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %i = alloca i8 addrspace(1)*
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i1
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i1
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i1
  %41 = alloca i8 addrspace(1)*
  %j = alloca i8 addrspace(1)*
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i8 addrspace(1)*
  %44 = alloca i8 addrspace(1)*
  %k = alloca i8 addrspace(1)*
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i8 addrspace(1)*
  %48 = alloca i1
  %49 = alloca i8 addrspace(1)*
  %50 = alloca i1
  %51 = alloca i8 addrspace(1)*
  %52 = alloca i8
  %53 = load i8*, i8** @_bal_stack_guard
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %350, label %55
55:
  %56 = zext i1 0 to i64, !dbg !8
  %57 = or i64 %56, 72057594037927936, !dbg !8
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %59 = zext i1 0 to i64, !dbg !9
  %60 = or i64 %59, 72057594037927936, !dbg !9
  %61 = getelementptr i8, i8 addrspace(1)* null, i64 %60, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %62 = zext i1 1 to i64, !dbg !10
  %63 = or i64 %62, 72057594037927936, !dbg !10
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %65 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %66 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %65, i64 0, i32 3
  %67 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %66, align 8
  %68 = bitcast i8* addrspace(1)* %67 to [0 x i64] addrspace(1)*
  %69 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %68, i64 0, i64 0
  store i64 1, i64 addrspace(1)* %69
  %70 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %65, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %70
  %71 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %65 to i8 addrspace(1)*
  %72 = getelementptr i8, i8 addrspace(1)* %71, i64 1297036692682702852
  store i8 addrspace(1)* %72, i8 addrspace(1)** %4
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %73, i8 addrspace(1)** %a
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %75 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %74, i8 addrspace(1)* null)
  %76 = icmp eq i64 %75, 0
  store i1 %76, i1* %5
  %77 = load i1, i1* %5, !dbg !11
  %78 = zext i1 %77 to i64, !dbg !11
  %79 = or i64 %78, 72057594037927936, !dbg !11
  %80 = getelementptr i8, i8 addrspace(1)* null, i64 %79, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !11
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %82 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* null, i8 addrspace(1)* %81)
  %83 = icmp eq i64 %82, 0
  store i1 %83, i1* %7
  %84 = load i1, i1* %7, !dbg !12
  %85 = zext i1 %84 to i64, !dbg !12
  %86 = or i64 %85, 72057594037927936, !dbg !12
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !12
  %88 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 1)
  %89 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %88, i64 0, i32 3
  %90 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %89, align 8
  %91 = bitcast i8* addrspace(1)* %90 to [0 x i64] addrspace(1)*
  %92 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %91, i64 0, i64 0
  store i64 1, i64 addrspace(1)* %92
  %93 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %88, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %93
  %94 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %88 to i8 addrspace(1)*
  %95 = getelementptr i8, i8 addrspace(1)* %94, i64 1297036692682702852
  store i8 addrspace(1)* %95, i8 addrspace(1)** %9
  %96 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 1)
  %97 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %96, i64 0, i32 3
  %98 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %97, align 8
  %99 = bitcast i8* addrspace(1)* %98 to [0 x i8 addrspace(1)*] addrspace(1)*
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %101 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %99, i64 0, i64 0
  store i8 addrspace(1)* %100, i8 addrspace(1)* addrspace(1)* %101
  %102 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %96, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %102
  %103 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %96 to i8 addrspace(1)*
  %104 = getelementptr i8, i8 addrspace(1)* %103, i64 1297036692682702852
  store i8 addrspace(1)* %104, i8 addrspace(1)** %10
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  store i8 addrspace(1)* %105, i8 addrspace(1)** %b
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %107 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %106, i8 addrspace(1)* null)
  %108 = icmp eq i64 %107, 0
  store i1 %108, i1* %11
  %109 = load i1, i1* %11, !dbg !13
  %110 = zext i1 %109 to i64, !dbg !13
  %111 = or i64 %110, 72057594037927936, !dbg !13
  %112 = getelementptr i8, i8 addrspace(1)* null, i64 %111, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %112), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %114 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* null, i8 addrspace(1)* %113)
  %115 = icmp eq i64 %114, 0
  store i1 %115, i1* %13
  %116 = load i1, i1* %13, !dbg !14
  %117 = zext i1 %116 to i64, !dbg !14
  %118 = or i64 %117, 72057594037927936, !dbg !14
  %119 = getelementptr i8, i8 addrspace(1)* null, i64 %118, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %119), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %120 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 1)
  %121 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %120, i64 0, i32 3
  %122 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %121, align 8
  %123 = bitcast i8* addrspace(1)* %122 to [0 x i8 addrspace(1)*] addrspace(1)*
  %124 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %123, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %124
  %125 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %120, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %125
  %126 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %120 to i8 addrspace(1)*
  %127 = getelementptr i8, i8 addrspace(1)* %126, i64 1297036692682702852
  store i8 addrspace(1)* %127, i8 addrspace(1)** %15
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  store i8 addrspace(1)* %128, i8 addrspace(1)** %c
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %131 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %129, i8 addrspace(1)* %130)
  %132 = icmp eq i64 %131, 0
  store i1 %132, i1* %16
  %133 = load i1, i1* %16, !dbg !15
  %134 = zext i1 %133 to i64, !dbg !15
  %135 = or i64 %134, 72057594037927936, !dbg !15
  %136 = getelementptr i8, i8 addrspace(1)* null, i64 %135, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %136), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !15
  %137 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root2, i64 1)
  %138 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %137, i64 0, i32 3
  %139 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %138, align 8
  %140 = bitcast i8* addrspace(1)* %139 to [0 x i8 addrspace(1)*] addrspace(1)*
  %141 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %142 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %140, i64 0, i64 0
  store i8 addrspace(1)* %141, i8 addrspace(1)* addrspace(1)* %142
  %143 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %137, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %143
  %144 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %137 to i8 addrspace(1)*
  %145 = getelementptr i8, i8 addrspace(1)* %144, i64 1297036692682702852
  store i8 addrspace(1)* %145, i8 addrspace(1)** %18
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  store i8 addrspace(1)* %146, i8 addrspace(1)** %d
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %148 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %147, i8 addrspace(1)* null)
  %149 = icmp eq i64 %148, 0
  store i1 %149, i1* %19
  %150 = load i1, i1* %19, !dbg !16
  %151 = zext i1 %150 to i64, !dbg !16
  %152 = or i64 %151, 72057594037927936, !dbg !16
  %153 = getelementptr i8, i8 addrspace(1)* null, i64 %152, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %153), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !16
  %154 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root2, i64 1)
  %155 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %154, i64 0, i32 3
  %156 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %155, align 8
  %157 = bitcast i8* addrspace(1)* %156 to [0 x i8 addrspace(1)*] addrspace(1)*
  %158 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %157, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %158
  %159 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %154, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %159
  %160 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %154 to i8 addrspace(1)*
  %161 = getelementptr i8, i8 addrspace(1)* %160, i64 1297036692682702852
  store i8 addrspace(1)* %161, i8 addrspace(1)** %21
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  store i8 addrspace(1)* %162, i8 addrspace(1)** %e
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %165 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %163, i8 addrspace(1)* %164)
  %166 = icmp eq i64 %165, 0
  store i1 %166, i1* %22
  %167 = load i1, i1* %22, !dbg !17
  %168 = zext i1 %167 to i64, !dbg !17
  %169 = or i64 %168, 72057594037927936, !dbg !17
  %170 = getelementptr i8, i8 addrspace(1)* null, i64 %169, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %170), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %173 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %171, i8 addrspace(1)* %172)
  %174 = icmp eq i64 %173, 0
  store i1 %174, i1* %24
  %175 = load i1, i1* %24, !dbg !18
  %176 = zext i1 %175 to i64, !dbg !18
  %177 = or i64 %176, 72057594037927936, !dbg !18
  %178 = getelementptr i8, i8 addrspace(1)* null, i64 %177, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %178), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  %179 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 3)
  %180 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %179, i64 0, i32 3
  %181 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %180, align 8
  %182 = bitcast i8* addrspace(1)* %181 to [0 x i64] addrspace(1)*
  %183 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %182, i64 0, i64 0
  store i64 1, i64 addrspace(1)* %183
  %184 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %182, i64 0, i64 1
  store i64 2, i64 addrspace(1)* %184
  %185 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %182, i64 0, i64 2
  store i64 3, i64 addrspace(1)* %185
  %186 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %179, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %186
  %187 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %179 to i8 addrspace(1)*
  %188 = getelementptr i8, i8 addrspace(1)* %187, i64 1297036692682702852
  store i8 addrspace(1)* %188, i8 addrspace(1)** %26
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  store i8 addrspace(1)* %189, i8 addrspace(1)** %f
  %190 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root3, i64 3)
  %191 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %190, i64 0, i32 3
  %192 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %191, align 8
  %193 = bitcast i8* addrspace(1)* %192 to [0 x i8 addrspace(1)*] addrspace(1)*
  %194 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %193, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %194
  %195 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %193, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %195
  %196 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %193, i64 0, i64 2
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %196
  %197 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %190, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %197
  %198 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %190 to i8 addrspace(1)*
  %199 = getelementptr i8, i8 addrspace(1)* %198, i64 1297036692682702852
  store i8 addrspace(1)* %199, i8 addrspace(1)** %27
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  store i8 addrspace(1)* %200, i8 addrspace(1)** %g
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %g
  %203 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %201, i8 addrspace(1)* %202)
  %204 = icmp eq i64 %203, 0
  store i1 %204, i1* %28
  %205 = load i1, i1* %28, !dbg !19
  %206 = zext i1 %205 to i64, !dbg !19
  %207 = or i64 %206, 72057594037927936, !dbg !19
  %208 = getelementptr i8, i8 addrspace(1)* null, i64 %207, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %208), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !19
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %g
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %211 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %209, i8 addrspace(1)* %210)
  %212 = icmp eq i64 %211, 0
  store i1 %212, i1* %30
  %213 = load i1, i1* %30, !dbg !20
  %214 = zext i1 %213 to i64, !dbg !20
  %215 = or i64 %214, 72057594037927936, !dbg !20
  %216 = getelementptr i8, i8 addrspace(1)* null, i64 %215, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %216), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !20
  %217 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root2, i64 3)
  %218 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %217, i64 0, i32 3
  %219 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %218, align 8
  %220 = bitcast i8* addrspace(1)* %219 to [0 x i8 addrspace(1)*] addrspace(1)*
  %221 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %222 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %220, i64 0, i64 0
  store i8 addrspace(1)* %221, i8 addrspace(1)* addrspace(1)* %222
  %223 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %224 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %220, i64 0, i64 1
  store i8 addrspace(1)* %223, i8 addrspace(1)* addrspace(1)* %224
  %225 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %226 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %220, i64 0, i64 2
  store i8 addrspace(1)* %225, i8 addrspace(1)* addrspace(1)* %226
  %227 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %217, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %227
  %228 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %217 to i8 addrspace(1)*
  %229 = getelementptr i8, i8 addrspace(1)* %228, i64 1297036692682702852
  store i8 addrspace(1)* %229, i8 addrspace(1)** %32
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %32
  store i8 addrspace(1)* %230, i8 addrspace(1)** %h
  %231 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root3, i64 4)
  %232 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %231, i64 0, i32 3
  %233 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %232, align 8
  %234 = bitcast i8* addrspace(1)* %233 to [0 x i8 addrspace(1)*] addrspace(1)*
  %235 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %234, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %235
  %236 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %234, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %236
  %237 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %234, i64 0, i64 2
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %237
  %238 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %234, i64 0, i64 3
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %238
  %239 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %231, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %239
  %240 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %231 to i8 addrspace(1)*
  %241 = getelementptr i8, i8 addrspace(1)* %240, i64 1297036692682702852
  store i8 addrspace(1)* %241, i8 addrspace(1)** %33
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  store i8 addrspace(1)* %242, i8 addrspace(1)** %i
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %h
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %i
  %245 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %243, i8 addrspace(1)* %244)
  %246 = icmp eq i64 %245, 2
  store i1 %246, i1* %34
  %247 = load i1, i1* %34, !dbg !21
  %248 = zext i1 %247 to i64, !dbg !21
  %249 = or i64 %248, 72057594037927936, !dbg !21
  %250 = getelementptr i8, i8 addrspace(1)* null, i64 %249, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %250), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !21
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %i
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %h
  %253 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %251, i8 addrspace(1)* %252)
  %254 = icmp eq i64 %253, 2
  store i1 %254, i1* %36
  %255 = load i1, i1* %36, !dbg !22
  %256 = zext i1 %255 to i64, !dbg !22
  %257 = or i64 %256, 72057594037927936, !dbg !22
  %258 = getelementptr i8, i8 addrspace(1)* null, i64 %257, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %258), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !22
  %259 = load i8 addrspace(1)*, i8 addrspace(1)** %g
  %260 = load i8 addrspace(1)*, i8 addrspace(1)** %i
  %261 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %259, i8 addrspace(1)* %260)
  %262 = icmp eq i64 %261, 0
  store i1 %262, i1* %38
  %263 = load i1, i1* %38, !dbg !23
  %264 = zext i1 %263 to i64, !dbg !23
  %265 = or i64 %264, 72057594037927936, !dbg !23
  %266 = getelementptr i8, i8 addrspace(1)* null, i64 %265, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %266), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !23
  %267 = load i8 addrspace(1)*, i8 addrspace(1)** %i
  %268 = load i8 addrspace(1)*, i8 addrspace(1)** %g
  %269 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %267, i8 addrspace(1)* %268)
  %270 = icmp eq i64 %269, 0
  store i1 %270, i1* %40
  %271 = load i1, i1* %40, !dbg !24
  %272 = zext i1 %271 to i64, !dbg !24
  %273 = or i64 %272, 72057594037927936, !dbg !24
  %274 = getelementptr i8, i8 addrspace(1)* null, i64 %273, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %274), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !24
  %275 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root3, i64 1)
  %276 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %275, i64 0, i32 3
  %277 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %276, align 8
  %278 = bitcast i8* addrspace(1)* %277 to [0 x i8 addrspace(1)*] addrspace(1)*
  %279 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %278, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %279
  %280 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %275, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %280
  %281 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %275 to i8 addrspace(1)*
  %282 = getelementptr i8, i8 addrspace(1)* %281, i64 1297036692682702852
  store i8 addrspace(1)* %282, i8 addrspace(1)** %42
  %283 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root3, i64 2)
  %284 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %283, i64 0, i32 3
  %285 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %284, align 8
  %286 = bitcast i8* addrspace(1)* %285 to [0 x i8 addrspace(1)*] addrspace(1)*
  %287 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %286, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %287
  %288 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %286, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %288
  %289 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %283, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %289
  %290 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %283 to i8 addrspace(1)*
  %291 = getelementptr i8, i8 addrspace(1)* %290, i64 1297036692682702852
  store i8 addrspace(1)* %291, i8 addrspace(1)** %43
  %292 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root4, i64 2)
  %293 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %292, i64 0, i32 3
  %294 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %293, align 8
  %295 = bitcast i8* addrspace(1)* %294 to [0 x i8 addrspace(1)*] addrspace(1)*
  %296 = load i8 addrspace(1)*, i8 addrspace(1)** %42
  %297 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %295, i64 0, i64 0
  store i8 addrspace(1)* %296, i8 addrspace(1)* addrspace(1)* %297
  %298 = load i8 addrspace(1)*, i8 addrspace(1)** %43
  %299 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %295, i64 0, i64 1
  store i8 addrspace(1)* %298, i8 addrspace(1)* addrspace(1)* %299
  %300 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %292, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %300
  %301 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %292 to i8 addrspace(1)*
  %302 = getelementptr i8, i8 addrspace(1)* %301, i64 1297036692682702852
  store i8 addrspace(1)* %302, i8 addrspace(1)** %44
  %303 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  store i8 addrspace(1)* %303, i8 addrspace(1)** %j
  %304 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root3, i64 1)
  %305 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %304, i64 0, i32 3
  %306 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %305, align 8
  %307 = bitcast i8* addrspace(1)* %306 to [0 x i8 addrspace(1)*] addrspace(1)*
  %308 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %307, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %308
  %309 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %304, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %309
  %310 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %304 to i8 addrspace(1)*
  %311 = getelementptr i8, i8 addrspace(1)* %310, i64 1297036692682702852
  store i8 addrspace(1)* %311, i8 addrspace(1)** %45
  %312 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root3, i64 3)
  %313 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %312, i64 0, i32 3
  %314 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %313, align 8
  %315 = bitcast i8* addrspace(1)* %314 to [0 x i8 addrspace(1)*] addrspace(1)*
  %316 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %315, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %316
  %317 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %315, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %317
  %318 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %315, i64 0, i64 2
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %318
  %319 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %312, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %319
  %320 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %312 to i8 addrspace(1)*
  %321 = getelementptr i8, i8 addrspace(1)* %320, i64 1297036692682702852
  store i8 addrspace(1)* %321, i8 addrspace(1)** %46
  %322 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root4, i64 2)
  %323 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %322, i64 0, i32 3
  %324 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %323, align 8
  %325 = bitcast i8* addrspace(1)* %324 to [0 x i8 addrspace(1)*] addrspace(1)*
  %326 = load i8 addrspace(1)*, i8 addrspace(1)** %45
  %327 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %325, i64 0, i64 0
  store i8 addrspace(1)* %326, i8 addrspace(1)* addrspace(1)* %327
  %328 = load i8 addrspace(1)*, i8 addrspace(1)** %46
  %329 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %325, i64 0, i64 1
  store i8 addrspace(1)* %328, i8 addrspace(1)* addrspace(1)* %329
  %330 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %322, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %330
  %331 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %322 to i8 addrspace(1)*
  %332 = getelementptr i8, i8 addrspace(1)* %331, i64 1297036692682702852
  store i8 addrspace(1)* %332, i8 addrspace(1)** %47
  %333 = load i8 addrspace(1)*, i8 addrspace(1)** %47
  store i8 addrspace(1)* %333, i8 addrspace(1)** %k
  %334 = load i8 addrspace(1)*, i8 addrspace(1)** %j
  %335 = load i8 addrspace(1)*, i8 addrspace(1)** %k
  %336 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %334, i8 addrspace(1)* %335)
  %337 = icmp eq i64 %336, 0
  store i1 %337, i1* %48
  %338 = load i1, i1* %48, !dbg !25
  %339 = zext i1 %338 to i64, !dbg !25
  %340 = or i64 %339, 72057594037927936, !dbg !25
  %341 = getelementptr i8, i8 addrspace(1)* null, i64 %340, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %341), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %49, !dbg !25
  %342 = load i8 addrspace(1)*, i8 addrspace(1)** %k
  %343 = load i8 addrspace(1)*, i8 addrspace(1)** %j
  %344 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %342, i8 addrspace(1)* %343)
  %345 = icmp eq i64 %344, 0
  store i1 %345, i1* %50
  %346 = load i1, i1* %50, !dbg !26
  %347 = zext i1 %346 to i64, !dbg !26
  %348 = or i64 %347, 72057594037927936, !dbg !26
  %349 = getelementptr i8, i8 addrspace(1)* null, i64 %348, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %349), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %51, !dbg !26
  ret void
350:
  %351 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %351)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/order2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 5, column: 4, scope: !5)
!10 = !DILocation(line: 6, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 4, scope: !5)
!12 = !DILocation(line: 10, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
!14 = !DILocation(line: 14, column: 4, scope: !5)
!15 = !DILocation(line: 17, column: 4, scope: !5)
!16 = !DILocation(line: 20, column: 4, scope: !5)
!17 = !DILocation(line: 23, column: 4, scope: !5)
!18 = !DILocation(line: 24, column: 4, scope: !5)
!19 = !DILocation(line: 28, column: 4, scope: !5)
!20 = !DILocation(line: 29, column: 4, scope: !5)
!21 = !DILocation(line: 33, column: 4, scope: !5)
!22 = !DILocation(line: 34, column: 4, scope: !5)
!23 = !DILocation(line: 36, column: 4, scope: !5)
!24 = !DILocation(line: 37, column: 4, scope: !5)
!25 = !DILocation(line: 41, column: 4, scope: !5)
!26 = !DILocation(line: 42, column: 4, scope: !5)
