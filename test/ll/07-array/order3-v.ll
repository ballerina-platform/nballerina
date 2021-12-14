@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
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
  %d = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %f = alloca i8 addrspace(1)*
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
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i1
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i1
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i1
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i1
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i1
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i1
  %52 = alloca i8 addrspace(1)*
  %53 = alloca i1
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i1
  %56 = alloca i8 addrspace(1)*
  %57 = alloca i1
  %58 = alloca i8 addrspace(1)*
  %59 = alloca i1
  %60 = alloca i8 addrspace(1)*
  %61 = alloca i1
  %62 = alloca i8 addrspace(1)*
  %63 = alloca i1
  %64 = alloca i8 addrspace(1)*
  %65 = alloca i1
  %66 = alloca i8 addrspace(1)*
  %67 = alloca i1
  %68 = alloca i8 addrspace(1)*
  %69 = alloca i1
  %70 = alloca i8 addrspace(1)*
  %71 = alloca i1
  %72 = alloca i8 addrspace(1)*
  %73 = alloca i1
  %74 = alloca i8 addrspace(1)*
  %75 = alloca i1
  %76 = alloca i8 addrspace(1)*
  %77 = alloca i1
  %78 = alloca i8 addrspace(1)*
  %79 = alloca i1
  %80 = alloca i8 addrspace(1)*
  %81 = alloca i1
  %82 = alloca i8 addrspace(1)*
  %83 = alloca i1
  %84 = alloca i8 addrspace(1)*
  %85 = alloca i1
  %86 = alloca i8 addrspace(1)*
  %87 = alloca i1
  %88 = alloca i8 addrspace(1)*
  %89 = alloca i1
  %90 = alloca i8 addrspace(1)*
  %91 = alloca i1
  %92 = alloca i8 addrspace(1)*
  %93 = alloca i1
  %94 = alloca i8 addrspace(1)*
  %95 = alloca i8
  %96 = load i8*, i8** @_bal_stack_guard
  %97 = icmp ult i8* %95, %96
  br i1 %97, label %512, label %98
98:
  %99 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 3)
  %100 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %99, i64 0, i32 3
  %101 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %100, align 8
  %102 = bitcast i8* addrspace(1)* %101 to [0 x i8 addrspace(1)*] addrspace(1)*
  %103 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %102, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %103
  %104 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %102, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %104
  %105 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %102, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %105
  %106 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %99, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %106
  %107 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %99 to i8 addrspace(1)*
  %108 = getelementptr i8, i8 addrspace(1)* %107, i64 1297036692682702852
  store i8 addrspace(1)* %108, i8 addrspace(1)** %1
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %109, i8 addrspace(1)** %a
  %110 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 3)
  %111 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %110, i64 0, i32 3
  %112 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %111, align 8
  %113 = bitcast i8* addrspace(1)* %112 to [0 x i8 addrspace(1)*] addrspace(1)*
  %114 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %113, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620834657), i8 addrspace(1)* addrspace(1)* %114
  %115 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %113, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541053920865), i8 addrspace(1)* addrspace(1)* %115
  %116 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %113, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622150520), i8 addrspace(1)* addrspace(1)* %116
  %117 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %110, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %117
  %118 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %110 to i8 addrspace(1)*
  %119 = getelementptr i8, i8 addrspace(1)* %118, i64 1297036692682702852
  store i8 addrspace(1)* %119, i8 addrspace(1)** %2
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %120, i8 addrspace(1)** %b
  %121 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 3)
  %122 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %121, i64 0, i32 3
  %123 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %122, align 8
  %124 = bitcast i8* addrspace(1)* %123 to [0 x i8 addrspace(1)*] addrspace(1)*
  %125 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %124, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %125
  %126 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %124, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %126
  %127 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %124, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620834657), i8 addrspace(1)* addrspace(1)* %127
  %128 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %121, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %128
  %129 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %121 to i8 addrspace(1)*
  %130 = getelementptr i8, i8 addrspace(1)* %129, i64 1297036692682702852
  store i8 addrspace(1)* %130, i8 addrspace(1)** %3
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %131, i8 addrspace(1)** %c
  %132 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 4)
  %133 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %132, i64 0, i32 3
  %134 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %133, align 8
  %135 = bitcast i8* addrspace(1)* %134 to [0 x i8 addrspace(1)*] addrspace(1)*
  %136 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %135, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %136
  %137 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %135, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %137
  %138 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %135, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %138
  %139 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %135, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* addrspace(1)* %139
  %140 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %132, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %140
  %141 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %132 to i8 addrspace(1)*
  %142 = getelementptr i8, i8 addrspace(1)* %141, i64 1297036692682702852
  store i8 addrspace(1)* %142, i8 addrspace(1)** %4
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %143, i8 addrspace(1)** %d
  %144 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 4)
  %145 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %144, i64 0, i32 3
  %146 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %145, align 8
  %147 = bitcast i8* addrspace(1)* %146 to [0 x i8 addrspace(1)*] addrspace(1)*
  %148 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %147, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)* addrspace(1)* %148
  %149 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %147, i64 0, i64 1
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702817), i8 addrspace(1)* addrspace(1)* %149
  %150 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %147, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703329), i8 addrspace(1)* addrspace(1)* %150
  %151 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %147, i64 0, i64 3
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541053920865), i8 addrspace(1)* addrspace(1)* %151
  %152 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %144, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %152
  %153 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %144 to i8 addrspace(1)*
  %154 = getelementptr i8, i8 addrspace(1)* %153, i64 1297036692682702852
  store i8 addrspace(1)* %154, i8 addrspace(1)** %5
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %155, i8 addrspace(1)** %e
  %156 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %157 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %156 to i8 addrspace(1)*
  %158 = getelementptr i8, i8 addrspace(1)* %157, i64 1297036692682702852
  store i8 addrspace(1)* %158, i8 addrspace(1)** %6
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %159, i8 addrspace(1)** %f
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %162 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %160, i8 addrspace(1)* %161)
  %163 = icmp eq i64 %162, 0
  store i1 %163, i1* %7
  %164 = load i1, i1* %7, !dbg !8
  %165 = zext i1 %164 to i64, !dbg !8
  %166 = or i64 %165, 72057594037927936, !dbg !8
  %167 = getelementptr i8, i8 addrspace(1)* null, i64 %166, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %167), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !8
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %170 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %168, i8 addrspace(1)* %169)
  %171 = icmp ule i64 %170, 1
  store i1 %171, i1* %9
  %172 = load i1, i1* %9, !dbg !9
  %173 = zext i1 %172 to i64, !dbg !9
  %174 = or i64 %173, 72057594037927936, !dbg !9
  %175 = getelementptr i8, i8 addrspace(1)* null, i64 %174, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %175), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !9
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %178 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %176, i8 addrspace(1)* %177)
  %179 = icmp eq i64 %178, 2
  store i1 %179, i1* %11
  %180 = load i1, i1* %11, !dbg !10
  %181 = zext i1 %180 to i64, !dbg !10
  %182 = or i64 %181, 72057594037927936, !dbg !10
  %183 = getelementptr i8, i8 addrspace(1)* null, i64 %182, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %183), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !10
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %186 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %184, i8 addrspace(1)* %185)
  %187 = icmp sge i64 %186, 1
  store i1 %187, i1* %13
  %188 = load i1, i1* %13, !dbg !11
  %189 = zext i1 %188 to i64, !dbg !11
  %190 = or i64 %189, 72057594037927936, !dbg !11
  %191 = getelementptr i8, i8 addrspace(1)* null, i64 %190, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %191), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !11
  %192 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %194 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %192, i8 addrspace(1)* %193)
  %195 = icmp eq i64 %194, 0
  store i1 %195, i1* %15
  %196 = load i1, i1* %15, !dbg !12
  %197 = zext i1 %196 to i64, !dbg !12
  %198 = or i64 %197, 72057594037927936, !dbg !12
  %199 = getelementptr i8, i8 addrspace(1)* null, i64 %198, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %199), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !12
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %202 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %200, i8 addrspace(1)* %201)
  %203 = icmp ule i64 %202, 1
  store i1 %203, i1* %17
  %204 = load i1, i1* %17, !dbg !13
  %205 = zext i1 %204 to i64, !dbg !13
  %206 = or i64 %205, 72057594037927936, !dbg !13
  %207 = getelementptr i8, i8 addrspace(1)* null, i64 %206, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %207), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !13
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %210 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %208, i8 addrspace(1)* %209)
  %211 = icmp eq i64 %210, 2
  store i1 %211, i1* %19
  %212 = load i1, i1* %19, !dbg !14
  %213 = zext i1 %212 to i64, !dbg !14
  %214 = or i64 %213, 72057594037927936, !dbg !14
  %215 = getelementptr i8, i8 addrspace(1)* null, i64 %214, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %215), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !14
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %218 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %216, i8 addrspace(1)* %217)
  %219 = icmp sge i64 %218, 1
  store i1 %219, i1* %21
  %220 = load i1, i1* %21, !dbg !15
  %221 = zext i1 %220 to i64, !dbg !15
  %222 = or i64 %221, 72057594037927936, !dbg !15
  %223 = getelementptr i8, i8 addrspace(1)* null, i64 %222, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %223), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !15
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %226 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %224, i8 addrspace(1)* %225)
  %227 = icmp eq i64 %226, 0
  store i1 %227, i1* %23
  %228 = load i1, i1* %23, !dbg !16
  %229 = zext i1 %228 to i64, !dbg !16
  %230 = or i64 %229, 72057594037927936, !dbg !16
  %231 = getelementptr i8, i8 addrspace(1)* null, i64 %230, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %231), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !16
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %234 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %232, i8 addrspace(1)* %233)
  %235 = icmp ule i64 %234, 1
  store i1 %235, i1* %25
  %236 = load i1, i1* %25, !dbg !17
  %237 = zext i1 %236 to i64, !dbg !17
  %238 = or i64 %237, 72057594037927936, !dbg !17
  %239 = getelementptr i8, i8 addrspace(1)* null, i64 %238, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %239), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !17
  %240 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %241 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %242 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %240, i8 addrspace(1)* %241)
  %243 = icmp eq i64 %242, 2
  store i1 %243, i1* %27
  %244 = load i1, i1* %27, !dbg !18
  %245 = zext i1 %244 to i64, !dbg !18
  %246 = or i64 %245, 72057594037927936, !dbg !18
  %247 = getelementptr i8, i8 addrspace(1)* null, i64 %246, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %247), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !18
  %248 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %250 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %248, i8 addrspace(1)* %249)
  %251 = icmp sge i64 %250, 1
  store i1 %251, i1* %29
  %252 = load i1, i1* %29, !dbg !19
  %253 = zext i1 %252 to i64, !dbg !19
  %254 = or i64 %253, 72057594037927936, !dbg !19
  %255 = getelementptr i8, i8 addrspace(1)* null, i64 %254, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %255), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !19
  %256 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %257 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %258 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %256, i8 addrspace(1)* %257)
  %259 = icmp eq i64 %258, 0
  store i1 %259, i1* %31
  %260 = load i1, i1* %31, !dbg !20
  %261 = zext i1 %260 to i64, !dbg !20
  %262 = or i64 %261, 72057594037927936, !dbg !20
  %263 = getelementptr i8, i8 addrspace(1)* null, i64 %262, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %263), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !20
  %264 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %265 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %266 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %264, i8 addrspace(1)* %265)
  %267 = icmp ule i64 %266, 1
  store i1 %267, i1* %33
  %268 = load i1, i1* %33, !dbg !21
  %269 = zext i1 %268 to i64, !dbg !21
  %270 = or i64 %269, 72057594037927936, !dbg !21
  %271 = getelementptr i8, i8 addrspace(1)* null, i64 %270, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %271), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !21
  %272 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %273 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %274 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %272, i8 addrspace(1)* %273)
  %275 = icmp eq i64 %274, 2
  store i1 %275, i1* %35
  %276 = load i1, i1* %35, !dbg !22
  %277 = zext i1 %276 to i64, !dbg !22
  %278 = or i64 %277, 72057594037927936, !dbg !22
  %279 = getelementptr i8, i8 addrspace(1)* null, i64 %278, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %279), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !22
  %280 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %281 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %282 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %280, i8 addrspace(1)* %281)
  %283 = icmp sge i64 %282, 1
  store i1 %283, i1* %37
  %284 = load i1, i1* %37, !dbg !23
  %285 = zext i1 %284 to i64, !dbg !23
  %286 = or i64 %285, 72057594037927936, !dbg !23
  %287 = getelementptr i8, i8 addrspace(1)* null, i64 %286, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %287), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !23
  %288 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %289 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %290 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %288, i8 addrspace(1)* %289)
  %291 = icmp eq i64 %290, 0
  store i1 %291, i1* %39
  %292 = load i1, i1* %39, !dbg !24
  %293 = zext i1 %292 to i64, !dbg !24
  %294 = or i64 %293, 72057594037927936, !dbg !24
  %295 = getelementptr i8, i8 addrspace(1)* null, i64 %294, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %295), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !24
  %296 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %297 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %298 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %296, i8 addrspace(1)* %297)
  %299 = icmp ule i64 %298, 1
  store i1 %299, i1* %41
  %300 = load i1, i1* %41, !dbg !25
  %301 = zext i1 %300 to i64, !dbg !25
  %302 = or i64 %301, 72057594037927936, !dbg !25
  %303 = getelementptr i8, i8 addrspace(1)* null, i64 %302, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %303), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !25
  %304 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %305 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %306 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %304, i8 addrspace(1)* %305)
  %307 = icmp eq i64 %306, 2
  store i1 %307, i1* %43
  %308 = load i1, i1* %43, !dbg !26
  %309 = zext i1 %308 to i64, !dbg !26
  %310 = or i64 %309, 72057594037927936, !dbg !26
  %311 = getelementptr i8, i8 addrspace(1)* null, i64 %310, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %311), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !26
  %312 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %313 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %314 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %312, i8 addrspace(1)* %313)
  %315 = icmp sge i64 %314, 1
  store i1 %315, i1* %45
  %316 = load i1, i1* %45, !dbg !27
  %317 = zext i1 %316 to i64, !dbg !27
  %318 = or i64 %317, 72057594037927936, !dbg !27
  %319 = getelementptr i8, i8 addrspace(1)* null, i64 %318, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %319), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !27
  %320 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %321 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %322 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %320, i8 addrspace(1)* %321)
  %323 = icmp eq i64 %322, 0
  store i1 %323, i1* %47
  %324 = load i1, i1* %47, !dbg !28
  %325 = zext i1 %324 to i64, !dbg !28
  %326 = or i64 %325, 72057594037927936, !dbg !28
  %327 = getelementptr i8, i8 addrspace(1)* null, i64 %326, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %327), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !28
  %328 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %329 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %330 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %328, i8 addrspace(1)* %329)
  %331 = icmp ule i64 %330, 1
  store i1 %331, i1* %49
  %332 = load i1, i1* %49, !dbg !29
  %333 = zext i1 %332 to i64, !dbg !29
  %334 = or i64 %333, 72057594037927936, !dbg !29
  %335 = getelementptr i8, i8 addrspace(1)* null, i64 %334, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %335), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !29
  %336 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %337 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %338 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %336, i8 addrspace(1)* %337)
  %339 = icmp eq i64 %338, 2
  store i1 %339, i1* %51
  %340 = load i1, i1* %51, !dbg !30
  %341 = zext i1 %340 to i64, !dbg !30
  %342 = or i64 %341, 72057594037927936, !dbg !30
  %343 = getelementptr i8, i8 addrspace(1)* null, i64 %342, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %343), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !30
  %344 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %345 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %346 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %344, i8 addrspace(1)* %345)
  %347 = icmp sge i64 %346, 1
  store i1 %347, i1* %53
  %348 = load i1, i1* %53, !dbg !31
  %349 = zext i1 %348 to i64, !dbg !31
  %350 = or i64 %349, 72057594037927936, !dbg !31
  %351 = getelementptr i8, i8 addrspace(1)* null, i64 %350, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %351), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !31
  %352 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %353 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %354 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %352, i8 addrspace(1)* %353)
  %355 = icmp eq i64 %354, 0
  store i1 %355, i1* %55
  %356 = load i1, i1* %55, !dbg !32
  %357 = zext i1 %356 to i64, !dbg !32
  %358 = or i64 %357, 72057594037927936, !dbg !32
  %359 = getelementptr i8, i8 addrspace(1)* null, i64 %358, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %359), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !32
  %360 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %361 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %362 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %360, i8 addrspace(1)* %361)
  %363 = icmp ule i64 %362, 1
  store i1 %363, i1* %57
  %364 = load i1, i1* %57, !dbg !33
  %365 = zext i1 %364 to i64, !dbg !33
  %366 = or i64 %365, 72057594037927936, !dbg !33
  %367 = getelementptr i8, i8 addrspace(1)* null, i64 %366, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %367), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %58, !dbg !33
  %368 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %369 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %370 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %368, i8 addrspace(1)* %369)
  %371 = icmp eq i64 %370, 2
  store i1 %371, i1* %59
  %372 = load i1, i1* %59, !dbg !34
  %373 = zext i1 %372 to i64, !dbg !34
  %374 = or i64 %373, 72057594037927936, !dbg !34
  %375 = getelementptr i8, i8 addrspace(1)* null, i64 %374, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %375), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !34
  %376 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %377 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %378 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %376, i8 addrspace(1)* %377)
  %379 = icmp sge i64 %378, 1
  store i1 %379, i1* %61
  %380 = load i1, i1* %61, !dbg !35
  %381 = zext i1 %380 to i64, !dbg !35
  %382 = or i64 %381, 72057594037927936, !dbg !35
  %383 = getelementptr i8, i8 addrspace(1)* null, i64 %382, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %383), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %62, !dbg !35
  %384 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %385 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %386 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %384, i8 addrspace(1)* %385)
  %387 = icmp eq i64 %386, 0
  store i1 %387, i1* %63
  %388 = load i1, i1* %63, !dbg !36
  %389 = zext i1 %388 to i64, !dbg !36
  %390 = or i64 %389, 72057594037927936, !dbg !36
  %391 = getelementptr i8, i8 addrspace(1)* null, i64 %390, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %391), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %64, !dbg !36
  %392 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %393 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %394 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %392, i8 addrspace(1)* %393)
  %395 = icmp ule i64 %394, 1
  store i1 %395, i1* %65
  %396 = load i1, i1* %65, !dbg !37
  %397 = zext i1 %396 to i64, !dbg !37
  %398 = or i64 %397, 72057594037927936, !dbg !37
  %399 = getelementptr i8, i8 addrspace(1)* null, i64 %398, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %399), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %66, !dbg !37
  %400 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %401 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %402 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %400, i8 addrspace(1)* %401)
  %403 = icmp eq i64 %402, 2
  store i1 %403, i1* %67
  %404 = load i1, i1* %67, !dbg !38
  %405 = zext i1 %404 to i64, !dbg !38
  %406 = or i64 %405, 72057594037927936, !dbg !38
  %407 = getelementptr i8, i8 addrspace(1)* null, i64 %406, !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %407), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %68, !dbg !38
  %408 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %409 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %410 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %408, i8 addrspace(1)* %409)
  %411 = icmp sge i64 %410, 1
  store i1 %411, i1* %69
  %412 = load i1, i1* %69, !dbg !39
  %413 = zext i1 %412 to i64, !dbg !39
  %414 = or i64 %413, 72057594037927936, !dbg !39
  %415 = getelementptr i8, i8 addrspace(1)* null, i64 %414, !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %415), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %70, !dbg !39
  %416 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %417 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %418 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %416, i8 addrspace(1)* %417)
  %419 = icmp eq i64 %418, 0
  store i1 %419, i1* %71
  %420 = load i1, i1* %71, !dbg !40
  %421 = zext i1 %420 to i64, !dbg !40
  %422 = or i64 %421, 72057594037927936, !dbg !40
  %423 = getelementptr i8, i8 addrspace(1)* null, i64 %422, !dbg !40
  call void @_Bb02ioprintln(i8 addrspace(1)* %423), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !40
  %424 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %425 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %426 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %424, i8 addrspace(1)* %425)
  %427 = icmp ule i64 %426, 1
  store i1 %427, i1* %73
  %428 = load i1, i1* %73, !dbg !41
  %429 = zext i1 %428 to i64, !dbg !41
  %430 = or i64 %429, 72057594037927936, !dbg !41
  %431 = getelementptr i8, i8 addrspace(1)* null, i64 %430, !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %431), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %74, !dbg !41
  %432 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %433 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %434 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %432, i8 addrspace(1)* %433)
  %435 = icmp eq i64 %434, 2
  store i1 %435, i1* %75
  %436 = load i1, i1* %75, !dbg !42
  %437 = zext i1 %436 to i64, !dbg !42
  %438 = or i64 %437, 72057594037927936, !dbg !42
  %439 = getelementptr i8, i8 addrspace(1)* null, i64 %438, !dbg !42
  call void @_Bb02ioprintln(i8 addrspace(1)* %439), !dbg !42
  store i8 addrspace(1)* null, i8 addrspace(1)** %76, !dbg !42
  %440 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %441 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %442 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %440, i8 addrspace(1)* %441)
  %443 = icmp sge i64 %442, 1
  store i1 %443, i1* %77
  %444 = load i1, i1* %77, !dbg !43
  %445 = zext i1 %444 to i64, !dbg !43
  %446 = or i64 %445, 72057594037927936, !dbg !43
  %447 = getelementptr i8, i8 addrspace(1)* null, i64 %446, !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %447), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %78, !dbg !43
  %448 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %449 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %450 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %448, i8 addrspace(1)* %449)
  %451 = icmp eq i64 %450, 0
  store i1 %451, i1* %79
  %452 = load i1, i1* %79, !dbg !44
  %453 = zext i1 %452 to i64, !dbg !44
  %454 = or i64 %453, 72057594037927936, !dbg !44
  %455 = getelementptr i8, i8 addrspace(1)* null, i64 %454, !dbg !44
  call void @_Bb02ioprintln(i8 addrspace(1)* %455), !dbg !44
  store i8 addrspace(1)* null, i8 addrspace(1)** %80, !dbg !44
  %456 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %457 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %458 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %456, i8 addrspace(1)* %457)
  %459 = icmp ule i64 %458, 1
  store i1 %459, i1* %81
  %460 = load i1, i1* %81, !dbg !45
  %461 = zext i1 %460 to i64, !dbg !45
  %462 = or i64 %461, 72057594037927936, !dbg !45
  %463 = getelementptr i8, i8 addrspace(1)* null, i64 %462, !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %463), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %82, !dbg !45
  %464 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %465 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %466 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %464, i8 addrspace(1)* %465)
  %467 = icmp eq i64 %466, 2
  store i1 %467, i1* %83
  %468 = load i1, i1* %83, !dbg !46
  %469 = zext i1 %468 to i64, !dbg !46
  %470 = or i64 %469, 72057594037927936, !dbg !46
  %471 = getelementptr i8, i8 addrspace(1)* null, i64 %470, !dbg !46
  call void @_Bb02ioprintln(i8 addrspace(1)* %471), !dbg !46
  store i8 addrspace(1)* null, i8 addrspace(1)** %84, !dbg !46
  %472 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %473 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %474 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %472, i8 addrspace(1)* %473)
  %475 = icmp sge i64 %474, 1
  store i1 %475, i1* %85
  %476 = load i1, i1* %85, !dbg !47
  %477 = zext i1 %476 to i64, !dbg !47
  %478 = or i64 %477, 72057594037927936, !dbg !47
  %479 = getelementptr i8, i8 addrspace(1)* null, i64 %478, !dbg !47
  call void @_Bb02ioprintln(i8 addrspace(1)* %479), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %86, !dbg !47
  %480 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %481 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %482 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %480, i8 addrspace(1)* %481)
  %483 = icmp eq i64 %482, 0
  store i1 %483, i1* %87
  %484 = load i1, i1* %87, !dbg !48
  %485 = zext i1 %484 to i64, !dbg !48
  %486 = or i64 %485, 72057594037927936, !dbg !48
  %487 = getelementptr i8, i8 addrspace(1)* null, i64 %486, !dbg !48
  call void @_Bb02ioprintln(i8 addrspace(1)* %487), !dbg !48
  store i8 addrspace(1)* null, i8 addrspace(1)** %88, !dbg !48
  %488 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %489 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %490 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %488, i8 addrspace(1)* %489)
  %491 = icmp ule i64 %490, 1
  store i1 %491, i1* %89
  %492 = load i1, i1* %89, !dbg !49
  %493 = zext i1 %492 to i64, !dbg !49
  %494 = or i64 %493, 72057594037927936, !dbg !49
  %495 = getelementptr i8, i8 addrspace(1)* null, i64 %494, !dbg !49
  call void @_Bb02ioprintln(i8 addrspace(1)* %495), !dbg !49
  store i8 addrspace(1)* null, i8 addrspace(1)** %90, !dbg !49
  %496 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %497 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %498 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %496, i8 addrspace(1)* %497)
  %499 = icmp eq i64 %498, 2
  store i1 %499, i1* %91
  %500 = load i1, i1* %91, !dbg !50
  %501 = zext i1 %500 to i64, !dbg !50
  %502 = or i64 %501, 72057594037927936, !dbg !50
  %503 = getelementptr i8, i8 addrspace(1)* null, i64 %502, !dbg !50
  call void @_Bb02ioprintln(i8 addrspace(1)* %503), !dbg !50
  store i8 addrspace(1)* null, i8 addrspace(1)** %92, !dbg !50
  %504 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %505 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %506 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %504, i8 addrspace(1)* %505)
  %507 = icmp sge i64 %506, 1
  store i1 %507, i1* %93
  %508 = load i1, i1* %93, !dbg !51
  %509 = zext i1 %508 to i64, !dbg !51
  %510 = or i64 %509, 72057594037927936, !dbg !51
  %511 = getelementptr i8, i8 addrspace(1)* null, i64 %510, !dbg !51
  call void @_Bb02ioprintln(i8 addrspace(1)* %511), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %94, !dbg !51
  ret void
512:
  %513 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %513)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/order3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 1, scope: !5)
!9 = !DILocation(line: 12, column: 1, scope: !5)
!10 = !DILocation(line: 13, column: 1, scope: !5)
!11 = !DILocation(line: 14, column: 1, scope: !5)
!12 = !DILocation(line: 16, column: 1, scope: !5)
!13 = !DILocation(line: 17, column: 1, scope: !5)
!14 = !DILocation(line: 18, column: 1, scope: !5)
!15 = !DILocation(line: 19, column: 1, scope: !5)
!16 = !DILocation(line: 21, column: 1, scope: !5)
!17 = !DILocation(line: 22, column: 1, scope: !5)
!18 = !DILocation(line: 23, column: 1, scope: !5)
!19 = !DILocation(line: 24, column: 1, scope: !5)
!20 = !DILocation(line: 26, column: 1, scope: !5)
!21 = !DILocation(line: 27, column: 1, scope: !5)
!22 = !DILocation(line: 28, column: 1, scope: !5)
!23 = !DILocation(line: 29, column: 1, scope: !5)
!24 = !DILocation(line: 31, column: 1, scope: !5)
!25 = !DILocation(line: 32, column: 1, scope: !5)
!26 = !DILocation(line: 33, column: 1, scope: !5)
!27 = !DILocation(line: 34, column: 1, scope: !5)
!28 = !DILocation(line: 36, column: 1, scope: !5)
!29 = !DILocation(line: 37, column: 1, scope: !5)
!30 = !DILocation(line: 38, column: 1, scope: !5)
!31 = !DILocation(line: 39, column: 1, scope: !5)
!32 = !DILocation(line: 41, column: 1, scope: !5)
!33 = !DILocation(line: 42, column: 1, scope: !5)
!34 = !DILocation(line: 43, column: 1, scope: !5)
!35 = !DILocation(line: 44, column: 1, scope: !5)
!36 = !DILocation(line: 46, column: 1, scope: !5)
!37 = !DILocation(line: 47, column: 1, scope: !5)
!38 = !DILocation(line: 48, column: 1, scope: !5)
!39 = !DILocation(line: 49, column: 1, scope: !5)
!40 = !DILocation(line: 51, column: 1, scope: !5)
!41 = !DILocation(line: 52, column: 1, scope: !5)
!42 = !DILocation(line: 53, column: 1, scope: !5)
!43 = !DILocation(line: 54, column: 1, scope: !5)
!44 = !DILocation(line: 56, column: 1, scope: !5)
!45 = !DILocation(line: 57, column: 1, scope: !5)
!46 = !DILocation(line: 58, column: 1, scope: !5)
!47 = !DILocation(line: 59, column: 1, scope: !5)
!48 = !DILocation(line: 61, column: 1, scope: !5)
!49 = !DILocation(line: 62, column: 1, scope: !5)
!50 = !DILocation(line: 63, column: 1, scope: !5)
!51 = !DILocation(line: 64, column: 1, scope: !5)
