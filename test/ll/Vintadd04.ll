@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i64
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i64
  %42 = alloca i64
  %43 = alloca i64
  %44 = alloca i64
  %45 = alloca i64
  %46 = alloca i64
  %47 = alloca i64
  %48 = alloca i64
  %49 = alloca i64
  %50 = alloca i64
  %51 = alloca i64
  %52 = alloca i64
  %53 = alloca i64
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i64
  %56 = alloca i64
  %57 = alloca i64
  %58 = alloca i64
  %59 = alloca i64
  %60 = alloca i64
  %61 = alloca i64
  %62 = alloca i64
  %63 = alloca i64
  %64 = alloca i64
  %65 = alloca i64
  %66 = alloca i64
  %67 = alloca i64
  %68 = alloca i64
  %69 = alloca i64
  %70 = alloca i8 addrspace(1)*
  %71 = alloca i64
  %72 = alloca i8
  %73 = load i8*, i8** @_bal_stack_guard
  %74 = icmp ult i8* %72, %73
  br i1 %74, label %80, label %75
75:
  %76 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %77 = extractvalue {i64, i1} %76, 1
  br i1 %77, label %85, label %81
78:
  %79 = load i64, i64* %71
  call void @_bal_panic(i64 %79)
  unreachable
80:
  call void @_bal_panic(i64 772)
  unreachable
81:
  %82 = extractvalue {i64, i1} %76, 0
  store i64 %82, i64* %1
  %83 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %84 = extractvalue {i64, i1} %83, 1
  br i1 %84, label %92, label %86
85:
  store i64 1025, i64* %71
  br label %78
86:
  %87 = extractvalue {i64, i1} %83, 0
  store i64 %87, i64* %2
  %88 = load i64, i64* %1
  %89 = load i64, i64* %2
  %90 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %88, i64 %89)
  %91 = extractvalue {i64, i1} %90, 1
  br i1 %91, label %99, label %93
92:
  store i64 1025, i64* %71
  br label %78
93:
  %94 = extractvalue {i64, i1} %90, 0
  store i64 %94, i64* %3
  %95 = load i64, i64* %3
  %96 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %95)
  call void @_Bio__println(i8 addrspace(1)* %96)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %97 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %98 = extractvalue {i64, i1} %97, 1
  br i1 %98, label %104, label %100
99:
  store i64 1025, i64* %71
  br label %78
100:
  %101 = extractvalue {i64, i1} %97, 0
  store i64 %101, i64* %5
  %102 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %103 = extractvalue {i64, i1} %102, 1
  br i1 %103, label %111, label %105
104:
  store i64 1281, i64* %71
  br label %78
105:
  %106 = extractvalue {i64, i1} %102, 0
  store i64 %106, i64* %6
  %107 = load i64, i64* %5
  %108 = load i64, i64* %6
  %109 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %107, i64 %108)
  %110 = extractvalue {i64, i1} %109, 1
  br i1 %110, label %116, label %112
111:
  store i64 1281, i64* %71
  br label %78
112:
  %113 = extractvalue {i64, i1} %109, 0
  store i64 %113, i64* %7
  %114 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 11)
  %115 = extractvalue {i64, i1} %114, 1
  br i1 %115, label %123, label %117
116:
  store i64 1281, i64* %71
  br label %78
117:
  %118 = extractvalue {i64, i1} %114, 0
  store i64 %118, i64* %8
  %119 = load i64, i64* %7
  %120 = load i64, i64* %8
  %121 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %119, i64 %120)
  %122 = extractvalue {i64, i1} %121, 1
  br i1 %122, label %130, label %124
123:
  store i64 1281, i64* %71
  br label %78
124:
  %125 = extractvalue {i64, i1} %121, 0
  store i64 %125, i64* %9
  %126 = load i64, i64* %9
  %127 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %126)
  call void @_Bio__println(i8 addrspace(1)* %127)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %128 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %129 = extractvalue {i64, i1} %128, 1
  br i1 %129, label %135, label %131
130:
  store i64 1281, i64* %71
  br label %78
131:
  %132 = extractvalue {i64, i1} %128, 0
  store i64 %132, i64* %11
  %133 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %134 = extractvalue {i64, i1} %133, 1
  br i1 %134, label %142, label %136
135:
  store i64 1537, i64* %71
  br label %78
136:
  %137 = extractvalue {i64, i1} %133, 0
  store i64 %137, i64* %12
  %138 = load i64, i64* %11
  %139 = load i64, i64* %12
  %140 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %138, i64 %139)
  %141 = extractvalue {i64, i1} %140, 1
  br i1 %141, label %147, label %143
142:
  store i64 1537, i64* %71
  br label %78
143:
  %144 = extractvalue {i64, i1} %140, 0
  store i64 %144, i64* %13
  %145 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %146 = extractvalue {i64, i1} %145, 1
  br i1 %146, label %154, label %148
147:
  store i64 1537, i64* %71
  br label %78
148:
  %149 = extractvalue {i64, i1} %145, 0
  store i64 %149, i64* %14
  %150 = load i64, i64* %13
  %151 = load i64, i64* %14
  %152 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %150, i64 %151)
  %153 = extractvalue {i64, i1} %152, 1
  br i1 %153, label %159, label %155
154:
  store i64 1537, i64* %71
  br label %78
155:
  %156 = extractvalue {i64, i1} %152, 0
  store i64 %156, i64* %15
  %157 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %158 = extractvalue {i64, i1} %157, 1
  br i1 %158, label %166, label %160
159:
  store i64 1537, i64* %71
  br label %78
160:
  %161 = extractvalue {i64, i1} %157, 0
  store i64 %161, i64* %16
  %162 = load i64, i64* %15
  %163 = load i64, i64* %16
  %164 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %162, i64 %163)
  %165 = extractvalue {i64, i1} %164, 1
  br i1 %165, label %173, label %167
166:
  store i64 1537, i64* %71
  br label %78
167:
  %168 = extractvalue {i64, i1} %164, 0
  store i64 %168, i64* %17
  %169 = load i64, i64* %17
  %170 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %169)
  call void @_Bio__println(i8 addrspace(1)* %170)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %171 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %172 = extractvalue {i64, i1} %171, 1
  br i1 %172, label %178, label %174
173:
  store i64 1537, i64* %71
  br label %78
174:
  %175 = extractvalue {i64, i1} %171, 0
  store i64 %175, i64* %19
  %176 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %177 = extractvalue {i64, i1} %176, 1
  br i1 %177, label %185, label %179
178:
  store i64 1793, i64* %71
  br label %78
179:
  %180 = extractvalue {i64, i1} %176, 0
  store i64 %180, i64* %20
  %181 = load i64, i64* %19
  %182 = load i64, i64* %20
  %183 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %181, i64 %182)
  %184 = extractvalue {i64, i1} %183, 1
  br i1 %184, label %190, label %186
185:
  store i64 1793, i64* %71
  br label %78
186:
  %187 = extractvalue {i64, i1} %183, 0
  store i64 %187, i64* %21
  %188 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %189 = extractvalue {i64, i1} %188, 1
  br i1 %189, label %197, label %191
190:
  store i64 1793, i64* %71
  br label %78
191:
  %192 = extractvalue {i64, i1} %188, 0
  store i64 %192, i64* %22
  %193 = load i64, i64* %21
  %194 = load i64, i64* %22
  %195 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %193, i64 %194)
  %196 = extractvalue {i64, i1} %195, 1
  br i1 %196, label %202, label %198
197:
  store i64 1793, i64* %71
  br label %78
198:
  %199 = extractvalue {i64, i1} %195, 0
  store i64 %199, i64* %23
  %200 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %201 = extractvalue {i64, i1} %200, 1
  br i1 %201, label %209, label %203
202:
  store i64 1793, i64* %71
  br label %78
203:
  %204 = extractvalue {i64, i1} %200, 0
  store i64 %204, i64* %24
  %205 = load i64, i64* %23
  %206 = load i64, i64* %24
  %207 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %205, i64 %206)
  %208 = extractvalue {i64, i1} %207, 1
  br i1 %208, label %214, label %210
209:
  store i64 1793, i64* %71
  br label %78
210:
  %211 = extractvalue {i64, i1} %207, 0
  store i64 %211, i64* %25
  %212 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 12)
  %213 = extractvalue {i64, i1} %212, 1
  br i1 %213, label %221, label %215
214:
  store i64 1793, i64* %71
  br label %78
215:
  %216 = extractvalue {i64, i1} %212, 0
  store i64 %216, i64* %26
  %217 = load i64, i64* %25
  %218 = load i64, i64* %26
  %219 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %217, i64 %218)
  %220 = extractvalue {i64, i1} %219, 1
  br i1 %220, label %228, label %222
221:
  store i64 1793, i64* %71
  br label %78
222:
  %223 = extractvalue {i64, i1} %219, 0
  store i64 %223, i64* %27
  %224 = load i64, i64* %27
  %225 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %224)
  call void @_Bio__println(i8 addrspace(1)* %225)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %226 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %227 = extractvalue {i64, i1} %226, 1
  br i1 %227, label %233, label %229
228:
  store i64 1793, i64* %71
  br label %78
229:
  %230 = extractvalue {i64, i1} %226, 0
  store i64 %230, i64* %29
  %231 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %232 = extractvalue {i64, i1} %231, 1
  br i1 %232, label %240, label %234
233:
  store i64 2049, i64* %71
  br label %78
234:
  %235 = extractvalue {i64, i1} %231, 0
  store i64 %235, i64* %30
  %236 = load i64, i64* %29
  %237 = load i64, i64* %30
  %238 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %236, i64 %237)
  %239 = extractvalue {i64, i1} %238, 1
  br i1 %239, label %245, label %241
240:
  store i64 2049, i64* %71
  br label %78
241:
  %242 = extractvalue {i64, i1} %238, 0
  store i64 %242, i64* %31
  %243 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %244 = extractvalue {i64, i1} %243, 1
  br i1 %244, label %252, label %246
245:
  store i64 2049, i64* %71
  br label %78
246:
  %247 = extractvalue {i64, i1} %243, 0
  store i64 %247, i64* %32
  %248 = load i64, i64* %31
  %249 = load i64, i64* %32
  %250 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %248, i64 %249)
  %251 = extractvalue {i64, i1} %250, 1
  br i1 %251, label %257, label %253
252:
  store i64 2049, i64* %71
  br label %78
253:
  %254 = extractvalue {i64, i1} %250, 0
  store i64 %254, i64* %33
  %255 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %256 = extractvalue {i64, i1} %255, 1
  br i1 %256, label %264, label %258
257:
  store i64 2049, i64* %71
  br label %78
258:
  %259 = extractvalue {i64, i1} %255, 0
  store i64 %259, i64* %34
  %260 = load i64, i64* %33
  %261 = load i64, i64* %34
  %262 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %260, i64 %261)
  %263 = extractvalue {i64, i1} %262, 1
  br i1 %263, label %269, label %265
264:
  store i64 2049, i64* %71
  br label %78
265:
  %266 = extractvalue {i64, i1} %262, 0
  store i64 %266, i64* %35
  %267 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 4)
  %268 = extractvalue {i64, i1} %267, 1
  br i1 %268, label %276, label %270
269:
  store i64 2049, i64* %71
  br label %78
270:
  %271 = extractvalue {i64, i1} %267, 0
  store i64 %271, i64* %36
  %272 = load i64, i64* %35
  %273 = load i64, i64* %36
  %274 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %272, i64 %273)
  %275 = extractvalue {i64, i1} %274, 1
  br i1 %275, label %281, label %277
276:
  store i64 2049, i64* %71
  br label %78
277:
  %278 = extractvalue {i64, i1} %274, 0
  store i64 %278, i64* %37
  %279 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 7)
  %280 = extractvalue {i64, i1} %279, 1
  br i1 %280, label %288, label %282
281:
  store i64 2049, i64* %71
  br label %78
282:
  %283 = extractvalue {i64, i1} %279, 0
  store i64 %283, i64* %38
  %284 = load i64, i64* %37
  %285 = load i64, i64* %38
  %286 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %284, i64 %285)
  %287 = extractvalue {i64, i1} %286, 1
  br i1 %287, label %295, label %289
288:
  store i64 2049, i64* %71
  br label %78
289:
  %290 = extractvalue {i64, i1} %286, 0
  store i64 %290, i64* %39
  %291 = load i64, i64* %39
  %292 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %291)
  call void @_Bio__println(i8 addrspace(1)* %292)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  %293 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %294 = extractvalue {i64, i1} %293, 1
  br i1 %294, label %300, label %296
295:
  store i64 2049, i64* %71
  br label %78
296:
  %297 = extractvalue {i64, i1} %293, 0
  store i64 %297, i64* %41
  %298 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %299 = extractvalue {i64, i1} %298, 1
  br i1 %299, label %307, label %301
300:
  store i64 2305, i64* %71
  br label %78
301:
  %302 = extractvalue {i64, i1} %298, 0
  store i64 %302, i64* %42
  %303 = load i64, i64* %41
  %304 = load i64, i64* %42
  %305 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %303, i64 %304)
  %306 = extractvalue {i64, i1} %305, 1
  br i1 %306, label %312, label %308
307:
  store i64 2305, i64* %71
  br label %78
308:
  %309 = extractvalue {i64, i1} %305, 0
  store i64 %309, i64* %43
  %310 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %311 = extractvalue {i64, i1} %310, 1
  br i1 %311, label %319, label %313
312:
  store i64 2305, i64* %71
  br label %78
313:
  %314 = extractvalue {i64, i1} %310, 0
  store i64 %314, i64* %44
  %315 = load i64, i64* %43
  %316 = load i64, i64* %44
  %317 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %315, i64 %316)
  %318 = extractvalue {i64, i1} %317, 1
  br i1 %318, label %324, label %320
319:
  store i64 2305, i64* %71
  br label %78
320:
  %321 = extractvalue {i64, i1} %317, 0
  store i64 %321, i64* %45
  %322 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %323 = extractvalue {i64, i1} %322, 1
  br i1 %323, label %331, label %325
324:
  store i64 2305, i64* %71
  br label %78
325:
  %326 = extractvalue {i64, i1} %322, 0
  store i64 %326, i64* %46
  %327 = load i64, i64* %45
  %328 = load i64, i64* %46
  %329 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %327, i64 %328)
  %330 = extractvalue {i64, i1} %329, 1
  br i1 %330, label %336, label %332
331:
  store i64 2305, i64* %71
  br label %78
332:
  %333 = extractvalue {i64, i1} %329, 0
  store i64 %333, i64* %47
  %334 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 4)
  %335 = extractvalue {i64, i1} %334, 1
  br i1 %335, label %343, label %337
336:
  store i64 2305, i64* %71
  br label %78
337:
  %338 = extractvalue {i64, i1} %334, 0
  store i64 %338, i64* %48
  %339 = load i64, i64* %47
  %340 = load i64, i64* %48
  %341 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %339, i64 %340)
  %342 = extractvalue {i64, i1} %341, 1
  br i1 %342, label %348, label %344
343:
  store i64 2305, i64* %71
  br label %78
344:
  %345 = extractvalue {i64, i1} %341, 0
  store i64 %345, i64* %49
  %346 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 7)
  %347 = extractvalue {i64, i1} %346, 1
  br i1 %347, label %355, label %349
348:
  store i64 2305, i64* %71
  br label %78
349:
  %350 = extractvalue {i64, i1} %346, 0
  store i64 %350, i64* %50
  %351 = load i64, i64* %49
  %352 = load i64, i64* %50
  %353 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %351, i64 %352)
  %354 = extractvalue {i64, i1} %353, 1
  br i1 %354, label %360, label %356
355:
  store i64 2305, i64* %71
  br label %78
356:
  %357 = extractvalue {i64, i1} %353, 0
  store i64 %357, i64* %51
  %358 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %359 = extractvalue {i64, i1} %358, 1
  br i1 %359, label %367, label %361
360:
  store i64 2305, i64* %71
  br label %78
361:
  %362 = extractvalue {i64, i1} %358, 0
  store i64 %362, i64* %52
  %363 = load i64, i64* %51
  %364 = load i64, i64* %52
  %365 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %363, i64 %364)
  %366 = extractvalue {i64, i1} %365, 1
  br i1 %366, label %374, label %368
367:
  store i64 2305, i64* %71
  br label %78
368:
  %369 = extractvalue {i64, i1} %365, 0
  store i64 %369, i64* %53
  %370 = load i64, i64* %53
  %371 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %370)
  call void @_Bio__println(i8 addrspace(1)* %371)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  %372 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %373 = extractvalue {i64, i1} %372, 1
  br i1 %373, label %379, label %375
374:
  store i64 2305, i64* %71
  br label %78
375:
  %376 = extractvalue {i64, i1} %372, 0
  store i64 %376, i64* %55
  %377 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %378 = extractvalue {i64, i1} %377, 1
  br i1 %378, label %386, label %380
379:
  store i64 2561, i64* %71
  br label %78
380:
  %381 = extractvalue {i64, i1} %377, 0
  store i64 %381, i64* %56
  %382 = load i64, i64* %55
  %383 = load i64, i64* %56
  %384 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %382, i64 %383)
  %385 = extractvalue {i64, i1} %384, 1
  br i1 %385, label %391, label %387
386:
  store i64 2561, i64* %71
  br label %78
387:
  %388 = extractvalue {i64, i1} %384, 0
  store i64 %388, i64* %57
  %389 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %390 = extractvalue {i64, i1} %389, 1
  br i1 %390, label %398, label %392
391:
  store i64 2561, i64* %71
  br label %78
392:
  %393 = extractvalue {i64, i1} %389, 0
  store i64 %393, i64* %58
  %394 = load i64, i64* %57
  %395 = load i64, i64* %58
  %396 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %394, i64 %395)
  %397 = extractvalue {i64, i1} %396, 1
  br i1 %397, label %403, label %399
398:
  store i64 2561, i64* %71
  br label %78
399:
  %400 = extractvalue {i64, i1} %396, 0
  store i64 %400, i64* %59
  %401 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %402 = extractvalue {i64, i1} %401, 1
  br i1 %402, label %410, label %404
403:
  store i64 2561, i64* %71
  br label %78
404:
  %405 = extractvalue {i64, i1} %401, 0
  store i64 %405, i64* %60
  %406 = load i64, i64* %59
  %407 = load i64, i64* %60
  %408 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %406, i64 %407)
  %409 = extractvalue {i64, i1} %408, 1
  br i1 %409, label %415, label %411
410:
  store i64 2561, i64* %71
  br label %78
411:
  %412 = extractvalue {i64, i1} %408, 0
  store i64 %412, i64* %61
  %413 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 4)
  %414 = extractvalue {i64, i1} %413, 1
  br i1 %414, label %422, label %416
415:
  store i64 2561, i64* %71
  br label %78
416:
  %417 = extractvalue {i64, i1} %413, 0
  store i64 %417, i64* %62
  %418 = load i64, i64* %61
  %419 = load i64, i64* %62
  %420 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %418, i64 %419)
  %421 = extractvalue {i64, i1} %420, 1
  br i1 %421, label %427, label %423
422:
  store i64 2561, i64* %71
  br label %78
423:
  %424 = extractvalue {i64, i1} %420, 0
  store i64 %424, i64* %63
  %425 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 7)
  %426 = extractvalue {i64, i1} %425, 1
  br i1 %426, label %434, label %428
427:
  store i64 2561, i64* %71
  br label %78
428:
  %429 = extractvalue {i64, i1} %425, 0
  store i64 %429, i64* %64
  %430 = load i64, i64* %63
  %431 = load i64, i64* %64
  %432 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %430, i64 %431)
  %433 = extractvalue {i64, i1} %432, 1
  br i1 %433, label %439, label %435
434:
  store i64 2561, i64* %71
  br label %78
435:
  %436 = extractvalue {i64, i1} %432, 0
  store i64 %436, i64* %65
  %437 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 23)
  %438 = extractvalue {i64, i1} %437, 1
  br i1 %438, label %446, label %440
439:
  store i64 2561, i64* %71
  br label %78
440:
  %441 = extractvalue {i64, i1} %437, 0
  store i64 %441, i64* %66
  %442 = load i64, i64* %65
  %443 = load i64, i64* %66
  %444 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %442, i64 %443)
  %445 = extractvalue {i64, i1} %444, 1
  br i1 %445, label %451, label %447
446:
  store i64 2561, i64* %71
  br label %78
447:
  %448 = extractvalue {i64, i1} %444, 0
  store i64 %448, i64* %67
  %449 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 50)
  %450 = extractvalue {i64, i1} %449, 1
  br i1 %450, label %458, label %452
451:
  store i64 2561, i64* %71
  br label %78
452:
  %453 = extractvalue {i64, i1} %449, 0
  store i64 %453, i64* %68
  %454 = load i64, i64* %67
  %455 = load i64, i64* %68
  %456 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %454, i64 %455)
  %457 = extractvalue {i64, i1} %456, 1
  br i1 %457, label %463, label %459
458:
  store i64 2561, i64* %71
  br label %78
459:
  %460 = extractvalue {i64, i1} %456, 0
  store i64 %460, i64* %69
  %461 = load i64, i64* %69
  %462 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %461)
  call void @_Bio__println(i8 addrspace(1)* %462)
  store i8 addrspace(1)* null, i8 addrspace(1)** %70
  ret void
463:
  store i64 2561, i64* %71
  br label %78
}
