@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_array_int_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  %44 = alloca i1
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i1
  %47 = alloca i8 addrspace(1)*
  %48 = alloca i1
  %49 = alloca i8 addrspace(1)*
  %50 = alloca i1
  %51 = alloca i8 addrspace(1)*
  %52 = alloca i1
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i1
  %55 = alloca i8 addrspace(1)*
  %56 = alloca i1
  %57 = alloca i8 addrspace(1)*
  %58 = alloca i1
  %59 = alloca i8 addrspace(1)*
  %60 = alloca i1
  %61 = alloca i8 addrspace(1)*
  %62 = alloca i1
  %63 = alloca i8 addrspace(1)*
  %64 = alloca i1
  %65 = alloca i8 addrspace(1)*
  %66 = alloca i1
  %67 = alloca i8 addrspace(1)*
  %68 = alloca i1
  %69 = alloca i8 addrspace(1)*
  %70 = alloca i1
  %71 = alloca i8 addrspace(1)*
  %72 = alloca i1
  %73 = alloca i8 addrspace(1)*
  %74 = alloca i1
  %75 = alloca i8 addrspace(1)*
  %76 = alloca i1
  %77 = alloca i8 addrspace(1)*
  %78 = alloca i8
  %79 = load i8*, i8** @_bal_stack_guard
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %462, label %81
81:
  %82 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %83 = bitcast i8 addrspace(1)* %82 to [2 x i8 addrspace(1)*] addrspace(1)*
  %84 = zext i1 0 to i64
  %85 = or i64 %84, 72057594037927936
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85
  %87 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %83, i64 0, i64 0
  store i8 addrspace(1)* %86, i8 addrspace(1)* addrspace(1)* %87
  %88 = zext i1 1 to i64
  %89 = or i64 %88, 72057594037927936
  %90 = getelementptr i8, i8 addrspace(1)* null, i64 %89
  %91 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %83, i64 0, i64 1
  store i8 addrspace(1)* %90, i8 addrspace(1)* addrspace(1)* %91
  %92 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %83 to [0 x i8 addrspace(1)*] addrspace(1)*
  %93 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %94 = bitcast i8 addrspace(1)* %93 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %95 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %95
  %96 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %96
  %97 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 2
  store i64 2, i64 addrspace(1)* %97
  %98 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %92, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %98
  %99 = getelementptr i8, i8 addrspace(1)* %93, i64 1297036692682702848
  store i8 addrspace(1)* %99, i8 addrspace(1)** %1
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %100, i8 addrspace(1)** %a
  %101 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %102 = bitcast i8 addrspace(1)* %101 to [2 x i8 addrspace(1)*] addrspace(1)*
  %103 = zext i1 1 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, i8 addrspace(1)* null, i64 %104
  %106 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %102, i64 0, i64 0
  store i8 addrspace(1)* %105, i8 addrspace(1)* addrspace(1)* %106
  %107 = zext i1 0 to i64
  %108 = or i64 %107, 72057594037927936
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108
  %110 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %102, i64 0, i64 1
  store i8 addrspace(1)* %109, i8 addrspace(1)* addrspace(1)* %110
  %111 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %102 to [0 x i8 addrspace(1)*] addrspace(1)*
  %112 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %113 = bitcast i8 addrspace(1)* %112 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %114 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %113, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %114
  %115 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %113, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %115
  %116 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %113, i64 0, i32 2
  store i64 2, i64 addrspace(1)* %116
  %117 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %113, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %111, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %117
  %118 = getelementptr i8, i8 addrspace(1)* %112, i64 1297036692682702848
  store i8 addrspace(1)* %118, i8 addrspace(1)** %2
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %119, i8 addrspace(1)** %b
  %120 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %121 = bitcast i8 addrspace(1)* %120 to [3 x i8 addrspace(1)*] addrspace(1)*
  %122 = zext i1 0 to i64
  %123 = or i64 %122, 72057594037927936
  %124 = getelementptr i8, i8 addrspace(1)* null, i64 %123
  %125 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %121, i64 0, i64 0
  store i8 addrspace(1)* %124, i8 addrspace(1)* addrspace(1)* %125
  %126 = zext i1 1 to i64
  %127 = or i64 %126, 72057594037927936
  %128 = getelementptr i8, i8 addrspace(1)* null, i64 %127
  %129 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %121, i64 0, i64 1
  store i8 addrspace(1)* %128, i8 addrspace(1)* addrspace(1)* %129
  %130 = zext i1 1 to i64
  %131 = or i64 %130, 72057594037927936
  %132 = getelementptr i8, i8 addrspace(1)* null, i64 %131
  %133 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %121, i64 0, i64 2
  store i8 addrspace(1)* %132, i8 addrspace(1)* addrspace(1)* %133
  %134 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %121 to [0 x i8 addrspace(1)*] addrspace(1)*
  %135 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %136 = bitcast i8 addrspace(1)* %135 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %137 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %136, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %137
  %138 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %136, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %138
  %139 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %136, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %139
  %140 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %136, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %134, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %140
  %141 = getelementptr i8, i8 addrspace(1)* %135, i64 1297036692682702848
  store i8 addrspace(1)* %141, i8 addrspace(1)** %3
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %142, i8 addrspace(1)** %c
  %143 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %144 = bitcast i8 addrspace(1)* %143 to [3 x i8 addrspace(1)*] addrspace(1)*
  %145 = zext i1 0 to i64
  %146 = or i64 %145, 72057594037927936
  %147 = getelementptr i8, i8 addrspace(1)* null, i64 %146
  %148 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %144, i64 0, i64 0
  store i8 addrspace(1)* %147, i8 addrspace(1)* addrspace(1)* %148
  %149 = zext i1 1 to i64
  %150 = or i64 %149, 72057594037927936
  %151 = getelementptr i8, i8 addrspace(1)* null, i64 %150
  %152 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %144, i64 0, i64 1
  store i8 addrspace(1)* %151, i8 addrspace(1)* addrspace(1)* %152
  %153 = zext i1 0 to i64
  %154 = or i64 %153, 72057594037927936
  %155 = getelementptr i8, i8 addrspace(1)* null, i64 %154
  %156 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %144, i64 0, i64 2
  store i8 addrspace(1)* %155, i8 addrspace(1)* addrspace(1)* %156
  %157 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %144 to [0 x i8 addrspace(1)*] addrspace(1)*
  %158 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %159 = bitcast i8 addrspace(1)* %158 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %160 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %159, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %160
  %161 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %159, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %161
  %162 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %159, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %162
  %163 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %159, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %157, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %163
  %164 = getelementptr i8, i8 addrspace(1)* %158, i64 1297036692682702848
  store i8 addrspace(1)* %164, i8 addrspace(1)** %4
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %165, i8 addrspace(1)** %d
  %166 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %167 = bitcast i8 addrspace(1)* %166 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %168 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %167, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %168
  %169 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %167, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %169
  %170 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %167, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %170
  %171 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %167, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %171
  %172 = getelementptr i8, i8 addrspace(1)* %166, i64 1297036692682702848
  store i8 addrspace(1)* %172, i8 addrspace(1)** %5
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %173, i8 addrspace(1)** %e
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %176 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %174, i8 addrspace(1)* %175)
  %177 = icmp eq i64 %176, 0
  store i1 %177, i1* %6
  %178 = load i1, i1* %6
  %179 = zext i1 %178 to i64
  %180 = or i64 %179, 72057594037927936
  %181 = getelementptr i8, i8 addrspace(1)* null, i64 %180
  call void @_Bio__println(i8 addrspace(1)* %181)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %184 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %182, i8 addrspace(1)* %183)
  %185 = icmp ule i64 %184, 1
  store i1 %185, i1* %8
  %186 = load i1, i1* %8
  %187 = zext i1 %186 to i64
  %188 = or i64 %187, 72057594037927936
  %189 = getelementptr i8, i8 addrspace(1)* null, i64 %188
  call void @_Bio__println(i8 addrspace(1)* %189)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %192 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %190, i8 addrspace(1)* %191)
  %193 = icmp eq i64 %192, 2
  store i1 %193, i1* %10
  %194 = load i1, i1* %10
  %195 = zext i1 %194 to i64
  %196 = or i64 %195, 72057594037927936
  %197 = getelementptr i8, i8 addrspace(1)* null, i64 %196
  call void @_Bio__println(i8 addrspace(1)* %197)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %200 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %198, i8 addrspace(1)* %199)
  %201 = icmp sge i64 %200, 1
  store i1 %201, i1* %12
  %202 = load i1, i1* %12
  %203 = zext i1 %202 to i64
  %204 = or i64 %203, 72057594037927936
  %205 = getelementptr i8, i8 addrspace(1)* null, i64 %204
  call void @_Bio__println(i8 addrspace(1)* %205)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %208 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %206, i8 addrspace(1)* %207)
  %209 = icmp eq i64 %208, 0
  store i1 %209, i1* %14
  %210 = load i1, i1* %14
  %211 = zext i1 %210 to i64
  %212 = or i64 %211, 72057594037927936
  %213 = getelementptr i8, i8 addrspace(1)* null, i64 %212
  call void @_Bio__println(i8 addrspace(1)* %213)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %215 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %216 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %214, i8 addrspace(1)* %215)
  %217 = icmp ule i64 %216, 1
  store i1 %217, i1* %16
  %218 = load i1, i1* %16
  %219 = zext i1 %218 to i64
  %220 = or i64 %219, 72057594037927936
  %221 = getelementptr i8, i8 addrspace(1)* null, i64 %220
  call void @_Bio__println(i8 addrspace(1)* %221)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %224 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %222, i8 addrspace(1)* %223)
  %225 = icmp eq i64 %224, 2
  store i1 %225, i1* %18
  %226 = load i1, i1* %18
  %227 = zext i1 %226 to i64
  %228 = or i64 %227, 72057594037927936
  %229 = getelementptr i8, i8 addrspace(1)* null, i64 %228
  call void @_Bio__println(i8 addrspace(1)* %229)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %231 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %232 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %230, i8 addrspace(1)* %231)
  %233 = icmp sge i64 %232, 1
  store i1 %233, i1* %20
  %234 = load i1, i1* %20
  %235 = zext i1 %234 to i64
  %236 = or i64 %235, 72057594037927936
  %237 = getelementptr i8, i8 addrspace(1)* null, i64 %236
  call void @_Bio__println(i8 addrspace(1)* %237)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %238 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %239 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %240 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %238, i8 addrspace(1)* %239)
  %241 = icmp eq i64 %240, 0
  store i1 %241, i1* %22
  %242 = load i1, i1* %22
  %243 = zext i1 %242 to i64
  %244 = or i64 %243, 72057594037927936
  %245 = getelementptr i8, i8 addrspace(1)* null, i64 %244
  call void @_Bio__println(i8 addrspace(1)* %245)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %246 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %247 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %248 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %246, i8 addrspace(1)* %247)
  %249 = icmp ule i64 %248, 1
  store i1 %249, i1* %24
  %250 = load i1, i1* %24
  %251 = zext i1 %250 to i64
  %252 = or i64 %251, 72057594037927936
  %253 = getelementptr i8, i8 addrspace(1)* null, i64 %252
  call void @_Bio__println(i8 addrspace(1)* %253)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %254 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %255 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %256 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %254, i8 addrspace(1)* %255)
  %257 = icmp eq i64 %256, 2
  store i1 %257, i1* %26
  %258 = load i1, i1* %26
  %259 = zext i1 %258 to i64
  %260 = or i64 %259, 72057594037927936
  %261 = getelementptr i8, i8 addrspace(1)* null, i64 %260
  call void @_Bio__println(i8 addrspace(1)* %261)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %262 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %263 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %264 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %262, i8 addrspace(1)* %263)
  %265 = icmp sge i64 %264, 1
  store i1 %265, i1* %28
  %266 = load i1, i1* %28
  %267 = zext i1 %266 to i64
  %268 = or i64 %267, 72057594037927936
  %269 = getelementptr i8, i8 addrspace(1)* null, i64 %268
  call void @_Bio__println(i8 addrspace(1)* %269)
  store i8 addrspace(1)* null, i8 addrspace(1)** %29
  %270 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %271 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %272 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %270, i8 addrspace(1)* %271)
  %273 = icmp eq i64 %272, 0
  store i1 %273, i1* %30
  %274 = load i1, i1* %30
  %275 = zext i1 %274 to i64
  %276 = or i64 %275, 72057594037927936
  %277 = getelementptr i8, i8 addrspace(1)* null, i64 %276
  call void @_Bio__println(i8 addrspace(1)* %277)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  %278 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %279 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %280 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %278, i8 addrspace(1)* %279)
  %281 = icmp ule i64 %280, 1
  store i1 %281, i1* %32
  %282 = load i1, i1* %32
  %283 = zext i1 %282 to i64
  %284 = or i64 %283, 72057594037927936
  %285 = getelementptr i8, i8 addrspace(1)* null, i64 %284
  call void @_Bio__println(i8 addrspace(1)* %285)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %286 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %287 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %288 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %286, i8 addrspace(1)* %287)
  %289 = icmp eq i64 %288, 2
  store i1 %289, i1* %34
  %290 = load i1, i1* %34
  %291 = zext i1 %290 to i64
  %292 = or i64 %291, 72057594037927936
  %293 = getelementptr i8, i8 addrspace(1)* null, i64 %292
  call void @_Bio__println(i8 addrspace(1)* %293)
  store i8 addrspace(1)* null, i8 addrspace(1)** %35
  %294 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %295 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %296 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %294, i8 addrspace(1)* %295)
  %297 = icmp sge i64 %296, 1
  store i1 %297, i1* %36
  %298 = load i1, i1* %36
  %299 = zext i1 %298 to i64
  %300 = or i64 %299, 72057594037927936
  %301 = getelementptr i8, i8 addrspace(1)* null, i64 %300
  call void @_Bio__println(i8 addrspace(1)* %301)
  store i8 addrspace(1)* null, i8 addrspace(1)** %37
  %302 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %303 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %304 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %302, i8 addrspace(1)* %303)
  %305 = icmp eq i64 %304, 0
  store i1 %305, i1* %38
  %306 = load i1, i1* %38
  %307 = zext i1 %306 to i64
  %308 = or i64 %307, 72057594037927936
  %309 = getelementptr i8, i8 addrspace(1)* null, i64 %308
  call void @_Bio__println(i8 addrspace(1)* %309)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %310 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %311 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %312 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %310, i8 addrspace(1)* %311)
  %313 = icmp ule i64 %312, 1
  store i1 %313, i1* %40
  %314 = load i1, i1* %40
  %315 = zext i1 %314 to i64
  %316 = or i64 %315, 72057594037927936
  %317 = getelementptr i8, i8 addrspace(1)* null, i64 %316
  call void @_Bio__println(i8 addrspace(1)* %317)
  store i8 addrspace(1)* null, i8 addrspace(1)** %41
  %318 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %319 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %320 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %318, i8 addrspace(1)* %319)
  %321 = icmp eq i64 %320, 2
  store i1 %321, i1* %42
  %322 = load i1, i1* %42
  %323 = zext i1 %322 to i64
  %324 = or i64 %323, 72057594037927936
  %325 = getelementptr i8, i8 addrspace(1)* null, i64 %324
  call void @_Bio__println(i8 addrspace(1)* %325)
  store i8 addrspace(1)* null, i8 addrspace(1)** %43
  %326 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %327 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %328 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %326, i8 addrspace(1)* %327)
  %329 = icmp sge i64 %328, 1
  store i1 %329, i1* %44
  %330 = load i1, i1* %44
  %331 = zext i1 %330 to i64
  %332 = or i64 %331, 72057594037927936
  %333 = getelementptr i8, i8 addrspace(1)* null, i64 %332
  call void @_Bio__println(i8 addrspace(1)* %333)
  store i8 addrspace(1)* null, i8 addrspace(1)** %45
  %334 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %335 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %336 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %334, i8 addrspace(1)* %335)
  %337 = icmp eq i64 %336, 0
  store i1 %337, i1* %46
  %338 = load i1, i1* %46
  %339 = zext i1 %338 to i64
  %340 = or i64 %339, 72057594037927936
  %341 = getelementptr i8, i8 addrspace(1)* null, i64 %340
  call void @_Bio__println(i8 addrspace(1)* %341)
  store i8 addrspace(1)* null, i8 addrspace(1)** %47
  %342 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %343 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %344 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %342, i8 addrspace(1)* %343)
  %345 = icmp ule i64 %344, 1
  store i1 %345, i1* %48
  %346 = load i1, i1* %48
  %347 = zext i1 %346 to i64
  %348 = or i64 %347, 72057594037927936
  %349 = getelementptr i8, i8 addrspace(1)* null, i64 %348
  call void @_Bio__println(i8 addrspace(1)* %349)
  store i8 addrspace(1)* null, i8 addrspace(1)** %49
  %350 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %351 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %352 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %350, i8 addrspace(1)* %351)
  %353 = icmp eq i64 %352, 2
  store i1 %353, i1* %50
  %354 = load i1, i1* %50
  %355 = zext i1 %354 to i64
  %356 = or i64 %355, 72057594037927936
  %357 = getelementptr i8, i8 addrspace(1)* null, i64 %356
  call void @_Bio__println(i8 addrspace(1)* %357)
  store i8 addrspace(1)* null, i8 addrspace(1)** %51
  %358 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %359 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %360 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %358, i8 addrspace(1)* %359)
  %361 = icmp sge i64 %360, 1
  store i1 %361, i1* %52
  %362 = load i1, i1* %52
  %363 = zext i1 %362 to i64
  %364 = or i64 %363, 72057594037927936
  %365 = getelementptr i8, i8 addrspace(1)* null, i64 %364
  call void @_Bio__println(i8 addrspace(1)* %365)
  store i8 addrspace(1)* null, i8 addrspace(1)** %53
  %366 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %367 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %368 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %366, i8 addrspace(1)* %367)
  %369 = icmp eq i64 %368, 0
  store i1 %369, i1* %54
  %370 = load i1, i1* %54
  %371 = zext i1 %370 to i64
  %372 = or i64 %371, 72057594037927936
  %373 = getelementptr i8, i8 addrspace(1)* null, i64 %372
  call void @_Bio__println(i8 addrspace(1)* %373)
  store i8 addrspace(1)* null, i8 addrspace(1)** %55
  %374 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %375 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %376 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %374, i8 addrspace(1)* %375)
  %377 = icmp ule i64 %376, 1
  store i1 %377, i1* %56
  %378 = load i1, i1* %56
  %379 = zext i1 %378 to i64
  %380 = or i64 %379, 72057594037927936
  %381 = getelementptr i8, i8 addrspace(1)* null, i64 %380
  call void @_Bio__println(i8 addrspace(1)* %381)
  store i8 addrspace(1)* null, i8 addrspace(1)** %57
  %382 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %383 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %384 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %382, i8 addrspace(1)* %383)
  %385 = icmp eq i64 %384, 2
  store i1 %385, i1* %58
  %386 = load i1, i1* %58
  %387 = zext i1 %386 to i64
  %388 = or i64 %387, 72057594037927936
  %389 = getelementptr i8, i8 addrspace(1)* null, i64 %388
  call void @_Bio__println(i8 addrspace(1)* %389)
  store i8 addrspace(1)* null, i8 addrspace(1)** %59
  %390 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %391 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %392 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %390, i8 addrspace(1)* %391)
  %393 = icmp sge i64 %392, 1
  store i1 %393, i1* %60
  %394 = load i1, i1* %60
  %395 = zext i1 %394 to i64
  %396 = or i64 %395, 72057594037927936
  %397 = getelementptr i8, i8 addrspace(1)* null, i64 %396
  call void @_Bio__println(i8 addrspace(1)* %397)
  store i8 addrspace(1)* null, i8 addrspace(1)** %61
  %398 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %399 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %400 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %398, i8 addrspace(1)* %399)
  %401 = icmp eq i64 %400, 0
  store i1 %401, i1* %62
  %402 = load i1, i1* %62
  %403 = zext i1 %402 to i64
  %404 = or i64 %403, 72057594037927936
  %405 = getelementptr i8, i8 addrspace(1)* null, i64 %404
  call void @_Bio__println(i8 addrspace(1)* %405)
  store i8 addrspace(1)* null, i8 addrspace(1)** %63
  %406 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %407 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %408 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %406, i8 addrspace(1)* %407)
  %409 = icmp ule i64 %408, 1
  store i1 %409, i1* %64
  %410 = load i1, i1* %64
  %411 = zext i1 %410 to i64
  %412 = or i64 %411, 72057594037927936
  %413 = getelementptr i8, i8 addrspace(1)* null, i64 %412
  call void @_Bio__println(i8 addrspace(1)* %413)
  store i8 addrspace(1)* null, i8 addrspace(1)** %65
  %414 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %415 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %416 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %414, i8 addrspace(1)* %415)
  %417 = icmp eq i64 %416, 2
  store i1 %417, i1* %66
  %418 = load i1, i1* %66
  %419 = zext i1 %418 to i64
  %420 = or i64 %419, 72057594037927936
  %421 = getelementptr i8, i8 addrspace(1)* null, i64 %420
  call void @_Bio__println(i8 addrspace(1)* %421)
  store i8 addrspace(1)* null, i8 addrspace(1)** %67
  %422 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %423 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %424 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %422, i8 addrspace(1)* %423)
  %425 = icmp sge i64 %424, 1
  store i1 %425, i1* %68
  %426 = load i1, i1* %68
  %427 = zext i1 %426 to i64
  %428 = or i64 %427, 72057594037927936
  %429 = getelementptr i8, i8 addrspace(1)* null, i64 %428
  call void @_Bio__println(i8 addrspace(1)* %429)
  store i8 addrspace(1)* null, i8 addrspace(1)** %69
  %430 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %431 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %432 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %430, i8 addrspace(1)* %431)
  %433 = icmp eq i64 %432, 0
  store i1 %433, i1* %70
  %434 = load i1, i1* %70
  %435 = zext i1 %434 to i64
  %436 = or i64 %435, 72057594037927936
  %437 = getelementptr i8, i8 addrspace(1)* null, i64 %436
  call void @_Bio__println(i8 addrspace(1)* %437)
  store i8 addrspace(1)* null, i8 addrspace(1)** %71
  %438 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %439 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %440 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %438, i8 addrspace(1)* %439)
  %441 = icmp ule i64 %440, 1
  store i1 %441, i1* %72
  %442 = load i1, i1* %72
  %443 = zext i1 %442 to i64
  %444 = or i64 %443, 72057594037927936
  %445 = getelementptr i8, i8 addrspace(1)* null, i64 %444
  call void @_Bio__println(i8 addrspace(1)* %445)
  store i8 addrspace(1)* null, i8 addrspace(1)** %73
  %446 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %447 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %448 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %446, i8 addrspace(1)* %447)
  %449 = icmp eq i64 %448, 2
  store i1 %449, i1* %74
  %450 = load i1, i1* %74
  %451 = zext i1 %450 to i64
  %452 = or i64 %451, 72057594037927936
  %453 = getelementptr i8, i8 addrspace(1)* null, i64 %452
  call void @_Bio__println(i8 addrspace(1)* %453)
  store i8 addrspace(1)* null, i8 addrspace(1)** %75
  %454 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %455 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %456 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %454, i8 addrspace(1)* %455)
  %457 = icmp sge i64 %456, 1
  store i1 %457, i1* %76
  %458 = load i1, i1* %76
  %459 = zext i1 %458 to i64
  %460 = or i64 %459, 72057594037927936
  %461 = getelementptr i8, i8 addrspace(1)* null, i64 %460
  call void @_Bio__println(i8 addrspace(1)* %461)
  store i8 addrspace(1)* null, i8 addrspace(1)** %77
  ret void
462:
  %463 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %463)
  unreachable
}
