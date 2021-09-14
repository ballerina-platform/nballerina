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
  br i1 %46, label %271, label %47
47:
  %48 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %49 = bitcast i8 addrspace(1)* %48 to [3 x i8 addrspace(1)*] addrspace(1)*
  %50 = zext i1 0 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, i8 addrspace(1)* null, i64 %51
  %53 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* %52, i8 addrspace(1)* addrspace(1)* %53
  %54 = zext i1 1 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55
  %57 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 1
  store i8 addrspace(1)* %56, i8 addrspace(1)* addrspace(1)* %57
  %58 = zext i1 0 to i64
  %59 = or i64 %58, 72057594037927936
  %60 = getelementptr i8, i8 addrspace(1)* null, i64 %59
  %61 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 2
  store i8 addrspace(1)* %60, i8 addrspace(1)* addrspace(1)* %61
  %62 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %49 to [0 x i8 addrspace(1)*] addrspace(1)*
  %63 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %64 = bitcast i8 addrspace(1)* %63 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %65 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %65
  %66 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %66
  %67 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %67
  %68 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %62, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %68
  %69 = getelementptr i8, i8 addrspace(1)* %63, i64 1297036692682702848
  store i8 addrspace(1)* %69, i8 addrspace(1)** %1
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %70, i8 addrspace(1)** %a
  %71 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %72 = bitcast i8 addrspace(1)* %71 to [3 x i8 addrspace(1)*] addrspace(1)*
  %73 = zext i1 0 to i64
  %74 = or i64 %73, 72057594037927936
  %75 = getelementptr i8, i8 addrspace(1)* null, i64 %74
  %76 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 0
  store i8 addrspace(1)* %75, i8 addrspace(1)* addrspace(1)* %76
  %77 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %77
  %78 = zext i1 0 to i64
  %79 = or i64 %78, 72057594037927936
  %80 = getelementptr i8, i8 addrspace(1)* null, i64 %79
  %81 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 2
  store i8 addrspace(1)* %80, i8 addrspace(1)* addrspace(1)* %81
  %82 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %72 to [0 x i8 addrspace(1)*] addrspace(1)*
  %83 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %84 = bitcast i8 addrspace(1)* %83 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %85 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %85
  %86 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %86
  %87 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %87
  %88 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %82, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %88
  %89 = getelementptr i8, i8 addrspace(1)* %83, i64 1297036692682702848
  store i8 addrspace(1)* %89, i8 addrspace(1)** %2
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %90, i8 addrspace(1)** %b
  %91 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %92 = bitcast i8 addrspace(1)* %91 to [3 x i8 addrspace(1)*] addrspace(1)*
  %93 = zext i1 0 to i64
  %94 = or i64 %93, 72057594037927936
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94
  %96 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %92, i64 0, i64 0
  store i8 addrspace(1)* %95, i8 addrspace(1)* addrspace(1)* %96
  %97 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %92, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %97
  %98 = zext i1 1 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, i8 addrspace(1)* null, i64 %99
  %101 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %92, i64 0, i64 2
  store i8 addrspace(1)* %100, i8 addrspace(1)* addrspace(1)* %101
  %102 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %92 to [0 x i8 addrspace(1)*] addrspace(1)*
  %103 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %104 = bitcast i8 addrspace(1)* %103 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %105 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %105
  %106 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %106
  %107 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %107
  %108 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %102, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %108
  %109 = getelementptr i8, i8 addrspace(1)* %103, i64 1297036692682702848
  store i8 addrspace(1)* %109, i8 addrspace(1)** %3
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %110, i8 addrspace(1)** %c
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %113 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %111, i8 addrspace(1)* %112)
  %114 = icmp eq i64 %113, 0
  store i1 %114, i1* %4
  %115 = load i1, i1* %4
  %116 = zext i1 %115 to i64
  %117 = or i64 %116, 72057594037927936
  %118 = getelementptr i8, i8 addrspace(1)* null, i64 %117
  call void @_Bio__println(i8 addrspace(1)* %118)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %121 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %119, i8 addrspace(1)* %120)
  %122 = icmp ule i64 %121, 1
  store i1 %122, i1* %6
  %123 = load i1, i1* %6
  %124 = zext i1 %123 to i64
  %125 = or i64 %124, 72057594037927936
  %126 = getelementptr i8, i8 addrspace(1)* null, i64 %125
  call void @_Bio__println(i8 addrspace(1)* %126)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %129 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %127, i8 addrspace(1)* %128)
  %130 = icmp eq i64 %129, 2
  store i1 %130, i1* %8
  %131 = load i1, i1* %8
  %132 = zext i1 %131 to i64
  %133 = or i64 %132, 72057594037927936
  %134 = getelementptr i8, i8 addrspace(1)* null, i64 %133
  call void @_Bio__println(i8 addrspace(1)* %134)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %137 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %135, i8 addrspace(1)* %136)
  %138 = icmp sge i64 %137, 1
  store i1 %138, i1* %10
  %139 = load i1, i1* %10
  %140 = zext i1 %139 to i64
  %141 = or i64 %140, 72057594037927936
  %142 = getelementptr i8, i8 addrspace(1)* null, i64 %141
  call void @_Bio__println(i8 addrspace(1)* %142)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %145 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %143, i8 addrspace(1)* %144)
  %146 = icmp eq i64 %145, 0
  store i1 %146, i1* %12
  %147 = load i1, i1* %12
  %148 = zext i1 %147 to i64
  %149 = or i64 %148, 72057594037927936
  %150 = getelementptr i8, i8 addrspace(1)* null, i64 %149
  call void @_Bio__println(i8 addrspace(1)* %150)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %153 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %151, i8 addrspace(1)* %152)
  %154 = icmp ule i64 %153, 1
  store i1 %154, i1* %14
  %155 = load i1, i1* %14
  %156 = zext i1 %155 to i64
  %157 = or i64 %156, 72057594037927936
  %158 = getelementptr i8, i8 addrspace(1)* null, i64 %157
  call void @_Bio__println(i8 addrspace(1)* %158)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %161 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %159, i8 addrspace(1)* %160)
  %162 = icmp eq i64 %161, 2
  store i1 %162, i1* %16
  %163 = load i1, i1* %16
  %164 = zext i1 %163 to i64
  %165 = or i64 %164, 72057594037927936
  %166 = getelementptr i8, i8 addrspace(1)* null, i64 %165
  call void @_Bio__println(i8 addrspace(1)* %166)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %169 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %167, i8 addrspace(1)* %168)
  %170 = icmp sge i64 %169, 1
  store i1 %170, i1* %18
  %171 = load i1, i1* %18
  %172 = zext i1 %171 to i64
  %173 = or i64 %172, 72057594037927936
  %174 = getelementptr i8, i8 addrspace(1)* null, i64 %173
  call void @_Bio__println(i8 addrspace(1)* %174)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %177 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %175, i8 addrspace(1)* %176)
  %178 = icmp eq i64 %177, 0
  store i1 %178, i1* %20
  %179 = load i1, i1* %20
  %180 = zext i1 %179 to i64
  %181 = or i64 %180, 72057594037927936
  %182 = getelementptr i8, i8 addrspace(1)* null, i64 %181
  call void @_Bio__println(i8 addrspace(1)* %182)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %185 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %183, i8 addrspace(1)* %184)
  %186 = icmp ule i64 %185, 1
  store i1 %186, i1* %22
  %187 = load i1, i1* %22
  %188 = zext i1 %187 to i64
  %189 = or i64 %188, 72057594037927936
  %190 = getelementptr i8, i8 addrspace(1)* null, i64 %189
  call void @_Bio__println(i8 addrspace(1)* %190)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %192 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %193 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %191, i8 addrspace(1)* %192)
  %194 = icmp eq i64 %193, 2
  store i1 %194, i1* %24
  %195 = load i1, i1* %24
  %196 = zext i1 %195 to i64
  %197 = or i64 %196, 72057594037927936
  %198 = getelementptr i8, i8 addrspace(1)* null, i64 %197
  call void @_Bio__println(i8 addrspace(1)* %198)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %201 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %199, i8 addrspace(1)* %200)
  %202 = icmp sge i64 %201, 1
  store i1 %202, i1* %26
  %203 = load i1, i1* %26
  %204 = zext i1 %203 to i64
  %205 = or i64 %204, 72057594037927936
  %206 = getelementptr i8, i8 addrspace(1)* null, i64 %205
  call void @_Bio__println(i8 addrspace(1)* %206)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %209 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %207, i8 addrspace(1)* %208)
  %210 = icmp eq i64 %209, 0
  store i1 %210, i1* %28
  %211 = load i1, i1* %28
  %212 = zext i1 %211 to i64
  %213 = or i64 %212, 72057594037927936
  %214 = getelementptr i8, i8 addrspace(1)* null, i64 %213
  call void @_Bio__println(i8 addrspace(1)* %214)
  store i8 addrspace(1)* null, i8 addrspace(1)** %29
  %215 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %217 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %215, i8 addrspace(1)* %216)
  %218 = icmp ule i64 %217, 1
  store i1 %218, i1* %30
  %219 = load i1, i1* %30
  %220 = zext i1 %219 to i64
  %221 = or i64 %220, 72057594037927936
  %222 = getelementptr i8, i8 addrspace(1)* null, i64 %221
  call void @_Bio__println(i8 addrspace(1)* %222)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %225 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %223, i8 addrspace(1)* %224)
  %226 = icmp eq i64 %225, 2
  store i1 %226, i1* %32
  %227 = load i1, i1* %32
  %228 = zext i1 %227 to i64
  %229 = or i64 %228, 72057594037927936
  %230 = getelementptr i8, i8 addrspace(1)* null, i64 %229
  call void @_Bio__println(i8 addrspace(1)* %230)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %231 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %233 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %231, i8 addrspace(1)* %232)
  %234 = icmp sge i64 %233, 1
  store i1 %234, i1* %34
  %235 = load i1, i1* %34
  %236 = zext i1 %235 to i64
  %237 = or i64 %236, 72057594037927936
  %238 = getelementptr i8, i8 addrspace(1)* null, i64 %237
  call void @_Bio__println(i8 addrspace(1)* %238)
  store i8 addrspace(1)* null, i8 addrspace(1)** %35
  %239 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %240 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %241 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %239, i8 addrspace(1)* %240)
  %242 = icmp eq i64 %241, 0
  store i1 %242, i1* %36
  %243 = load i1, i1* %36
  %244 = zext i1 %243 to i64
  %245 = or i64 %244, 72057594037927936
  %246 = getelementptr i8, i8 addrspace(1)* null, i64 %245
  call void @_Bio__println(i8 addrspace(1)* %246)
  store i8 addrspace(1)* null, i8 addrspace(1)** %37
  %247 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %248 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %249 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %247, i8 addrspace(1)* %248)
  %250 = icmp ule i64 %249, 1
  store i1 %250, i1* %38
  %251 = load i1, i1* %38
  %252 = zext i1 %251 to i64
  %253 = or i64 %252, 72057594037927936
  %254 = getelementptr i8, i8 addrspace(1)* null, i64 %253
  call void @_Bio__println(i8 addrspace(1)* %254)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %255 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %256 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %257 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %255, i8 addrspace(1)* %256)
  %258 = icmp eq i64 %257, 2
  store i1 %258, i1* %40
  %259 = load i1, i1* %40
  %260 = zext i1 %259 to i64
  %261 = or i64 %260, 72057594037927936
  %262 = getelementptr i8, i8 addrspace(1)* null, i64 %261
  call void @_Bio__println(i8 addrspace(1)* %262)
  store i8 addrspace(1)* null, i8 addrspace(1)** %41
  %263 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %264 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %265 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %263, i8 addrspace(1)* %264)
  %266 = icmp sge i64 %265, 1
  store i1 %266, i1* %42
  %267 = load i1, i1* %42
  %268 = zext i1 %267 to i64
  %269 = or i64 %268, 72057594037927936
  %270 = getelementptr i8, i8 addrspace(1)* null, i64 %269
  call void @_Bio__println(i8 addrspace(1)* %270)
  store i8 addrspace(1)* null, i8 addrspace(1)** %43
  ret void
271:
  %272 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %272)
  unreachable
}
