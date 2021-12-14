@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i64 @_bal_array_generic_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i1
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i1
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i1
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i1
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i1
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i1
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i1
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i1
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i1
  %43 = alloca i8 addrspace(1)*
  %44 = alloca i8
  %45 = load i8*, i8** @_bal_stack_guard
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %241, label %47
47:
  %48 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 3)
  %49 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %48, i64 0, i32 3
  %50 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %49, align 8
  %51 = bitcast i8* addrspace(1)* %50 to [0 x i8 addrspace(1)*] addrspace(1)*
  %52 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %52
  %53 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %53
  %54 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801), i8 addrspace(1)* addrspace(1)* %54
  %55 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %48, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %55
  %56 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %48 to i8 addrspace(1)*
  %57 = getelementptr i8, i8 addrspace(1)* %56, i64 1297036692682702852
  store i8 addrspace(1)* %57, i8 addrspace(1)** %1
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %58, i8 addrspace(1)** %a
  %59 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 3)
  %60 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %59, i64 0, i32 3
  %61 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %60, align 8
  %62 = bitcast i8* addrspace(1)* %61 to [0 x i8 addrspace(1)*] addrspace(1)*
  %63 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %62, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %63
  %64 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %62, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %64
  %65 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %62, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541020168801), i8 addrspace(1)* addrspace(1)* %65
  %66 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %59, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %66
  %67 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %59 to i8 addrspace(1)*
  %68 = getelementptr i8, i8 addrspace(1)* %67, i64 1297036692682702852
  store i8 addrspace(1)* %68, i8 addrspace(1)** %2
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %69, i8 addrspace(1)** %b
  %70 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 3)
  %71 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %70, i64 0, i32 3
  %72 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %71, align 8
  %73 = bitcast i8* addrspace(1)* %72 to [0 x i8 addrspace(1)*] addrspace(1)*
  %74 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %73, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %74
  %75 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %73, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %75
  %76 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %73, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622150520), i8 addrspace(1)* addrspace(1)* %76
  %77 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %70, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %77
  %78 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %70 to i8 addrspace(1)*
  %79 = getelementptr i8, i8 addrspace(1)* %78, i64 1297036692682702852
  store i8 addrspace(1)* %79, i8 addrspace(1)** %3
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %80, i8 addrspace(1)** %c
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %83 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %81, i8 addrspace(1)* %82)
  %84 = icmp eq i64 %83, 0
  store i1 %84, i1* %4
  %85 = load i1, i1* %4, !dbg !8
  %86 = zext i1 %85 to i64, !dbg !8
  %87 = or i64 %86, 72057594037927936, !dbg !8
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %88), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %91 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %89, i8 addrspace(1)* %90)
  %92 = icmp ule i64 %91, 1
  store i1 %92, i1* %6
  %93 = load i1, i1* %6, !dbg !9
  %94 = zext i1 %93 to i64, !dbg !9
  %95 = or i64 %94, 72057594037927936, !dbg !9
  %96 = getelementptr i8, i8 addrspace(1)* null, i64 %95, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %99 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %97, i8 addrspace(1)* %98)
  %100 = icmp eq i64 %99, 2
  store i1 %100, i1* %8
  %101 = load i1, i1* %8, !dbg !10
  %102 = zext i1 %101 to i64, !dbg !10
  %103 = or i64 %102, 72057594037927936, !dbg !10
  %104 = getelementptr i8, i8 addrspace(1)* null, i64 %103, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %104), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !10
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %107 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  %108 = icmp sge i64 %107, 1
  store i1 %108, i1* %10
  %109 = load i1, i1* %10, !dbg !11
  %110 = zext i1 %109 to i64, !dbg !11
  %111 = or i64 %110, 72057594037927936, !dbg !11
  %112 = getelementptr i8, i8 addrspace(1)* null, i64 %111, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %112), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !11
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %115 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %113, i8 addrspace(1)* %114)
  %116 = icmp eq i64 %115, 0
  store i1 %116, i1* %12
  %117 = load i1, i1* %12, !dbg !12
  %118 = zext i1 %117 to i64, !dbg !12
  %119 = or i64 %118, 72057594037927936, !dbg !12
  %120 = getelementptr i8, i8 addrspace(1)* null, i64 %119, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %120), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !12
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %123 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %121, i8 addrspace(1)* %122)
  %124 = icmp ule i64 %123, 1
  store i1 %124, i1* %14
  %125 = load i1, i1* %14, !dbg !13
  %126 = zext i1 %125 to i64, !dbg !13
  %127 = or i64 %126, 72057594037927936, !dbg !13
  %128 = getelementptr i8, i8 addrspace(1)* null, i64 %127, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %128), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !13
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %131 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %129, i8 addrspace(1)* %130)
  %132 = icmp eq i64 %131, 2
  store i1 %132, i1* %16
  %133 = load i1, i1* %16, !dbg !14
  %134 = zext i1 %133 to i64, !dbg !14
  %135 = or i64 %134, 72057594037927936, !dbg !14
  %136 = getelementptr i8, i8 addrspace(1)* null, i64 %135, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %136), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !14
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %139 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %137, i8 addrspace(1)* %138)
  %140 = icmp sge i64 %139, 1
  store i1 %140, i1* %18
  %141 = load i1, i1* %18, !dbg !15
  %142 = zext i1 %141 to i64, !dbg !15
  %143 = or i64 %142, 72057594037927936, !dbg !15
  %144 = getelementptr i8, i8 addrspace(1)* null, i64 %143, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %144), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !15
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %147 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %145, i8 addrspace(1)* %146)
  %148 = icmp eq i64 %147, 0
  store i1 %148, i1* %20
  %149 = load i1, i1* %20, !dbg !16
  %150 = zext i1 %149 to i64, !dbg !16
  %151 = or i64 %150, 72057594037927936, !dbg !16
  %152 = getelementptr i8, i8 addrspace(1)* null, i64 %151, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %152), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !16
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %155 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %153, i8 addrspace(1)* %154)
  %156 = icmp ule i64 %155, 1
  store i1 %156, i1* %22
  %157 = load i1, i1* %22, !dbg !17
  %158 = zext i1 %157 to i64, !dbg !17
  %159 = or i64 %158, 72057594037927936, !dbg !17
  %160 = getelementptr i8, i8 addrspace(1)* null, i64 %159, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %160), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !17
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %163 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %161, i8 addrspace(1)* %162)
  %164 = icmp eq i64 %163, 2
  store i1 %164, i1* %24
  %165 = load i1, i1* %24, !dbg !18
  %166 = zext i1 %165 to i64, !dbg !18
  %167 = or i64 %166, 72057594037927936, !dbg !18
  %168 = getelementptr i8, i8 addrspace(1)* null, i64 %167, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %168), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !18
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %171 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %169, i8 addrspace(1)* %170)
  %172 = icmp sge i64 %171, 1
  store i1 %172, i1* %26
  %173 = load i1, i1* %26, !dbg !19
  %174 = zext i1 %173 to i64, !dbg !19
  %175 = or i64 %174, 72057594037927936, !dbg !19
  %176 = getelementptr i8, i8 addrspace(1)* null, i64 %175, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %176), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !19
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %179 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %177, i8 addrspace(1)* %178)
  %180 = icmp eq i64 %179, 0
  store i1 %180, i1* %28
  %181 = load i1, i1* %28, !dbg !20
  %182 = zext i1 %181 to i64, !dbg !20
  %183 = or i64 %182, 72057594037927936, !dbg !20
  %184 = getelementptr i8, i8 addrspace(1)* null, i64 %183, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %184), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !20
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %187 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %185, i8 addrspace(1)* %186)
  %188 = icmp ule i64 %187, 1
  store i1 %188, i1* %30
  %189 = load i1, i1* %30, !dbg !21
  %190 = zext i1 %189 to i64, !dbg !21
  %191 = or i64 %190, 72057594037927936, !dbg !21
  %192 = getelementptr i8, i8 addrspace(1)* null, i64 %191, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %192), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !21
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %195 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %193, i8 addrspace(1)* %194)
  %196 = icmp eq i64 %195, 2
  store i1 %196, i1* %32
  %197 = load i1, i1* %32, !dbg !22
  %198 = zext i1 %197 to i64, !dbg !22
  %199 = or i64 %198, 72057594037927936, !dbg !22
  %200 = getelementptr i8, i8 addrspace(1)* null, i64 %199, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %200), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !22
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %203 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %201, i8 addrspace(1)* %202)
  %204 = icmp sge i64 %203, 1
  store i1 %204, i1* %34
  %205 = load i1, i1* %34, !dbg !23
  %206 = zext i1 %205 to i64, !dbg !23
  %207 = or i64 %206, 72057594037927936, !dbg !23
  %208 = getelementptr i8, i8 addrspace(1)* null, i64 %207, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %208), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !23
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %211 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %209, i8 addrspace(1)* %210)
  %212 = icmp eq i64 %211, 0
  store i1 %212, i1* %36
  %213 = load i1, i1* %36, !dbg !24
  %214 = zext i1 %213 to i64, !dbg !24
  %215 = or i64 %214, 72057594037927936, !dbg !24
  %216 = getelementptr i8, i8 addrspace(1)* null, i64 %215, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %216), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !24
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %219 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %217, i8 addrspace(1)* %218)
  %220 = icmp ule i64 %219, 1
  store i1 %220, i1* %38
  %221 = load i1, i1* %38, !dbg !25
  %222 = zext i1 %221 to i64, !dbg !25
  %223 = or i64 %222, 72057594037927936, !dbg !25
  %224 = getelementptr i8, i8 addrspace(1)* null, i64 %223, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %224), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !25
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %227 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %225, i8 addrspace(1)* %226)
  %228 = icmp eq i64 %227, 2
  store i1 %228, i1* %40
  %229 = load i1, i1* %40, !dbg !26
  %230 = zext i1 %229 to i64, !dbg !26
  %231 = or i64 %230, 72057594037927936, !dbg !26
  %232 = getelementptr i8, i8 addrspace(1)* null, i64 %231, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %232), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !26
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %235 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %233, i8 addrspace(1)* %234)
  %236 = icmp sge i64 %235, 1
  store i1 %236, i1* %42
  %237 = load i1, i1* %42, !dbg !27
  %238 = zext i1 %237 to i64, !dbg !27
  %239 = or i64 %238, 72057594037927936, !dbg !27
  %240 = getelementptr i8, i8 addrspace(1)* null, i64 %239, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %240), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %43, !dbg !27
  ret void
241:
  %242 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %242)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/arr3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 1, scope: !5)
!9 = !DILocation(line: 9, column: 1, scope: !5)
!10 = !DILocation(line: 10, column: 1, scope: !5)
!11 = !DILocation(line: 11, column: 1, scope: !5)
!12 = !DILocation(line: 13, column: 1, scope: !5)
!13 = !DILocation(line: 14, column: 1, scope: !5)
!14 = !DILocation(line: 15, column: 1, scope: !5)
!15 = !DILocation(line: 16, column: 1, scope: !5)
!16 = !DILocation(line: 18, column: 1, scope: !5)
!17 = !DILocation(line: 19, column: 1, scope: !5)
!18 = !DILocation(line: 20, column: 1, scope: !5)
!19 = !DILocation(line: 21, column: 1, scope: !5)
!20 = !DILocation(line: 23, column: 1, scope: !5)
!21 = !DILocation(line: 24, column: 1, scope: !5)
!22 = !DILocation(line: 25, column: 1, scope: !5)
!23 = !DILocation(line: 26, column: 1, scope: !5)
!24 = !DILocation(line: 28, column: 1, scope: !5)
!25 = !DILocation(line: 29, column: 1, scope: !5)
!26 = !DILocation(line: 30, column: 1, scope: !5)
!27 = !DILocation(line: 31, column: 1, scope: !5)
