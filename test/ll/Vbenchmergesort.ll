@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %26 = alloca i64
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
  br i1 %60, label %110, label %108
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
  br i1 %68, label %116, label %111
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
  br i1 %96, label %127, label %137
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
  %106 = load i64, i64* %26
  call void @_bal_panic(i64 %106)
  unreachable
107:
  call void @_bal_panic(i64 1284)
  unreachable
108:
  %109 = extractvalue {i64, i1} %59, 0
  store i64 %109, i64* %11
  store i64 0, i64* %i.1
  br label %72
110:
  store i64 4609, i64* %26
  br label %105
111:
  %112 = extractvalue {i64, i1} %67, 0
  store i64 %112, i64* %5
  %113 = load i64, i64* %5
  %114 = load i64, i64* %m
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %117, label %118
116:
  store i64 3585, i64* %26
  br label %105
117:
  store i64 3586, i64* %26
  br label %105
118:
  %119 = icmp eq i64 %113, -9223372036854775808
  %120 = icmp eq i64 %114, -1
  %121 = and i1 %119, %120
  br i1 %121, label %124, label %122
122:
  %123 = srem i64 %113, %114
  store i64 %123, i64* %6
  br label %125
124:
  store i64 0, i64* %6
  br label %125
125:
  %126 = load i64, i64* %6
  store i64 %126, i64* %x
  br label %69
127:
  %128 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %93, i64 0, i32 2
  %129 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %128, align 8
  %130 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %129, i64 0, i64 %90
  %131 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %130, align 8
  store i8 addrspace(1)* %131, i8 addrspace(1)** %14
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %133 = addrspacecast i8 addrspace(1)* %132 to i8*
  %134 = ptrtoint i8* %133 to i64
  %135 = and i64 %134, 2233785415175766016
  %136 = icmp eq i64 %135, 576460752303423488
  br i1 %136, label %144, label %148
137:
  store i64 4869, i64* %26
  br label %105
138:
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %140 = addrspacecast i8 addrspace(1)* %139 to i8*
  %141 = ptrtoint i8* %140 to i64
  %142 = and i64 %141, 2233785415175766016
  %143 = icmp eq i64 %142, 504403158265495552
  br i1 %143, label %153, label %158
144:
  %145 = call double @_bal_tagged_to_float(i8 addrspace(1)* %132)
  %146 = call {i64, i1} @_bal_float_to_int(double %145)
  %147 = extractvalue {i64, i1} %146, 1
  br i1 %147, label %152, label %149
148:
  store i8 addrspace(1)* %132, i8 addrspace(1)** %15
  br label %138
149:
  %150 = extractvalue {i64, i1} %146, 0
  %151 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %150)
  store i8 addrspace(1)* %151, i8 addrspace(1)** %15
  br label %138
152:
  store i64 4867, i64* %26
  br label %105
153:
  %154 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %139)
  store i64 %154, i64* %16
  %155 = load i64, i64* %i.1
  %156 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %155, i64 1)
  %157 = extractvalue {i64, i1} %156, 1
  br i1 %157, label %168, label %159
158:
  store i64 4867, i64* %26
  br label %105
159:
  %160 = extractvalue {i64, i1} %156, 0
  store i64 %160, i64* %17
  %161 = load i64, i64* %17
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %163 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %162, i64 72057594037927935)
  %164 = bitcast i8 addrspace(1)* %163 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %165 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %164, i64 0, i32 0
  %166 = load i64, i64 addrspace(1)* %165, align 8
  %167 = icmp ult i64 %161, %166
  br i1 %167, label %169, label %179
168:
  store i64 4865, i64* %26
  br label %105
169:
  %170 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %164, i64 0, i32 2
  %171 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %170, align 8
  %172 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %171, i64 0, i64 %161
  %173 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %172, align 8
  store i8 addrspace(1)* %173, i8 addrspace(1)** %18
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %175 = addrspacecast i8 addrspace(1)* %174 to i8*
  %176 = ptrtoint i8* %175 to i64
  %177 = and i64 %176, 2233785415175766016
  %178 = icmp eq i64 %177, 576460752303423488
  br i1 %178, label %186, label %190
179:
  store i64 4869, i64* %26
  br label %105
180:
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %182 = addrspacecast i8 addrspace(1)* %181 to i8*
  %183 = ptrtoint i8* %182 to i64
  %184 = and i64 %183, 2233785415175766016
  %185 = icmp eq i64 %184, 504403158265495552
  br i1 %185, label %195, label %201
186:
  %187 = call double @_bal_tagged_to_float(i8 addrspace(1)* %174)
  %188 = call {i64, i1} @_bal_float_to_int(double %187)
  %189 = extractvalue {i64, i1} %188, 1
  br i1 %189, label %194, label %191
190:
  store i8 addrspace(1)* %174, i8 addrspace(1)** %19
  br label %180
191:
  %192 = extractvalue {i64, i1} %188, 0
  %193 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %192)
  store i8 addrspace(1)* %193, i8 addrspace(1)** %19
  br label %180
194:
  store i64 4867, i64* %26
  br label %105
195:
  %196 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %181)
  store i64 %196, i64* %20
  %197 = load i64, i64* %16
  %198 = load i64, i64* %20
  %199 = icmp sgt i64 %197, %198
  store i1 %199, i1* %13
  %200 = load i1, i1* %13
  br i1 %200, label %97, label %101
201:
  store i64 4867, i64* %26
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
  %8 = alloca i64
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
  br i1 %29, label %36, label %46
30:
  %31 = load i64, i64* %i
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %i
  br label %15
33:
  %34 = load i64, i64* %8
  call void @_bal_panic(i64 %34)
  unreachable
35:
  call void @_bal_panic(i64 6660)
  unreachable
36:
  %37 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  %38 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %37, align 8
  %39 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 %23
  %40 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %39, align 8
  store i8 addrspace(1)* %40, i8 addrspace(1)** %4
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %42 = addrspacecast i8 addrspace(1)* %41 to i8*
  %43 = ptrtoint i8* %42 to i64
  %44 = and i64 %43, 2233785415175766016
  %45 = icmp eq i64 %44, 576460752303423488
  br i1 %45, label %53, label %57
46:
  store i64 7429, i64* %8
  br label %33
47:
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %49 = addrspacecast i8 addrspace(1)* %48 to i8*
  %50 = ptrtoint i8* %49 to i64
  %51 = and i64 %50, 2233785415175766016
  %52 = icmp eq i64 %51, 504403158265495552
  br i1 %52, label %62, label %68
53:
  %54 = call double @_bal_tagged_to_float(i8 addrspace(1)* %41)
  %55 = call {i64, i1} @_bal_float_to_int(double %54)
  %56 = extractvalue {i64, i1} %55, 1
  br i1 %56, label %61, label %58
57:
  store i8 addrspace(1)* %41, i8 addrspace(1)** %5
  br label %47
58:
  %59 = extractvalue {i64, i1} %55, 0
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %5
  br label %47
61:
  store i64 7427, i64* %8
  br label %33
62:
  %63 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %48)
  store i64 %63, i64* %6
  %64 = load i64, i64* %c
  %65 = load i64, i64* %6
  %66 = xor i64 %64, %65
  store i64 %66, i64* %7
  %67 = load i64, i64* %7
  store i64 %67, i64* %c
  br label %30
68:
  store i64 7427, i64* %8
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
  %22 = alloca i64
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
  br i1 %38, label %94, label %95
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
  br i1 %62, label %110, label %120
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
  br i1 %87, label %142, label %152
88:
  %89 = load i64, i64* %i.1
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %i.1
  br label %66
91:
  %92 = load i64, i64* %22
  call void @_bal_panic(i64 %92)
  unreachable
93:
  call void @_bal_panic(i64 8964)
  unreachable
94:
  store i64 9986, i64* %22
  br label %91
95:
  %96 = icmp eq i64 %37, -9223372036854775808
  %97 = icmp eq i64 2, -1
  %98 = and i1 %96, %97
  br i1 %98, label %109, label %99
99:
  %100 = sdiv i64 %37, 2
  store i64 %100, i64* %5
  %101 = load i64, i64* %5
  store i64 %101, i64* %mid
  %102 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %103 = bitcast i8 addrspace(1)* %102 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %104 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %103, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %104
  %105 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %103, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %105
  %106 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %103, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %106
  %107 = getelementptr i8, i8 addrspace(1)* %102, i64 1297036692682702848
  store i8 addrspace(1)* %107, i8 addrspace(1)** %6
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %108, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %39
109:
  store i64 9985, i64* %22
  br label %91
110:
  %111 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %59, i64 0, i32 2
  %112 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %111, align 8
  %113 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %112, i64 0, i64 %56
  %114 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %113, align 8
  store i8 addrspace(1)* %114, i8 addrspace(1)** %8
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %116 = addrspacecast i8 addrspace(1)* %115 to i8*
  %117 = ptrtoint i8* %116 to i64
  %118 = and i64 %117, 2233785415175766016
  %119 = icmp eq i64 %118, 576460752303423488
  br i1 %119, label %127, label %131
120:
  store i64 10757, i64* %22
  br label %91
121:
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %123 = addrspacecast i8 addrspace(1)* %122 to i8*
  %124 = ptrtoint i8* %123 to i64
  %125 = and i64 %124, 2233785415175766016
  %126 = icmp eq i64 %125, 504403158265495552
  br i1 %126, label %136, label %141
127:
  %128 = call double @_bal_tagged_to_float(i8 addrspace(1)* %115)
  %129 = call {i64, i1} @_bal_float_to_int(double %128)
  %130 = extractvalue {i64, i1} %129, 1
  br i1 %130, label %135, label %132
131:
  store i8 addrspace(1)* %115, i8 addrspace(1)** %9
  br label %121
132:
  %133 = extractvalue {i64, i1} %129, 0
  %134 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %133)
  store i8 addrspace(1)* %134, i8 addrspace(1)** %9
  br label %121
135:
  store i64 10755, i64* %22
  br label %91
136:
  %137 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %122)
  store i64 %137, i64* %10
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %list1
  %139 = load i64, i64* %10
  %140 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %139)
  call void @_Barray__push(i8 addrspace(1)* %138, i8 addrspace(1)* %140)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %63
141:
  store i64 10755, i64* %22
  br label %91
142:
  %143 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %84, i64 0, i32 2
  %144 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %143, align 8
  %145 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %144, i64 0, i64 %81
  %146 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %145, align 8
  store i8 addrspace(1)* %146, i8 addrspace(1)** %15
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %148 = addrspacecast i8 addrspace(1)* %147 to i8*
  %149 = ptrtoint i8* %148 to i64
  %150 = and i64 %149, 2233785415175766016
  %151 = icmp eq i64 %150, 576460752303423488
  br i1 %151, label %159, label %163
152:
  store i64 11781, i64* %22
  br label %91
153:
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %16
  %155 = addrspacecast i8 addrspace(1)* %154 to i8*
  %156 = ptrtoint i8* %155 to i64
  %157 = and i64 %156, 2233785415175766016
  %158 = icmp eq i64 %157, 504403158265495552
  br i1 %158, label %168, label %173
159:
  %160 = call double @_bal_tagged_to_float(i8 addrspace(1)* %147)
  %161 = call {i64, i1} @_bal_float_to_int(double %160)
  %162 = extractvalue {i64, i1} %161, 1
  br i1 %162, label %167, label %164
163:
  store i8 addrspace(1)* %147, i8 addrspace(1)** %16
  br label %153
164:
  %165 = extractvalue {i64, i1} %161, 0
  %166 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %165)
  store i8 addrspace(1)* %166, i8 addrspace(1)** %16
  br label %153
167:
  store i64 11779, i64* %22
  br label %91
168:
  %169 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %154)
  store i64 %169, i64* %17
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %list2
  %171 = load i64, i64* %17
  %172 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %171)
  call void @_Barray__push(i8 addrspace(1)* %170, i8 addrspace(1)* %172)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  br label %88
173:
  store i64 11779, i64* %22
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
  %29 = alloca i64
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
  br i1 %66, label %118, label %128
67:
  %68 = load i64, i64* %i1
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %70 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %69, i64 72057594037927935)
  %71 = bitcast i8 addrspace(1)* %70 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %72 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 0
  %73 = load i64, i64 addrspace(1)* %72, align 8
  %74 = icmp ult i64 %68, %73
  br i1 %74, label %187, label %197
75:
  %76 = load i64, i64* %i2
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %78 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %77, i64 72057594037927935)
  %79 = bitcast i8 addrspace(1)* %78 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %80 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 0
  %81 = load i64, i64 addrspace(1)* %80, align 8
  %82 = icmp ult i64 %76, %81
  br i1 %82, label %202, label %212
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
  br i1 %98, label %217, label %227
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
  br i1 %112, label %232, label %242
113:
  %114 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %114
115:
  %116 = load i64, i64* %29
  call void @_bal_panic(i64 %116)
  unreachable
117:
  call void @_bal_panic(i64 13060)
  unreachable
118:
  %119 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 2
  %120 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %119, align 8
  %121 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %120, i64 0, i64 %60
  %122 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %121, align 8
  store i8 addrspace(1)* %122, i8 addrspace(1)** %9
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %124 = addrspacecast i8 addrspace(1)* %123 to i8*
  %125 = ptrtoint i8* %124 to i64
  %126 = and i64 %125, 2233785415175766016
  %127 = icmp eq i64 %126, 576460752303423488
  br i1 %127, label %135, label %139
128:
  store i64 15365, i64* %29
  br label %115
129:
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %131 = addrspacecast i8 addrspace(1)* %130 to i8*
  %132 = ptrtoint i8* %131 to i64
  %133 = and i64 %132, 2233785415175766016
  %134 = icmp eq i64 %133, 504403158265495552
  br i1 %134, label %144, label %153
135:
  %136 = call double @_bal_tagged_to_float(i8 addrspace(1)* %123)
  %137 = call {i64, i1} @_bal_float_to_int(double %136)
  %138 = extractvalue {i64, i1} %137, 1
  br i1 %138, label %143, label %140
139:
  store i8 addrspace(1)* %123, i8 addrspace(1)** %10
  br label %129
140:
  %141 = extractvalue {i64, i1} %137, 0
  %142 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %141)
  store i8 addrspace(1)* %142, i8 addrspace(1)** %10
  br label %129
143:
  store i64 15363, i64* %29
  br label %115
144:
  %145 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %130)
  store i64 %145, i64* %11
  %146 = load i64, i64* %i2
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %148 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %147, i64 72057594037927935)
  %149 = bitcast i8 addrspace(1)* %148 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %150 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 0
  %151 = load i64, i64 addrspace(1)* %150, align 8
  %152 = icmp ult i64 %146, %151
  br i1 %152, label %154, label %164
153:
  store i64 15363, i64* %29
  br label %115
154:
  %155 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 2
  %156 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %155, align 8
  %157 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %156, i64 0, i64 %146
  %158 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %157, align 8
  store i8 addrspace(1)* %158, i8 addrspace(1)** %12
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %160 = addrspacecast i8 addrspace(1)* %159 to i8*
  %161 = ptrtoint i8* %160 to i64
  %162 = and i64 %161, 2233785415175766016
  %163 = icmp eq i64 %162, 576460752303423488
  br i1 %163, label %171, label %175
164:
  store i64 15365, i64* %29
  br label %115
165:
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %167 = addrspacecast i8 addrspace(1)* %166 to i8*
  %168 = ptrtoint i8* %167 to i64
  %169 = and i64 %168, 2233785415175766016
  %170 = icmp eq i64 %169, 504403158265495552
  br i1 %170, label %180, label %186
171:
  %172 = call double @_bal_tagged_to_float(i8 addrspace(1)* %159)
  %173 = call {i64, i1} @_bal_float_to_int(double %172)
  %174 = extractvalue {i64, i1} %173, 1
  br i1 %174, label %179, label %176
175:
  store i8 addrspace(1)* %159, i8 addrspace(1)** %13
  br label %165
176:
  %177 = extractvalue {i64, i1} %173, 0
  %178 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %177)
  store i8 addrspace(1)* %178, i8 addrspace(1)** %13
  br label %165
179:
  store i64 15363, i64* %29
  br label %115
180:
  %181 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %166)
  store i64 %181, i64* %14
  %182 = load i64, i64* %11
  %183 = load i64, i64* %14
  %184 = icmp sle i64 %182, %183
  store i1 %184, i1* %8
  %185 = load i1, i1* %8
  br i1 %185, label %67, label %75
186:
  store i64 15363, i64* %29
  br label %115
187:
  %188 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %71, i64 0, i32 2
  %189 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %188, align 8
  %190 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %189, i64 0, i64 %68
  %191 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %190, align 8
  store i8 addrspace(1)* %191, i8 addrspace(1)** %15
  %192 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Barray__push(i8 addrspace(1)* %192, i8 addrspace(1)* %193)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %194 = load i64, i64* %i1
  %195 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %194, i64 1)
  %196 = extractvalue {i64, i1} %195, 1
  br i1 %196, label %201, label %198
197:
  store i64 15621, i64* %29
  br label %115
198:
  %199 = extractvalue {i64, i1} %195, 0
  store i64 %199, i64* %17
  %200 = load i64, i64* %17
  store i64 %200, i64* %i1
  br label %83
201:
  store i64 15873, i64* %29
  br label %115
202:
  %203 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 2
  %204 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %203, align 8
  %205 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %204, i64 0, i64 %76
  %206 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %205, align 8
  store i8 addrspace(1)* %206, i8 addrspace(1)** %18
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  call void @_Barray__push(i8 addrspace(1)* %207, i8 addrspace(1)* %208)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %209 = load i64, i64* %i2
  %210 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %209, i64 1)
  %211 = extractvalue {i64, i1} %210, 1
  br i1 %211, label %216, label %213
212:
  store i64 16645, i64* %29
  br label %115
213:
  %214 = extractvalue {i64, i1} %210, 0
  store i64 %214, i64* %20
  %215 = load i64, i64* %20
  store i64 %215, i64* %i2
  br label %83
216:
  store i64 16897, i64* %29
  br label %115
217:
  %218 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %95, i64 0, i32 2
  %219 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %218, align 8
  %220 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %219, i64 0, i64 %92
  %221 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %220, align 8
  store i8 addrspace(1)* %221, i8 addrspace(1)** %22
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_Barray__push(i8 addrspace(1)* %222, i8 addrspace(1)* %223)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %224 = load i64, i64* %i1
  %225 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %224, i64 1)
  %226 = extractvalue {i64, i1} %225, 1
  br i1 %226, label %231, label %228
227:
  store i64 18949, i64* %29
  br label %115
228:
  %229 = extractvalue {i64, i1} %225, 0
  store i64 %229, i64* %24
  %230 = load i64, i64* %24
  store i64 %230, i64* %i1
  br label %86
231:
  store i64 19201, i64* %29
  br label %115
232:
  %233 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %109, i64 0, i32 2
  %234 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %233, align 8
  %235 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %234, i64 0, i64 %106
  %236 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %235, align 8
  store i8 addrspace(1)* %236, i8 addrspace(1)** %26
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %238 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  call void @_Barray__push(i8 addrspace(1)* %237, i8 addrspace(1)* %238)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %239 = load i64, i64* %i2
  %240 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %239, i64 1)
  %241 = extractvalue {i64, i1} %240, 1
  br i1 %241, label %246, label %243
242:
  store i64 19973, i64* %29
  br label %115
243:
  %244 = extractvalue {i64, i1} %240, 0
  store i64 %244, i64* %28
  %245 = load i64, i64* %28
  store i64 %245, i64* %i2
  br label %100
246:
  store i64 20225, i64* %29
  br label %115
}
