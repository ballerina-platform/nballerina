@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_array_float_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %a = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %d = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %f = alloca i8 addrspace(1)*
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
  br i1 %97, label %548, label %98
98:
  %99 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %100 = bitcast i8 addrspace(1)* %99 to [3 x i8 addrspace(1)*] addrspace(1)*
  %101 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %102 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %100, i64 0, i64 0
  store i8 addrspace(1)* %101, i8 addrspace(1)* addrspace(1)* %102
  %103 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  %104 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %100, i64 0, i64 1
  store i8 addrspace(1)* %103, i8 addrspace(1)* addrspace(1)* %104
  %105 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.3)
  %106 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %100, i64 0, i64 2
  store i8 addrspace(1)* %105, i8 addrspace(1)* addrspace(1)* %106
  %107 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %100 to [0 x i8 addrspace(1)*] addrspace(1)*
  %108 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %109 = bitcast i8 addrspace(1)* %108 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %110 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %110
  %111 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %111
  %112 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %112
  %113 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %107, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %113
  %114 = getelementptr i8, i8 addrspace(1)* %108, i64 1297036692682702848
  store i8 addrspace(1)* %114, i8 addrspace(1)** %1
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %115, i8 addrspace(1)** %a
  %116 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %117 = bitcast i8 addrspace(1)* %116 to [3 x i8 addrspace(1)*] addrspace(1)*
  %118 = call i8 addrspace(1)* @_bal_float_to_tagged(double 4.7)
  %119 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 0
  store i8 addrspace(1)* %118, i8 addrspace(1)* addrspace(1)* %119
  %120 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.0)
  %121 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 1
  store i8 addrspace(1)* %120, i8 addrspace(1)* addrspace(1)* %121
  %122 = call i8 addrspace(1)* @_bal_float_to_tagged(double 6.7)
  %123 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 2
  store i8 addrspace(1)* %122, i8 addrspace(1)* addrspace(1)* %123
  %124 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %117 to [0 x i8 addrspace(1)*] addrspace(1)*
  %125 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %126 = bitcast i8 addrspace(1)* %125 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %127 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %126, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %127
  %128 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %126, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %128
  %129 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %126, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %129
  %130 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %126, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %124, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %130
  %131 = getelementptr i8, i8 addrspace(1)* %125, i64 1297036692682702848
  store i8 addrspace(1)* %131, i8 addrspace(1)** %2
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %132, i8 addrspace(1)** %b
  %133 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %134 = bitcast i8 addrspace(1)* %133 to [3 x i8 addrspace(1)*] addrspace(1)*
  %135 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %136 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %134, i64 0, i64 0
  store i8 addrspace(1)* %135, i8 addrspace(1)* addrspace(1)* %136
  %137 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  %138 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %134, i64 0, i64 1
  store i8 addrspace(1)* %137, i8 addrspace(1)* addrspace(1)* %138
  %139 = call i8 addrspace(1)* @_bal_float_to_tagged(double 4.7)
  %140 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %134, i64 0, i64 2
  store i8 addrspace(1)* %139, i8 addrspace(1)* addrspace(1)* %140
  %141 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %134 to [0 x i8 addrspace(1)*] addrspace(1)*
  %142 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %143 = bitcast i8 addrspace(1)* %142 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %144 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %143, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %144
  %145 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %143, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %145
  %146 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %143, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %146
  %147 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %143, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %141, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %147
  %148 = getelementptr i8, i8 addrspace(1)* %142, i64 1297036692682702848
  store i8 addrspace(1)* %148, i8 addrspace(1)** %3
  %149 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %149, i8 addrspace(1)** %c
  %150 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %151 = bitcast i8 addrspace(1)* %150 to [4 x i8 addrspace(1)*] addrspace(1)*
  %152 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %153 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %151, i64 0, i64 0
  store i8 addrspace(1)* %152, i8 addrspace(1)* addrspace(1)* %153
  %154 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  %155 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %151, i64 0, i64 1
  store i8 addrspace(1)* %154, i8 addrspace(1)* addrspace(1)* %155
  %156 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.3)
  %157 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %151, i64 0, i64 2
  store i8 addrspace(1)* %156, i8 addrspace(1)* addrspace(1)* %157
  %158 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.1)
  %159 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %151, i64 0, i64 3
  store i8 addrspace(1)* %158, i8 addrspace(1)* addrspace(1)* %159
  %160 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %151 to [0 x i8 addrspace(1)*] addrspace(1)*
  %161 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %162 = bitcast i8 addrspace(1)* %161 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %163 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %162, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %163
  %164 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %162, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %164
  %165 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %162, i64 0, i32 2
  store i64 4, i64 addrspace(1)* %165
  %166 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %162, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %160, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %166
  %167 = getelementptr i8, i8 addrspace(1)* %161, i64 1297036692682702848
  store i8 addrspace(1)* %167, i8 addrspace(1)** %4
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %168, i8 addrspace(1)** %d
  %169 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %170 = bitcast i8 addrspace(1)* %169 to [4 x i8 addrspace(1)*] addrspace(1)*
  %171 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  %172 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %170, i64 0, i64 0
  store i8 addrspace(1)* %171, i8 addrspace(1)* addrspace(1)* %172
  %173 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  %174 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %170, i64 0, i64 1
  store i8 addrspace(1)* %173, i8 addrspace(1)* addrspace(1)* %174
  %175 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.3)
  %176 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %170, i64 0, i64 2
  store i8 addrspace(1)* %175, i8 addrspace(1)* addrspace(1)* %176
  %177 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.0)
  %178 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %170, i64 0, i64 3
  store i8 addrspace(1)* %177, i8 addrspace(1)* addrspace(1)* %178
  %179 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %170 to [0 x i8 addrspace(1)*] addrspace(1)*
  %180 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %181 = bitcast i8 addrspace(1)* %180 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %182 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %181, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %182
  %183 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %181, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %183
  %184 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %181, i64 0, i32 2
  store i64 4, i64 addrspace(1)* %184
  %185 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %181, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %179, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %185
  %186 = getelementptr i8, i8 addrspace(1)* %180, i64 1297036692682702848
  store i8 addrspace(1)* %186, i8 addrspace(1)** %5
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %187, i8 addrspace(1)** %e
  %188 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %189 = bitcast i8 addrspace(1)* %188 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %190 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 0
  store i64 256, i64 addrspace(1)* %190
  %191 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %191
  %192 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %192
  %193 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %189, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %193
  %194 = getelementptr i8, i8 addrspace(1)* %188, i64 1297036692682702848
  store i8 addrspace(1)* %194, i8 addrspace(1)** %6
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %195, i8 addrspace(1)** %f
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %197 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %198 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %196, i8 addrspace(1)* %197)
  %199 = icmp eq i64 %198, 0
  store i1 %199, i1* %7
  %200 = load i1, i1* %7
  %201 = zext i1 %200 to i64
  %202 = or i64 %201, 72057594037927936
  %203 = getelementptr i8, i8 addrspace(1)* null, i64 %202
  call void @_Bio__println(i8 addrspace(1)* %203)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %206 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %204, i8 addrspace(1)* %205)
  %207 = icmp ule i64 %206, 1
  store i1 %207, i1* %9
  %208 = load i1, i1* %9
  %209 = zext i1 %208 to i64
  %210 = or i64 %209, 72057594037927936
  %211 = getelementptr i8, i8 addrspace(1)* null, i64 %210
  call void @_Bio__println(i8 addrspace(1)* %211)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %213 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %214 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %212, i8 addrspace(1)* %213)
  %215 = icmp eq i64 %214, 2
  store i1 %215, i1* %11
  %216 = load i1, i1* %11
  %217 = zext i1 %216 to i64
  %218 = or i64 %217, 72057594037927936
  %219 = getelementptr i8, i8 addrspace(1)* null, i64 %218
  call void @_Bio__println(i8 addrspace(1)* %219)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %222 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %220, i8 addrspace(1)* %221)
  %223 = icmp sge i64 %222, 1
  store i1 %223, i1* %13
  %224 = load i1, i1* %13
  %225 = zext i1 %224 to i64
  %226 = or i64 %225, 72057594037927936
  %227 = getelementptr i8, i8 addrspace(1)* null, i64 %226
  call void @_Bio__println(i8 addrspace(1)* %227)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %230 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %228, i8 addrspace(1)* %229)
  %231 = icmp eq i64 %230, 0
  store i1 %231, i1* %15
  %232 = load i1, i1* %15
  %233 = zext i1 %232 to i64
  %234 = or i64 %233, 72057594037927936
  %235 = getelementptr i8, i8 addrspace(1)* null, i64 %234
  call void @_Bio__println(i8 addrspace(1)* %235)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %236 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %238 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %236, i8 addrspace(1)* %237)
  %239 = icmp ule i64 %238, 1
  store i1 %239, i1* %17
  %240 = load i1, i1* %17
  %241 = zext i1 %240 to i64
  %242 = or i64 %241, 72057594037927936
  %243 = getelementptr i8, i8 addrspace(1)* null, i64 %242
  call void @_Bio__println(i8 addrspace(1)* %243)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %245 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %246 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %244, i8 addrspace(1)* %245)
  %247 = icmp eq i64 %246, 2
  store i1 %247, i1* %19
  %248 = load i1, i1* %19
  %249 = zext i1 %248 to i64
  %250 = or i64 %249, 72057594037927936
  %251 = getelementptr i8, i8 addrspace(1)* null, i64 %250
  call void @_Bio__println(i8 addrspace(1)* %251)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %253 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %254 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %252, i8 addrspace(1)* %253)
  %255 = icmp sge i64 %254, 1
  store i1 %255, i1* %21
  %256 = load i1, i1* %21
  %257 = zext i1 %256 to i64
  %258 = or i64 %257, 72057594037927936
  %259 = getelementptr i8, i8 addrspace(1)* null, i64 %258
  call void @_Bio__println(i8 addrspace(1)* %259)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %260 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %261 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %262 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %260, i8 addrspace(1)* %261)
  %263 = icmp eq i64 %262, 0
  store i1 %263, i1* %23
  %264 = load i1, i1* %23
  %265 = zext i1 %264 to i64
  %266 = or i64 %265, 72057594037927936
  %267 = getelementptr i8, i8 addrspace(1)* null, i64 %266
  call void @_Bio__println(i8 addrspace(1)* %267)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %268 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %269 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %270 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %268, i8 addrspace(1)* %269)
  %271 = icmp ule i64 %270, 1
  store i1 %271, i1* %25
  %272 = load i1, i1* %25
  %273 = zext i1 %272 to i64
  %274 = or i64 %273, 72057594037927936
  %275 = getelementptr i8, i8 addrspace(1)* null, i64 %274
  call void @_Bio__println(i8 addrspace(1)* %275)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %276 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %277 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %278 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %276, i8 addrspace(1)* %277)
  %279 = icmp eq i64 %278, 2
  store i1 %279, i1* %27
  %280 = load i1, i1* %27
  %281 = zext i1 %280 to i64
  %282 = or i64 %281, 72057594037927936
  %283 = getelementptr i8, i8 addrspace(1)* null, i64 %282
  call void @_Bio__println(i8 addrspace(1)* %283)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %284 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %285 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %286 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %284, i8 addrspace(1)* %285)
  %287 = icmp sge i64 %286, 1
  store i1 %287, i1* %29
  %288 = load i1, i1* %29
  %289 = zext i1 %288 to i64
  %290 = or i64 %289, 72057594037927936
  %291 = getelementptr i8, i8 addrspace(1)* null, i64 %290
  call void @_Bio__println(i8 addrspace(1)* %291)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %292 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %293 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %294 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %292, i8 addrspace(1)* %293)
  %295 = icmp eq i64 %294, 0
  store i1 %295, i1* %31
  %296 = load i1, i1* %31
  %297 = zext i1 %296 to i64
  %298 = or i64 %297, 72057594037927936
  %299 = getelementptr i8, i8 addrspace(1)* null, i64 %298
  call void @_Bio__println(i8 addrspace(1)* %299)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %300 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %301 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %302 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %300, i8 addrspace(1)* %301)
  %303 = icmp ule i64 %302, 1
  store i1 %303, i1* %33
  %304 = load i1, i1* %33
  %305 = zext i1 %304 to i64
  %306 = or i64 %305, 72057594037927936
  %307 = getelementptr i8, i8 addrspace(1)* null, i64 %306
  call void @_Bio__println(i8 addrspace(1)* %307)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %308 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %309 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %310 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %308, i8 addrspace(1)* %309)
  %311 = icmp eq i64 %310, 2
  store i1 %311, i1* %35
  %312 = load i1, i1* %35
  %313 = zext i1 %312 to i64
  %314 = or i64 %313, 72057594037927936
  %315 = getelementptr i8, i8 addrspace(1)* null, i64 %314
  call void @_Bio__println(i8 addrspace(1)* %315)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %316 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %317 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %318 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %316, i8 addrspace(1)* %317)
  %319 = icmp sge i64 %318, 1
  store i1 %319, i1* %37
  %320 = load i1, i1* %37
  %321 = zext i1 %320 to i64
  %322 = or i64 %321, 72057594037927936
  %323 = getelementptr i8, i8 addrspace(1)* null, i64 %322
  call void @_Bio__println(i8 addrspace(1)* %323)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %325 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %326 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %324, i8 addrspace(1)* %325)
  %327 = icmp eq i64 %326, 0
  store i1 %327, i1* %39
  %328 = load i1, i1* %39
  %329 = zext i1 %328 to i64
  %330 = or i64 %329, 72057594037927936
  %331 = getelementptr i8, i8 addrspace(1)* null, i64 %330
  call void @_Bio__println(i8 addrspace(1)* %331)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  %332 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %333 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %334 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %332, i8 addrspace(1)* %333)
  %335 = icmp ule i64 %334, 1
  store i1 %335, i1* %41
  %336 = load i1, i1* %41
  %337 = zext i1 %336 to i64
  %338 = or i64 %337, 72057594037927936
  %339 = getelementptr i8, i8 addrspace(1)* null, i64 %338
  call void @_Bio__println(i8 addrspace(1)* %339)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %340 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %341 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %342 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %340, i8 addrspace(1)* %341)
  %343 = icmp eq i64 %342, 2
  store i1 %343, i1* %43
  %344 = load i1, i1* %43
  %345 = zext i1 %344 to i64
  %346 = or i64 %345, 72057594037927936
  %347 = getelementptr i8, i8 addrspace(1)* null, i64 %346
  call void @_Bio__println(i8 addrspace(1)* %347)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %348 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %349 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %350 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %348, i8 addrspace(1)* %349)
  %351 = icmp sge i64 %350, 1
  store i1 %351, i1* %45
  %352 = load i1, i1* %45
  %353 = zext i1 %352 to i64
  %354 = or i64 %353, 72057594037927936
  %355 = getelementptr i8, i8 addrspace(1)* null, i64 %354
  call void @_Bio__println(i8 addrspace(1)* %355)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %356 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %357 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %358 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %356, i8 addrspace(1)* %357)
  %359 = icmp eq i64 %358, 0
  store i1 %359, i1* %47
  %360 = load i1, i1* %47
  %361 = zext i1 %360 to i64
  %362 = or i64 %361, 72057594037927936
  %363 = getelementptr i8, i8 addrspace(1)* null, i64 %362
  call void @_Bio__println(i8 addrspace(1)* %363)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  %364 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %365 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %366 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %364, i8 addrspace(1)* %365)
  %367 = icmp ule i64 %366, 1
  store i1 %367, i1* %49
  %368 = load i1, i1* %49
  %369 = zext i1 %368 to i64
  %370 = or i64 %369, 72057594037927936
  %371 = getelementptr i8, i8 addrspace(1)* null, i64 %370
  call void @_Bio__println(i8 addrspace(1)* %371)
  store i8 addrspace(1)* null, i8 addrspace(1)** %50
  %372 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %373 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %374 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %372, i8 addrspace(1)* %373)
  %375 = icmp eq i64 %374, 2
  store i1 %375, i1* %51
  %376 = load i1, i1* %51
  %377 = zext i1 %376 to i64
  %378 = or i64 %377, 72057594037927936
  %379 = getelementptr i8, i8 addrspace(1)* null, i64 %378
  call void @_Bio__println(i8 addrspace(1)* %379)
  store i8 addrspace(1)* null, i8 addrspace(1)** %52
  %380 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %381 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %382 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %380, i8 addrspace(1)* %381)
  %383 = icmp sge i64 %382, 1
  store i1 %383, i1* %53
  %384 = load i1, i1* %53
  %385 = zext i1 %384 to i64
  %386 = or i64 %385, 72057594037927936
  %387 = getelementptr i8, i8 addrspace(1)* null, i64 %386
  call void @_Bio__println(i8 addrspace(1)* %387)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  %388 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %389 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %390 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %388, i8 addrspace(1)* %389)
  %391 = icmp eq i64 %390, 0
  store i1 %391, i1* %55
  %392 = load i1, i1* %55
  %393 = zext i1 %392 to i64
  %394 = or i64 %393, 72057594037927936
  %395 = getelementptr i8, i8 addrspace(1)* null, i64 %394
  call void @_Bio__println(i8 addrspace(1)* %395)
  store i8 addrspace(1)* null, i8 addrspace(1)** %56
  %396 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %397 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %398 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %396, i8 addrspace(1)* %397)
  %399 = icmp ule i64 %398, 1
  store i1 %399, i1* %57
  %400 = load i1, i1* %57
  %401 = zext i1 %400 to i64
  %402 = or i64 %401, 72057594037927936
  %403 = getelementptr i8, i8 addrspace(1)* null, i64 %402
  call void @_Bio__println(i8 addrspace(1)* %403)
  store i8 addrspace(1)* null, i8 addrspace(1)** %58
  %404 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %405 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %406 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %404, i8 addrspace(1)* %405)
  %407 = icmp eq i64 %406, 2
  store i1 %407, i1* %59
  %408 = load i1, i1* %59
  %409 = zext i1 %408 to i64
  %410 = or i64 %409, 72057594037927936
  %411 = getelementptr i8, i8 addrspace(1)* null, i64 %410
  call void @_Bio__println(i8 addrspace(1)* %411)
  store i8 addrspace(1)* null, i8 addrspace(1)** %60
  %412 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %413 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %414 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %412, i8 addrspace(1)* %413)
  %415 = icmp sge i64 %414, 1
  store i1 %415, i1* %61
  %416 = load i1, i1* %61
  %417 = zext i1 %416 to i64
  %418 = or i64 %417, 72057594037927936
  %419 = getelementptr i8, i8 addrspace(1)* null, i64 %418
  call void @_Bio__println(i8 addrspace(1)* %419)
  store i8 addrspace(1)* null, i8 addrspace(1)** %62
  %420 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %421 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %422 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %420, i8 addrspace(1)* %421)
  %423 = icmp eq i64 %422, 0
  store i1 %423, i1* %63
  %424 = load i1, i1* %63
  %425 = zext i1 %424 to i64
  %426 = or i64 %425, 72057594037927936
  %427 = getelementptr i8, i8 addrspace(1)* null, i64 %426
  call void @_Bio__println(i8 addrspace(1)* %427)
  store i8 addrspace(1)* null, i8 addrspace(1)** %64
  %428 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %429 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %430 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %428, i8 addrspace(1)* %429)
  %431 = icmp ule i64 %430, 1
  store i1 %431, i1* %65
  %432 = load i1, i1* %65
  %433 = zext i1 %432 to i64
  %434 = or i64 %433, 72057594037927936
  %435 = getelementptr i8, i8 addrspace(1)* null, i64 %434
  call void @_Bio__println(i8 addrspace(1)* %435)
  store i8 addrspace(1)* null, i8 addrspace(1)** %66
  %436 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %437 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %438 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %436, i8 addrspace(1)* %437)
  %439 = icmp eq i64 %438, 2
  store i1 %439, i1* %67
  %440 = load i1, i1* %67
  %441 = zext i1 %440 to i64
  %442 = or i64 %441, 72057594037927936
  %443 = getelementptr i8, i8 addrspace(1)* null, i64 %442
  call void @_Bio__println(i8 addrspace(1)* %443)
  store i8 addrspace(1)* null, i8 addrspace(1)** %68
  %444 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %445 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %446 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %444, i8 addrspace(1)* %445)
  %447 = icmp sge i64 %446, 1
  store i1 %447, i1* %69
  %448 = load i1, i1* %69
  %449 = zext i1 %448 to i64
  %450 = or i64 %449, 72057594037927936
  %451 = getelementptr i8, i8 addrspace(1)* null, i64 %450
  call void @_Bio__println(i8 addrspace(1)* %451)
  store i8 addrspace(1)* null, i8 addrspace(1)** %70
  %452 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %453 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %454 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %452, i8 addrspace(1)* %453)
  %455 = icmp eq i64 %454, 0
  store i1 %455, i1* %71
  %456 = load i1, i1* %71
  %457 = zext i1 %456 to i64
  %458 = or i64 %457, 72057594037927936
  %459 = getelementptr i8, i8 addrspace(1)* null, i64 %458
  call void @_Bio__println(i8 addrspace(1)* %459)
  store i8 addrspace(1)* null, i8 addrspace(1)** %72
  %460 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %461 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %462 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %460, i8 addrspace(1)* %461)
  %463 = icmp ule i64 %462, 1
  store i1 %463, i1* %73
  %464 = load i1, i1* %73
  %465 = zext i1 %464 to i64
  %466 = or i64 %465, 72057594037927936
  %467 = getelementptr i8, i8 addrspace(1)* null, i64 %466
  call void @_Bio__println(i8 addrspace(1)* %467)
  store i8 addrspace(1)* null, i8 addrspace(1)** %74
  %468 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %469 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %470 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %468, i8 addrspace(1)* %469)
  %471 = icmp eq i64 %470, 2
  store i1 %471, i1* %75
  %472 = load i1, i1* %75
  %473 = zext i1 %472 to i64
  %474 = or i64 %473, 72057594037927936
  %475 = getelementptr i8, i8 addrspace(1)* null, i64 %474
  call void @_Bio__println(i8 addrspace(1)* %475)
  store i8 addrspace(1)* null, i8 addrspace(1)** %76
  %476 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %477 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %478 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %476, i8 addrspace(1)* %477)
  %479 = icmp sge i64 %478, 1
  store i1 %479, i1* %77
  %480 = load i1, i1* %77
  %481 = zext i1 %480 to i64
  %482 = or i64 %481, 72057594037927936
  %483 = getelementptr i8, i8 addrspace(1)* null, i64 %482
  call void @_Bio__println(i8 addrspace(1)* %483)
  store i8 addrspace(1)* null, i8 addrspace(1)** %78
  %484 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %485 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %486 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %484, i8 addrspace(1)* %485)
  %487 = icmp eq i64 %486, 0
  store i1 %487, i1* %79
  %488 = load i1, i1* %79
  %489 = zext i1 %488 to i64
  %490 = or i64 %489, 72057594037927936
  %491 = getelementptr i8, i8 addrspace(1)* null, i64 %490
  call void @_Bio__println(i8 addrspace(1)* %491)
  store i8 addrspace(1)* null, i8 addrspace(1)** %80
  %492 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %493 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %494 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %492, i8 addrspace(1)* %493)
  %495 = icmp ule i64 %494, 1
  store i1 %495, i1* %81
  %496 = load i1, i1* %81
  %497 = zext i1 %496 to i64
  %498 = or i64 %497, 72057594037927936
  %499 = getelementptr i8, i8 addrspace(1)* null, i64 %498
  call void @_Bio__println(i8 addrspace(1)* %499)
  store i8 addrspace(1)* null, i8 addrspace(1)** %82
  %500 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %501 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %502 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %500, i8 addrspace(1)* %501)
  %503 = icmp eq i64 %502, 2
  store i1 %503, i1* %83
  %504 = load i1, i1* %83
  %505 = zext i1 %504 to i64
  %506 = or i64 %505, 72057594037927936
  %507 = getelementptr i8, i8 addrspace(1)* null, i64 %506
  call void @_Bio__println(i8 addrspace(1)* %507)
  store i8 addrspace(1)* null, i8 addrspace(1)** %84
  %508 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %509 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %510 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %508, i8 addrspace(1)* %509)
  %511 = icmp sge i64 %510, 1
  store i1 %511, i1* %85
  %512 = load i1, i1* %85
  %513 = zext i1 %512 to i64
  %514 = or i64 %513, 72057594037927936
  %515 = getelementptr i8, i8 addrspace(1)* null, i64 %514
  call void @_Bio__println(i8 addrspace(1)* %515)
  store i8 addrspace(1)* null, i8 addrspace(1)** %86
  %516 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %517 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %518 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %516, i8 addrspace(1)* %517)
  %519 = icmp eq i64 %518, 0
  store i1 %519, i1* %87
  %520 = load i1, i1* %87
  %521 = zext i1 %520 to i64
  %522 = or i64 %521, 72057594037927936
  %523 = getelementptr i8, i8 addrspace(1)* null, i64 %522
  call void @_Bio__println(i8 addrspace(1)* %523)
  store i8 addrspace(1)* null, i8 addrspace(1)** %88
  %524 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %525 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %526 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %524, i8 addrspace(1)* %525)
  %527 = icmp ule i64 %526, 1
  store i1 %527, i1* %89
  %528 = load i1, i1* %89
  %529 = zext i1 %528 to i64
  %530 = or i64 %529, 72057594037927936
  %531 = getelementptr i8, i8 addrspace(1)* null, i64 %530
  call void @_Bio__println(i8 addrspace(1)* %531)
  store i8 addrspace(1)* null, i8 addrspace(1)** %90
  %532 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %533 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %534 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %532, i8 addrspace(1)* %533)
  %535 = icmp eq i64 %534, 2
  store i1 %535, i1* %91
  %536 = load i1, i1* %91
  %537 = zext i1 %536 to i64
  %538 = or i64 %537, 72057594037927936
  %539 = getelementptr i8, i8 addrspace(1)* null, i64 %538
  call void @_Bio__println(i8 addrspace(1)* %539)
  store i8 addrspace(1)* null, i8 addrspace(1)** %92
  %540 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %541 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %542 = call i64 @_bal_array_float_compare(i8 addrspace(1)* %540, i8 addrspace(1)* %541)
  %543 = icmp sge i64 %542, 1
  store i1 %543, i1* %93
  %544 = load i1, i1* %93
  %545 = zext i1 %544 to i64
  %546 = or i64 %545, 72057594037927936
  %547 = getelementptr i8, i8 addrspace(1)* null, i64 %546
  call void @_Bio__println(i8 addrspace(1)* %547)
  store i8 addrspace(1)* null, i8 addrspace(1)** %94
  ret void
548:
  %549 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %549)
  unreachable
}
