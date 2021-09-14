@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
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
  br i1 %46, label %257, label %47
47:
  %48 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %49 = bitcast i8 addrspace(1)* %48 to [3 x i8 addrspace(1)*] addrspace(1)*
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %51 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 0
  store i8 addrspace(1)* %50, i8 addrspace(1)* addrspace(1)* %51
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %53 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 1
  store i8 addrspace(1)* %52, i8 addrspace(1)* addrspace(1)* %53
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %55 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %49, i64 0, i64 2
  store i8 addrspace(1)* %54, i8 addrspace(1)* addrspace(1)* %55
  %56 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %49 to [0 x i8 addrspace(1)*] addrspace(1)*
  %57 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %58 = bitcast i8 addrspace(1)* %57 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %59 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %59
  %60 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %60
  %61 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %61
  %62 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %56, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %62
  %63 = getelementptr i8, i8 addrspace(1)* %57, i64 1297036692682702848
  store i8 addrspace(1)* %63, i8 addrspace(1)** %1
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %64, i8 addrspace(1)** %a
  %65 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %66 = bitcast i8 addrspace(1)* %65 to [3 x i8 addrspace(1)*] addrspace(1)*
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %68 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %66, i64 0, i64 0
  store i8 addrspace(1)* %67, i8 addrspace(1)* addrspace(1)* %68
  %69 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %66, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %69
  %70 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %71 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %66, i64 0, i64 2
  store i8 addrspace(1)* %70, i8 addrspace(1)* addrspace(1)* %71
  %72 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %66 to [0 x i8 addrspace(1)*] addrspace(1)*
  %73 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %74 = bitcast i8 addrspace(1)* %73 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %75 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 0
  store i64 129, i64 addrspace(1)* %75
  %76 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %76
  %77 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %77
  %78 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %72, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %78
  %79 = getelementptr i8, i8 addrspace(1)* %73, i64 1297036692682702848
  store i8 addrspace(1)* %79, i8 addrspace(1)** %2
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %80, i8 addrspace(1)** %b
  %81 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %82 = bitcast i8 addrspace(1)* %81 to [3 x i8 addrspace(1)*] addrspace(1)*
  %83 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %84 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 0
  store i8 addrspace(1)* %83, i8 addrspace(1)* addrspace(1)* %84
  %85 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %85
  %86 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %87 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %82, i64 0, i64 2
  store i8 addrspace(1)* %86, i8 addrspace(1)* addrspace(1)* %87
  %88 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %82 to [0 x i8 addrspace(1)*] addrspace(1)*
  %89 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %90 = bitcast i8 addrspace(1)* %89 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %91 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 0
  store i64 129, i64 addrspace(1)* %91
  %92 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %92
  %93 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %93
  %94 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %88, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %94
  %95 = getelementptr i8, i8 addrspace(1)* %89, i64 1297036692682702848
  store i8 addrspace(1)* %95, i8 addrspace(1)** %3
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %96, i8 addrspace(1)** %c
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %99 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %97, i8 addrspace(1)* %98)
  %100 = icmp eq i64 %99, 0
  store i1 %100, i1* %4
  %101 = load i1, i1* %4
  %102 = zext i1 %101 to i64
  %103 = or i64 %102, 72057594037927936
  %104 = getelementptr i8, i8 addrspace(1)* null, i64 %103
  call void @_Bio__println(i8 addrspace(1)* %104)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %107 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  %108 = icmp ule i64 %107, 1
  store i1 %108, i1* %6
  %109 = load i1, i1* %6
  %110 = zext i1 %109 to i64
  %111 = or i64 %110, 72057594037927936
  %112 = getelementptr i8, i8 addrspace(1)* null, i64 %111
  call void @_Bio__println(i8 addrspace(1)* %112)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %115 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %113, i8 addrspace(1)* %114)
  %116 = icmp eq i64 %115, 2
  store i1 %116, i1* %8
  %117 = load i1, i1* %8
  %118 = zext i1 %117 to i64
  %119 = or i64 %118, 72057594037927936
  %120 = getelementptr i8, i8 addrspace(1)* null, i64 %119
  call void @_Bio__println(i8 addrspace(1)* %120)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %123 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %121, i8 addrspace(1)* %122)
  %124 = icmp sge i64 %123, 1
  store i1 %124, i1* %10
  %125 = load i1, i1* %10
  %126 = zext i1 %125 to i64
  %127 = or i64 %126, 72057594037927936
  %128 = getelementptr i8, i8 addrspace(1)* null, i64 %127
  call void @_Bio__println(i8 addrspace(1)* %128)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %131 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %129, i8 addrspace(1)* %130)
  %132 = icmp eq i64 %131, 0
  store i1 %132, i1* %12
  %133 = load i1, i1* %12
  %134 = zext i1 %133 to i64
  %135 = or i64 %134, 72057594037927936
  %136 = getelementptr i8, i8 addrspace(1)* null, i64 %135
  call void @_Bio__println(i8 addrspace(1)* %136)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %139 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %137, i8 addrspace(1)* %138)
  %140 = icmp ule i64 %139, 1
  store i1 %140, i1* %14
  %141 = load i1, i1* %14
  %142 = zext i1 %141 to i64
  %143 = or i64 %142, 72057594037927936
  %144 = getelementptr i8, i8 addrspace(1)* null, i64 %143
  call void @_Bio__println(i8 addrspace(1)* %144)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %147 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %145, i8 addrspace(1)* %146)
  %148 = icmp eq i64 %147, 2
  store i1 %148, i1* %16
  %149 = load i1, i1* %16
  %150 = zext i1 %149 to i64
  %151 = or i64 %150, 72057594037927936
  %152 = getelementptr i8, i8 addrspace(1)* null, i64 %151
  call void @_Bio__println(i8 addrspace(1)* %152)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %155 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %153, i8 addrspace(1)* %154)
  %156 = icmp sge i64 %155, 1
  store i1 %156, i1* %18
  %157 = load i1, i1* %18
  %158 = zext i1 %157 to i64
  %159 = or i64 %158, 72057594037927936
  %160 = getelementptr i8, i8 addrspace(1)* null, i64 %159
  call void @_Bio__println(i8 addrspace(1)* %160)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %163 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %161, i8 addrspace(1)* %162)
  %164 = icmp eq i64 %163, 0
  store i1 %164, i1* %20
  %165 = load i1, i1* %20
  %166 = zext i1 %165 to i64
  %167 = or i64 %166, 72057594037927936
  %168 = getelementptr i8, i8 addrspace(1)* null, i64 %167
  call void @_Bio__println(i8 addrspace(1)* %168)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %171 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %169, i8 addrspace(1)* %170)
  %172 = icmp ule i64 %171, 1
  store i1 %172, i1* %22
  %173 = load i1, i1* %22
  %174 = zext i1 %173 to i64
  %175 = or i64 %174, 72057594037927936
  %176 = getelementptr i8, i8 addrspace(1)* null, i64 %175
  call void @_Bio__println(i8 addrspace(1)* %176)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %179 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %177, i8 addrspace(1)* %178)
  %180 = icmp eq i64 %179, 2
  store i1 %180, i1* %24
  %181 = load i1, i1* %24
  %182 = zext i1 %181 to i64
  %183 = or i64 %182, 72057594037927936
  %184 = getelementptr i8, i8 addrspace(1)* null, i64 %183
  call void @_Bio__println(i8 addrspace(1)* %184)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %187 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %185, i8 addrspace(1)* %186)
  %188 = icmp sge i64 %187, 1
  store i1 %188, i1* %26
  %189 = load i1, i1* %26
  %190 = zext i1 %189 to i64
  %191 = or i64 %190, 72057594037927936
  %192 = getelementptr i8, i8 addrspace(1)* null, i64 %191
  call void @_Bio__println(i8 addrspace(1)* %192)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %195 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %193, i8 addrspace(1)* %194)
  %196 = icmp eq i64 %195, 0
  store i1 %196, i1* %28
  %197 = load i1, i1* %28
  %198 = zext i1 %197 to i64
  %199 = or i64 %198, 72057594037927936
  %200 = getelementptr i8, i8 addrspace(1)* null, i64 %199
  call void @_Bio__println(i8 addrspace(1)* %200)
  store i8 addrspace(1)* null, i8 addrspace(1)** %29
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %203 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %201, i8 addrspace(1)* %202)
  %204 = icmp ule i64 %203, 1
  store i1 %204, i1* %30
  %205 = load i1, i1* %30
  %206 = zext i1 %205 to i64
  %207 = or i64 %206, 72057594037927936
  %208 = getelementptr i8, i8 addrspace(1)* null, i64 %207
  call void @_Bio__println(i8 addrspace(1)* %208)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %211 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %209, i8 addrspace(1)* %210)
  %212 = icmp eq i64 %211, 2
  store i1 %212, i1* %32
  %213 = load i1, i1* %32
  %214 = zext i1 %213 to i64
  %215 = or i64 %214, 72057594037927936
  %216 = getelementptr i8, i8 addrspace(1)* null, i64 %215
  call void @_Bio__println(i8 addrspace(1)* %216)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %219 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %217, i8 addrspace(1)* %218)
  %220 = icmp sge i64 %219, 1
  store i1 %220, i1* %34
  %221 = load i1, i1* %34
  %222 = zext i1 %221 to i64
  %223 = or i64 %222, 72057594037927936
  %224 = getelementptr i8, i8 addrspace(1)* null, i64 %223
  call void @_Bio__println(i8 addrspace(1)* %224)
  store i8 addrspace(1)* null, i8 addrspace(1)** %35
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %227 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %225, i8 addrspace(1)* %226)
  %228 = icmp eq i64 %227, 0
  store i1 %228, i1* %36
  %229 = load i1, i1* %36
  %230 = zext i1 %229 to i64
  %231 = or i64 %230, 72057594037927936
  %232 = getelementptr i8, i8 addrspace(1)* null, i64 %231
  call void @_Bio__println(i8 addrspace(1)* %232)
  store i8 addrspace(1)* null, i8 addrspace(1)** %37
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %235 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %233, i8 addrspace(1)* %234)
  %236 = icmp ule i64 %235, 1
  store i1 %236, i1* %38
  %237 = load i1, i1* %38
  %238 = zext i1 %237 to i64
  %239 = or i64 %238, 72057594037927936
  %240 = getelementptr i8, i8 addrspace(1)* null, i64 %239
  call void @_Bio__println(i8 addrspace(1)* %240)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %241 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %243 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %241, i8 addrspace(1)* %242)
  %244 = icmp eq i64 %243, 2
  store i1 %244, i1* %40
  %245 = load i1, i1* %40
  %246 = zext i1 %245 to i64
  %247 = or i64 %246, 72057594037927936
  %248 = getelementptr i8, i8 addrspace(1)* null, i64 %247
  call void @_Bio__println(i8 addrspace(1)* %248)
  store i8 addrspace(1)* null, i8 addrspace(1)** %41
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %251 = call i64 @_bal_array_int_compare(i8 addrspace(1)* %249, i8 addrspace(1)* %250)
  %252 = icmp sge i64 %251, 1
  store i1 %252, i1* %42
  %253 = load i1, i1* %42
  %254 = zext i1 %253 to i64
  %255 = or i64 %254, 72057594037927936
  %256 = getelementptr i8, i8 addrspace(1)* null, i64 %255
  call void @_Bio__println(i8 addrspace(1)* %256)
  store i8 addrspace(1)* null, i8 addrspace(1)** %43
  ret void
257:
  %258 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %258)
  unreachable
}
