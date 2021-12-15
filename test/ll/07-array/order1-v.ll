@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_array_exact_int_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  br i1 %97, label %167, label %98
98:
  %99 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 3)
  %100 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %99, i64 0, i32 3
  %101 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %100, align 8
  %102 = bitcast i8* addrspace(1)* %101 to [0 x i64] addrspace(1)*
  %103 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %102, i64 0, i64 0
  store i64 1, i64 addrspace(1)* %103
  %104 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %102, i64 0, i64 1
  store i64 2, i64 addrspace(1)* %104
  %105 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %102, i64 0, i64 2
  store i64 3, i64 addrspace(1)* %105
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
  %113 = bitcast i8* addrspace(1)* %112 to [0 x i64] addrspace(1)*
  %114 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %113, i64 0, i64 0
  store i64 4, i64 addrspace(1)* %114
  %115 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %113, i64 0, i64 1
  store i64 5, i64 addrspace(1)* %115
  %116 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %113, i64 0, i64 2
  store i64 6, i64 addrspace(1)* %116
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
  %124 = bitcast i8* addrspace(1)* %123 to [0 x i64] addrspace(1)*
  %125 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %124, i64 0, i64 0
  store i64 1, i64 addrspace(1)* %125
  %126 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %124, i64 0, i64 1
  store i64 2, i64 addrspace(1)* %126
  %127 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %124, i64 0, i64 2
  store i64 4, i64 addrspace(1)* %127
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
  %135 = bitcast i8* addrspace(1)* %134 to [0 x i64] addrspace(1)*
  %136 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %135, i64 0, i64 0
  store i64 1, i64 addrspace(1)* %136
  %137 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %135, i64 0, i64 1
  store i64 2, i64 addrspace(1)* %137
  %138 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %135, i64 0, i64 2
  store i64 3, i64 addrspace(1)* %138
  %139 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %135, i64 0, i64 3
  store i64 -1, i64 addrspace(1)* %139
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
  %147 = bitcast i8* addrspace(1)* %146 to [0 x i64] addrspace(1)*
  %148 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %147, i64 0, i64 0
  store i64 1, i64 addrspace(1)* %148
  %149 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %147, i64 0, i64 1
  store i64 2, i64 addrspace(1)* %149
  %150 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %147, i64 0, i64 2
  store i64 3, i64 addrspace(1)* %150
  %151 = getelementptr inbounds [0 x i64], [0 x i64] addrspace(1)* %147, i64 0, i64 3
  store i64 5, i64 addrspace(1)* %151
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
  %162 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %160, i64 4)
  %163 = icmp ne i8 addrspace(1)* %162, null
  %164 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %161, i64 4)
  %165 = icmp ne i8 addrspace(1)* %164, null
  %166 = and i1 %163, %165
  br i1 %166, label %169, label %172
167:
  %168 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %168)
  unreachable
169:
  %170 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %160, i8 addrspace(1)* %161)
  %171 = icmp eq i64 %170, 0
  store i1 %171, i1* %7
  br label %175
172:
  %173 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %160, i8 addrspace(1)* %161)
  %174 = icmp eq i64 %173, 0
  store i1 %174, i1* %7
  br label %175
175:
  %176 = load i1, i1* %7, !dbg !8
  %177 = zext i1 %176 to i64, !dbg !8
  %178 = or i64 %177, 72057594037927936, !dbg !8
  %179 = getelementptr i8, i8 addrspace(1)* null, i64 %178, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %179), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !8
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %182 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %180, i64 4)
  %183 = icmp ne i8 addrspace(1)* %182, null
  %184 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %181, i64 4)
  %185 = icmp ne i8 addrspace(1)* %184, null
  %186 = and i1 %183, %185
  br i1 %186, label %187, label %190
187:
  %188 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %180, i8 addrspace(1)* %181)
  %189 = icmp ule i64 %188, 1
  store i1 %189, i1* %9
  br label %193
190:
  %191 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %180, i8 addrspace(1)* %181)
  %192 = icmp ule i64 %191, 1
  store i1 %192, i1* %9
  br label %193
193:
  %194 = load i1, i1* %9, !dbg !9
  %195 = zext i1 %194 to i64, !dbg !9
  %196 = or i64 %195, 72057594037927936, !dbg !9
  %197 = getelementptr i8, i8 addrspace(1)* null, i64 %196, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %197), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !9
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %200 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %198, i64 4)
  %201 = icmp ne i8 addrspace(1)* %200, null
  %202 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %199, i64 4)
  %203 = icmp ne i8 addrspace(1)* %202, null
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %208
205:
  %206 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %198, i8 addrspace(1)* %199)
  %207 = icmp eq i64 %206, 2
  store i1 %207, i1* %11
  br label %211
208:
  %209 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %198, i8 addrspace(1)* %199)
  %210 = icmp eq i64 %209, 2
  store i1 %210, i1* %11
  br label %211
211:
  %212 = load i1, i1* %11, !dbg !10
  %213 = zext i1 %212 to i64, !dbg !10
  %214 = or i64 %213, 72057594037927936, !dbg !10
  %215 = getelementptr i8, i8 addrspace(1)* null, i64 %214, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %215), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !10
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %218 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %216, i64 4)
  %219 = icmp ne i8 addrspace(1)* %218, null
  %220 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %217, i64 4)
  %221 = icmp ne i8 addrspace(1)* %220, null
  %222 = and i1 %219, %221
  br i1 %222, label %223, label %226
223:
  %224 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %216, i8 addrspace(1)* %217)
  %225 = icmp sge i64 %224, 1
  store i1 %225, i1* %13
  br label %229
226:
  %227 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %216, i8 addrspace(1)* %217)
  %228 = icmp sge i64 %227, 1
  store i1 %228, i1* %13
  br label %229
229:
  %230 = load i1, i1* %13, !dbg !11
  %231 = zext i1 %230 to i64, !dbg !11
  %232 = or i64 %231, 72057594037927936, !dbg !11
  %233 = getelementptr i8, i8 addrspace(1)* null, i64 %232, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %233), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !11
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %236 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %234, i64 4)
  %237 = icmp ne i8 addrspace(1)* %236, null
  %238 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %235, i64 4)
  %239 = icmp ne i8 addrspace(1)* %238, null
  %240 = and i1 %237, %239
  br i1 %240, label %241, label %244
241:
  %242 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %234, i8 addrspace(1)* %235)
  %243 = icmp eq i64 %242, 0
  store i1 %243, i1* %15
  br label %247
244:
  %245 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %234, i8 addrspace(1)* %235)
  %246 = icmp eq i64 %245, 0
  store i1 %246, i1* %15
  br label %247
247:
  %248 = load i1, i1* %15, !dbg !12
  %249 = zext i1 %248 to i64, !dbg !12
  %250 = or i64 %249, 72057594037927936, !dbg !12
  %251 = getelementptr i8, i8 addrspace(1)* null, i64 %250, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %251), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !12
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %253 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %254 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %252, i64 4)
  %255 = icmp ne i8 addrspace(1)* %254, null
  %256 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %253, i64 4)
  %257 = icmp ne i8 addrspace(1)* %256, null
  %258 = and i1 %255, %257
  br i1 %258, label %259, label %262
259:
  %260 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %252, i8 addrspace(1)* %253)
  %261 = icmp ule i64 %260, 1
  store i1 %261, i1* %17
  br label %265
262:
  %263 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %252, i8 addrspace(1)* %253)
  %264 = icmp ule i64 %263, 1
  store i1 %264, i1* %17
  br label %265
265:
  %266 = load i1, i1* %17, !dbg !13
  %267 = zext i1 %266 to i64, !dbg !13
  %268 = or i64 %267, 72057594037927936, !dbg !13
  %269 = getelementptr i8, i8 addrspace(1)* null, i64 %268, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %269), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !13
  %270 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %271 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %272 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %270, i64 4)
  %273 = icmp ne i8 addrspace(1)* %272, null
  %274 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %271, i64 4)
  %275 = icmp ne i8 addrspace(1)* %274, null
  %276 = and i1 %273, %275
  br i1 %276, label %277, label %280
277:
  %278 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %270, i8 addrspace(1)* %271)
  %279 = icmp eq i64 %278, 2
  store i1 %279, i1* %19
  br label %283
280:
  %281 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %270, i8 addrspace(1)* %271)
  %282 = icmp eq i64 %281, 2
  store i1 %282, i1* %19
  br label %283
283:
  %284 = load i1, i1* %19, !dbg !14
  %285 = zext i1 %284 to i64, !dbg !14
  %286 = or i64 %285, 72057594037927936, !dbg !14
  %287 = getelementptr i8, i8 addrspace(1)* null, i64 %286, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %287), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !14
  %288 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %289 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %290 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %288, i64 4)
  %291 = icmp ne i8 addrspace(1)* %290, null
  %292 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %289, i64 4)
  %293 = icmp ne i8 addrspace(1)* %292, null
  %294 = and i1 %291, %293
  br i1 %294, label %295, label %298
295:
  %296 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %288, i8 addrspace(1)* %289)
  %297 = icmp sge i64 %296, 1
  store i1 %297, i1* %21
  br label %301
298:
  %299 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %288, i8 addrspace(1)* %289)
  %300 = icmp sge i64 %299, 1
  store i1 %300, i1* %21
  br label %301
301:
  %302 = load i1, i1* %21, !dbg !15
  %303 = zext i1 %302 to i64, !dbg !15
  %304 = or i64 %303, 72057594037927936, !dbg !15
  %305 = getelementptr i8, i8 addrspace(1)* null, i64 %304, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %305), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !15
  %306 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %307 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %308 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %306, i64 4)
  %309 = icmp ne i8 addrspace(1)* %308, null
  %310 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %307, i64 4)
  %311 = icmp ne i8 addrspace(1)* %310, null
  %312 = and i1 %309, %311
  br i1 %312, label %313, label %316
313:
  %314 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %306, i8 addrspace(1)* %307)
  %315 = icmp eq i64 %314, 0
  store i1 %315, i1* %23
  br label %319
316:
  %317 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %306, i8 addrspace(1)* %307)
  %318 = icmp eq i64 %317, 0
  store i1 %318, i1* %23
  br label %319
319:
  %320 = load i1, i1* %23, !dbg !16
  %321 = zext i1 %320 to i64, !dbg !16
  %322 = or i64 %321, 72057594037927936, !dbg !16
  %323 = getelementptr i8, i8 addrspace(1)* null, i64 %322, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %323), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !16
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %325 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %326 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %324, i64 4)
  %327 = icmp ne i8 addrspace(1)* %326, null
  %328 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %325, i64 4)
  %329 = icmp ne i8 addrspace(1)* %328, null
  %330 = and i1 %327, %329
  br i1 %330, label %331, label %334
331:
  %332 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %324, i8 addrspace(1)* %325)
  %333 = icmp ule i64 %332, 1
  store i1 %333, i1* %25
  br label %337
334:
  %335 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %324, i8 addrspace(1)* %325)
  %336 = icmp ule i64 %335, 1
  store i1 %336, i1* %25
  br label %337
337:
  %338 = load i1, i1* %25, !dbg !17
  %339 = zext i1 %338 to i64, !dbg !17
  %340 = or i64 %339, 72057594037927936, !dbg !17
  %341 = getelementptr i8, i8 addrspace(1)* null, i64 %340, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %341), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !17
  %342 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %343 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %344 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %342, i64 4)
  %345 = icmp ne i8 addrspace(1)* %344, null
  %346 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %343, i64 4)
  %347 = icmp ne i8 addrspace(1)* %346, null
  %348 = and i1 %345, %347
  br i1 %348, label %349, label %352
349:
  %350 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %342, i8 addrspace(1)* %343)
  %351 = icmp eq i64 %350, 2
  store i1 %351, i1* %27
  br label %355
352:
  %353 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %342, i8 addrspace(1)* %343)
  %354 = icmp eq i64 %353, 2
  store i1 %354, i1* %27
  br label %355
355:
  %356 = load i1, i1* %27, !dbg !18
  %357 = zext i1 %356 to i64, !dbg !18
  %358 = or i64 %357, 72057594037927936, !dbg !18
  %359 = getelementptr i8, i8 addrspace(1)* null, i64 %358, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %359), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !18
  %360 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %361 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %362 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %360, i64 4)
  %363 = icmp ne i8 addrspace(1)* %362, null
  %364 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %361, i64 4)
  %365 = icmp ne i8 addrspace(1)* %364, null
  %366 = and i1 %363, %365
  br i1 %366, label %367, label %370
367:
  %368 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %360, i8 addrspace(1)* %361)
  %369 = icmp sge i64 %368, 1
  store i1 %369, i1* %29
  br label %373
370:
  %371 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %360, i8 addrspace(1)* %361)
  %372 = icmp sge i64 %371, 1
  store i1 %372, i1* %29
  br label %373
373:
  %374 = load i1, i1* %29, !dbg !19
  %375 = zext i1 %374 to i64, !dbg !19
  %376 = or i64 %375, 72057594037927936, !dbg !19
  %377 = getelementptr i8, i8 addrspace(1)* null, i64 %376, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %377), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !19
  %378 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %379 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %380 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %378, i64 4)
  %381 = icmp ne i8 addrspace(1)* %380, null
  %382 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %379, i64 4)
  %383 = icmp ne i8 addrspace(1)* %382, null
  %384 = and i1 %381, %383
  br i1 %384, label %385, label %388
385:
  %386 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %378, i8 addrspace(1)* %379)
  %387 = icmp eq i64 %386, 0
  store i1 %387, i1* %31
  br label %391
388:
  %389 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %378, i8 addrspace(1)* %379)
  %390 = icmp eq i64 %389, 0
  store i1 %390, i1* %31
  br label %391
391:
  %392 = load i1, i1* %31, !dbg !20
  %393 = zext i1 %392 to i64, !dbg !20
  %394 = or i64 %393, 72057594037927936, !dbg !20
  %395 = getelementptr i8, i8 addrspace(1)* null, i64 %394, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %395), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !20
  %396 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %397 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %398 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %396, i64 4)
  %399 = icmp ne i8 addrspace(1)* %398, null
  %400 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %397, i64 4)
  %401 = icmp ne i8 addrspace(1)* %400, null
  %402 = and i1 %399, %401
  br i1 %402, label %403, label %406
403:
  %404 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %396, i8 addrspace(1)* %397)
  %405 = icmp ule i64 %404, 1
  store i1 %405, i1* %33
  br label %409
406:
  %407 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %396, i8 addrspace(1)* %397)
  %408 = icmp ule i64 %407, 1
  store i1 %408, i1* %33
  br label %409
409:
  %410 = load i1, i1* %33, !dbg !21
  %411 = zext i1 %410 to i64, !dbg !21
  %412 = or i64 %411, 72057594037927936, !dbg !21
  %413 = getelementptr i8, i8 addrspace(1)* null, i64 %412, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %413), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !21
  %414 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %415 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %416 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %414, i64 4)
  %417 = icmp ne i8 addrspace(1)* %416, null
  %418 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %415, i64 4)
  %419 = icmp ne i8 addrspace(1)* %418, null
  %420 = and i1 %417, %419
  br i1 %420, label %421, label %424
421:
  %422 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %414, i8 addrspace(1)* %415)
  %423 = icmp eq i64 %422, 2
  store i1 %423, i1* %35
  br label %427
424:
  %425 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %414, i8 addrspace(1)* %415)
  %426 = icmp eq i64 %425, 2
  store i1 %426, i1* %35
  br label %427
427:
  %428 = load i1, i1* %35, !dbg !22
  %429 = zext i1 %428 to i64, !dbg !22
  %430 = or i64 %429, 72057594037927936, !dbg !22
  %431 = getelementptr i8, i8 addrspace(1)* null, i64 %430, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %431), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !22
  %432 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %433 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %434 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %432, i64 4)
  %435 = icmp ne i8 addrspace(1)* %434, null
  %436 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %433, i64 4)
  %437 = icmp ne i8 addrspace(1)* %436, null
  %438 = and i1 %435, %437
  br i1 %438, label %439, label %442
439:
  %440 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %432, i8 addrspace(1)* %433)
  %441 = icmp sge i64 %440, 1
  store i1 %441, i1* %37
  br label %445
442:
  %443 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %432, i8 addrspace(1)* %433)
  %444 = icmp sge i64 %443, 1
  store i1 %444, i1* %37
  br label %445
445:
  %446 = load i1, i1* %37, !dbg !23
  %447 = zext i1 %446 to i64, !dbg !23
  %448 = or i64 %447, 72057594037927936, !dbg !23
  %449 = getelementptr i8, i8 addrspace(1)* null, i64 %448, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %449), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !23
  %450 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %451 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %452 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %450, i64 4)
  %453 = icmp ne i8 addrspace(1)* %452, null
  %454 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %451, i64 4)
  %455 = icmp ne i8 addrspace(1)* %454, null
  %456 = and i1 %453, %455
  br i1 %456, label %457, label %460
457:
  %458 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %450, i8 addrspace(1)* %451)
  %459 = icmp eq i64 %458, 0
  store i1 %459, i1* %39
  br label %463
460:
  %461 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %450, i8 addrspace(1)* %451)
  %462 = icmp eq i64 %461, 0
  store i1 %462, i1* %39
  br label %463
463:
  %464 = load i1, i1* %39, !dbg !24
  %465 = zext i1 %464 to i64, !dbg !24
  %466 = or i64 %465, 72057594037927936, !dbg !24
  %467 = getelementptr i8, i8 addrspace(1)* null, i64 %466, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %467), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !24
  %468 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %469 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %470 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %468, i64 4)
  %471 = icmp ne i8 addrspace(1)* %470, null
  %472 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %469, i64 4)
  %473 = icmp ne i8 addrspace(1)* %472, null
  %474 = and i1 %471, %473
  br i1 %474, label %475, label %478
475:
  %476 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %468, i8 addrspace(1)* %469)
  %477 = icmp ule i64 %476, 1
  store i1 %477, i1* %41
  br label %481
478:
  %479 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %468, i8 addrspace(1)* %469)
  %480 = icmp ule i64 %479, 1
  store i1 %480, i1* %41
  br label %481
481:
  %482 = load i1, i1* %41, !dbg !25
  %483 = zext i1 %482 to i64, !dbg !25
  %484 = or i64 %483, 72057594037927936, !dbg !25
  %485 = getelementptr i8, i8 addrspace(1)* null, i64 %484, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %485), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !25
  %486 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %487 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %488 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %486, i64 4)
  %489 = icmp ne i8 addrspace(1)* %488, null
  %490 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %487, i64 4)
  %491 = icmp ne i8 addrspace(1)* %490, null
  %492 = and i1 %489, %491
  br i1 %492, label %493, label %496
493:
  %494 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %486, i8 addrspace(1)* %487)
  %495 = icmp eq i64 %494, 2
  store i1 %495, i1* %43
  br label %499
496:
  %497 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %486, i8 addrspace(1)* %487)
  %498 = icmp eq i64 %497, 2
  store i1 %498, i1* %43
  br label %499
499:
  %500 = load i1, i1* %43, !dbg !26
  %501 = zext i1 %500 to i64, !dbg !26
  %502 = or i64 %501, 72057594037927936, !dbg !26
  %503 = getelementptr i8, i8 addrspace(1)* null, i64 %502, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %503), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !26
  %504 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %505 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %506 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %504, i64 4)
  %507 = icmp ne i8 addrspace(1)* %506, null
  %508 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %505, i64 4)
  %509 = icmp ne i8 addrspace(1)* %508, null
  %510 = and i1 %507, %509
  br i1 %510, label %511, label %514
511:
  %512 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %504, i8 addrspace(1)* %505)
  %513 = icmp sge i64 %512, 1
  store i1 %513, i1* %45
  br label %517
514:
  %515 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %504, i8 addrspace(1)* %505)
  %516 = icmp sge i64 %515, 1
  store i1 %516, i1* %45
  br label %517
517:
  %518 = load i1, i1* %45, !dbg !27
  %519 = zext i1 %518 to i64, !dbg !27
  %520 = or i64 %519, 72057594037927936, !dbg !27
  %521 = getelementptr i8, i8 addrspace(1)* null, i64 %520, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %521), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !27
  %522 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %523 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %524 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %522, i64 4)
  %525 = icmp ne i8 addrspace(1)* %524, null
  %526 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %523, i64 4)
  %527 = icmp ne i8 addrspace(1)* %526, null
  %528 = and i1 %525, %527
  br i1 %528, label %529, label %532
529:
  %530 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %522, i8 addrspace(1)* %523)
  %531 = icmp eq i64 %530, 0
  store i1 %531, i1* %47
  br label %535
532:
  %533 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %522, i8 addrspace(1)* %523)
  %534 = icmp eq i64 %533, 0
  store i1 %534, i1* %47
  br label %535
535:
  %536 = load i1, i1* %47, !dbg !28
  %537 = zext i1 %536 to i64, !dbg !28
  %538 = or i64 %537, 72057594037927936, !dbg !28
  %539 = getelementptr i8, i8 addrspace(1)* null, i64 %538, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %539), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !28
  %540 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %541 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %542 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %540, i64 4)
  %543 = icmp ne i8 addrspace(1)* %542, null
  %544 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %541, i64 4)
  %545 = icmp ne i8 addrspace(1)* %544, null
  %546 = and i1 %543, %545
  br i1 %546, label %547, label %550
547:
  %548 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %540, i8 addrspace(1)* %541)
  %549 = icmp ule i64 %548, 1
  store i1 %549, i1* %49
  br label %553
550:
  %551 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %540, i8 addrspace(1)* %541)
  %552 = icmp ule i64 %551, 1
  store i1 %552, i1* %49
  br label %553
553:
  %554 = load i1, i1* %49, !dbg !29
  %555 = zext i1 %554 to i64, !dbg !29
  %556 = or i64 %555, 72057594037927936, !dbg !29
  %557 = getelementptr i8, i8 addrspace(1)* null, i64 %556, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %557), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !29
  %558 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %559 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %560 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %558, i64 4)
  %561 = icmp ne i8 addrspace(1)* %560, null
  %562 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %559, i64 4)
  %563 = icmp ne i8 addrspace(1)* %562, null
  %564 = and i1 %561, %563
  br i1 %564, label %565, label %568
565:
  %566 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %558, i8 addrspace(1)* %559)
  %567 = icmp eq i64 %566, 2
  store i1 %567, i1* %51
  br label %571
568:
  %569 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %558, i8 addrspace(1)* %559)
  %570 = icmp eq i64 %569, 2
  store i1 %570, i1* %51
  br label %571
571:
  %572 = load i1, i1* %51, !dbg !30
  %573 = zext i1 %572 to i64, !dbg !30
  %574 = or i64 %573, 72057594037927936, !dbg !30
  %575 = getelementptr i8, i8 addrspace(1)* null, i64 %574, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %575), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !30
  %576 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %577 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %578 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %576, i64 4)
  %579 = icmp ne i8 addrspace(1)* %578, null
  %580 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %577, i64 4)
  %581 = icmp ne i8 addrspace(1)* %580, null
  %582 = and i1 %579, %581
  br i1 %582, label %583, label %586
583:
  %584 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %576, i8 addrspace(1)* %577)
  %585 = icmp sge i64 %584, 1
  store i1 %585, i1* %53
  br label %589
586:
  %587 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %576, i8 addrspace(1)* %577)
  %588 = icmp sge i64 %587, 1
  store i1 %588, i1* %53
  br label %589
589:
  %590 = load i1, i1* %53, !dbg !31
  %591 = zext i1 %590 to i64, !dbg !31
  %592 = or i64 %591, 72057594037927936, !dbg !31
  %593 = getelementptr i8, i8 addrspace(1)* null, i64 %592, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %593), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !31
  %594 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %595 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %596 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %594, i64 4)
  %597 = icmp ne i8 addrspace(1)* %596, null
  %598 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %595, i64 4)
  %599 = icmp ne i8 addrspace(1)* %598, null
  %600 = and i1 %597, %599
  br i1 %600, label %601, label %604
601:
  %602 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %594, i8 addrspace(1)* %595)
  %603 = icmp eq i64 %602, 0
  store i1 %603, i1* %55
  br label %607
604:
  %605 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %594, i8 addrspace(1)* %595)
  %606 = icmp eq i64 %605, 0
  store i1 %606, i1* %55
  br label %607
607:
  %608 = load i1, i1* %55, !dbg !32
  %609 = zext i1 %608 to i64, !dbg !32
  %610 = or i64 %609, 72057594037927936, !dbg !32
  %611 = getelementptr i8, i8 addrspace(1)* null, i64 %610, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %611), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !32
  %612 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %613 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %614 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %612, i64 4)
  %615 = icmp ne i8 addrspace(1)* %614, null
  %616 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %613, i64 4)
  %617 = icmp ne i8 addrspace(1)* %616, null
  %618 = and i1 %615, %617
  br i1 %618, label %619, label %622
619:
  %620 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %612, i8 addrspace(1)* %613)
  %621 = icmp ule i64 %620, 1
  store i1 %621, i1* %57
  br label %625
622:
  %623 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %612, i8 addrspace(1)* %613)
  %624 = icmp ule i64 %623, 1
  store i1 %624, i1* %57
  br label %625
625:
  %626 = load i1, i1* %57, !dbg !33
  %627 = zext i1 %626 to i64, !dbg !33
  %628 = or i64 %627, 72057594037927936, !dbg !33
  %629 = getelementptr i8, i8 addrspace(1)* null, i64 %628, !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %629), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %58, !dbg !33
  %630 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %631 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %632 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %630, i64 4)
  %633 = icmp ne i8 addrspace(1)* %632, null
  %634 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %631, i64 4)
  %635 = icmp ne i8 addrspace(1)* %634, null
  %636 = and i1 %633, %635
  br i1 %636, label %637, label %640
637:
  %638 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %630, i8 addrspace(1)* %631)
  %639 = icmp eq i64 %638, 2
  store i1 %639, i1* %59
  br label %643
640:
  %641 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %630, i8 addrspace(1)* %631)
  %642 = icmp eq i64 %641, 2
  store i1 %642, i1* %59
  br label %643
643:
  %644 = load i1, i1* %59, !dbg !34
  %645 = zext i1 %644 to i64, !dbg !34
  %646 = or i64 %645, 72057594037927936, !dbg !34
  %647 = getelementptr i8, i8 addrspace(1)* null, i64 %646, !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %647), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !34
  %648 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %649 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %650 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %648, i64 4)
  %651 = icmp ne i8 addrspace(1)* %650, null
  %652 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %649, i64 4)
  %653 = icmp ne i8 addrspace(1)* %652, null
  %654 = and i1 %651, %653
  br i1 %654, label %655, label %658
655:
  %656 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %648, i8 addrspace(1)* %649)
  %657 = icmp sge i64 %656, 1
  store i1 %657, i1* %61
  br label %661
658:
  %659 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %648, i8 addrspace(1)* %649)
  %660 = icmp sge i64 %659, 1
  store i1 %660, i1* %61
  br label %661
661:
  %662 = load i1, i1* %61, !dbg !35
  %663 = zext i1 %662 to i64, !dbg !35
  %664 = or i64 %663, 72057594037927936, !dbg !35
  %665 = getelementptr i8, i8 addrspace(1)* null, i64 %664, !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %665), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %62, !dbg !35
  %666 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %667 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %668 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %666, i64 4)
  %669 = icmp ne i8 addrspace(1)* %668, null
  %670 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %667, i64 4)
  %671 = icmp ne i8 addrspace(1)* %670, null
  %672 = and i1 %669, %671
  br i1 %672, label %673, label %676
673:
  %674 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %666, i8 addrspace(1)* %667)
  %675 = icmp eq i64 %674, 0
  store i1 %675, i1* %63
  br label %679
676:
  %677 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %666, i8 addrspace(1)* %667)
  %678 = icmp eq i64 %677, 0
  store i1 %678, i1* %63
  br label %679
679:
  %680 = load i1, i1* %63, !dbg !36
  %681 = zext i1 %680 to i64, !dbg !36
  %682 = or i64 %681, 72057594037927936, !dbg !36
  %683 = getelementptr i8, i8 addrspace(1)* null, i64 %682, !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %683), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %64, !dbg !36
  %684 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %685 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %686 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %684, i64 4)
  %687 = icmp ne i8 addrspace(1)* %686, null
  %688 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %685, i64 4)
  %689 = icmp ne i8 addrspace(1)* %688, null
  %690 = and i1 %687, %689
  br i1 %690, label %691, label %694
691:
  %692 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %684, i8 addrspace(1)* %685)
  %693 = icmp ule i64 %692, 1
  store i1 %693, i1* %65
  br label %697
694:
  %695 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %684, i8 addrspace(1)* %685)
  %696 = icmp ule i64 %695, 1
  store i1 %696, i1* %65
  br label %697
697:
  %698 = load i1, i1* %65, !dbg !37
  %699 = zext i1 %698 to i64, !dbg !37
  %700 = or i64 %699, 72057594037927936, !dbg !37
  %701 = getelementptr i8, i8 addrspace(1)* null, i64 %700, !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %701), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %66, !dbg !37
  %702 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %703 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %704 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %702, i64 4)
  %705 = icmp ne i8 addrspace(1)* %704, null
  %706 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %703, i64 4)
  %707 = icmp ne i8 addrspace(1)* %706, null
  %708 = and i1 %705, %707
  br i1 %708, label %709, label %712
709:
  %710 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %702, i8 addrspace(1)* %703)
  %711 = icmp eq i64 %710, 2
  store i1 %711, i1* %67
  br label %715
712:
  %713 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %702, i8 addrspace(1)* %703)
  %714 = icmp eq i64 %713, 2
  store i1 %714, i1* %67
  br label %715
715:
  %716 = load i1, i1* %67, !dbg !38
  %717 = zext i1 %716 to i64, !dbg !38
  %718 = or i64 %717, 72057594037927936, !dbg !38
  %719 = getelementptr i8, i8 addrspace(1)* null, i64 %718, !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %719), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %68, !dbg !38
  %720 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %721 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %722 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %720, i64 4)
  %723 = icmp ne i8 addrspace(1)* %722, null
  %724 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %721, i64 4)
  %725 = icmp ne i8 addrspace(1)* %724, null
  %726 = and i1 %723, %725
  br i1 %726, label %727, label %730
727:
  %728 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %720, i8 addrspace(1)* %721)
  %729 = icmp sge i64 %728, 1
  store i1 %729, i1* %69
  br label %733
730:
  %731 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %720, i8 addrspace(1)* %721)
  %732 = icmp sge i64 %731, 1
  store i1 %732, i1* %69
  br label %733
733:
  %734 = load i1, i1* %69, !dbg !39
  %735 = zext i1 %734 to i64, !dbg !39
  %736 = or i64 %735, 72057594037927936, !dbg !39
  %737 = getelementptr i8, i8 addrspace(1)* null, i64 %736, !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %737), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %70, !dbg !39
  %738 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %739 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %740 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %738, i64 4)
  %741 = icmp ne i8 addrspace(1)* %740, null
  %742 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %739, i64 4)
  %743 = icmp ne i8 addrspace(1)* %742, null
  %744 = and i1 %741, %743
  br i1 %744, label %745, label %748
745:
  %746 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %738, i8 addrspace(1)* %739)
  %747 = icmp eq i64 %746, 0
  store i1 %747, i1* %71
  br label %751
748:
  %749 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %738, i8 addrspace(1)* %739)
  %750 = icmp eq i64 %749, 0
  store i1 %750, i1* %71
  br label %751
751:
  %752 = load i1, i1* %71, !dbg !40
  %753 = zext i1 %752 to i64, !dbg !40
  %754 = or i64 %753, 72057594037927936, !dbg !40
  %755 = getelementptr i8, i8 addrspace(1)* null, i64 %754, !dbg !40
  call void @_Bb02ioprintln(i8 addrspace(1)* %755), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !40
  %756 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %757 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %758 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %756, i64 4)
  %759 = icmp ne i8 addrspace(1)* %758, null
  %760 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %757, i64 4)
  %761 = icmp ne i8 addrspace(1)* %760, null
  %762 = and i1 %759, %761
  br i1 %762, label %763, label %766
763:
  %764 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %756, i8 addrspace(1)* %757)
  %765 = icmp ule i64 %764, 1
  store i1 %765, i1* %73
  br label %769
766:
  %767 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %756, i8 addrspace(1)* %757)
  %768 = icmp ule i64 %767, 1
  store i1 %768, i1* %73
  br label %769
769:
  %770 = load i1, i1* %73, !dbg !41
  %771 = zext i1 %770 to i64, !dbg !41
  %772 = or i64 %771, 72057594037927936, !dbg !41
  %773 = getelementptr i8, i8 addrspace(1)* null, i64 %772, !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %773), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %74, !dbg !41
  %774 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %775 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %776 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %774, i64 4)
  %777 = icmp ne i8 addrspace(1)* %776, null
  %778 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %775, i64 4)
  %779 = icmp ne i8 addrspace(1)* %778, null
  %780 = and i1 %777, %779
  br i1 %780, label %781, label %784
781:
  %782 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %774, i8 addrspace(1)* %775)
  %783 = icmp eq i64 %782, 2
  store i1 %783, i1* %75
  br label %787
784:
  %785 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %774, i8 addrspace(1)* %775)
  %786 = icmp eq i64 %785, 2
  store i1 %786, i1* %75
  br label %787
787:
  %788 = load i1, i1* %75, !dbg !42
  %789 = zext i1 %788 to i64, !dbg !42
  %790 = or i64 %789, 72057594037927936, !dbg !42
  %791 = getelementptr i8, i8 addrspace(1)* null, i64 %790, !dbg !42
  call void @_Bb02ioprintln(i8 addrspace(1)* %791), !dbg !42
  store i8 addrspace(1)* null, i8 addrspace(1)** %76, !dbg !42
  %792 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %793 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %794 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %792, i64 4)
  %795 = icmp ne i8 addrspace(1)* %794, null
  %796 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %793, i64 4)
  %797 = icmp ne i8 addrspace(1)* %796, null
  %798 = and i1 %795, %797
  br i1 %798, label %799, label %802
799:
  %800 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %792, i8 addrspace(1)* %793)
  %801 = icmp sge i64 %800, 1
  store i1 %801, i1* %77
  br label %805
802:
  %803 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %792, i8 addrspace(1)* %793)
  %804 = icmp sge i64 %803, 1
  store i1 %804, i1* %77
  br label %805
805:
  %806 = load i1, i1* %77, !dbg !43
  %807 = zext i1 %806 to i64, !dbg !43
  %808 = or i64 %807, 72057594037927936, !dbg !43
  %809 = getelementptr i8, i8 addrspace(1)* null, i64 %808, !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %809), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %78, !dbg !43
  %810 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %811 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %812 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %810, i64 4)
  %813 = icmp ne i8 addrspace(1)* %812, null
  %814 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %811, i64 4)
  %815 = icmp ne i8 addrspace(1)* %814, null
  %816 = and i1 %813, %815
  br i1 %816, label %817, label %820
817:
  %818 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %810, i8 addrspace(1)* %811)
  %819 = icmp eq i64 %818, 0
  store i1 %819, i1* %79
  br label %823
820:
  %821 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %810, i8 addrspace(1)* %811)
  %822 = icmp eq i64 %821, 0
  store i1 %822, i1* %79
  br label %823
823:
  %824 = load i1, i1* %79, !dbg !44
  %825 = zext i1 %824 to i64, !dbg !44
  %826 = or i64 %825, 72057594037927936, !dbg !44
  %827 = getelementptr i8, i8 addrspace(1)* null, i64 %826, !dbg !44
  call void @_Bb02ioprintln(i8 addrspace(1)* %827), !dbg !44
  store i8 addrspace(1)* null, i8 addrspace(1)** %80, !dbg !44
  %828 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %829 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %830 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %828, i64 4)
  %831 = icmp ne i8 addrspace(1)* %830, null
  %832 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %829, i64 4)
  %833 = icmp ne i8 addrspace(1)* %832, null
  %834 = and i1 %831, %833
  br i1 %834, label %835, label %838
835:
  %836 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %828, i8 addrspace(1)* %829)
  %837 = icmp ule i64 %836, 1
  store i1 %837, i1* %81
  br label %841
838:
  %839 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %828, i8 addrspace(1)* %829)
  %840 = icmp ule i64 %839, 1
  store i1 %840, i1* %81
  br label %841
841:
  %842 = load i1, i1* %81, !dbg !45
  %843 = zext i1 %842 to i64, !dbg !45
  %844 = or i64 %843, 72057594037927936, !dbg !45
  %845 = getelementptr i8, i8 addrspace(1)* null, i64 %844, !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %845), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %82, !dbg !45
  %846 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %847 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %848 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %846, i64 4)
  %849 = icmp ne i8 addrspace(1)* %848, null
  %850 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %847, i64 4)
  %851 = icmp ne i8 addrspace(1)* %850, null
  %852 = and i1 %849, %851
  br i1 %852, label %853, label %856
853:
  %854 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %846, i8 addrspace(1)* %847)
  %855 = icmp eq i64 %854, 2
  store i1 %855, i1* %83
  br label %859
856:
  %857 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %846, i8 addrspace(1)* %847)
  %858 = icmp eq i64 %857, 2
  store i1 %858, i1* %83
  br label %859
859:
  %860 = load i1, i1* %83, !dbg !46
  %861 = zext i1 %860 to i64, !dbg !46
  %862 = or i64 %861, 72057594037927936, !dbg !46
  %863 = getelementptr i8, i8 addrspace(1)* null, i64 %862, !dbg !46
  call void @_Bb02ioprintln(i8 addrspace(1)* %863), !dbg !46
  store i8 addrspace(1)* null, i8 addrspace(1)** %84, !dbg !46
  %864 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %865 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %866 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %864, i64 4)
  %867 = icmp ne i8 addrspace(1)* %866, null
  %868 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %865, i64 4)
  %869 = icmp ne i8 addrspace(1)* %868, null
  %870 = and i1 %867, %869
  br i1 %870, label %871, label %874
871:
  %872 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %864, i8 addrspace(1)* %865)
  %873 = icmp sge i64 %872, 1
  store i1 %873, i1* %85
  br label %877
874:
  %875 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %864, i8 addrspace(1)* %865)
  %876 = icmp sge i64 %875, 1
  store i1 %876, i1* %85
  br label %877
877:
  %878 = load i1, i1* %85, !dbg !47
  %879 = zext i1 %878 to i64, !dbg !47
  %880 = or i64 %879, 72057594037927936, !dbg !47
  %881 = getelementptr i8, i8 addrspace(1)* null, i64 %880, !dbg !47
  call void @_Bb02ioprintln(i8 addrspace(1)* %881), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %86, !dbg !47
  %882 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %883 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %884 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %882, i64 4)
  %885 = icmp ne i8 addrspace(1)* %884, null
  %886 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %883, i64 4)
  %887 = icmp ne i8 addrspace(1)* %886, null
  %888 = and i1 %885, %887
  br i1 %888, label %889, label %892
889:
  %890 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %882, i8 addrspace(1)* %883)
  %891 = icmp eq i64 %890, 0
  store i1 %891, i1* %87
  br label %895
892:
  %893 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %882, i8 addrspace(1)* %883)
  %894 = icmp eq i64 %893, 0
  store i1 %894, i1* %87
  br label %895
895:
  %896 = load i1, i1* %87, !dbg !48
  %897 = zext i1 %896 to i64, !dbg !48
  %898 = or i64 %897, 72057594037927936, !dbg !48
  %899 = getelementptr i8, i8 addrspace(1)* null, i64 %898, !dbg !48
  call void @_Bb02ioprintln(i8 addrspace(1)* %899), !dbg !48
  store i8 addrspace(1)* null, i8 addrspace(1)** %88, !dbg !48
  %900 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %901 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %902 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %900, i64 4)
  %903 = icmp ne i8 addrspace(1)* %902, null
  %904 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %901, i64 4)
  %905 = icmp ne i8 addrspace(1)* %904, null
  %906 = and i1 %903, %905
  br i1 %906, label %907, label %910
907:
  %908 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %900, i8 addrspace(1)* %901)
  %909 = icmp ule i64 %908, 1
  store i1 %909, i1* %89
  br label %913
910:
  %911 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %900, i8 addrspace(1)* %901)
  %912 = icmp ule i64 %911, 1
  store i1 %912, i1* %89
  br label %913
913:
  %914 = load i1, i1* %89, !dbg !49
  %915 = zext i1 %914 to i64, !dbg !49
  %916 = or i64 %915, 72057594037927936, !dbg !49
  %917 = getelementptr i8, i8 addrspace(1)* null, i64 %916, !dbg !49
  call void @_Bb02ioprintln(i8 addrspace(1)* %917), !dbg !49
  store i8 addrspace(1)* null, i8 addrspace(1)** %90, !dbg !49
  %918 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %919 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %920 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %918, i64 4)
  %921 = icmp ne i8 addrspace(1)* %920, null
  %922 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %919, i64 4)
  %923 = icmp ne i8 addrspace(1)* %922, null
  %924 = and i1 %921, %923
  br i1 %924, label %925, label %928
925:
  %926 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %918, i8 addrspace(1)* %919)
  %927 = icmp eq i64 %926, 2
  store i1 %927, i1* %91
  br label %931
928:
  %929 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %918, i8 addrspace(1)* %919)
  %930 = icmp eq i64 %929, 2
  store i1 %930, i1* %91
  br label %931
931:
  %932 = load i1, i1* %91, !dbg !50
  %933 = zext i1 %932 to i64, !dbg !50
  %934 = or i64 %933, 72057594037927936, !dbg !50
  %935 = getelementptr i8, i8 addrspace(1)* null, i64 %934, !dbg !50
  call void @_Bb02ioprintln(i8 addrspace(1)* %935), !dbg !50
  store i8 addrspace(1)* null, i8 addrspace(1)** %92, !dbg !50
  %936 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %937 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %938 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %936, i64 4)
  %939 = icmp ne i8 addrspace(1)* %938, null
  %940 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %937, i64 4)
  %941 = icmp ne i8 addrspace(1)* %940, null
  %942 = and i1 %939, %941
  br i1 %942, label %943, label %946
943:
  %944 = call i64 @_bal_array_exact_int_compare(i8 addrspace(1)* %936, i8 addrspace(1)* %937)
  %945 = icmp sge i64 %944, 1
  store i1 %945, i1* %93
  br label %949
946:
  %947 = call i64 @_bal_array_generic_compare(i8 addrspace(1)* %936, i8 addrspace(1)* %937)
  %948 = icmp sge i64 %947, 1
  store i1 %948, i1* %93
  br label %949
949:
  %950 = load i1, i1* %93, !dbg !51
  %951 = zext i1 %950 to i64, !dbg !51
  %952 = or i64 %951, 72057594037927936, !dbg !51
  %953 = getelementptr i8, i8 addrspace(1)* null, i64 %952, !dbg !51
  call void @_Bb02ioprintln(i8 addrspace(1)* %953), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %94, !dbg !51
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/order1-v.bal", directory:"")
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
