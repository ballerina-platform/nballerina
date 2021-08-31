@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_Barray__length(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_Barray__push(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %len = alloca i64
  %a = alloca i64
  %m = alloca i64
  %x = alloca i64
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8
  %28 = load i8*, i8** @_bal_stack_guard
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %107, label %30
30:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %31 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %33
  %34 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %35
  %36 = getelementptr i8, i8 addrspace(1)* %31, i64 1297036692682702848
  store i8 addrspace(1)* %36, i8 addrspace(1)** %1
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %37, i8 addrspace(1)** %v
  %38 = load i64, i64* %len
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38)
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 0, i64* %i
  br label %40
40:
  %41 = load i64, i64* %i
  %42 = load i64, i64* %len
  %43 = icmp slt i64 %41, %42
  store i1 %43, i1* %3
  %44 = load i1, i1* %3
  br i1 %44, label %61, label %45
45:
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %47 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %46)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %7
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %48, i8 addrspace(1)** %s
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %50 = call i64 @_Barray__length(i8 addrspace(1)* %49)
  store i64 %50, i64* %9
  %51 = load i64, i64* %9
  %52 = load i64, i64* %len
  %53 = icmp eq i64 %51, %52
  store i1 %53, i1* %8
  %54 = load i1, i1* %8
  %55 = zext i1 %54 to i64
  %56 = or i64 %55, 72057594037927936
  %57 = getelementptr i8, i8 addrspace(1)* null, i64 %56
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %58 = load i64, i64* %len
  %59 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %58, i64 1)
  %60 = extractvalue {i64, i1} %59, 1
  br i1 %60, label %111, label %109
61:
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %63 = load i64, i64* %x
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %63)
  call void @_Barray__push(i8 addrspace(1)* %62, i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %65 = load i64, i64* %x
  %66 = load i64, i64* %a
  %67 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %65, i64 %66)
  %68 = extractvalue {i64, i1} %67, 1
  br i1 %68, label %118, label %113
69:
  %70 = load i64, i64* %i
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %i
  br label %40
72:
  %73 = load i64, i64* %i.1
  %74 = load i64, i64* %11
  %75 = icmp slt i64 %73, %74
  store i1 %75, i1* %12
  %76 = load i1, i1* %12
  br i1 %76, label %89, label %77
77:
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %79 = call i64 @_B_checksum(i8 addrspace(1)* %78)
  store i64 %79, i64* %23
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %81 = call i64 @_B_checksum(i8 addrspace(1)* %80)
  store i64 %81, i64* %24
  %82 = load i64, i64* %23
  %83 = load i64, i64* %24
  %84 = icmp eq i64 %82, %83
  store i1 %84, i1* %22
  %85 = load i1, i1* %22
  %86 = zext i1 %85 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87
  call void @_Bio__println(i8 addrspace(1)* %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  ret void
89:
  %90 = load i64, i64* %i.1
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %92 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %91, i64 72057594037927935)
  %93 = bitcast i8 addrspace(1)* %92 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %94 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 0
  %95 = load i64, i64 addrspace(1)* %94, align 8
  %96 = icmp ult i64 %90, %95
  br i1 %96, label %131, label %141
97:
  %98 = zext i1 0 to i64
  %99 = or i64 %98, 72057594037927936
  %100 = getelementptr i8, i8 addrspace(1)* null, i64 %99
  call void @_Bio__println(i8 addrspace(1)* %100)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  br label %101
101:
  br label %102
102:
  %103 = load i64, i64* %i.1
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %i.1
  br label %72
105:
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  call void @_bal_panic(i8 addrspace(1)* %106)
  unreachable
107:
  %108 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284)
  call void @_bal_panic(i8 addrspace(1)* %108)
  unreachable
109:
  %110 = extractvalue {i64, i1} %59, 0
  store i64 %110, i64* %11
  store i64 0, i64* %i.1
  br label %72
111:
  %112 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609)
  store i8 addrspace(1)* %112, i8 addrspace(1)** %26
  br label %105
113:
  %114 = extractvalue {i64, i1} %67, 0
  store i64 %114, i64* %5
  %115 = load i64, i64* %5
  %116 = load i64, i64* %m
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %120, label %122
118:
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585)
  store i8 addrspace(1)* %119, i8 addrspace(1)** %26
  br label %105
120:
  %121 = call i8 addrspace(1)* @_bal_panic_construct(i64 3586)
  store i8 addrspace(1)* %121, i8 addrspace(1)** %26
  br label %105
122:
  %123 = icmp eq i64 %115, -9223372036854775808
  %124 = icmp eq i64 %116, -1
  %125 = and i1 %123, %124
  br i1 %125, label %128, label %126
126:
  %127 = srem i64 %115, %116
  store i64 %127, i64* %6
  br label %129
128:
  store i64 0, i64* %6
  br label %129
129:
  %130 = load i64, i64* %6
  store i64 %130, i64* %x
  br label %69
131:
  %132 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 2
  %133 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %132, align 8
  %134 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %133, i64 0, i64 %90
  %135 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %134, align 8
  store i8 addrspace(1)* %135, i8 addrspace(1)** %14
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %137 = addrspacecast i8 addrspace(1)* %136 to i8*
  %138 = ptrtoint i8* %137 to i64
  %139 = and i64 %138, 2233785415175766016
  %140 = icmp eq i64 %139, 576460752303423488
  br i1 %140, label %149, label %153
141:
  %142 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869)
  store i8 addrspace(1)* %142, i8 addrspace(1)** %26
  br label %105
143:
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %145 = addrspacecast i8 addrspace(1)* %144 to i8*
  %146 = ptrtoint i8* %145 to i64
  %147 = and i64 %146, 2233785415175766016
  %148 = icmp eq i64 %147, 504403158265495552
  br i1 %148, label %159, label %164
149:
  %150 = call double @_bal_tagged_to_float(i8 addrspace(1)* %136)
  %151 = call {i64, i1} @_bal_float_to_int(double %150)
  %152 = extractvalue {i64, i1} %151, 1
  br i1 %152, label %157, label %154
153:
  store i8 addrspace(1)* %136, i8 addrspace(1)** %15
  br label %143
154:
  %155 = extractvalue {i64, i1} %151, 0
  %156 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %155)
  store i8 addrspace(1)* %156, i8 addrspace(1)** %15
  br label %143
157:
  %158 = call i8 addrspace(1)* @_bal_panic_construct(i64 4867)
  store i8 addrspace(1)* %158, i8 addrspace(1)** %26
  br label %105
159:
  %160 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %144)
  store i64 %160, i64* %16
  %161 = load i64, i64* %i.1
  %162 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %161, i64 1)
  %163 = extractvalue {i64, i1} %162, 1
  br i1 %163, label %175, label %166
164:
  %165 = call i8 addrspace(1)* @_bal_panic_construct(i64 4867)
  store i8 addrspace(1)* %165, i8 addrspace(1)** %26
  br label %105
166:
  %167 = extractvalue {i64, i1} %162, 0
  store i64 %167, i64* %17
  %168 = load i64, i64* %17
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %170 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %169, i64 72057594037927935)
  %171 = bitcast i8 addrspace(1)* %170 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %172 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %171, i64 0, i32 0
  %173 = load i64, i64 addrspace(1)* %172, align 8
  %174 = icmp ult i64 %168, %173
  br i1 %174, label %177, label %187
175:
  %176 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865)
  store i8 addrspace(1)* %176, i8 addrspace(1)** %26
  br label %105
177:
  %178 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %171, i64 0, i32 2
  %179 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %178, align 8
  %180 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %179, i64 0, i64 %168
  %181 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %180, align 8
  store i8 addrspace(1)* %181, i8 addrspace(1)** %18
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %183 = addrspacecast i8 addrspace(1)* %182 to i8*
  %184 = ptrtoint i8* %183 to i64
  %185 = and i64 %184, 2233785415175766016
  %186 = icmp eq i64 %185, 576460752303423488
  br i1 %186, label %195, label %199
187:
  %188 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869)
  store i8 addrspace(1)* %188, i8 addrspace(1)** %26
  br label %105
189:
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %191 = addrspacecast i8 addrspace(1)* %190 to i8*
  %192 = ptrtoint i8* %191 to i64
  %193 = and i64 %192, 2233785415175766016
  %194 = icmp eq i64 %193, 504403158265495552
  br i1 %194, label %205, label %211
195:
  %196 = call double @_bal_tagged_to_float(i8 addrspace(1)* %182)
  %197 = call {i64, i1} @_bal_float_to_int(double %196)
  %198 = extractvalue {i64, i1} %197, 1
  br i1 %198, label %203, label %200
199:
  store i8 addrspace(1)* %182, i8 addrspace(1)** %19
  br label %189
200:
  %201 = extractvalue {i64, i1} %197, 0
  %202 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %201)
  store i8 addrspace(1)* %202, i8 addrspace(1)** %19
  br label %189
203:
  %204 = call i8 addrspace(1)* @_bal_panic_construct(i64 4867)
  store i8 addrspace(1)* %204, i8 addrspace(1)** %26
  br label %105
205:
  %206 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %190)
  store i64 %206, i64* %20
  %207 = load i64, i64* %16
  %208 = load i64, i64* %20
  %209 = icmp sgt i64 %207, %208
  store i1 %209, i1* %13
  %210 = load i1, i1* %13
  br i1 %210, label %97, label %101
211:
  %212 = call i8 addrspace(1)* @_bal_panic_construct(i64 4867)
  store i8 addrspace(1)* %212, i8 addrspace(1)** %26
  br label %105
}
define internal i64 @_B_checksum(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %35, label %12
12:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  store i64 0, i64* %c
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %14 = call i64 @_Barray__length(i8 addrspace(1)* %13)
  store i64 %14, i64* %2
  store i64 0, i64* %i
  br label %15
15:
  %16 = load i64, i64* %i
  %17 = load i64, i64* %2
  %18 = icmp slt i64 %16, %17
  store i1 %18, i1* %3
  %19 = load i1, i1* %3
  br i1 %19, label %22, label %20
20:
  %21 = load i64, i64* %c
  ret i64 %21
22:
  %23 = load i64, i64* %i
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %25 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %24, i64 72057594037927935)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  %28 = load i64, i64 addrspace(1)* %27, align 8
  %29 = icmp ult i64 %23, %28
  br i1 %29, label %37, label %47
30:
  %31 = load i64, i64* %i
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %i
  br label %15
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660)
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  %39 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %38, align 8
  %40 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %39, i64 0, i64 %23
  %41 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %40, align 8
  store i8 addrspace(1)* %41, i8 addrspace(1)** %4
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %43 = addrspacecast i8 addrspace(1)* %42 to i8*
  %44 = ptrtoint i8* %43 to i64
  %45 = and i64 %44, 2233785415175766016
  %46 = icmp eq i64 %45, 576460752303423488
  br i1 %46, label %55, label %59
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 7429)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %8
  br label %33
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %51 = addrspacecast i8 addrspace(1)* %50 to i8*
  %52 = ptrtoint i8* %51 to i64
  %53 = and i64 %52, 2233785415175766016
  %54 = icmp eq i64 %53, 504403158265495552
  br i1 %54, label %65, label %71
55:
  %56 = call double @_bal_tagged_to_float(i8 addrspace(1)* %42)
  %57 = call {i64, i1} @_bal_float_to_int(double %56)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %63, label %60
59:
  store i8 addrspace(1)* %42, i8 addrspace(1)** %5
  br label %49
60:
  %61 = extractvalue {i64, i1} %57, 0
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %61)
  store i8 addrspace(1)* %62, i8 addrspace(1)** %5
  br label %49
63:
  %64 = call i8 addrspace(1)* @_bal_panic_construct(i64 7427)
  store i8 addrspace(1)* %64, i8 addrspace(1)** %8
  br label %33
65:
  %66 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %50)
  store i64 %66, i64* %6
  %67 = load i64, i64* %c
  %68 = load i64, i64* %6
  %69 = xor i64 %67, %68
  store i64 %69, i64* %7
  %70 = load i64, i64* %7
  store i64 %70, i64* %c
  br label %30
71:
  %72 = call i8 addrspace(1)* @_bal_panic_construct(i64 7427)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %8
  br label %33
}
define internal i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %mid = alloca i64
  %6 = alloca i8 addrspace(1)*
  %list1 = alloca i8 addrspace(1)*
  %i = alloca i64
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %list2 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %i.1 = alloca i64
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %93, label %26
26:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %28 = call i64 @_Barray__length(i8 addrspace(1)* %27)
  store i64 %28, i64* %3
  %29 = load i64, i64* %3
  %30 = icmp sle i64 %29, 1
  store i1 %30, i1* %2
  %31 = load i1, i1* %2
  br i1 %31, label %32, label %34
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  ret i8 addrspace(1)* %33
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %36 = call i64 @_Barray__length(i8 addrspace(1)* %35)
  store i64 %36, i64* %4
  %37 = load i64, i64* %4
  %38 = icmp eq i64 2, 0
  br i1 %38, label %95, label %97
39:
  %40 = load i64, i64* %i
  %41 = load i64, i64* %mid
  %42 = icmp slt i64 %40, %41
  store i1 %42, i1* %7
  %43 = load i1, i1* %7
  br i1 %43, label %55, label %44
44:
  %45 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %46 = bitcast i8 addrspace(1)* %45 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %47 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %47
  %48 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %48
  %49 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %49
  %50 = getelementptr i8, i8 addrspace(1)* %45, i64 1297036692682702848
  store i8 addrspace(1)* %50, i8 addrspace(1)** %12
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  store i8 addrspace(1)* %51, i8 addrspace(1)** %list2
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %53 = call i64 @_Barray__length(i8 addrspace(1)* %52)
  store i64 %53, i64* %13
  %54 = load i64, i64* %mid
  store i64 %54, i64* %i.1
  br label %66
55:
  %56 = load i64, i64* %i
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %58 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %57, i64 72057594037927935)
  %59 = bitcast i8 addrspace(1)* %58 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %60 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 0
  %61 = load i64, i64 addrspace(1)* %60, align 8
  %62 = icmp ult i64 %56, %61
  br i1 %62, label %113, label %123
63:
  %64 = load i64, i64* %i
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %i
  br label %39
66:
  %67 = load i64, i64* %i.1
  %68 = load i64, i64* %13
  %69 = icmp slt i64 %67, %68
  store i1 %69, i1* %14
  %70 = load i1, i1* %14
  br i1 %70, label %80, label %71
71:
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %73 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %72)
  store i8 addrspace(1)* %73, i8 addrspace(1)** %19
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %75 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %74)
  store i8 addrspace(1)* %75, i8 addrspace(1)** %20
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %78 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %76, i8 addrspace(1)* %77)
  store i8 addrspace(1)* %78, i8 addrspace(1)** %21
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  ret i8 addrspace(1)* %79
80:
  %81 = load i64, i64* %i.1
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %83 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %82, i64 72057594037927935)
  %84 = bitcast i8 addrspace(1)* %83 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %85 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 0
  %86 = load i64, i64 addrspace(1)* %85, align 8
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %148, label %158
88:
  %89 = load i64, i64* %i.1
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %i.1
  br label %66
91:
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %92)
  unreachable
93:
  %94 = call i8 addrspace(1)* @_bal_panic_construct(i64 8964)
  call void @_bal_panic(i8 addrspace(1)* %94)
  unreachable
95:
  %96 = call i8 addrspace(1)* @_bal_panic_construct(i64 9986)
  store i8 addrspace(1)* %96, i8 addrspace(1)** %22
  br label %91
97:
  %98 = icmp eq i64 %37, -9223372036854775808
  %99 = icmp eq i64 2, -1
  %100 = and i1 %98, %99
  br i1 %100, label %111, label %101
101:
  %102 = sdiv i64 %37, 2
  store i64 %102, i64* %5
  %103 = load i64, i64* %5
  store i64 %103, i64* %mid
  %104 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %105 = bitcast i8 addrspace(1)* %104 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %106 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %106
  %107 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %107
  %108 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %105, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %108
  %109 = getelementptr i8, i8 addrspace(1)* %104, i64 1297036692682702848
  store i8 addrspace(1)* %109, i8 addrspace(1)** %6
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %110, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %39
111:
  %112 = call i8 addrspace(1)* @_bal_panic_construct(i64 9985)
  store i8 addrspace(1)* %112, i8 addrspace(1)** %22
  br label %91
113:
  %114 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 2
  %115 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %114, align 8
  %116 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %115, i64 0, i64 %56
  %117 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %116, align 8
  store i8 addrspace(1)* %117, i8 addrspace(1)** %8
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %119 = addrspacecast i8 addrspace(1)* %118 to i8*
  %120 = ptrtoint i8* %119 to i64
  %121 = and i64 %120, 2233785415175766016
  %122 = icmp eq i64 %121, 576460752303423488
  br i1 %122, label %131, label %135
123:
  %124 = call i8 addrspace(1)* @_bal_panic_construct(i64 10757)
  store i8 addrspace(1)* %124, i8 addrspace(1)** %22
  br label %91
125:
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %127 = addrspacecast i8 addrspace(1)* %126 to i8*
  %128 = ptrtoint i8* %127 to i64
  %129 = and i64 %128, 2233785415175766016
  %130 = icmp eq i64 %129, 504403158265495552
  br i1 %130, label %141, label %146
131:
  %132 = call double @_bal_tagged_to_float(i8 addrspace(1)* %118)
  %133 = call {i64, i1} @_bal_float_to_int(double %132)
  %134 = extractvalue {i64, i1} %133, 1
  br i1 %134, label %139, label %136
135:
  store i8 addrspace(1)* %118, i8 addrspace(1)** %9
  br label %125
136:
  %137 = extractvalue {i64, i1} %133, 0
  %138 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %137)
  store i8 addrspace(1)* %138, i8 addrspace(1)** %9
  br label %125
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755)
  store i8 addrspace(1)* %140, i8 addrspace(1)** %22
  br label %91
141:
  %142 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %126)
  store i64 %142, i64* %10
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %144 = load i64, i64* %10
  %145 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %144)
  call void @_Barray__push(i8 addrspace(1)* %143, i8 addrspace(1)* %145)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %63
146:
  %147 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755)
  store i8 addrspace(1)* %147, i8 addrspace(1)** %22
  br label %91
148:
  %149 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 2
  %150 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %149, align 8
  %151 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %150, i64 0, i64 %81
  %152 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %151, align 8
  store i8 addrspace(1)* %152, i8 addrspace(1)** %15
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %154 = addrspacecast i8 addrspace(1)* %153 to i8*
  %155 = ptrtoint i8* %154 to i64
  %156 = and i64 %155, 2233785415175766016
  %157 = icmp eq i64 %156, 576460752303423488
  br i1 %157, label %166, label %170
158:
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 11781)
  store i8 addrspace(1)* %159, i8 addrspace(1)** %22
  br label %91
160:
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %162 = addrspacecast i8 addrspace(1)* %161 to i8*
  %163 = ptrtoint i8* %162 to i64
  %164 = and i64 %163, 2233785415175766016
  %165 = icmp eq i64 %164, 504403158265495552
  br i1 %165, label %176, label %181
166:
  %167 = call double @_bal_tagged_to_float(i8 addrspace(1)* %153)
  %168 = call {i64, i1} @_bal_float_to_int(double %167)
  %169 = extractvalue {i64, i1} %168, 1
  br i1 %169, label %174, label %171
170:
  store i8 addrspace(1)* %153, i8 addrspace(1)** %16
  br label %160
171:
  %172 = extractvalue {i64, i1} %168, 0
  %173 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %172)
  store i8 addrspace(1)* %173, i8 addrspace(1)** %16
  br label %160
174:
  %175 = call i8 addrspace(1)* @_bal_panic_construct(i64 11779)
  store i8 addrspace(1)* %175, i8 addrspace(1)** %22
  br label %91
176:
  %177 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %161)
  store i64 %177, i64* %17
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %179 = load i64, i64* %17
  %180 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %179)
  call void @_Barray__push(i8 addrspace(1)* %178, i8 addrspace(1)* %180)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  br label %88
181:
  %182 = call i8 addrspace(1)* @_bal_panic_construct(i64 11779)
  store i8 addrspace(1)* %182, i8 addrspace(1)** %22
  br label %91
}
define internal i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %v1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %result = alloca i8 addrspace(1)*
  %i1 = alloca i64
  %i2 = alloca i64
  %4 = alloca i64
  %len1 = alloca i64
  %5 = alloca i64
  %len2 = alloca i64
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i64
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8
  %31 = load i8*, i8** @_bal_stack_guard
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %117, label %33
33:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %34 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %35 = bitcast i8 addrspace(1)* %34 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %36 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %36
  %37 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %37
  %38 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %38
  %39 = getelementptr i8, i8 addrspace(1)* %34, i64 1297036692682702848
  store i8 addrspace(1)* %39, i8 addrspace(1)** %3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %40, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %42 = call i64 @_Barray__length(i8 addrspace(1)* %41)
  store i64 %42, i64* %4
  %43 = load i64, i64* %4
  store i64 %43, i64* %len1
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %45 = call i64 @_Barray__length(i8 addrspace(1)* %44)
  store i64 %45, i64* %5
  %46 = load i64, i64* %5
  store i64 %46, i64* %len2
  br label %47
47:
  br label %48
48:
  %49 = load i64, i64* %i1
  %50 = load i64, i64* %len1
  %51 = icmp slt i64 %49, %50
  store i1 %51, i1* %6
  %52 = load i1, i1* %6
  br i1 %52, label %54, label %85
53:
  br label %86
54:
  %55 = load i64, i64* %i2
  %56 = load i64, i64* %len2
  %57 = icmp slt i64 %55, %56
  store i1 %57, i1* %7
  %58 = load i1, i1* %7
  br i1 %58, label %59, label %84
59:
  %60 = load i64, i64* %i1
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %62 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %61, i64 72057594037927935)
  %63 = bitcast i8 addrspace(1)* %62 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %64 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 0
  %65 = load i64, i64 addrspace(1)* %64, align 8
  %66 = icmp ult i64 %60, %65
  br i1 %66, label %119, label %129
67:
  %68 = load i64, i64* %i1
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %70 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %69, i64 72057594037927935)
  %71 = bitcast i8 addrspace(1)* %70 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %72 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 0
  %73 = load i64, i64 addrspace(1)* %72, align 8
  %74 = icmp ult i64 %68, %73
  br i1 %74, label %194, label %204
75:
  %76 = load i64, i64* %i2
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %78 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %77, i64 72057594037927935)
  %79 = bitcast i8 addrspace(1)* %78 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %80 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 0
  %81 = load i64, i64 addrspace(1)* %80, align 8
  %82 = icmp ult i64 %76, %81
  br i1 %82, label %211, label %221
83:
  br label %47
84:
  br label %85
85:
  br label %53
86:
  %87 = load i64, i64* %i1
  %88 = load i64, i64* %len1
  %89 = icmp slt i64 %87, %88
  store i1 %89, i1* %21
  %90 = load i1, i1* %21
  br i1 %90, label %91, label %99
91:
  %92 = load i64, i64* %i1
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %94 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %93, i64 72057594037927935)
  %95 = bitcast i8 addrspace(1)* %94 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %96 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %95, i64 0, i32 0
  %97 = load i64, i64 addrspace(1)* %96, align 8
  %98 = icmp ult i64 %92, %97
  br i1 %98, label %228, label %238
99:
  br label %100
100:
  %101 = load i64, i64* %i2
  %102 = load i64, i64* %len2
  %103 = icmp slt i64 %101, %102
  store i1 %103, i1* %25
  %104 = load i1, i1* %25
  br i1 %104, label %105, label %113
105:
  %106 = load i64, i64* %i2
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %108 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %107, i64 72057594037927935)
  %109 = bitcast i8 addrspace(1)* %108 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %110 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 0
  %111 = load i64, i64 addrspace(1)* %110, align 8
  %112 = icmp ult i64 %106, %111
  br i1 %112, label %245, label %255
113:
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %114
115:
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %29
  call void @_bal_panic(i8 addrspace(1)* %116)
  unreachable
117:
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 13060)
  call void @_bal_panic(i8 addrspace(1)* %118)
  unreachable
119:
  %120 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 2
  %121 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %120, align 8
  %122 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %121, i64 0, i64 %60
  %123 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %122, align 8
  store i8 addrspace(1)* %123, i8 addrspace(1)** %9
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %125 = addrspacecast i8 addrspace(1)* %124 to i8*
  %126 = ptrtoint i8* %125 to i64
  %127 = and i64 %126, 2233785415175766016
  %128 = icmp eq i64 %127, 576460752303423488
  br i1 %128, label %137, label %141
129:
  %130 = call i8 addrspace(1)* @_bal_panic_construct(i64 15365)
  store i8 addrspace(1)* %130, i8 addrspace(1)** %29
  br label %115
131:
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %133 = addrspacecast i8 addrspace(1)* %132 to i8*
  %134 = ptrtoint i8* %133 to i64
  %135 = and i64 %134, 2233785415175766016
  %136 = icmp eq i64 %135, 504403158265495552
  br i1 %136, label %147, label %156
137:
  %138 = call double @_bal_tagged_to_float(i8 addrspace(1)* %124)
  %139 = call {i64, i1} @_bal_float_to_int(double %138)
  %140 = extractvalue {i64, i1} %139, 1
  br i1 %140, label %145, label %142
141:
  store i8 addrspace(1)* %124, i8 addrspace(1)** %10
  br label %131
142:
  %143 = extractvalue {i64, i1} %139, 0
  %144 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %143)
  store i8 addrspace(1)* %144, i8 addrspace(1)** %10
  br label %131
145:
  %146 = call i8 addrspace(1)* @_bal_panic_construct(i64 15363)
  store i8 addrspace(1)* %146, i8 addrspace(1)** %29
  br label %115
147:
  %148 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %132)
  store i64 %148, i64* %11
  %149 = load i64, i64* %i2
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %151 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %150, i64 72057594037927935)
  %152 = bitcast i8 addrspace(1)* %151 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %153 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 0
  %154 = load i64, i64 addrspace(1)* %153, align 8
  %155 = icmp ult i64 %149, %154
  br i1 %155, label %158, label %168
156:
  %157 = call i8 addrspace(1)* @_bal_panic_construct(i64 15363)
  store i8 addrspace(1)* %157, i8 addrspace(1)** %29
  br label %115
158:
  %159 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %152, i64 0, i32 2
  %160 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %159, align 8
  %161 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %160, i64 0, i64 %149
  %162 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %161, align 8
  store i8 addrspace(1)* %162, i8 addrspace(1)** %12
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %164 = addrspacecast i8 addrspace(1)* %163 to i8*
  %165 = ptrtoint i8* %164 to i64
  %166 = and i64 %165, 2233785415175766016
  %167 = icmp eq i64 %166, 576460752303423488
  br i1 %167, label %176, label %180
168:
  %169 = call i8 addrspace(1)* @_bal_panic_construct(i64 15365)
  store i8 addrspace(1)* %169, i8 addrspace(1)** %29
  br label %115
170:
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %172 = addrspacecast i8 addrspace(1)* %171 to i8*
  %173 = ptrtoint i8* %172 to i64
  %174 = and i64 %173, 2233785415175766016
  %175 = icmp eq i64 %174, 504403158265495552
  br i1 %175, label %186, label %192
176:
  %177 = call double @_bal_tagged_to_float(i8 addrspace(1)* %163)
  %178 = call {i64, i1} @_bal_float_to_int(double %177)
  %179 = extractvalue {i64, i1} %178, 1
  br i1 %179, label %184, label %181
180:
  store i8 addrspace(1)* %163, i8 addrspace(1)** %13
  br label %170
181:
  %182 = extractvalue {i64, i1} %178, 0
  %183 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %182)
  store i8 addrspace(1)* %183, i8 addrspace(1)** %13
  br label %170
184:
  %185 = call i8 addrspace(1)* @_bal_panic_construct(i64 15363)
  store i8 addrspace(1)* %185, i8 addrspace(1)** %29
  br label %115
186:
  %187 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %171)
  store i64 %187, i64* %14
  %188 = load i64, i64* %11
  %189 = load i64, i64* %14
  %190 = icmp sle i64 %188, %189
  store i1 %190, i1* %8
  %191 = load i1, i1* %8
  br i1 %191, label %67, label %75
192:
  %193 = call i8 addrspace(1)* @_bal_panic_construct(i64 15363)
  store i8 addrspace(1)* %193, i8 addrspace(1)** %29
  br label %115
194:
  %195 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 2
  %196 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %195, align 8
  %197 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %196, i64 0, i64 %68
  %198 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %197, align 8
  store i8 addrspace(1)* %198, i8 addrspace(1)** %15
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Barray__push(i8 addrspace(1)* %199, i8 addrspace(1)* %200)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %201 = load i64, i64* %i1
  %202 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %201, i64 1)
  %203 = extractvalue {i64, i1} %202, 1
  br i1 %203, label %209, label %206
204:
  %205 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621)
  store i8 addrspace(1)* %205, i8 addrspace(1)** %29
  br label %115
206:
  %207 = extractvalue {i64, i1} %202, 0
  store i64 %207, i64* %17
  %208 = load i64, i64* %17
  store i64 %208, i64* %i1
  br label %83
209:
  %210 = call i8 addrspace(1)* @_bal_panic_construct(i64 15873)
  store i8 addrspace(1)* %210, i8 addrspace(1)** %29
  br label %115
211:
  %212 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 2
  %213 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %212, align 8
  %214 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %213, i64 0, i64 %76
  %215 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %214, align 8
  store i8 addrspace(1)* %215, i8 addrspace(1)** %18
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  call void @_Barray__push(i8 addrspace(1)* %216, i8 addrspace(1)* %217)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %218 = load i64, i64* %i2
  %219 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %218, i64 1)
  %220 = extractvalue {i64, i1} %219, 1
  br i1 %220, label %226, label %223
221:
  %222 = call i8 addrspace(1)* @_bal_panic_construct(i64 16645)
  store i8 addrspace(1)* %222, i8 addrspace(1)** %29
  br label %115
223:
  %224 = extractvalue {i64, i1} %219, 0
  store i64 %224, i64* %20
  %225 = load i64, i64* %20
  store i64 %225, i64* %i2
  br label %83
226:
  %227 = call i8 addrspace(1)* @_bal_panic_construct(i64 16897)
  store i8 addrspace(1)* %227, i8 addrspace(1)** %29
  br label %115
228:
  %229 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %95, i64 0, i32 2
  %230 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %229, align 8
  %231 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %230, i64 0, i64 %92
  %232 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %231, align 8
  store i8 addrspace(1)* %232, i8 addrspace(1)** %22
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_Barray__push(i8 addrspace(1)* %233, i8 addrspace(1)* %234)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %235 = load i64, i64* %i1
  %236 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %235, i64 1)
  %237 = extractvalue {i64, i1} %236, 1
  br i1 %237, label %243, label %240
238:
  %239 = call i8 addrspace(1)* @_bal_panic_construct(i64 18949)
  store i8 addrspace(1)* %239, i8 addrspace(1)** %29
  br label %115
240:
  %241 = extractvalue {i64, i1} %236, 0
  store i64 %241, i64* %24
  %242 = load i64, i64* %24
  store i64 %242, i64* %i1
  br label %86
243:
  %244 = call i8 addrspace(1)* @_bal_panic_construct(i64 19201)
  store i8 addrspace(1)* %244, i8 addrspace(1)** %29
  br label %115
245:
  %246 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 2
  %247 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %246, align 8
  %248 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %247, i64 0, i64 %106
  %249 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %248, align 8
  store i8 addrspace(1)* %249, i8 addrspace(1)** %26
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  call void @_Barray__push(i8 addrspace(1)* %250, i8 addrspace(1)* %251)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %252 = load i64, i64* %i2
  %253 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %252, i64 1)
  %254 = extractvalue {i64, i1} %253, 1
  br i1 %254, label %260, label %257
255:
  %256 = call i8 addrspace(1)* @_bal_panic_construct(i64 19973)
  store i8 addrspace(1)* %256, i8 addrspace(1)** %29
  br label %115
257:
  %258 = extractvalue {i64, i1} %253, 0
  store i64 %258, i64* %28
  %259 = load i64, i64* %28
  store i64 %259, i64* %i2
  br label %100
260:
  %261 = call i8 addrspace(1)* @_bal_panic_construct(i64 20225)
  store i8 addrspace(1)* %261, i8 addrspace(1)** %29
  br label %115
}
