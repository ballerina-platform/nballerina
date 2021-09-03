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
  br i1 %29, label %108, label %30
30:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %31 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %33
  %34 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %35
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36
  %37 = getelementptr i8, i8 addrspace(1)* %31, i64 1297036692682702848
  store i8 addrspace(1)* %37, i8 addrspace(1)** %1
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %38, i8 addrspace(1)** %v
  %39 = load i64, i64* %len
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 0, i64* %i
  br label %41
41:
  %42 = load i64, i64* %i
  %43 = load i64, i64* %len
  %44 = icmp slt i64 %42, %43
  store i1 %44, i1* %3
  %45 = load i1, i1* %3
  br i1 %45, label %62, label %46
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %48 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %47)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %7
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %s
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %51 = call i64 @_Barray__length(i8 addrspace(1)* %50)
  store i64 %51, i64* %9
  %52 = load i64, i64* %9
  %53 = load i64, i64* %len
  %54 = icmp eq i64 %52, %53
  store i1 %54, i1* %8
  %55 = load i1, i1* %8
  %56 = zext i1 %55 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %59 = load i64, i64* %len
  %60 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %59, i64 1)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %112, label %110
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %64 = load i64, i64* %x
  %65 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %64)
  call void @_Barray__push(i8 addrspace(1)* %63, i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %66 = load i64, i64* %x
  %67 = load i64, i64* %a
  %68 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %66, i64 %67)
  %69 = extractvalue {i64, i1} %68, 1
  br i1 %69, label %119, label %114
70:
  %71 = load i64, i64* %i
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %i
  br label %41
73:
  %74 = load i64, i64* %i.1
  %75 = load i64, i64* %11
  %76 = icmp slt i64 %74, %75
  store i1 %76, i1* %12
  %77 = load i1, i1* %12
  br i1 %77, label %90, label %78
78:
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %80 = call i64 @_B_checksum(i8 addrspace(1)* %79)
  store i64 %80, i64* %23
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %82 = call i64 @_B_checksum(i8 addrspace(1)* %81)
  store i64 %82, i64* %24
  %83 = load i64, i64* %23
  %84 = load i64, i64* %24
  %85 = icmp eq i64 %83, %84
  store i1 %85, i1* %22
  %86 = load i1, i1* %22
  %87 = zext i1 %86 to i64
  %88 = or i64 %87, 72057594037927936
  %89 = getelementptr i8, i8 addrspace(1)* null, i64 %88
  call void @_Bio__println(i8 addrspace(1)* %89)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  ret void
90:
  %91 = load i64, i64* %i.1
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %93 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %92, i64 72057594037927935)
  %94 = bitcast i8 addrspace(1)* %93 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %95 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 1
  %96 = load i64, i64 addrspace(1)* %95, align 8
  %97 = icmp ult i64 %91, %96
  br i1 %97, label %132, label %142
98:
  %99 = zext i1 0 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100
  call void @_Bio__println(i8 addrspace(1)* %101)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  br label %102
102:
  br label %103
103:
  %104 = load i64, i64* %i.1
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %i.1
  br label %73
106:
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  call void @_bal_panic(i8 addrspace(1)* %107)
  unreachable
108:
  %109 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284)
  call void @_bal_panic(i8 addrspace(1)* %109)
  unreachable
110:
  %111 = extractvalue {i64, i1} %60, 0
  store i64 %111, i64* %11
  store i64 0, i64* %i.1
  br label %73
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609)
  store i8 addrspace(1)* %113, i8 addrspace(1)** %26
  br label %106
114:
  %115 = extractvalue {i64, i1} %68, 0
  store i64 %115, i64* %5
  %116 = load i64, i64* %5
  %117 = load i64, i64* %m
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %121, label %123
119:
  %120 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585)
  store i8 addrspace(1)* %120, i8 addrspace(1)** %26
  br label %106
121:
  %122 = call i8 addrspace(1)* @_bal_panic_construct(i64 3586)
  store i8 addrspace(1)* %122, i8 addrspace(1)** %26
  br label %106
123:
  %124 = icmp eq i64 %116, -9223372036854775808
  %125 = icmp eq i64 %117, -1
  %126 = and i1 %124, %125
  br i1 %126, label %129, label %127
127:
  %128 = srem i64 %116, %117
  store i64 %128, i64* %6
  br label %130
129:
  store i64 0, i64* %6
  br label %130
130:
  %131 = load i64, i64* %6
  store i64 %131, i64* %x
  br label %70
132:
  %133 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %94, i64 0, i32 3
  %134 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %133, align 8
  %135 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %134, i64 0, i64 %91
  %136 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %135, align 8
  store i8 addrspace(1)* %136, i8 addrspace(1)** %14
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %138 = addrspacecast i8 addrspace(1)* %137 to i8*
  %139 = ptrtoint i8* %138 to i64
  %140 = and i64 %139, 2233785415175766016
  %141 = icmp eq i64 %140, 576460752303423488
  br i1 %141, label %150, label %154
142:
  %143 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869)
  store i8 addrspace(1)* %143, i8 addrspace(1)** %26
  br label %106
144:
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %146 = addrspacecast i8 addrspace(1)* %145 to i8*
  %147 = ptrtoint i8* %146 to i64
  %148 = and i64 %147, 2233785415175766016
  %149 = icmp eq i64 %148, 504403158265495552
  br i1 %149, label %160, label %165
150:
  %151 = call double @_bal_tagged_to_float(i8 addrspace(1)* %137)
  %152 = call {i64, i1} @_bal_float_to_int(double %151)
  %153 = extractvalue {i64, i1} %152, 1
  br i1 %153, label %158, label %155
154:
  store i8 addrspace(1)* %137, i8 addrspace(1)** %15
  br label %144
155:
  %156 = extractvalue {i64, i1} %152, 0
  %157 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %156)
  store i8 addrspace(1)* %157, i8 addrspace(1)** %15
  br label %144
158:
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 4867)
  store i8 addrspace(1)* %159, i8 addrspace(1)** %26
  br label %106
160:
  %161 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %145)
  store i64 %161, i64* %16
  %162 = load i64, i64* %i.1
  %163 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %162, i64 1)
  %164 = extractvalue {i64, i1} %163, 1
  br i1 %164, label %176, label %167
165:
  %166 = call i8 addrspace(1)* @_bal_panic_construct(i64 4867)
  store i8 addrspace(1)* %166, i8 addrspace(1)** %26
  br label %106
167:
  %168 = extractvalue {i64, i1} %163, 0
  store i64 %168, i64* %17
  %169 = load i64, i64* %17
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %171 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %170, i64 72057594037927935)
  %172 = bitcast i8 addrspace(1)* %171 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %173 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %172, i64 0, i32 1
  %174 = load i64, i64 addrspace(1)* %173, align 8
  %175 = icmp ult i64 %169, %174
  br i1 %175, label %178, label %188
176:
  %177 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865)
  store i8 addrspace(1)* %177, i8 addrspace(1)** %26
  br label %106
178:
  %179 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %172, i64 0, i32 3
  %180 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %179, align 8
  %181 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %180, i64 0, i64 %169
  %182 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %181, align 8
  store i8 addrspace(1)* %182, i8 addrspace(1)** %18
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %184 = addrspacecast i8 addrspace(1)* %183 to i8*
  %185 = ptrtoint i8* %184 to i64
  %186 = and i64 %185, 2233785415175766016
  %187 = icmp eq i64 %186, 576460752303423488
  br i1 %187, label %196, label %200
188:
  %189 = call i8 addrspace(1)* @_bal_panic_construct(i64 4869)
  store i8 addrspace(1)* %189, i8 addrspace(1)** %26
  br label %106
190:
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %192 = addrspacecast i8 addrspace(1)* %191 to i8*
  %193 = ptrtoint i8* %192 to i64
  %194 = and i64 %193, 2233785415175766016
  %195 = icmp eq i64 %194, 504403158265495552
  br i1 %195, label %206, label %212
196:
  %197 = call double @_bal_tagged_to_float(i8 addrspace(1)* %183)
  %198 = call {i64, i1} @_bal_float_to_int(double %197)
  %199 = extractvalue {i64, i1} %198, 1
  br i1 %199, label %204, label %201
200:
  store i8 addrspace(1)* %183, i8 addrspace(1)** %19
  br label %190
201:
  %202 = extractvalue {i64, i1} %198, 0
  %203 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %202)
  store i8 addrspace(1)* %203, i8 addrspace(1)** %19
  br label %190
204:
  %205 = call i8 addrspace(1)* @_bal_panic_construct(i64 4867)
  store i8 addrspace(1)* %205, i8 addrspace(1)** %26
  br label %106
206:
  %207 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %191)
  store i64 %207, i64* %20
  %208 = load i64, i64* %16
  %209 = load i64, i64* %20
  %210 = icmp sgt i64 %208, %209
  store i1 %210, i1* %13
  %211 = load i1, i1* %13
  br i1 %211, label %98, label %102
212:
  %213 = call i8 addrspace(1)* @_bal_panic_construct(i64 4867)
  store i8 addrspace(1)* %213, i8 addrspace(1)** %26
  br label %106
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
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
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
  %38 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 3
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
  br i1 %25, label %94, label %26
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
  br i1 %38, label %96, label %98
39:
  %40 = load i64, i64* %i
  %41 = load i64, i64* %mid
  %42 = icmp slt i64 %40, %41
  store i1 %42, i1* %7
  %43 = load i1, i1* %7
  br i1 %43, label %56, label %44
44:
  %45 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %46 = bitcast i8 addrspace(1)* %45 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %47 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %47
  %48 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %48
  %49 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %49
  %50 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %46, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %50
  %51 = getelementptr i8, i8 addrspace(1)* %45, i64 1297036692682702848
  store i8 addrspace(1)* %51, i8 addrspace(1)** %12
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  store i8 addrspace(1)* %52, i8 addrspace(1)** %list2
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %54 = call i64 @_Barray__length(i8 addrspace(1)* %53)
  store i64 %54, i64* %13
  %55 = load i64, i64* %mid
  store i64 %55, i64* %i.1
  br label %67
56:
  %57 = load i64, i64* %i
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %59 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %58, i64 72057594037927935)
  %60 = bitcast i8 addrspace(1)* %59 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %61 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 1
  %62 = load i64, i64 addrspace(1)* %61, align 8
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %115, label %125
64:
  %65 = load i64, i64* %i
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %i
  br label %39
67:
  %68 = load i64, i64* %i.1
  %69 = load i64, i64* %13
  %70 = icmp slt i64 %68, %69
  store i1 %70, i1* %14
  %71 = load i1, i1* %14
  br i1 %71, label %81, label %72
72:
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %74 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %73)
  store i8 addrspace(1)* %74, i8 addrspace(1)** %19
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %76 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %75)
  store i8 addrspace(1)* %76, i8 addrspace(1)** %20
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %79 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %77, i8 addrspace(1)* %78)
  store i8 addrspace(1)* %79, i8 addrspace(1)** %21
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  ret i8 addrspace(1)* %80
81:
  %82 = load i64, i64* %i.1
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %84 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %83, i64 72057594037927935)
  %85 = bitcast i8 addrspace(1)* %84 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %86 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %85, i64 0, i32 1
  %87 = load i64, i64 addrspace(1)* %86, align 8
  %88 = icmp ult i64 %82, %87
  br i1 %88, label %150, label %160
89:
  %90 = load i64, i64* %i.1
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %i.1
  br label %67
92:
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %93)
  unreachable
94:
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 8964)
  call void @_bal_panic(i8 addrspace(1)* %95)
  unreachable
96:
  %97 = call i8 addrspace(1)* @_bal_panic_construct(i64 9986)
  store i8 addrspace(1)* %97, i8 addrspace(1)** %22
  br label %92
98:
  %99 = icmp eq i64 %37, -9223372036854775808
  %100 = icmp eq i64 2, -1
  %101 = and i1 %99, %100
  br i1 %101, label %113, label %102
102:
  %103 = sdiv i64 %37, 2
  store i64 %103, i64* %5
  %104 = load i64, i64* %5
  store i64 %104, i64* %mid
  %105 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %106 = bitcast i8 addrspace(1)* %105 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %107 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %107
  %108 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %108
  %109 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %109
  %110 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %106, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %110
  %111 = getelementptr i8, i8 addrspace(1)* %105, i64 1297036692682702848
  store i8 addrspace(1)* %111, i8 addrspace(1)** %6
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %112, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %39
113:
  %114 = call i8 addrspace(1)* @_bal_panic_construct(i64 9985)
  store i8 addrspace(1)* %114, i8 addrspace(1)** %22
  br label %92
115:
  %116 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %60, i64 0, i32 3
  %117 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %116, align 8
  %118 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 %57
  %119 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %118, align 8
  store i8 addrspace(1)* %119, i8 addrspace(1)** %8
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %121 = addrspacecast i8 addrspace(1)* %120 to i8*
  %122 = ptrtoint i8* %121 to i64
  %123 = and i64 %122, 2233785415175766016
  %124 = icmp eq i64 %123, 576460752303423488
  br i1 %124, label %133, label %137
125:
  %126 = call i8 addrspace(1)* @_bal_panic_construct(i64 10757)
  store i8 addrspace(1)* %126, i8 addrspace(1)** %22
  br label %92
127:
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %129 = addrspacecast i8 addrspace(1)* %128 to i8*
  %130 = ptrtoint i8* %129 to i64
  %131 = and i64 %130, 2233785415175766016
  %132 = icmp eq i64 %131, 504403158265495552
  br i1 %132, label %143, label %148
133:
  %134 = call double @_bal_tagged_to_float(i8 addrspace(1)* %120)
  %135 = call {i64, i1} @_bal_float_to_int(double %134)
  %136 = extractvalue {i64, i1} %135, 1
  br i1 %136, label %141, label %138
137:
  store i8 addrspace(1)* %120, i8 addrspace(1)** %9
  br label %127
138:
  %139 = extractvalue {i64, i1} %135, 0
  %140 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %139)
  store i8 addrspace(1)* %140, i8 addrspace(1)** %9
  br label %127
141:
  %142 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755)
  store i8 addrspace(1)* %142, i8 addrspace(1)** %22
  br label %92
143:
  %144 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %128)
  store i64 %144, i64* %10
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %146 = load i64, i64* %10
  %147 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %146)
  call void @_Barray__push(i8 addrspace(1)* %145, i8 addrspace(1)* %147)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %64
148:
  %149 = call i8 addrspace(1)* @_bal_panic_construct(i64 10755)
  store i8 addrspace(1)* %149, i8 addrspace(1)** %22
  br label %92
150:
  %151 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %85, i64 0, i32 3
  %152 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %151, align 8
  %153 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %152, i64 0, i64 %82
  %154 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %153, align 8
  store i8 addrspace(1)* %154, i8 addrspace(1)** %15
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %156 = addrspacecast i8 addrspace(1)* %155 to i8*
  %157 = ptrtoint i8* %156 to i64
  %158 = and i64 %157, 2233785415175766016
  %159 = icmp eq i64 %158, 576460752303423488
  br i1 %159, label %168, label %172
160:
  %161 = call i8 addrspace(1)* @_bal_panic_construct(i64 11781)
  store i8 addrspace(1)* %161, i8 addrspace(1)** %22
  br label %92
162:
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %164 = addrspacecast i8 addrspace(1)* %163 to i8*
  %165 = ptrtoint i8* %164 to i64
  %166 = and i64 %165, 2233785415175766016
  %167 = icmp eq i64 %166, 504403158265495552
  br i1 %167, label %178, label %183
168:
  %169 = call double @_bal_tagged_to_float(i8 addrspace(1)* %155)
  %170 = call {i64, i1} @_bal_float_to_int(double %169)
  %171 = extractvalue {i64, i1} %170, 1
  br i1 %171, label %176, label %173
172:
  store i8 addrspace(1)* %155, i8 addrspace(1)** %16
  br label %162
173:
  %174 = extractvalue {i64, i1} %170, 0
  %175 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %174)
  store i8 addrspace(1)* %175, i8 addrspace(1)** %16
  br label %162
176:
  %177 = call i8 addrspace(1)* @_bal_panic_construct(i64 11779)
  store i8 addrspace(1)* %177, i8 addrspace(1)** %22
  br label %92
178:
  %179 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %163)
  store i64 %179, i64* %17
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %181 = load i64, i64* %17
  %182 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %181)
  call void @_Barray__push(i8 addrspace(1)* %180, i8 addrspace(1)* %182)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  br label %89
183:
  %184 = call i8 addrspace(1)* @_bal_panic_construct(i64 11779)
  store i8 addrspace(1)* %184, i8 addrspace(1)** %22
  br label %92
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
  br i1 %32, label %118, label %33
33:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %34 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %35 = bitcast i8 addrspace(1)* %34 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %36
  %37 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %37
  %38 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %38
  %39 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %35, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %39
  %40 = getelementptr i8, i8 addrspace(1)* %34, i64 1297036692682702848
  store i8 addrspace(1)* %40, i8 addrspace(1)** %3
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %41, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %43 = call i64 @_Barray__length(i8 addrspace(1)* %42)
  store i64 %43, i64* %4
  %44 = load i64, i64* %4
  store i64 %44, i64* %len1
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %46 = call i64 @_Barray__length(i8 addrspace(1)* %45)
  store i64 %46, i64* %5
  %47 = load i64, i64* %5
  store i64 %47, i64* %len2
  br label %48
48:
  br label %49
49:
  %50 = load i64, i64* %i1
  %51 = load i64, i64* %len1
  %52 = icmp slt i64 %50, %51
  store i1 %52, i1* %6
  %53 = load i1, i1* %6
  br i1 %53, label %55, label %86
54:
  br label %87
55:
  %56 = load i64, i64* %i2
  %57 = load i64, i64* %len2
  %58 = icmp slt i64 %56, %57
  store i1 %58, i1* %7
  %59 = load i1, i1* %7
  br i1 %59, label %60, label %85
60:
  %61 = load i64, i64* %i1
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %63 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %62, i64 72057594037927935)
  %64 = bitcast i8 addrspace(1)* %63 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %65 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 1
  %66 = load i64, i64 addrspace(1)* %65, align 8
  %67 = icmp ult i64 %61, %66
  br i1 %67, label %120, label %130
68:
  %69 = load i64, i64* %i1
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %71 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %70, i64 72057594037927935)
  %72 = bitcast i8 addrspace(1)* %71 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %73 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %72, i64 0, i32 1
  %74 = load i64, i64 addrspace(1)* %73, align 8
  %75 = icmp ult i64 %69, %74
  br i1 %75, label %195, label %205
76:
  %77 = load i64, i64* %i2
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %79 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %78, i64 72057594037927935)
  %80 = bitcast i8 addrspace(1)* %79 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %81 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 1
  %82 = load i64, i64 addrspace(1)* %81, align 8
  %83 = icmp ult i64 %77, %82
  br i1 %83, label %212, label %222
84:
  br label %48
85:
  br label %86
86:
  br label %54
87:
  %88 = load i64, i64* %i1
  %89 = load i64, i64* %len1
  %90 = icmp slt i64 %88, %89
  store i1 %90, i1* %21
  %91 = load i1, i1* %21
  br i1 %91, label %92, label %100
92:
  %93 = load i64, i64* %i1
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %95 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %94, i64 72057594037927935)
  %96 = bitcast i8 addrspace(1)* %95 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %97 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 1
  %98 = load i64, i64 addrspace(1)* %97, align 8
  %99 = icmp ult i64 %93, %98
  br i1 %99, label %229, label %239
100:
  br label %101
101:
  %102 = load i64, i64* %i2
  %103 = load i64, i64* %len2
  %104 = icmp slt i64 %102, %103
  store i1 %104, i1* %25
  %105 = load i1, i1* %25
  br i1 %105, label %106, label %114
106:
  %107 = load i64, i64* %i2
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %109 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %108, i64 72057594037927935)
  %110 = bitcast i8 addrspace(1)* %109 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %111 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %110, i64 0, i32 1
  %112 = load i64, i64 addrspace(1)* %111, align 8
  %113 = icmp ult i64 %107, %112
  br i1 %113, label %246, label %256
114:
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %115
116:
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %29
  call void @_bal_panic(i8 addrspace(1)* %117)
  unreachable
118:
  %119 = call i8 addrspace(1)* @_bal_panic_construct(i64 13060)
  call void @_bal_panic(i8 addrspace(1)* %119)
  unreachable
120:
  %121 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 3
  %122 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %121, align 8
  %123 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %122, i64 0, i64 %61
  %124 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %123, align 8
  store i8 addrspace(1)* %124, i8 addrspace(1)** %9
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %126 = addrspacecast i8 addrspace(1)* %125 to i8*
  %127 = ptrtoint i8* %126 to i64
  %128 = and i64 %127, 2233785415175766016
  %129 = icmp eq i64 %128, 576460752303423488
  br i1 %129, label %138, label %142
130:
  %131 = call i8 addrspace(1)* @_bal_panic_construct(i64 15365)
  store i8 addrspace(1)* %131, i8 addrspace(1)** %29
  br label %116
132:
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %134 = addrspacecast i8 addrspace(1)* %133 to i8*
  %135 = ptrtoint i8* %134 to i64
  %136 = and i64 %135, 2233785415175766016
  %137 = icmp eq i64 %136, 504403158265495552
  br i1 %137, label %148, label %157
138:
  %139 = call double @_bal_tagged_to_float(i8 addrspace(1)* %125)
  %140 = call {i64, i1} @_bal_float_to_int(double %139)
  %141 = extractvalue {i64, i1} %140, 1
  br i1 %141, label %146, label %143
142:
  store i8 addrspace(1)* %125, i8 addrspace(1)** %10
  br label %132
143:
  %144 = extractvalue {i64, i1} %140, 0
  %145 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %144)
  store i8 addrspace(1)* %145, i8 addrspace(1)** %10
  br label %132
146:
  %147 = call i8 addrspace(1)* @_bal_panic_construct(i64 15363)
  store i8 addrspace(1)* %147, i8 addrspace(1)** %29
  br label %116
148:
  %149 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %133)
  store i64 %149, i64* %11
  %150 = load i64, i64* %i2
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %152 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %151, i64 72057594037927935)
  %153 = bitcast i8 addrspace(1)* %152 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %154 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %153, i64 0, i32 1
  %155 = load i64, i64 addrspace(1)* %154, align 8
  %156 = icmp ult i64 %150, %155
  br i1 %156, label %159, label %169
157:
  %158 = call i8 addrspace(1)* @_bal_panic_construct(i64 15363)
  store i8 addrspace(1)* %158, i8 addrspace(1)** %29
  br label %116
159:
  %160 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %153, i64 0, i32 3
  %161 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %160, align 8
  %162 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %161, i64 0, i64 %150
  %163 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %162, align 8
  store i8 addrspace(1)* %163, i8 addrspace(1)** %12
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %165 = addrspacecast i8 addrspace(1)* %164 to i8*
  %166 = ptrtoint i8* %165 to i64
  %167 = and i64 %166, 2233785415175766016
  %168 = icmp eq i64 %167, 576460752303423488
  br i1 %168, label %177, label %181
169:
  %170 = call i8 addrspace(1)* @_bal_panic_construct(i64 15365)
  store i8 addrspace(1)* %170, i8 addrspace(1)** %29
  br label %116
171:
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %173 = addrspacecast i8 addrspace(1)* %172 to i8*
  %174 = ptrtoint i8* %173 to i64
  %175 = and i64 %174, 2233785415175766016
  %176 = icmp eq i64 %175, 504403158265495552
  br i1 %176, label %187, label %193
177:
  %178 = call double @_bal_tagged_to_float(i8 addrspace(1)* %164)
  %179 = call {i64, i1} @_bal_float_to_int(double %178)
  %180 = extractvalue {i64, i1} %179, 1
  br i1 %180, label %185, label %182
181:
  store i8 addrspace(1)* %164, i8 addrspace(1)** %13
  br label %171
182:
  %183 = extractvalue {i64, i1} %179, 0
  %184 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %183)
  store i8 addrspace(1)* %184, i8 addrspace(1)** %13
  br label %171
185:
  %186 = call i8 addrspace(1)* @_bal_panic_construct(i64 15363)
  store i8 addrspace(1)* %186, i8 addrspace(1)** %29
  br label %116
187:
  %188 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %172)
  store i64 %188, i64* %14
  %189 = load i64, i64* %11
  %190 = load i64, i64* %14
  %191 = icmp sle i64 %189, %190
  store i1 %191, i1* %8
  %192 = load i1, i1* %8
  br i1 %192, label %68, label %76
193:
  %194 = call i8 addrspace(1)* @_bal_panic_construct(i64 15363)
  store i8 addrspace(1)* %194, i8 addrspace(1)** %29
  br label %116
195:
  %196 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %72, i64 0, i32 3
  %197 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %196, align 8
  %198 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %197, i64 0, i64 %69
  %199 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %198, align 8
  store i8 addrspace(1)* %199, i8 addrspace(1)** %15
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Barray__push(i8 addrspace(1)* %200, i8 addrspace(1)* %201)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %202 = load i64, i64* %i1
  %203 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %202, i64 1)
  %204 = extractvalue {i64, i1} %203, 1
  br i1 %204, label %210, label %207
205:
  %206 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621)
  store i8 addrspace(1)* %206, i8 addrspace(1)** %29
  br label %116
207:
  %208 = extractvalue {i64, i1} %203, 0
  store i64 %208, i64* %17
  %209 = load i64, i64* %17
  store i64 %209, i64* %i1
  br label %84
210:
  %211 = call i8 addrspace(1)* @_bal_panic_construct(i64 15873)
  store i8 addrspace(1)* %211, i8 addrspace(1)** %29
  br label %116
212:
  %213 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 3
  %214 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %213, align 8
  %215 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %214, i64 0, i64 %77
  %216 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %215, align 8
  store i8 addrspace(1)* %216, i8 addrspace(1)** %18
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  call void @_Barray__push(i8 addrspace(1)* %217, i8 addrspace(1)* %218)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %219 = load i64, i64* %i2
  %220 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %219, i64 1)
  %221 = extractvalue {i64, i1} %220, 1
  br i1 %221, label %227, label %224
222:
  %223 = call i8 addrspace(1)* @_bal_panic_construct(i64 16645)
  store i8 addrspace(1)* %223, i8 addrspace(1)** %29
  br label %116
224:
  %225 = extractvalue {i64, i1} %220, 0
  store i64 %225, i64* %20
  %226 = load i64, i64* %20
  store i64 %226, i64* %i2
  br label %84
227:
  %228 = call i8 addrspace(1)* @_bal_panic_construct(i64 16897)
  store i8 addrspace(1)* %228, i8 addrspace(1)** %29
  br label %116
229:
  %230 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %96, i64 0, i32 3
  %231 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %230, align 8
  %232 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %231, i64 0, i64 %93
  %233 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %232, align 8
  store i8 addrspace(1)* %233, i8 addrspace(1)** %22
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_Barray__push(i8 addrspace(1)* %234, i8 addrspace(1)* %235)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %236 = load i64, i64* %i1
  %237 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %236, i64 1)
  %238 = extractvalue {i64, i1} %237, 1
  br i1 %238, label %244, label %241
239:
  %240 = call i8 addrspace(1)* @_bal_panic_construct(i64 18949)
  store i8 addrspace(1)* %240, i8 addrspace(1)** %29
  br label %116
241:
  %242 = extractvalue {i64, i1} %237, 0
  store i64 %242, i64* %24
  %243 = load i64, i64* %24
  store i64 %243, i64* %i1
  br label %87
244:
  %245 = call i8 addrspace(1)* @_bal_panic_construct(i64 19201)
  store i8 addrspace(1)* %245, i8 addrspace(1)** %29
  br label %116
246:
  %247 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %110, i64 0, i32 3
  %248 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %247, align 8
  %249 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %248, i64 0, i64 %107
  %250 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %249, align 8
  store i8 addrspace(1)* %250, i8 addrspace(1)** %26
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  call void @_Barray__push(i8 addrspace(1)* %251, i8 addrspace(1)* %252)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %253 = load i64, i64* %i2
  %254 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %253, i64 1)
  %255 = extractvalue {i64, i1} %254, 1
  br i1 %255, label %261, label %258
256:
  %257 = call i8 addrspace(1)* @_bal_panic_construct(i64 19973)
  store i8 addrspace(1)* %257, i8 addrspace(1)** %29
  br label %116
258:
  %259 = extractvalue {i64, i1} %254, 0
  store i64 %259, i64* %28
  %260 = load i64, i64* %28
  store i64 %260, i64* %i2
  br label %101
261:
  %262 = call i8 addrspace(1)* @_bal_panic_construct(i64 20225)
  store i8 addrspace(1)* %262, i8 addrspace(1)** %29
  br label %116
}
