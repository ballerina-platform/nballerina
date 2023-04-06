@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %nan = alloca double
  %anotherNan = alloca double
  %pInf = alloca double
  %nInf = alloca double
  %1 = alloca double
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca double
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca double
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca double
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca double
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca double
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca double
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca double
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca double
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca double
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca double
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca double
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca double
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca double
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca double
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca double
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca double
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca double
  %53 = alloca ptr addrspace(1)
  %54 = alloca ptr addrspace(1)
  %55 = alloca double
  %56 = alloca ptr addrspace(1)
  %57 = alloca ptr addrspace(1)
  %58 = alloca double
  %59 = alloca ptr addrspace(1)
  %60 = alloca ptr addrspace(1)
  %61 = alloca double
  %62 = alloca ptr addrspace(1)
  %63 = alloca ptr addrspace(1)
  %64 = alloca double
  %65 = alloca ptr addrspace(1)
  %66 = alloca ptr addrspace(1)
  %67 = alloca double
  %68 = alloca ptr addrspace(1)
  %69 = alloca ptr addrspace(1)
  %70 = alloca double
  %71 = alloca ptr addrspace(1)
  %72 = alloca ptr addrspace(1)
  %73 = alloca double
  %74 = alloca ptr addrspace(1)
  %75 = alloca ptr addrspace(1)
  %76 = alloca double
  %77 = alloca ptr addrspace(1)
  %78 = alloca ptr addrspace(1)
  %79 = alloca double
  %80 = alloca ptr addrspace(1)
  %81 = alloca ptr addrspace(1)
  %82 = alloca double
  %83 = alloca ptr addrspace(1)
  %84 = alloca ptr addrspace(1)
  %85 = alloca double
  %86 = alloca ptr addrspace(1)
  %87 = alloca ptr addrspace(1)
  %88 = alloca double
  %89 = alloca ptr addrspace(1)
  %90 = alloca ptr addrspace(1)
  %91 = alloca double
  %92 = alloca ptr addrspace(1)
  %93 = alloca ptr addrspace(1)
  %94 = alloca double
  %95 = alloca ptr addrspace(1)
  %96 = alloca ptr addrspace(1)
  %97 = alloca double
  %98 = alloca ptr addrspace(1)
  %99 = alloca ptr addrspace(1)
  %100 = alloca double
  %101 = alloca ptr addrspace(1)
  %102 = alloca ptr addrspace(1)
  %103 = alloca double
  %104 = alloca ptr addrspace(1)
  %105 = alloca ptr addrspace(1)
  %106 = alloca double
  %107 = alloca ptr addrspace(1)
  %108 = alloca ptr addrspace(1)
  %109 = alloca double
  %110 = alloca ptr addrspace(1)
  %111 = alloca ptr addrspace(1)
  %112 = alloca double
  %113 = alloca ptr addrspace(1)
  %114 = alloca ptr addrspace(1)
  %115 = alloca double
  %116 = alloca ptr addrspace(1)
  %117 = alloca ptr addrspace(1)
  %118 = alloca double
  %119 = alloca ptr addrspace(1)
  %120 = alloca ptr addrspace(1)
  %121 = alloca double
  %122 = alloca ptr addrspace(1)
  %123 = alloca ptr addrspace(1)
  %124 = alloca double
  %125 = alloca ptr addrspace(1)
  %126 = alloca ptr addrspace(1)
  %127 = alloca double
  %128 = alloca ptr addrspace(1)
  %129 = alloca ptr addrspace(1)
  %130 = alloca double
  %131 = alloca ptr addrspace(1)
  %132 = alloca ptr addrspace(1)
  %133 = alloca double
  %134 = alloca ptr addrspace(1)
  %135 = alloca ptr addrspace(1)
  %136 = alloca double
  %137 = alloca ptr addrspace(1)
  %138 = alloca ptr addrspace(1)
  %139 = alloca double
  %140 = alloca ptr addrspace(1)
  %141 = alloca ptr addrspace(1)
  %142 = alloca double
  %143 = alloca ptr addrspace(1)
  %144 = alloca ptr addrspace(1)
  %145 = alloca double
  %146 = alloca ptr addrspace(1)
  %147 = alloca ptr addrspace(1)
  %148 = alloca double
  %149 = alloca ptr addrspace(1)
  %150 = alloca ptr addrspace(1)
  %151 = alloca double
  %152 = alloca ptr addrspace(1)
  %153 = alloca ptr addrspace(1)
  %154 = alloca double
  %155 = alloca ptr addrspace(1)
  %156 = alloca ptr addrspace(1)
  %157 = alloca double
  %158 = alloca ptr addrspace(1)
  %159 = alloca ptr addrspace(1)
  %160 = alloca double
  %161 = alloca ptr addrspace(1)
  %162 = alloca ptr addrspace(1)
  %163 = alloca double
  %164 = alloca ptr addrspace(1)
  %165 = alloca ptr addrspace(1)
  %166 = alloca double
  %167 = alloca ptr addrspace(1)
  %168 = alloca ptr addrspace(1)
  %169 = alloca double
  %170 = alloca ptr addrspace(1)
  %171 = alloca ptr addrspace(1)
  %172 = alloca ptr addrspace(1)
  %173 = alloca ptr addrspace(1)
  %174 = alloca ptr addrspace(1)
  %175 = alloca ptr addrspace(1)
  %176 = alloca ptr addrspace(1)
  %177 = alloca ptr addrspace(1)
  %178 = alloca ptr addrspace(1)
  %179 = alloca ptr addrspace(1)
  %180 = alloca ptr addrspace(1)
  %181 = alloca ptr addrspace(1)
  %182 = alloca ptr addrspace(1)
  %183 = alloca ptr addrspace(1)
  %184 = alloca ptr addrspace(1)
  %185 = alloca ptr addrspace(1)
  %186 = alloca ptr addrspace(1)
  %187 = alloca ptr addrspace(1)
  %188 = alloca ptr addrspace(1)
  %189 = alloca ptr addrspace(1)
  %190 = alloca ptr addrspace(1)
  %191 = alloca ptr addrspace(1)
  %192 = alloca double
  %193 = alloca ptr addrspace(1)
  %194 = alloca ptr addrspace(1)
  %195 = alloca double
  %196 = alloca ptr addrspace(1)
  %197 = alloca ptr addrspace(1)
  %198 = alloca double
  %199 = alloca ptr addrspace(1)
  %200 = alloca ptr addrspace(1)
  %201 = alloca double
  %202 = alloca ptr addrspace(1)
  %203 = alloca ptr addrspace(1)
  %204 = alloca double
  %205 = alloca ptr addrspace(1)
  %206 = alloca ptr addrspace(1)
  %207 = alloca double
  %208 = alloca ptr addrspace(1)
  %209 = alloca ptr addrspace(1)
  %210 = alloca double
  %211 = alloca ptr addrspace(1)
  %212 = alloca ptr addrspace(1)
  %213 = alloca double
  %214 = alloca ptr addrspace(1)
  %215 = alloca ptr addrspace(1)
  %216 = alloca double
  %217 = alloca ptr addrspace(1)
  %218 = alloca ptr addrspace(1)
  %219 = alloca double
  %220 = alloca ptr addrspace(1)
  %221 = alloca ptr addrspace(1)
  %222 = alloca double
  %223 = alloca ptr addrspace(1)
  %224 = alloca ptr addrspace(1)
  %225 = alloca double
  %226 = alloca ptr addrspace(1)
  %227 = alloca ptr addrspace(1)
  %228 = alloca double
  %229 = alloca ptr addrspace(1)
  %230 = alloca ptr addrspace(1)
  %231 = alloca double
  %232 = alloca ptr addrspace(1)
  %233 = alloca ptr addrspace(1)
  %234 = alloca double
  %235 = alloca ptr addrspace(1)
  %236 = alloca ptr addrspace(1)
  %237 = alloca double
  %238 = alloca ptr addrspace(1)
  %239 = alloca ptr addrspace(1)
  %240 = alloca double
  %241 = alloca ptr addrspace(1)
  %242 = alloca ptr addrspace(1)
  %243 = alloca double
  %244 = alloca ptr addrspace(1)
  %245 = alloca ptr addrspace(1)
  %246 = alloca double
  %247 = alloca ptr addrspace(1)
  %248 = alloca ptr addrspace(1)
  %249 = alloca double
  %250 = alloca ptr addrspace(1)
  %251 = alloca ptr addrspace(1)
  %252 = alloca double
  %253 = alloca ptr addrspace(1)
  %254 = alloca ptr addrspace(1)
  %255 = alloca double
  %256 = alloca ptr addrspace(1)
  %257 = alloca ptr addrspace(1)
  %258 = alloca ptr addrspace(1)
  %259 = alloca ptr addrspace(1)
  %260 = alloca ptr addrspace(1)
  %261 = alloca ptr addrspace(1)
  %262 = alloca ptr addrspace(1)
  %263 = alloca ptr addrspace(1)
  %264 = alloca ptr addrspace(1)
  %265 = alloca ptr addrspace(1)
  %266 = alloca ptr addrspace(1)
  %267 = alloca ptr addrspace(1)
  %268 = alloca ptr addrspace(1)
  %269 = alloca ptr addrspace(1)
  %270 = alloca ptr addrspace(1)
  %271 = alloca ptr addrspace(1)
  %272 = alloca ptr addrspace(1)
  %273 = alloca ptr addrspace(1)
  %274 = alloca ptr addrspace(1)
  %275 = alloca ptr addrspace(1)
  %276 = alloca ptr addrspace(1)
  %277 = alloca ptr addrspace(1)
  %278 = alloca ptr addrspace(1)
  %279 = alloca ptr addrspace(1)
  %280 = alloca ptr addrspace(1)
  %281 = alloca ptr addrspace(1)
  %282 = alloca ptr addrspace(1)
  %283 = alloca ptr addrspace(1)
  %284 = alloca ptr addrspace(1)
  %285 = alloca ptr addrspace(1)
  %286 = alloca ptr addrspace(1)
  %287 = alloca ptr addrspace(1)
  %288 = alloca ptr addrspace(1)
  %289 = alloca ptr addrspace(1)
  %290 = alloca ptr addrspace(1)
  %291 = alloca ptr addrspace(1)
  %292 = alloca ptr addrspace(1)
  %293 = alloca ptr addrspace(1)
  %294 = alloca ptr addrspace(1)
  %295 = alloca ptr addrspace(1)
  %296 = alloca ptr addrspace(1)
  %297 = alloca ptr addrspace(1)
  %298 = alloca ptr addrspace(1)
  %299 = alloca ptr addrspace(1)
  %300 = alloca ptr addrspace(1)
  %301 = alloca ptr addrspace(1)
  %302 = alloca ptr addrspace(1)
  %303 = alloca ptr addrspace(1)
  %304 = alloca ptr addrspace(1)
  %305 = alloca ptr addrspace(1)
  %306 = alloca double
  %307 = alloca ptr addrspace(1)
  %308 = alloca ptr addrspace(1)
  %f = alloca double
  %309 = alloca double
  %310 = alloca ptr addrspace(1)
  %311 = alloca ptr addrspace(1)
  %312 = alloca double
  %313 = alloca ptr addrspace(1)
  %314 = alloca ptr addrspace(1)
  %315 = alloca i8
  %316 = load ptr, ptr @_bal_stack_guard
  %317 = icmp ult ptr %315, %316
  br i1 %317, label %1739, label %318
318:
  store double 0x7FF8000000000000, ptr %nan
  store double 0x7FF8000000000000, ptr %anotherNan
  store double 0x7FF0000000000000, ptr %pInf
  store double 0xFFF0000000000000, ptr %nInf
  %319 = load double, ptr %nan
  %320 = load double, ptr %nan
  %321 = frem double %319, %320
  store double %321, ptr %1
  %322 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %323 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %322, i64 0, i32 3
  %324 = load ptr addrspace(1), ptr addrspace(1) %323, align 8
  %325 = bitcast ptr addrspace(1) %324 to ptr addrspace(1)
  %326 = load double, ptr %1
  %327 = call ptr addrspace(1) @_bal_float_to_tagged(double %326), !dbg !12
  %328 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %325, i64 0, i64 0
  store ptr addrspace(1) %327, ptr addrspace(1) %328
  %329 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %322, i64 0, i32 1
  store i64 1, ptr addrspace(1) %329
  %330 = bitcast ptr addrspace(1) %322 to ptr addrspace(1)
  %331 = getelementptr i8, ptr addrspace(1) %330, i64 864691128455135236
  store ptr addrspace(1) %331, ptr %2
  %332 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %332), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %333 = load double, ptr %nan
  %334 = load double, ptr %pInf
  %335 = frem double %333, %334
  store double %335, ptr %4
  %336 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %337 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %336, i64 0, i32 3
  %338 = load ptr addrspace(1), ptr addrspace(1) %337, align 8
  %339 = bitcast ptr addrspace(1) %338 to ptr addrspace(1)
  %340 = load double, ptr %4
  %341 = call ptr addrspace(1) @_bal_float_to_tagged(double %340), !dbg !15
  %342 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %339, i64 0, i64 0
  store ptr addrspace(1) %341, ptr addrspace(1) %342
  %343 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %336, i64 0, i32 1
  store i64 1, ptr addrspace(1) %343
  %344 = bitcast ptr addrspace(1) %336 to ptr addrspace(1)
  %345 = getelementptr i8, ptr addrspace(1) %344, i64 864691128455135236
  store ptr addrspace(1) %345, ptr %5
  %346 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %346), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %347 = load double, ptr %nan
  %348 = frem double %347, 7.0
  store double %348, ptr %7
  %349 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %350 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %349, i64 0, i32 3
  %351 = load ptr addrspace(1), ptr addrspace(1) %350, align 8
  %352 = bitcast ptr addrspace(1) %351 to ptr addrspace(1)
  %353 = load double, ptr %7
  %354 = call ptr addrspace(1) @_bal_float_to_tagged(double %353), !dbg !18
  %355 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %352, i64 0, i64 0
  store ptr addrspace(1) %354, ptr addrspace(1) %355
  %356 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %349, i64 0, i32 1
  store i64 1, ptr addrspace(1) %356
  %357 = bitcast ptr addrspace(1) %349 to ptr addrspace(1)
  %358 = getelementptr i8, ptr addrspace(1) %357, i64 864691128455135236
  store ptr addrspace(1) %358, ptr %8
  %359 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %359), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %360 = load double, ptr %nan
  %361 = frem double %360, 5.0
  store double %361, ptr %10
  %362 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %363 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %362, i64 0, i32 3
  %364 = load ptr addrspace(1), ptr addrspace(1) %363, align 8
  %365 = bitcast ptr addrspace(1) %364 to ptr addrspace(1)
  %366 = load double, ptr %10
  %367 = call ptr addrspace(1) @_bal_float_to_tagged(double %366), !dbg !21
  %368 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %365, i64 0, i64 0
  store ptr addrspace(1) %367, ptr addrspace(1) %368
  %369 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %362, i64 0, i32 1
  store i64 1, ptr addrspace(1) %369
  %370 = bitcast ptr addrspace(1) %362 to ptr addrspace(1)
  %371 = getelementptr i8, ptr addrspace(1) %370, i64 864691128455135236
  store ptr addrspace(1) %371, ptr %11
  %372 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %372), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %373 = load double, ptr %nan
  %374 = frem double %373, 0.7
  store double %374, ptr %13
  %375 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %376 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 3
  %377 = load ptr addrspace(1), ptr addrspace(1) %376, align 8
  %378 = bitcast ptr addrspace(1) %377 to ptr addrspace(1)
  %379 = load double, ptr %13
  %380 = call ptr addrspace(1) @_bal_float_to_tagged(double %379), !dbg !24
  %381 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %378, i64 0, i64 0
  store ptr addrspace(1) %380, ptr addrspace(1) %381
  %382 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 1
  store i64 1, ptr addrspace(1) %382
  %383 = bitcast ptr addrspace(1) %375 to ptr addrspace(1)
  %384 = getelementptr i8, ptr addrspace(1) %383, i64 864691128455135236
  store ptr addrspace(1) %384, ptr %14
  %385 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %385), !dbg !25
  store ptr addrspace(1) null, ptr %15
  %386 = load double, ptr %nan
  %387 = frem double %386, 0.5
  store double %387, ptr %16
  %388 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %389 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %388, i64 0, i32 3
  %390 = load ptr addrspace(1), ptr addrspace(1) %389, align 8
  %391 = bitcast ptr addrspace(1) %390 to ptr addrspace(1)
  %392 = load double, ptr %16
  %393 = call ptr addrspace(1) @_bal_float_to_tagged(double %392), !dbg !27
  %394 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %391, i64 0, i64 0
  store ptr addrspace(1) %393, ptr addrspace(1) %394
  %395 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %388, i64 0, i32 1
  store i64 1, ptr addrspace(1) %395
  %396 = bitcast ptr addrspace(1) %388 to ptr addrspace(1)
  %397 = getelementptr i8, ptr addrspace(1) %396, i64 864691128455135236
  store ptr addrspace(1) %397, ptr %17
  %398 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %398), !dbg !28
  store ptr addrspace(1) null, ptr %18
  %399 = load double, ptr %nan
  %400 = frem double %399, 0.0
  store double %400, ptr %19
  %401 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %402 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %401, i64 0, i32 3
  %403 = load ptr addrspace(1), ptr addrspace(1) %402, align 8
  %404 = bitcast ptr addrspace(1) %403 to ptr addrspace(1)
  %405 = load double, ptr %19
  %406 = call ptr addrspace(1) @_bal_float_to_tagged(double %405), !dbg !30
  %407 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %404, i64 0, i64 0
  store ptr addrspace(1) %406, ptr addrspace(1) %407
  %408 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %401, i64 0, i32 1
  store i64 1, ptr addrspace(1) %408
  %409 = bitcast ptr addrspace(1) %401 to ptr addrspace(1)
  %410 = getelementptr i8, ptr addrspace(1) %409, i64 864691128455135236
  store ptr addrspace(1) %410, ptr %20
  %411 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %411), !dbg !31
  store ptr addrspace(1) null, ptr %21
  %412 = load double, ptr %nan
  %413 = frem double %412, -7.0
  store double %413, ptr %22
  %414 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %415 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %414, i64 0, i32 3
  %416 = load ptr addrspace(1), ptr addrspace(1) %415, align 8
  %417 = bitcast ptr addrspace(1) %416 to ptr addrspace(1)
  %418 = load double, ptr %22
  %419 = call ptr addrspace(1) @_bal_float_to_tagged(double %418), !dbg !33
  %420 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %417, i64 0, i64 0
  store ptr addrspace(1) %419, ptr addrspace(1) %420
  %421 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %414, i64 0, i32 1
  store i64 1, ptr addrspace(1) %421
  %422 = bitcast ptr addrspace(1) %414 to ptr addrspace(1)
  %423 = getelementptr i8, ptr addrspace(1) %422, i64 864691128455135236
  store ptr addrspace(1) %423, ptr %23
  %424 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %424), !dbg !34
  store ptr addrspace(1) null, ptr %24
  %425 = load double, ptr %nan
  %426 = frem double %425, -5.0
  store double %426, ptr %25
  %427 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !35
  %428 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %427, i64 0, i32 3
  %429 = load ptr addrspace(1), ptr addrspace(1) %428, align 8
  %430 = bitcast ptr addrspace(1) %429 to ptr addrspace(1)
  %431 = load double, ptr %25
  %432 = call ptr addrspace(1) @_bal_float_to_tagged(double %431), !dbg !36
  %433 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %430, i64 0, i64 0
  store ptr addrspace(1) %432, ptr addrspace(1) %433
  %434 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %427, i64 0, i32 1
  store i64 1, ptr addrspace(1) %434
  %435 = bitcast ptr addrspace(1) %427 to ptr addrspace(1)
  %436 = getelementptr i8, ptr addrspace(1) %435, i64 864691128455135236
  store ptr addrspace(1) %436, ptr %26
  %437 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %437), !dbg !37
  store ptr addrspace(1) null, ptr %27
  %438 = load double, ptr %nan
  %439 = frem double %438, -0.7
  store double %439, ptr %28
  %440 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !38
  %441 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %440, i64 0, i32 3
  %442 = load ptr addrspace(1), ptr addrspace(1) %441, align 8
  %443 = bitcast ptr addrspace(1) %442 to ptr addrspace(1)
  %444 = load double, ptr %28
  %445 = call ptr addrspace(1) @_bal_float_to_tagged(double %444), !dbg !39
  %446 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %443, i64 0, i64 0
  store ptr addrspace(1) %445, ptr addrspace(1) %446
  %447 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %440, i64 0, i32 1
  store i64 1, ptr addrspace(1) %447
  %448 = bitcast ptr addrspace(1) %440 to ptr addrspace(1)
  %449 = getelementptr i8, ptr addrspace(1) %448, i64 864691128455135236
  store ptr addrspace(1) %449, ptr %29
  %450 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %450), !dbg !40
  store ptr addrspace(1) null, ptr %30
  %451 = load double, ptr %nan
  %452 = frem double %451, -0.5
  store double %452, ptr %31
  %453 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !41
  %454 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %453, i64 0, i32 3
  %455 = load ptr addrspace(1), ptr addrspace(1) %454, align 8
  %456 = bitcast ptr addrspace(1) %455 to ptr addrspace(1)
  %457 = load double, ptr %31
  %458 = call ptr addrspace(1) @_bal_float_to_tagged(double %457), !dbg !42
  %459 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %456, i64 0, i64 0
  store ptr addrspace(1) %458, ptr addrspace(1) %459
  %460 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %453, i64 0, i32 1
  store i64 1, ptr addrspace(1) %460
  %461 = bitcast ptr addrspace(1) %453 to ptr addrspace(1)
  %462 = getelementptr i8, ptr addrspace(1) %461, i64 864691128455135236
  store ptr addrspace(1) %462, ptr %32
  %463 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %463), !dbg !43
  store ptr addrspace(1) null, ptr %33
  %464 = load double, ptr %nan
  %465 = frem double %464, -0.0
  store double %465, ptr %34
  %466 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %467 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %466, i64 0, i32 3
  %468 = load ptr addrspace(1), ptr addrspace(1) %467, align 8
  %469 = bitcast ptr addrspace(1) %468 to ptr addrspace(1)
  %470 = load double, ptr %34
  %471 = call ptr addrspace(1) @_bal_float_to_tagged(double %470), !dbg !45
  %472 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %469, i64 0, i64 0
  store ptr addrspace(1) %471, ptr addrspace(1) %472
  %473 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %466, i64 0, i32 1
  store i64 1, ptr addrspace(1) %473
  %474 = bitcast ptr addrspace(1) %466 to ptr addrspace(1)
  %475 = getelementptr i8, ptr addrspace(1) %474, i64 864691128455135236
  store ptr addrspace(1) %475, ptr %35
  %476 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %476), !dbg !46
  store ptr addrspace(1) null, ptr %36
  %477 = load double, ptr %nan
  %478 = load double, ptr %nInf
  %479 = frem double %477, %478
  store double %479, ptr %37
  %480 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !47
  %481 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %480, i64 0, i32 3
  %482 = load ptr addrspace(1), ptr addrspace(1) %481, align 8
  %483 = bitcast ptr addrspace(1) %482 to ptr addrspace(1)
  %484 = load double, ptr %37
  %485 = call ptr addrspace(1) @_bal_float_to_tagged(double %484), !dbg !48
  %486 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %483, i64 0, i64 0
  store ptr addrspace(1) %485, ptr addrspace(1) %486
  %487 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %480, i64 0, i32 1
  store i64 1, ptr addrspace(1) %487
  %488 = bitcast ptr addrspace(1) %480 to ptr addrspace(1)
  %489 = getelementptr i8, ptr addrspace(1) %488, i64 864691128455135236
  store ptr addrspace(1) %489, ptr %38
  %490 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %490), !dbg !49
  store ptr addrspace(1) null, ptr %39
  %491 = load double, ptr %nan
  %492 = load double, ptr %anotherNan
  %493 = frem double %491, %492
  store double %493, ptr %40
  %494 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !50
  %495 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %494, i64 0, i32 3
  %496 = load ptr addrspace(1), ptr addrspace(1) %495, align 8
  %497 = bitcast ptr addrspace(1) %496 to ptr addrspace(1)
  %498 = load double, ptr %40
  %499 = call ptr addrspace(1) @_bal_float_to_tagged(double %498), !dbg !51
  %500 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %497, i64 0, i64 0
  store ptr addrspace(1) %499, ptr addrspace(1) %500
  %501 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %494, i64 0, i32 1
  store i64 1, ptr addrspace(1) %501
  %502 = bitcast ptr addrspace(1) %494 to ptr addrspace(1)
  %503 = getelementptr i8, ptr addrspace(1) %502, i64 864691128455135236
  store ptr addrspace(1) %503, ptr %41
  %504 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %504), !dbg !52
  store ptr addrspace(1) null, ptr %42
  %505 = load double, ptr %pInf
  %506 = load double, ptr %nan
  %507 = frem double %505, %506
  store double %507, ptr %43
  %508 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !53
  %509 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %508, i64 0, i32 3
  %510 = load ptr addrspace(1), ptr addrspace(1) %509, align 8
  %511 = bitcast ptr addrspace(1) %510 to ptr addrspace(1)
  %512 = load double, ptr %43
  %513 = call ptr addrspace(1) @_bal_float_to_tagged(double %512), !dbg !54
  %514 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %511, i64 0, i64 0
  store ptr addrspace(1) %513, ptr addrspace(1) %514
  %515 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %508, i64 0, i32 1
  store i64 1, ptr addrspace(1) %515
  %516 = bitcast ptr addrspace(1) %508 to ptr addrspace(1)
  %517 = getelementptr i8, ptr addrspace(1) %516, i64 864691128455135236
  store ptr addrspace(1) %517, ptr %44
  %518 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %518), !dbg !55
  store ptr addrspace(1) null, ptr %45
  %519 = load double, ptr %nan
  %520 = frem double 7.0, %519
  store double %520, ptr %46
  %521 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %522 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %521, i64 0, i32 3
  %523 = load ptr addrspace(1), ptr addrspace(1) %522, align 8
  %524 = bitcast ptr addrspace(1) %523 to ptr addrspace(1)
  %525 = load double, ptr %46
  %526 = call ptr addrspace(1) @_bal_float_to_tagged(double %525), !dbg !57
  %527 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %524, i64 0, i64 0
  store ptr addrspace(1) %526, ptr addrspace(1) %527
  %528 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %521, i64 0, i32 1
  store i64 1, ptr addrspace(1) %528
  %529 = bitcast ptr addrspace(1) %521 to ptr addrspace(1)
  %530 = getelementptr i8, ptr addrspace(1) %529, i64 864691128455135236
  store ptr addrspace(1) %530, ptr %47
  %531 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %531), !dbg !58
  store ptr addrspace(1) null, ptr %48
  %532 = load double, ptr %nan
  %533 = frem double 5.0, %532
  store double %533, ptr %49
  %534 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !59
  %535 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %534, i64 0, i32 3
  %536 = load ptr addrspace(1), ptr addrspace(1) %535, align 8
  %537 = bitcast ptr addrspace(1) %536 to ptr addrspace(1)
  %538 = load double, ptr %49
  %539 = call ptr addrspace(1) @_bal_float_to_tagged(double %538), !dbg !60
  %540 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %537, i64 0, i64 0
  store ptr addrspace(1) %539, ptr addrspace(1) %540
  %541 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %534, i64 0, i32 1
  store i64 1, ptr addrspace(1) %541
  %542 = bitcast ptr addrspace(1) %534 to ptr addrspace(1)
  %543 = getelementptr i8, ptr addrspace(1) %542, i64 864691128455135236
  store ptr addrspace(1) %543, ptr %50
  %544 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %544), !dbg !61
  store ptr addrspace(1) null, ptr %51
  %545 = load double, ptr %nan
  %546 = frem double 0.7, %545
  store double %546, ptr %52
  %547 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !62
  %548 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %547, i64 0, i32 3
  %549 = load ptr addrspace(1), ptr addrspace(1) %548, align 8
  %550 = bitcast ptr addrspace(1) %549 to ptr addrspace(1)
  %551 = load double, ptr %52
  %552 = call ptr addrspace(1) @_bal_float_to_tagged(double %551), !dbg !63
  %553 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %550, i64 0, i64 0
  store ptr addrspace(1) %552, ptr addrspace(1) %553
  %554 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %547, i64 0, i32 1
  store i64 1, ptr addrspace(1) %554
  %555 = bitcast ptr addrspace(1) %547 to ptr addrspace(1)
  %556 = getelementptr i8, ptr addrspace(1) %555, i64 864691128455135236
  store ptr addrspace(1) %556, ptr %53
  %557 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %557), !dbg !64
  store ptr addrspace(1) null, ptr %54
  %558 = load double, ptr %nan
  %559 = frem double 0.5, %558
  store double %559, ptr %55
  %560 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !65
  %561 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %560, i64 0, i32 3
  %562 = load ptr addrspace(1), ptr addrspace(1) %561, align 8
  %563 = bitcast ptr addrspace(1) %562 to ptr addrspace(1)
  %564 = load double, ptr %55
  %565 = call ptr addrspace(1) @_bal_float_to_tagged(double %564), !dbg !66
  %566 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %563, i64 0, i64 0
  store ptr addrspace(1) %565, ptr addrspace(1) %566
  %567 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %560, i64 0, i32 1
  store i64 1, ptr addrspace(1) %567
  %568 = bitcast ptr addrspace(1) %560 to ptr addrspace(1)
  %569 = getelementptr i8, ptr addrspace(1) %568, i64 864691128455135236
  store ptr addrspace(1) %569, ptr %56
  %570 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %570), !dbg !67
  store ptr addrspace(1) null, ptr %57
  %571 = load double, ptr %nan
  %572 = frem double 0.0, %571
  store double %572, ptr %58
  %573 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !68
  %574 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %573, i64 0, i32 3
  %575 = load ptr addrspace(1), ptr addrspace(1) %574, align 8
  %576 = bitcast ptr addrspace(1) %575 to ptr addrspace(1)
  %577 = load double, ptr %58
  %578 = call ptr addrspace(1) @_bal_float_to_tagged(double %577), !dbg !69
  %579 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %576, i64 0, i64 0
  store ptr addrspace(1) %578, ptr addrspace(1) %579
  %580 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %573, i64 0, i32 1
  store i64 1, ptr addrspace(1) %580
  %581 = bitcast ptr addrspace(1) %573 to ptr addrspace(1)
  %582 = getelementptr i8, ptr addrspace(1) %581, i64 864691128455135236
  store ptr addrspace(1) %582, ptr %59
  %583 = load ptr addrspace(1), ptr %59
  call void @_Bb02ioprintln(ptr addrspace(1) %583), !dbg !70
  store ptr addrspace(1) null, ptr %60
  %584 = load double, ptr %nan
  %585 = frem double -7.0, %584
  store double %585, ptr %61
  %586 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !71
  %587 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %586, i64 0, i32 3
  %588 = load ptr addrspace(1), ptr addrspace(1) %587, align 8
  %589 = bitcast ptr addrspace(1) %588 to ptr addrspace(1)
  %590 = load double, ptr %61
  %591 = call ptr addrspace(1) @_bal_float_to_tagged(double %590), !dbg !72
  %592 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %589, i64 0, i64 0
  store ptr addrspace(1) %591, ptr addrspace(1) %592
  %593 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %586, i64 0, i32 1
  store i64 1, ptr addrspace(1) %593
  %594 = bitcast ptr addrspace(1) %586 to ptr addrspace(1)
  %595 = getelementptr i8, ptr addrspace(1) %594, i64 864691128455135236
  store ptr addrspace(1) %595, ptr %62
  %596 = load ptr addrspace(1), ptr %62
  call void @_Bb02ioprintln(ptr addrspace(1) %596), !dbg !73
  store ptr addrspace(1) null, ptr %63
  %597 = load double, ptr %nan
  %598 = frem double -5.0, %597
  store double %598, ptr %64
  %599 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !74
  %600 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %599, i64 0, i32 3
  %601 = load ptr addrspace(1), ptr addrspace(1) %600, align 8
  %602 = bitcast ptr addrspace(1) %601 to ptr addrspace(1)
  %603 = load double, ptr %64
  %604 = call ptr addrspace(1) @_bal_float_to_tagged(double %603), !dbg !75
  %605 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %602, i64 0, i64 0
  store ptr addrspace(1) %604, ptr addrspace(1) %605
  %606 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %599, i64 0, i32 1
  store i64 1, ptr addrspace(1) %606
  %607 = bitcast ptr addrspace(1) %599 to ptr addrspace(1)
  %608 = getelementptr i8, ptr addrspace(1) %607, i64 864691128455135236
  store ptr addrspace(1) %608, ptr %65
  %609 = load ptr addrspace(1), ptr %65
  call void @_Bb02ioprintln(ptr addrspace(1) %609), !dbg !76
  store ptr addrspace(1) null, ptr %66
  %610 = load double, ptr %nan
  %611 = frem double -0.7, %610
  store double %611, ptr %67
  %612 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !77
  %613 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %612, i64 0, i32 3
  %614 = load ptr addrspace(1), ptr addrspace(1) %613, align 8
  %615 = bitcast ptr addrspace(1) %614 to ptr addrspace(1)
  %616 = load double, ptr %67
  %617 = call ptr addrspace(1) @_bal_float_to_tagged(double %616), !dbg !78
  %618 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %615, i64 0, i64 0
  store ptr addrspace(1) %617, ptr addrspace(1) %618
  %619 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %612, i64 0, i32 1
  store i64 1, ptr addrspace(1) %619
  %620 = bitcast ptr addrspace(1) %612 to ptr addrspace(1)
  %621 = getelementptr i8, ptr addrspace(1) %620, i64 864691128455135236
  store ptr addrspace(1) %621, ptr %68
  %622 = load ptr addrspace(1), ptr %68
  call void @_Bb02ioprintln(ptr addrspace(1) %622), !dbg !79
  store ptr addrspace(1) null, ptr %69
  %623 = load double, ptr %nan
  %624 = frem double -0.5, %623
  store double %624, ptr %70
  %625 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !80
  %626 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %625, i64 0, i32 3
  %627 = load ptr addrspace(1), ptr addrspace(1) %626, align 8
  %628 = bitcast ptr addrspace(1) %627 to ptr addrspace(1)
  %629 = load double, ptr %70
  %630 = call ptr addrspace(1) @_bal_float_to_tagged(double %629), !dbg !81
  %631 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %628, i64 0, i64 0
  store ptr addrspace(1) %630, ptr addrspace(1) %631
  %632 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %625, i64 0, i32 1
  store i64 1, ptr addrspace(1) %632
  %633 = bitcast ptr addrspace(1) %625 to ptr addrspace(1)
  %634 = getelementptr i8, ptr addrspace(1) %633, i64 864691128455135236
  store ptr addrspace(1) %634, ptr %71
  %635 = load ptr addrspace(1), ptr %71
  call void @_Bb02ioprintln(ptr addrspace(1) %635), !dbg !82
  store ptr addrspace(1) null, ptr %72
  %636 = load double, ptr %nan
  %637 = frem double -0.0, %636
  store double %637, ptr %73
  %638 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !83
  %639 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %638, i64 0, i32 3
  %640 = load ptr addrspace(1), ptr addrspace(1) %639, align 8
  %641 = bitcast ptr addrspace(1) %640 to ptr addrspace(1)
  %642 = load double, ptr %73
  %643 = call ptr addrspace(1) @_bal_float_to_tagged(double %642), !dbg !84
  %644 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %641, i64 0, i64 0
  store ptr addrspace(1) %643, ptr addrspace(1) %644
  %645 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %638, i64 0, i32 1
  store i64 1, ptr addrspace(1) %645
  %646 = bitcast ptr addrspace(1) %638 to ptr addrspace(1)
  %647 = getelementptr i8, ptr addrspace(1) %646, i64 864691128455135236
  store ptr addrspace(1) %647, ptr %74
  %648 = load ptr addrspace(1), ptr %74
  call void @_Bb02ioprintln(ptr addrspace(1) %648), !dbg !85
  store ptr addrspace(1) null, ptr %75
  %649 = load double, ptr %nInf
  %650 = load double, ptr %nan
  %651 = frem double %649, %650
  store double %651, ptr %76
  %652 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !86
  %653 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %652, i64 0, i32 3
  %654 = load ptr addrspace(1), ptr addrspace(1) %653, align 8
  %655 = bitcast ptr addrspace(1) %654 to ptr addrspace(1)
  %656 = load double, ptr %76
  %657 = call ptr addrspace(1) @_bal_float_to_tagged(double %656), !dbg !87
  %658 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %655, i64 0, i64 0
  store ptr addrspace(1) %657, ptr addrspace(1) %658
  %659 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %652, i64 0, i32 1
  store i64 1, ptr addrspace(1) %659
  %660 = bitcast ptr addrspace(1) %652 to ptr addrspace(1)
  %661 = getelementptr i8, ptr addrspace(1) %660, i64 864691128455135236
  store ptr addrspace(1) %661, ptr %77
  %662 = load ptr addrspace(1), ptr %77
  call void @_Bb02ioprintln(ptr addrspace(1) %662), !dbg !88
  store ptr addrspace(1) null, ptr %78
  %663 = load double, ptr %anotherNan
  %664 = load double, ptr %nan
  %665 = frem double %663, %664
  store double %665, ptr %79
  %666 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !89
  %667 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %666, i64 0, i32 3
  %668 = load ptr addrspace(1), ptr addrspace(1) %667, align 8
  %669 = bitcast ptr addrspace(1) %668 to ptr addrspace(1)
  %670 = load double, ptr %79
  %671 = call ptr addrspace(1) @_bal_float_to_tagged(double %670), !dbg !90
  %672 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %669, i64 0, i64 0
  store ptr addrspace(1) %671, ptr addrspace(1) %672
  %673 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %666, i64 0, i32 1
  store i64 1, ptr addrspace(1) %673
  %674 = bitcast ptr addrspace(1) %666 to ptr addrspace(1)
  %675 = getelementptr i8, ptr addrspace(1) %674, i64 864691128455135236
  store ptr addrspace(1) %675, ptr %80
  %676 = load ptr addrspace(1), ptr %80
  call void @_Bb02ioprintln(ptr addrspace(1) %676), !dbg !91
  store ptr addrspace(1) null, ptr %81
  %677 = load double, ptr %pInf
  %678 = load double, ptr %nan
  %679 = frem double %677, %678
  store double %679, ptr %82
  %680 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !92
  %681 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %680, i64 0, i32 3
  %682 = load ptr addrspace(1), ptr addrspace(1) %681, align 8
  %683 = bitcast ptr addrspace(1) %682 to ptr addrspace(1)
  %684 = load double, ptr %82
  %685 = call ptr addrspace(1) @_bal_float_to_tagged(double %684), !dbg !93
  %686 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %683, i64 0, i64 0
  store ptr addrspace(1) %685, ptr addrspace(1) %686
  %687 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %680, i64 0, i32 1
  store i64 1, ptr addrspace(1) %687
  %688 = bitcast ptr addrspace(1) %680 to ptr addrspace(1)
  %689 = getelementptr i8, ptr addrspace(1) %688, i64 864691128455135236
  store ptr addrspace(1) %689, ptr %83
  %690 = load ptr addrspace(1), ptr %83
  call void @_Bb02ioprintln(ptr addrspace(1) %690), !dbg !94
  store ptr addrspace(1) null, ptr %84
  %691 = load double, ptr %pInf
  %692 = load double, ptr %pInf
  %693 = frem double %691, %692
  store double %693, ptr %85
  %694 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !95
  %695 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %694, i64 0, i32 3
  %696 = load ptr addrspace(1), ptr addrspace(1) %695, align 8
  %697 = bitcast ptr addrspace(1) %696 to ptr addrspace(1)
  %698 = load double, ptr %85
  %699 = call ptr addrspace(1) @_bal_float_to_tagged(double %698), !dbg !96
  %700 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %697, i64 0, i64 0
  store ptr addrspace(1) %699, ptr addrspace(1) %700
  %701 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %694, i64 0, i32 1
  store i64 1, ptr addrspace(1) %701
  %702 = bitcast ptr addrspace(1) %694 to ptr addrspace(1)
  %703 = getelementptr i8, ptr addrspace(1) %702, i64 864691128455135236
  store ptr addrspace(1) %703, ptr %86
  %704 = load ptr addrspace(1), ptr %86
  call void @_Bb02ioprintln(ptr addrspace(1) %704), !dbg !97
  store ptr addrspace(1) null, ptr %87
  %705 = load double, ptr %pInf
  %706 = frem double %705, 7.0
  store double %706, ptr %88
  %707 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !98
  %708 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %707, i64 0, i32 3
  %709 = load ptr addrspace(1), ptr addrspace(1) %708, align 8
  %710 = bitcast ptr addrspace(1) %709 to ptr addrspace(1)
  %711 = load double, ptr %88
  %712 = call ptr addrspace(1) @_bal_float_to_tagged(double %711), !dbg !99
  %713 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %710, i64 0, i64 0
  store ptr addrspace(1) %712, ptr addrspace(1) %713
  %714 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %707, i64 0, i32 1
  store i64 1, ptr addrspace(1) %714
  %715 = bitcast ptr addrspace(1) %707 to ptr addrspace(1)
  %716 = getelementptr i8, ptr addrspace(1) %715, i64 864691128455135236
  store ptr addrspace(1) %716, ptr %89
  %717 = load ptr addrspace(1), ptr %89
  call void @_Bb02ioprintln(ptr addrspace(1) %717), !dbg !100
  store ptr addrspace(1) null, ptr %90
  %718 = load double, ptr %pInf
  %719 = frem double %718, 5.0
  store double %719, ptr %91
  %720 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !101
  %721 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %720, i64 0, i32 3
  %722 = load ptr addrspace(1), ptr addrspace(1) %721, align 8
  %723 = bitcast ptr addrspace(1) %722 to ptr addrspace(1)
  %724 = load double, ptr %91
  %725 = call ptr addrspace(1) @_bal_float_to_tagged(double %724), !dbg !102
  %726 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %723, i64 0, i64 0
  store ptr addrspace(1) %725, ptr addrspace(1) %726
  %727 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %720, i64 0, i32 1
  store i64 1, ptr addrspace(1) %727
  %728 = bitcast ptr addrspace(1) %720 to ptr addrspace(1)
  %729 = getelementptr i8, ptr addrspace(1) %728, i64 864691128455135236
  store ptr addrspace(1) %729, ptr %92
  %730 = load ptr addrspace(1), ptr %92
  call void @_Bb02ioprintln(ptr addrspace(1) %730), !dbg !103
  store ptr addrspace(1) null, ptr %93
  %731 = load double, ptr %pInf
  %732 = frem double %731, 0.7
  store double %732, ptr %94
  %733 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !104
  %734 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %733, i64 0, i32 3
  %735 = load ptr addrspace(1), ptr addrspace(1) %734, align 8
  %736 = bitcast ptr addrspace(1) %735 to ptr addrspace(1)
  %737 = load double, ptr %94
  %738 = call ptr addrspace(1) @_bal_float_to_tagged(double %737), !dbg !105
  %739 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %736, i64 0, i64 0
  store ptr addrspace(1) %738, ptr addrspace(1) %739
  %740 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %733, i64 0, i32 1
  store i64 1, ptr addrspace(1) %740
  %741 = bitcast ptr addrspace(1) %733 to ptr addrspace(1)
  %742 = getelementptr i8, ptr addrspace(1) %741, i64 864691128455135236
  store ptr addrspace(1) %742, ptr %95
  %743 = load ptr addrspace(1), ptr %95
  call void @_Bb02ioprintln(ptr addrspace(1) %743), !dbg !106
  store ptr addrspace(1) null, ptr %96
  %744 = load double, ptr %pInf
  %745 = frem double %744, 0.5
  store double %745, ptr %97
  %746 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !107
  %747 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %746, i64 0, i32 3
  %748 = load ptr addrspace(1), ptr addrspace(1) %747, align 8
  %749 = bitcast ptr addrspace(1) %748 to ptr addrspace(1)
  %750 = load double, ptr %97
  %751 = call ptr addrspace(1) @_bal_float_to_tagged(double %750), !dbg !108
  %752 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %749, i64 0, i64 0
  store ptr addrspace(1) %751, ptr addrspace(1) %752
  %753 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %746, i64 0, i32 1
  store i64 1, ptr addrspace(1) %753
  %754 = bitcast ptr addrspace(1) %746 to ptr addrspace(1)
  %755 = getelementptr i8, ptr addrspace(1) %754, i64 864691128455135236
  store ptr addrspace(1) %755, ptr %98
  %756 = load ptr addrspace(1), ptr %98
  call void @_Bb02ioprintln(ptr addrspace(1) %756), !dbg !109
  store ptr addrspace(1) null, ptr %99
  %757 = load double, ptr %pInf
  %758 = frem double %757, 0.0
  store double %758, ptr %100
  %759 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !110
  %760 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %759, i64 0, i32 3
  %761 = load ptr addrspace(1), ptr addrspace(1) %760, align 8
  %762 = bitcast ptr addrspace(1) %761 to ptr addrspace(1)
  %763 = load double, ptr %100
  %764 = call ptr addrspace(1) @_bal_float_to_tagged(double %763), !dbg !111
  %765 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %762, i64 0, i64 0
  store ptr addrspace(1) %764, ptr addrspace(1) %765
  %766 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %759, i64 0, i32 1
  store i64 1, ptr addrspace(1) %766
  %767 = bitcast ptr addrspace(1) %759 to ptr addrspace(1)
  %768 = getelementptr i8, ptr addrspace(1) %767, i64 864691128455135236
  store ptr addrspace(1) %768, ptr %101
  %769 = load ptr addrspace(1), ptr %101
  call void @_Bb02ioprintln(ptr addrspace(1) %769), !dbg !112
  store ptr addrspace(1) null, ptr %102
  %770 = load double, ptr %pInf
  %771 = frem double %770, -7.0
  store double %771, ptr %103
  %772 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !113
  %773 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %772, i64 0, i32 3
  %774 = load ptr addrspace(1), ptr addrspace(1) %773, align 8
  %775 = bitcast ptr addrspace(1) %774 to ptr addrspace(1)
  %776 = load double, ptr %103
  %777 = call ptr addrspace(1) @_bal_float_to_tagged(double %776), !dbg !114
  %778 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %775, i64 0, i64 0
  store ptr addrspace(1) %777, ptr addrspace(1) %778
  %779 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %772, i64 0, i32 1
  store i64 1, ptr addrspace(1) %779
  %780 = bitcast ptr addrspace(1) %772 to ptr addrspace(1)
  %781 = getelementptr i8, ptr addrspace(1) %780, i64 864691128455135236
  store ptr addrspace(1) %781, ptr %104
  %782 = load ptr addrspace(1), ptr %104
  call void @_Bb02ioprintln(ptr addrspace(1) %782), !dbg !115
  store ptr addrspace(1) null, ptr %105
  %783 = load double, ptr %pInf
  %784 = frem double %783, -5.0
  store double %784, ptr %106
  %785 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !116
  %786 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %785, i64 0, i32 3
  %787 = load ptr addrspace(1), ptr addrspace(1) %786, align 8
  %788 = bitcast ptr addrspace(1) %787 to ptr addrspace(1)
  %789 = load double, ptr %106
  %790 = call ptr addrspace(1) @_bal_float_to_tagged(double %789), !dbg !117
  %791 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %788, i64 0, i64 0
  store ptr addrspace(1) %790, ptr addrspace(1) %791
  %792 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %785, i64 0, i32 1
  store i64 1, ptr addrspace(1) %792
  %793 = bitcast ptr addrspace(1) %785 to ptr addrspace(1)
  %794 = getelementptr i8, ptr addrspace(1) %793, i64 864691128455135236
  store ptr addrspace(1) %794, ptr %107
  %795 = load ptr addrspace(1), ptr %107
  call void @_Bb02ioprintln(ptr addrspace(1) %795), !dbg !118
  store ptr addrspace(1) null, ptr %108
  %796 = load double, ptr %pInf
  %797 = frem double %796, -0.7
  store double %797, ptr %109
  %798 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !119
  %799 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %798, i64 0, i32 3
  %800 = load ptr addrspace(1), ptr addrspace(1) %799, align 8
  %801 = bitcast ptr addrspace(1) %800 to ptr addrspace(1)
  %802 = load double, ptr %109
  %803 = call ptr addrspace(1) @_bal_float_to_tagged(double %802), !dbg !120
  %804 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %801, i64 0, i64 0
  store ptr addrspace(1) %803, ptr addrspace(1) %804
  %805 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %798, i64 0, i32 1
  store i64 1, ptr addrspace(1) %805
  %806 = bitcast ptr addrspace(1) %798 to ptr addrspace(1)
  %807 = getelementptr i8, ptr addrspace(1) %806, i64 864691128455135236
  store ptr addrspace(1) %807, ptr %110
  %808 = load ptr addrspace(1), ptr %110
  call void @_Bb02ioprintln(ptr addrspace(1) %808), !dbg !121
  store ptr addrspace(1) null, ptr %111
  %809 = load double, ptr %pInf
  %810 = frem double %809, -0.5
  store double %810, ptr %112
  %811 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !122
  %812 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %811, i64 0, i32 3
  %813 = load ptr addrspace(1), ptr addrspace(1) %812, align 8
  %814 = bitcast ptr addrspace(1) %813 to ptr addrspace(1)
  %815 = load double, ptr %112
  %816 = call ptr addrspace(1) @_bal_float_to_tagged(double %815), !dbg !123
  %817 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %814, i64 0, i64 0
  store ptr addrspace(1) %816, ptr addrspace(1) %817
  %818 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %811, i64 0, i32 1
  store i64 1, ptr addrspace(1) %818
  %819 = bitcast ptr addrspace(1) %811 to ptr addrspace(1)
  %820 = getelementptr i8, ptr addrspace(1) %819, i64 864691128455135236
  store ptr addrspace(1) %820, ptr %113
  %821 = load ptr addrspace(1), ptr %113
  call void @_Bb02ioprintln(ptr addrspace(1) %821), !dbg !124
  store ptr addrspace(1) null, ptr %114
  %822 = load double, ptr %pInf
  %823 = frem double %822, -0.0
  store double %823, ptr %115
  %824 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !125
  %825 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %824, i64 0, i32 3
  %826 = load ptr addrspace(1), ptr addrspace(1) %825, align 8
  %827 = bitcast ptr addrspace(1) %826 to ptr addrspace(1)
  %828 = load double, ptr %115
  %829 = call ptr addrspace(1) @_bal_float_to_tagged(double %828), !dbg !126
  %830 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %827, i64 0, i64 0
  store ptr addrspace(1) %829, ptr addrspace(1) %830
  %831 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %824, i64 0, i32 1
  store i64 1, ptr addrspace(1) %831
  %832 = bitcast ptr addrspace(1) %824 to ptr addrspace(1)
  %833 = getelementptr i8, ptr addrspace(1) %832, i64 864691128455135236
  store ptr addrspace(1) %833, ptr %116
  %834 = load ptr addrspace(1), ptr %116
  call void @_Bb02ioprintln(ptr addrspace(1) %834), !dbg !127
  store ptr addrspace(1) null, ptr %117
  %835 = load double, ptr %pInf
  %836 = load double, ptr %nInf
  %837 = frem double %835, %836
  store double %837, ptr %118
  %838 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !128
  %839 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %838, i64 0, i32 3
  %840 = load ptr addrspace(1), ptr addrspace(1) %839, align 8
  %841 = bitcast ptr addrspace(1) %840 to ptr addrspace(1)
  %842 = load double, ptr %118
  %843 = call ptr addrspace(1) @_bal_float_to_tagged(double %842), !dbg !129
  %844 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %841, i64 0, i64 0
  store ptr addrspace(1) %843, ptr addrspace(1) %844
  %845 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %838, i64 0, i32 1
  store i64 1, ptr addrspace(1) %845
  %846 = bitcast ptr addrspace(1) %838 to ptr addrspace(1)
  %847 = getelementptr i8, ptr addrspace(1) %846, i64 864691128455135236
  store ptr addrspace(1) %847, ptr %119
  %848 = load ptr addrspace(1), ptr %119
  call void @_Bb02ioprintln(ptr addrspace(1) %848), !dbg !130
  store ptr addrspace(1) null, ptr %120
  %849 = load double, ptr %pInf
  %850 = load double, ptr %anotherNan
  %851 = frem double %849, %850
  store double %851, ptr %121
  %852 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !131
  %853 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %852, i64 0, i32 3
  %854 = load ptr addrspace(1), ptr addrspace(1) %853, align 8
  %855 = bitcast ptr addrspace(1) %854 to ptr addrspace(1)
  %856 = load double, ptr %121
  %857 = call ptr addrspace(1) @_bal_float_to_tagged(double %856), !dbg !132
  %858 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %855, i64 0, i64 0
  store ptr addrspace(1) %857, ptr addrspace(1) %858
  %859 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %852, i64 0, i32 1
  store i64 1, ptr addrspace(1) %859
  %860 = bitcast ptr addrspace(1) %852 to ptr addrspace(1)
  %861 = getelementptr i8, ptr addrspace(1) %860, i64 864691128455135236
  store ptr addrspace(1) %861, ptr %122
  %862 = load ptr addrspace(1), ptr %122
  call void @_Bb02ioprintln(ptr addrspace(1) %862), !dbg !133
  store ptr addrspace(1) null, ptr %123
  %863 = load double, ptr %nInf
  %864 = load double, ptr %nan
  %865 = frem double %863, %864
  store double %865, ptr %124
  %866 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !134
  %867 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %866, i64 0, i32 3
  %868 = load ptr addrspace(1), ptr addrspace(1) %867, align 8
  %869 = bitcast ptr addrspace(1) %868 to ptr addrspace(1)
  %870 = load double, ptr %124
  %871 = call ptr addrspace(1) @_bal_float_to_tagged(double %870), !dbg !135
  %872 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %869, i64 0, i64 0
  store ptr addrspace(1) %871, ptr addrspace(1) %872
  %873 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %866, i64 0, i32 1
  store i64 1, ptr addrspace(1) %873
  %874 = bitcast ptr addrspace(1) %866 to ptr addrspace(1)
  %875 = getelementptr i8, ptr addrspace(1) %874, i64 864691128455135236
  store ptr addrspace(1) %875, ptr %125
  %876 = load ptr addrspace(1), ptr %125
  call void @_Bb02ioprintln(ptr addrspace(1) %876), !dbg !136
  store ptr addrspace(1) null, ptr %126
  %877 = load double, ptr %nInf
  %878 = load double, ptr %pInf
  %879 = frem double %877, %878
  store double %879, ptr %127
  %880 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !137
  %881 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %880, i64 0, i32 3
  %882 = load ptr addrspace(1), ptr addrspace(1) %881, align 8
  %883 = bitcast ptr addrspace(1) %882 to ptr addrspace(1)
  %884 = load double, ptr %127
  %885 = call ptr addrspace(1) @_bal_float_to_tagged(double %884), !dbg !138
  %886 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %883, i64 0, i64 0
  store ptr addrspace(1) %885, ptr addrspace(1) %886
  %887 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %880, i64 0, i32 1
  store i64 1, ptr addrspace(1) %887
  %888 = bitcast ptr addrspace(1) %880 to ptr addrspace(1)
  %889 = getelementptr i8, ptr addrspace(1) %888, i64 864691128455135236
  store ptr addrspace(1) %889, ptr %128
  %890 = load ptr addrspace(1), ptr %128
  call void @_Bb02ioprintln(ptr addrspace(1) %890), !dbg !139
  store ptr addrspace(1) null, ptr %129
  %891 = load double, ptr %nInf
  %892 = frem double %891, 7.0
  store double %892, ptr %130
  %893 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !140
  %894 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %893, i64 0, i32 3
  %895 = load ptr addrspace(1), ptr addrspace(1) %894, align 8
  %896 = bitcast ptr addrspace(1) %895 to ptr addrspace(1)
  %897 = load double, ptr %130
  %898 = call ptr addrspace(1) @_bal_float_to_tagged(double %897), !dbg !141
  %899 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %896, i64 0, i64 0
  store ptr addrspace(1) %898, ptr addrspace(1) %899
  %900 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %893, i64 0, i32 1
  store i64 1, ptr addrspace(1) %900
  %901 = bitcast ptr addrspace(1) %893 to ptr addrspace(1)
  %902 = getelementptr i8, ptr addrspace(1) %901, i64 864691128455135236
  store ptr addrspace(1) %902, ptr %131
  %903 = load ptr addrspace(1), ptr %131
  call void @_Bb02ioprintln(ptr addrspace(1) %903), !dbg !142
  store ptr addrspace(1) null, ptr %132
  %904 = load double, ptr %nInf
  %905 = frem double %904, 5.0
  store double %905, ptr %133
  %906 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !143
  %907 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %906, i64 0, i32 3
  %908 = load ptr addrspace(1), ptr addrspace(1) %907, align 8
  %909 = bitcast ptr addrspace(1) %908 to ptr addrspace(1)
  %910 = load double, ptr %133
  %911 = call ptr addrspace(1) @_bal_float_to_tagged(double %910), !dbg !144
  %912 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %909, i64 0, i64 0
  store ptr addrspace(1) %911, ptr addrspace(1) %912
  %913 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %906, i64 0, i32 1
  store i64 1, ptr addrspace(1) %913
  %914 = bitcast ptr addrspace(1) %906 to ptr addrspace(1)
  %915 = getelementptr i8, ptr addrspace(1) %914, i64 864691128455135236
  store ptr addrspace(1) %915, ptr %134
  %916 = load ptr addrspace(1), ptr %134
  call void @_Bb02ioprintln(ptr addrspace(1) %916), !dbg !145
  store ptr addrspace(1) null, ptr %135
  %917 = load double, ptr %nInf
  %918 = frem double %917, 0.7
  store double %918, ptr %136
  %919 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !146
  %920 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %919, i64 0, i32 3
  %921 = load ptr addrspace(1), ptr addrspace(1) %920, align 8
  %922 = bitcast ptr addrspace(1) %921 to ptr addrspace(1)
  %923 = load double, ptr %136
  %924 = call ptr addrspace(1) @_bal_float_to_tagged(double %923), !dbg !147
  %925 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %922, i64 0, i64 0
  store ptr addrspace(1) %924, ptr addrspace(1) %925
  %926 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %919, i64 0, i32 1
  store i64 1, ptr addrspace(1) %926
  %927 = bitcast ptr addrspace(1) %919 to ptr addrspace(1)
  %928 = getelementptr i8, ptr addrspace(1) %927, i64 864691128455135236
  store ptr addrspace(1) %928, ptr %137
  %929 = load ptr addrspace(1), ptr %137
  call void @_Bb02ioprintln(ptr addrspace(1) %929), !dbg !148
  store ptr addrspace(1) null, ptr %138
  %930 = load double, ptr %nInf
  %931 = frem double %930, 0.5
  store double %931, ptr %139
  %932 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !149
  %933 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %932, i64 0, i32 3
  %934 = load ptr addrspace(1), ptr addrspace(1) %933, align 8
  %935 = bitcast ptr addrspace(1) %934 to ptr addrspace(1)
  %936 = load double, ptr %139
  %937 = call ptr addrspace(1) @_bal_float_to_tagged(double %936), !dbg !150
  %938 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %935, i64 0, i64 0
  store ptr addrspace(1) %937, ptr addrspace(1) %938
  %939 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %932, i64 0, i32 1
  store i64 1, ptr addrspace(1) %939
  %940 = bitcast ptr addrspace(1) %932 to ptr addrspace(1)
  %941 = getelementptr i8, ptr addrspace(1) %940, i64 864691128455135236
  store ptr addrspace(1) %941, ptr %140
  %942 = load ptr addrspace(1), ptr %140
  call void @_Bb02ioprintln(ptr addrspace(1) %942), !dbg !151
  store ptr addrspace(1) null, ptr %141
  %943 = load double, ptr %nInf
  %944 = frem double %943, 0.0
  store double %944, ptr %142
  %945 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !152
  %946 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %945, i64 0, i32 3
  %947 = load ptr addrspace(1), ptr addrspace(1) %946, align 8
  %948 = bitcast ptr addrspace(1) %947 to ptr addrspace(1)
  %949 = load double, ptr %142
  %950 = call ptr addrspace(1) @_bal_float_to_tagged(double %949), !dbg !153
  %951 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %948, i64 0, i64 0
  store ptr addrspace(1) %950, ptr addrspace(1) %951
  %952 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %945, i64 0, i32 1
  store i64 1, ptr addrspace(1) %952
  %953 = bitcast ptr addrspace(1) %945 to ptr addrspace(1)
  %954 = getelementptr i8, ptr addrspace(1) %953, i64 864691128455135236
  store ptr addrspace(1) %954, ptr %143
  %955 = load ptr addrspace(1), ptr %143
  call void @_Bb02ioprintln(ptr addrspace(1) %955), !dbg !154
  store ptr addrspace(1) null, ptr %144
  %956 = load double, ptr %nInf
  %957 = frem double %956, -7.0
  store double %957, ptr %145
  %958 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !155
  %959 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %958, i64 0, i32 3
  %960 = load ptr addrspace(1), ptr addrspace(1) %959, align 8
  %961 = bitcast ptr addrspace(1) %960 to ptr addrspace(1)
  %962 = load double, ptr %145
  %963 = call ptr addrspace(1) @_bal_float_to_tagged(double %962), !dbg !156
  %964 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %961, i64 0, i64 0
  store ptr addrspace(1) %963, ptr addrspace(1) %964
  %965 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %958, i64 0, i32 1
  store i64 1, ptr addrspace(1) %965
  %966 = bitcast ptr addrspace(1) %958 to ptr addrspace(1)
  %967 = getelementptr i8, ptr addrspace(1) %966, i64 864691128455135236
  store ptr addrspace(1) %967, ptr %146
  %968 = load ptr addrspace(1), ptr %146
  call void @_Bb02ioprintln(ptr addrspace(1) %968), !dbg !157
  store ptr addrspace(1) null, ptr %147
  %969 = load double, ptr %nInf
  %970 = frem double %969, -5.0
  store double %970, ptr %148
  %971 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !158
  %972 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %971, i64 0, i32 3
  %973 = load ptr addrspace(1), ptr addrspace(1) %972, align 8
  %974 = bitcast ptr addrspace(1) %973 to ptr addrspace(1)
  %975 = load double, ptr %148
  %976 = call ptr addrspace(1) @_bal_float_to_tagged(double %975), !dbg !159
  %977 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %974, i64 0, i64 0
  store ptr addrspace(1) %976, ptr addrspace(1) %977
  %978 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %971, i64 0, i32 1
  store i64 1, ptr addrspace(1) %978
  %979 = bitcast ptr addrspace(1) %971 to ptr addrspace(1)
  %980 = getelementptr i8, ptr addrspace(1) %979, i64 864691128455135236
  store ptr addrspace(1) %980, ptr %149
  %981 = load ptr addrspace(1), ptr %149
  call void @_Bb02ioprintln(ptr addrspace(1) %981), !dbg !160
  store ptr addrspace(1) null, ptr %150
  %982 = load double, ptr %nInf
  %983 = frem double %982, -0.7
  store double %983, ptr %151
  %984 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !161
  %985 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %984, i64 0, i32 3
  %986 = load ptr addrspace(1), ptr addrspace(1) %985, align 8
  %987 = bitcast ptr addrspace(1) %986 to ptr addrspace(1)
  %988 = load double, ptr %151
  %989 = call ptr addrspace(1) @_bal_float_to_tagged(double %988), !dbg !162
  %990 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %987, i64 0, i64 0
  store ptr addrspace(1) %989, ptr addrspace(1) %990
  %991 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %984, i64 0, i32 1
  store i64 1, ptr addrspace(1) %991
  %992 = bitcast ptr addrspace(1) %984 to ptr addrspace(1)
  %993 = getelementptr i8, ptr addrspace(1) %992, i64 864691128455135236
  store ptr addrspace(1) %993, ptr %152
  %994 = load ptr addrspace(1), ptr %152
  call void @_Bb02ioprintln(ptr addrspace(1) %994), !dbg !163
  store ptr addrspace(1) null, ptr %153
  %995 = load double, ptr %nInf
  %996 = frem double %995, -0.5
  store double %996, ptr %154
  %997 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !164
  %998 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %997, i64 0, i32 3
  %999 = load ptr addrspace(1), ptr addrspace(1) %998, align 8
  %1000 = bitcast ptr addrspace(1) %999 to ptr addrspace(1)
  %1001 = load double, ptr %154
  %1002 = call ptr addrspace(1) @_bal_float_to_tagged(double %1001), !dbg !165
  %1003 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1000, i64 0, i64 0
  store ptr addrspace(1) %1002, ptr addrspace(1) %1003
  %1004 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %997, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1004
  %1005 = bitcast ptr addrspace(1) %997 to ptr addrspace(1)
  %1006 = getelementptr i8, ptr addrspace(1) %1005, i64 864691128455135236
  store ptr addrspace(1) %1006, ptr %155
  %1007 = load ptr addrspace(1), ptr %155
  call void @_Bb02ioprintln(ptr addrspace(1) %1007), !dbg !166
  store ptr addrspace(1) null, ptr %156
  %1008 = load double, ptr %nInf
  %1009 = frem double %1008, -0.0
  store double %1009, ptr %157
  %1010 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !167
  %1011 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1010, i64 0, i32 3
  %1012 = load ptr addrspace(1), ptr addrspace(1) %1011, align 8
  %1013 = bitcast ptr addrspace(1) %1012 to ptr addrspace(1)
  %1014 = load double, ptr %157
  %1015 = call ptr addrspace(1) @_bal_float_to_tagged(double %1014), !dbg !168
  %1016 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1013, i64 0, i64 0
  store ptr addrspace(1) %1015, ptr addrspace(1) %1016
  %1017 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1010, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1017
  %1018 = bitcast ptr addrspace(1) %1010 to ptr addrspace(1)
  %1019 = getelementptr i8, ptr addrspace(1) %1018, i64 864691128455135236
  store ptr addrspace(1) %1019, ptr %158
  %1020 = load ptr addrspace(1), ptr %158
  call void @_Bb02ioprintln(ptr addrspace(1) %1020), !dbg !169
  store ptr addrspace(1) null, ptr %159
  %1021 = load double, ptr %nInf
  %1022 = load double, ptr %nInf
  %1023 = frem double %1021, %1022
  store double %1023, ptr %160
  %1024 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !170
  %1025 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1024, i64 0, i32 3
  %1026 = load ptr addrspace(1), ptr addrspace(1) %1025, align 8
  %1027 = bitcast ptr addrspace(1) %1026 to ptr addrspace(1)
  %1028 = load double, ptr %160
  %1029 = call ptr addrspace(1) @_bal_float_to_tagged(double %1028), !dbg !171
  %1030 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1027, i64 0, i64 0
  store ptr addrspace(1) %1029, ptr addrspace(1) %1030
  %1031 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1024, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1031
  %1032 = bitcast ptr addrspace(1) %1024 to ptr addrspace(1)
  %1033 = getelementptr i8, ptr addrspace(1) %1032, i64 864691128455135236
  store ptr addrspace(1) %1033, ptr %161
  %1034 = load ptr addrspace(1), ptr %161
  call void @_Bb02ioprintln(ptr addrspace(1) %1034), !dbg !172
  store ptr addrspace(1) null, ptr %162
  %1035 = load double, ptr %nInf
  %1036 = load double, ptr %anotherNan
  %1037 = frem double %1035, %1036
  store double %1037, ptr %163
  %1038 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !173
  %1039 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1038, i64 0, i32 3
  %1040 = load ptr addrspace(1), ptr addrspace(1) %1039, align 8
  %1041 = bitcast ptr addrspace(1) %1040 to ptr addrspace(1)
  %1042 = load double, ptr %163
  %1043 = call ptr addrspace(1) @_bal_float_to_tagged(double %1042), !dbg !174
  %1044 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1041, i64 0, i64 0
  store ptr addrspace(1) %1043, ptr addrspace(1) %1044
  %1045 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1038, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1045
  %1046 = bitcast ptr addrspace(1) %1038 to ptr addrspace(1)
  %1047 = getelementptr i8, ptr addrspace(1) %1046, i64 864691128455135236
  store ptr addrspace(1) %1047, ptr %164
  %1048 = load ptr addrspace(1), ptr %164
  call void @_Bb02ioprintln(ptr addrspace(1) %1048), !dbg !175
  store ptr addrspace(1) null, ptr %165
  %1049 = load double, ptr %nan
  %1050 = frem double %1049, 0.0
  store double %1050, ptr %166
  %1051 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !176
  %1052 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1051, i64 0, i32 3
  %1053 = load ptr addrspace(1), ptr addrspace(1) %1052, align 8
  %1054 = bitcast ptr addrspace(1) %1053 to ptr addrspace(1)
  %1055 = load double, ptr %166
  %1056 = call ptr addrspace(1) @_bal_float_to_tagged(double %1055), !dbg !177
  %1057 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1054, i64 0, i64 0
  store ptr addrspace(1) %1056, ptr addrspace(1) %1057
  %1058 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1051, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1058
  %1059 = bitcast ptr addrspace(1) %1051 to ptr addrspace(1)
  %1060 = getelementptr i8, ptr addrspace(1) %1059, i64 864691128455135236
  store ptr addrspace(1) %1060, ptr %167
  %1061 = load ptr addrspace(1), ptr %167
  call void @_Bb02ioprintln(ptr addrspace(1) %1061), !dbg !178
  store ptr addrspace(1) null, ptr %168
  %1062 = load double, ptr %pInf
  %1063 = frem double %1062, 0.0
  store double %1063, ptr %169
  %1064 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !179
  %1065 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1064, i64 0, i32 3
  %1066 = load ptr addrspace(1), ptr addrspace(1) %1065, align 8
  %1067 = bitcast ptr addrspace(1) %1066 to ptr addrspace(1)
  %1068 = load double, ptr %169
  %1069 = call ptr addrspace(1) @_bal_float_to_tagged(double %1068), !dbg !180
  %1070 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1067, i64 0, i64 0
  store ptr addrspace(1) %1069, ptr addrspace(1) %1070
  %1071 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1064, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1071
  %1072 = bitcast ptr addrspace(1) %1064 to ptr addrspace(1)
  %1073 = getelementptr i8, ptr addrspace(1) %1072, i64 864691128455135236
  store ptr addrspace(1) %1073, ptr %170
  %1074 = load ptr addrspace(1), ptr %170
  call void @_Bb02ioprintln(ptr addrspace(1) %1074), !dbg !181
  store ptr addrspace(1) null, ptr %171
  %1075 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !182
  %1076 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1075, i64 0, i32 3
  %1077 = load ptr addrspace(1), ptr addrspace(1) %1076, align 8
  %1078 = bitcast ptr addrspace(1) %1077 to ptr addrspace(1)
  %1079 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !183
  %1080 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1078, i64 0, i64 0
  store ptr addrspace(1) %1079, ptr addrspace(1) %1080
  %1081 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1075, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1081
  %1082 = bitcast ptr addrspace(1) %1075 to ptr addrspace(1)
  %1083 = getelementptr i8, ptr addrspace(1) %1082, i64 864691128455135236
  store ptr addrspace(1) %1083, ptr %172
  %1084 = load ptr addrspace(1), ptr %172
  call void @_Bb02ioprintln(ptr addrspace(1) %1084), !dbg !184
  store ptr addrspace(1) null, ptr %173
  %1085 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !185
  %1086 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1085, i64 0, i32 3
  %1087 = load ptr addrspace(1), ptr addrspace(1) %1086, align 8
  %1088 = bitcast ptr addrspace(1) %1087 to ptr addrspace(1)
  %1089 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !186
  %1090 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1088, i64 0, i64 0
  store ptr addrspace(1) %1089, ptr addrspace(1) %1090
  %1091 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1085, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1091
  %1092 = bitcast ptr addrspace(1) %1085 to ptr addrspace(1)
  %1093 = getelementptr i8, ptr addrspace(1) %1092, i64 864691128455135236
  store ptr addrspace(1) %1093, ptr %174
  %1094 = load ptr addrspace(1), ptr %174
  call void @_Bb02ioprintln(ptr addrspace(1) %1094), !dbg !187
  store ptr addrspace(1) null, ptr %175
  %1095 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !188
  %1096 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1095, i64 0, i32 3
  %1097 = load ptr addrspace(1), ptr addrspace(1) %1096, align 8
  %1098 = bitcast ptr addrspace(1) %1097 to ptr addrspace(1)
  %1099 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !189
  %1100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1098, i64 0, i64 0
  store ptr addrspace(1) %1099, ptr addrspace(1) %1100
  %1101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1095, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1101
  %1102 = bitcast ptr addrspace(1) %1095 to ptr addrspace(1)
  %1103 = getelementptr i8, ptr addrspace(1) %1102, i64 864691128455135236
  store ptr addrspace(1) %1103, ptr %176
  %1104 = load ptr addrspace(1), ptr %176
  call void @_Bb02ioprintln(ptr addrspace(1) %1104), !dbg !190
  store ptr addrspace(1) null, ptr %177
  %1105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !191
  %1106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1105, i64 0, i32 3
  %1107 = load ptr addrspace(1), ptr addrspace(1) %1106, align 8
  %1108 = bitcast ptr addrspace(1) %1107 to ptr addrspace(1)
  %1109 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !192
  %1110 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1108, i64 0, i64 0
  store ptr addrspace(1) %1109, ptr addrspace(1) %1110
  %1111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1105, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1111
  %1112 = bitcast ptr addrspace(1) %1105 to ptr addrspace(1)
  %1113 = getelementptr i8, ptr addrspace(1) %1112, i64 864691128455135236
  store ptr addrspace(1) %1113, ptr %178
  %1114 = load ptr addrspace(1), ptr %178
  call void @_Bb02ioprintln(ptr addrspace(1) %1114), !dbg !193
  store ptr addrspace(1) null, ptr %179
  %1115 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !194
  %1116 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1115, i64 0, i32 3
  %1117 = load ptr addrspace(1), ptr addrspace(1) %1116, align 8
  %1118 = bitcast ptr addrspace(1) %1117 to ptr addrspace(1)
  %1119 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !195
  %1120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1118, i64 0, i64 0
  store ptr addrspace(1) %1119, ptr addrspace(1) %1120
  %1121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1115, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1121
  %1122 = bitcast ptr addrspace(1) %1115 to ptr addrspace(1)
  %1123 = getelementptr i8, ptr addrspace(1) %1122, i64 864691128455135236
  store ptr addrspace(1) %1123, ptr %180
  %1124 = load ptr addrspace(1), ptr %180
  call void @_Bb02ioprintln(ptr addrspace(1) %1124), !dbg !196
  store ptr addrspace(1) null, ptr %181
  %1125 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !197
  %1126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1125, i64 0, i32 3
  %1127 = load ptr addrspace(1), ptr addrspace(1) %1126, align 8
  %1128 = bitcast ptr addrspace(1) %1127 to ptr addrspace(1)
  %1129 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !198
  %1130 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1128, i64 0, i64 0
  store ptr addrspace(1) %1129, ptr addrspace(1) %1130
  %1131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1125, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1131
  %1132 = bitcast ptr addrspace(1) %1125 to ptr addrspace(1)
  %1133 = getelementptr i8, ptr addrspace(1) %1132, i64 864691128455135236
  store ptr addrspace(1) %1133, ptr %182
  %1134 = load ptr addrspace(1), ptr %182
  call void @_Bb02ioprintln(ptr addrspace(1) %1134), !dbg !199
  store ptr addrspace(1) null, ptr %183
  %1135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !200
  %1136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1135, i64 0, i32 3
  %1137 = load ptr addrspace(1), ptr addrspace(1) %1136, align 8
  %1138 = bitcast ptr addrspace(1) %1137 to ptr addrspace(1)
  %1139 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !201
  %1140 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1138, i64 0, i64 0
  store ptr addrspace(1) %1139, ptr addrspace(1) %1140
  %1141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1141
  %1142 = bitcast ptr addrspace(1) %1135 to ptr addrspace(1)
  %1143 = getelementptr i8, ptr addrspace(1) %1142, i64 864691128455135236
  store ptr addrspace(1) %1143, ptr %184
  %1144 = load ptr addrspace(1), ptr %184
  call void @_Bb02ioprintln(ptr addrspace(1) %1144), !dbg !202
  store ptr addrspace(1) null, ptr %185
  %1145 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !203
  %1146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1145, i64 0, i32 3
  %1147 = load ptr addrspace(1), ptr addrspace(1) %1146, align 8
  %1148 = bitcast ptr addrspace(1) %1147 to ptr addrspace(1)
  %1149 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !204
  %1150 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1148, i64 0, i64 0
  store ptr addrspace(1) %1149, ptr addrspace(1) %1150
  %1151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1145, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1151
  %1152 = bitcast ptr addrspace(1) %1145 to ptr addrspace(1)
  %1153 = getelementptr i8, ptr addrspace(1) %1152, i64 864691128455135236
  store ptr addrspace(1) %1153, ptr %186
  %1154 = load ptr addrspace(1), ptr %186
  call void @_Bb02ioprintln(ptr addrspace(1) %1154), !dbg !205
  store ptr addrspace(1) null, ptr %187
  %1155 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !206
  %1156 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1155, i64 0, i32 3
  %1157 = load ptr addrspace(1), ptr addrspace(1) %1156, align 8
  %1158 = bitcast ptr addrspace(1) %1157 to ptr addrspace(1)
  %1159 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !207
  %1160 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1158, i64 0, i64 0
  store ptr addrspace(1) %1159, ptr addrspace(1) %1160
  %1161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1155, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1161
  %1162 = bitcast ptr addrspace(1) %1155 to ptr addrspace(1)
  %1163 = getelementptr i8, ptr addrspace(1) %1162, i64 864691128455135236
  store ptr addrspace(1) %1163, ptr %188
  %1164 = load ptr addrspace(1), ptr %188
  call void @_Bb02ioprintln(ptr addrspace(1) %1164), !dbg !208
  store ptr addrspace(1) null, ptr %189
  %1165 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !209
  %1166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1165, i64 0, i32 3
  %1167 = load ptr addrspace(1), ptr addrspace(1) %1166, align 8
  %1168 = bitcast ptr addrspace(1) %1167 to ptr addrspace(1)
  %1169 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !210
  %1170 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1168, i64 0, i64 0
  store ptr addrspace(1) %1169, ptr addrspace(1) %1170
  %1171 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1165, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1171
  %1172 = bitcast ptr addrspace(1) %1165 to ptr addrspace(1)
  %1173 = getelementptr i8, ptr addrspace(1) %1172, i64 864691128455135236
  store ptr addrspace(1) %1173, ptr %190
  %1174 = load ptr addrspace(1), ptr %190
  call void @_Bb02ioprintln(ptr addrspace(1) %1174), !dbg !211
  store ptr addrspace(1) null, ptr %191
  %1175 = load double, ptr %nInf
  %1176 = frem double %1175, 0.0
  store double %1176, ptr %192
  %1177 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !212
  %1178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1177, i64 0, i32 3
  %1179 = load ptr addrspace(1), ptr addrspace(1) %1178, align 8
  %1180 = bitcast ptr addrspace(1) %1179 to ptr addrspace(1)
  %1181 = load double, ptr %192
  %1182 = call ptr addrspace(1) @_bal_float_to_tagged(double %1181), !dbg !213
  %1183 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1180, i64 0, i64 0
  store ptr addrspace(1) %1182, ptr addrspace(1) %1183
  %1184 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1177, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1184
  %1185 = bitcast ptr addrspace(1) %1177 to ptr addrspace(1)
  %1186 = getelementptr i8, ptr addrspace(1) %1185, i64 864691128455135236
  store ptr addrspace(1) %1186, ptr %193
  %1187 = load ptr addrspace(1), ptr %193
  call void @_Bb02ioprintln(ptr addrspace(1) %1187), !dbg !214
  store ptr addrspace(1) null, ptr %194
  %1188 = load double, ptr %anotherNan
  %1189 = frem double %1188, 0.0
  store double %1189, ptr %195
  %1190 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !215
  %1191 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1190, i64 0, i32 3
  %1192 = load ptr addrspace(1), ptr addrspace(1) %1191, align 8
  %1193 = bitcast ptr addrspace(1) %1192 to ptr addrspace(1)
  %1194 = load double, ptr %195
  %1195 = call ptr addrspace(1) @_bal_float_to_tagged(double %1194), !dbg !216
  %1196 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1193, i64 0, i64 0
  store ptr addrspace(1) %1195, ptr addrspace(1) %1196
  %1197 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1190, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1197
  %1198 = bitcast ptr addrspace(1) %1190 to ptr addrspace(1)
  %1199 = getelementptr i8, ptr addrspace(1) %1198, i64 864691128455135236
  store ptr addrspace(1) %1199, ptr %196
  %1200 = load ptr addrspace(1), ptr %196
  call void @_Bb02ioprintln(ptr addrspace(1) %1200), !dbg !217
  store ptr addrspace(1) null, ptr %197
  %1201 = load double, ptr %pInf
  %1202 = frem double 7.0, %1201
  store double %1202, ptr %198
  %1203 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !218
  %1204 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1203, i64 0, i32 3
  %1205 = load ptr addrspace(1), ptr addrspace(1) %1204, align 8
  %1206 = bitcast ptr addrspace(1) %1205 to ptr addrspace(1)
  %1207 = load double, ptr %198
  %1208 = call ptr addrspace(1) @_bal_float_to_tagged(double %1207), !dbg !219
  %1209 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1206, i64 0, i64 0
  store ptr addrspace(1) %1208, ptr addrspace(1) %1209
  %1210 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1203, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1210
  %1211 = bitcast ptr addrspace(1) %1203 to ptr addrspace(1)
  %1212 = getelementptr i8, ptr addrspace(1) %1211, i64 864691128455135236
  store ptr addrspace(1) %1212, ptr %199
  %1213 = load ptr addrspace(1), ptr %199
  call void @_Bb02ioprintln(ptr addrspace(1) %1213), !dbg !220
  store ptr addrspace(1) null, ptr %200
  %1214 = load double, ptr %pInf
  %1215 = frem double 5.0, %1214
  store double %1215, ptr %201
  %1216 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !221
  %1217 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1216, i64 0, i32 3
  %1218 = load ptr addrspace(1), ptr addrspace(1) %1217, align 8
  %1219 = bitcast ptr addrspace(1) %1218 to ptr addrspace(1)
  %1220 = load double, ptr %201
  %1221 = call ptr addrspace(1) @_bal_float_to_tagged(double %1220), !dbg !222
  %1222 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1219, i64 0, i64 0
  store ptr addrspace(1) %1221, ptr addrspace(1) %1222
  %1223 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1216, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1223
  %1224 = bitcast ptr addrspace(1) %1216 to ptr addrspace(1)
  %1225 = getelementptr i8, ptr addrspace(1) %1224, i64 864691128455135236
  store ptr addrspace(1) %1225, ptr %202
  %1226 = load ptr addrspace(1), ptr %202
  call void @_Bb02ioprintln(ptr addrspace(1) %1226), !dbg !223
  store ptr addrspace(1) null, ptr %203
  %1227 = load double, ptr %pInf
  %1228 = frem double 0.7, %1227
  store double %1228, ptr %204
  %1229 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !224
  %1230 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1229, i64 0, i32 3
  %1231 = load ptr addrspace(1), ptr addrspace(1) %1230, align 8
  %1232 = bitcast ptr addrspace(1) %1231 to ptr addrspace(1)
  %1233 = load double, ptr %204
  %1234 = call ptr addrspace(1) @_bal_float_to_tagged(double %1233), !dbg !225
  %1235 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1232, i64 0, i64 0
  store ptr addrspace(1) %1234, ptr addrspace(1) %1235
  %1236 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1229, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1236
  %1237 = bitcast ptr addrspace(1) %1229 to ptr addrspace(1)
  %1238 = getelementptr i8, ptr addrspace(1) %1237, i64 864691128455135236
  store ptr addrspace(1) %1238, ptr %205
  %1239 = load ptr addrspace(1), ptr %205
  call void @_Bb02ioprintln(ptr addrspace(1) %1239), !dbg !226
  store ptr addrspace(1) null, ptr %206
  %1240 = load double, ptr %pInf
  %1241 = frem double 0.5, %1240
  store double %1241, ptr %207
  %1242 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !227
  %1243 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1242, i64 0, i32 3
  %1244 = load ptr addrspace(1), ptr addrspace(1) %1243, align 8
  %1245 = bitcast ptr addrspace(1) %1244 to ptr addrspace(1)
  %1246 = load double, ptr %207
  %1247 = call ptr addrspace(1) @_bal_float_to_tagged(double %1246), !dbg !228
  %1248 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1245, i64 0, i64 0
  store ptr addrspace(1) %1247, ptr addrspace(1) %1248
  %1249 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1242, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1249
  %1250 = bitcast ptr addrspace(1) %1242 to ptr addrspace(1)
  %1251 = getelementptr i8, ptr addrspace(1) %1250, i64 864691128455135236
  store ptr addrspace(1) %1251, ptr %208
  %1252 = load ptr addrspace(1), ptr %208
  call void @_Bb02ioprintln(ptr addrspace(1) %1252), !dbg !229
  store ptr addrspace(1) null, ptr %209
  %1253 = load double, ptr %pInf
  %1254 = frem double 0.0, %1253
  store double %1254, ptr %210
  %1255 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !230
  %1256 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1255, i64 0, i32 3
  %1257 = load ptr addrspace(1), ptr addrspace(1) %1256, align 8
  %1258 = bitcast ptr addrspace(1) %1257 to ptr addrspace(1)
  %1259 = load double, ptr %210
  %1260 = call ptr addrspace(1) @_bal_float_to_tagged(double %1259), !dbg !231
  %1261 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1258, i64 0, i64 0
  store ptr addrspace(1) %1260, ptr addrspace(1) %1261
  %1262 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1255, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1262
  %1263 = bitcast ptr addrspace(1) %1255 to ptr addrspace(1)
  %1264 = getelementptr i8, ptr addrspace(1) %1263, i64 864691128455135236
  store ptr addrspace(1) %1264, ptr %211
  %1265 = load ptr addrspace(1), ptr %211
  call void @_Bb02ioprintln(ptr addrspace(1) %1265), !dbg !232
  store ptr addrspace(1) null, ptr %212
  %1266 = load double, ptr %pInf
  %1267 = frem double -7.0, %1266
  store double %1267, ptr %213
  %1268 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !233
  %1269 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1268, i64 0, i32 3
  %1270 = load ptr addrspace(1), ptr addrspace(1) %1269, align 8
  %1271 = bitcast ptr addrspace(1) %1270 to ptr addrspace(1)
  %1272 = load double, ptr %213
  %1273 = call ptr addrspace(1) @_bal_float_to_tagged(double %1272), !dbg !234
  %1274 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1271, i64 0, i64 0
  store ptr addrspace(1) %1273, ptr addrspace(1) %1274
  %1275 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1268, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1275
  %1276 = bitcast ptr addrspace(1) %1268 to ptr addrspace(1)
  %1277 = getelementptr i8, ptr addrspace(1) %1276, i64 864691128455135236
  store ptr addrspace(1) %1277, ptr %214
  %1278 = load ptr addrspace(1), ptr %214
  call void @_Bb02ioprintln(ptr addrspace(1) %1278), !dbg !235
  store ptr addrspace(1) null, ptr %215
  %1279 = load double, ptr %pInf
  %1280 = frem double -5.0, %1279
  store double %1280, ptr %216
  %1281 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !236
  %1282 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1281, i64 0, i32 3
  %1283 = load ptr addrspace(1), ptr addrspace(1) %1282, align 8
  %1284 = bitcast ptr addrspace(1) %1283 to ptr addrspace(1)
  %1285 = load double, ptr %216
  %1286 = call ptr addrspace(1) @_bal_float_to_tagged(double %1285), !dbg !237
  %1287 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1284, i64 0, i64 0
  store ptr addrspace(1) %1286, ptr addrspace(1) %1287
  %1288 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1281, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1288
  %1289 = bitcast ptr addrspace(1) %1281 to ptr addrspace(1)
  %1290 = getelementptr i8, ptr addrspace(1) %1289, i64 864691128455135236
  store ptr addrspace(1) %1290, ptr %217
  %1291 = load ptr addrspace(1), ptr %217
  call void @_Bb02ioprintln(ptr addrspace(1) %1291), !dbg !238
  store ptr addrspace(1) null, ptr %218
  %1292 = load double, ptr %pInf
  %1293 = frem double -0.7, %1292
  store double %1293, ptr %219
  %1294 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !239
  %1295 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1294, i64 0, i32 3
  %1296 = load ptr addrspace(1), ptr addrspace(1) %1295, align 8
  %1297 = bitcast ptr addrspace(1) %1296 to ptr addrspace(1)
  %1298 = load double, ptr %219
  %1299 = call ptr addrspace(1) @_bal_float_to_tagged(double %1298), !dbg !240
  %1300 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1297, i64 0, i64 0
  store ptr addrspace(1) %1299, ptr addrspace(1) %1300
  %1301 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1294, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1301
  %1302 = bitcast ptr addrspace(1) %1294 to ptr addrspace(1)
  %1303 = getelementptr i8, ptr addrspace(1) %1302, i64 864691128455135236
  store ptr addrspace(1) %1303, ptr %220
  %1304 = load ptr addrspace(1), ptr %220
  call void @_Bb02ioprintln(ptr addrspace(1) %1304), !dbg !241
  store ptr addrspace(1) null, ptr %221
  %1305 = load double, ptr %pInf
  %1306 = frem double -0.5, %1305
  store double %1306, ptr %222
  %1307 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !242
  %1308 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1307, i64 0, i32 3
  %1309 = load ptr addrspace(1), ptr addrspace(1) %1308, align 8
  %1310 = bitcast ptr addrspace(1) %1309 to ptr addrspace(1)
  %1311 = load double, ptr %222
  %1312 = call ptr addrspace(1) @_bal_float_to_tagged(double %1311), !dbg !243
  %1313 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1310, i64 0, i64 0
  store ptr addrspace(1) %1312, ptr addrspace(1) %1313
  %1314 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1307, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1314
  %1315 = bitcast ptr addrspace(1) %1307 to ptr addrspace(1)
  %1316 = getelementptr i8, ptr addrspace(1) %1315, i64 864691128455135236
  store ptr addrspace(1) %1316, ptr %223
  %1317 = load ptr addrspace(1), ptr %223
  call void @_Bb02ioprintln(ptr addrspace(1) %1317), !dbg !244
  store ptr addrspace(1) null, ptr %224
  %1318 = load double, ptr %pInf
  %1319 = frem double -0.0, %1318
  store double %1319, ptr %225
  %1320 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !245
  %1321 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1320, i64 0, i32 3
  %1322 = load ptr addrspace(1), ptr addrspace(1) %1321, align 8
  %1323 = bitcast ptr addrspace(1) %1322 to ptr addrspace(1)
  %1324 = load double, ptr %225
  %1325 = call ptr addrspace(1) @_bal_float_to_tagged(double %1324), !dbg !246
  %1326 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1323, i64 0, i64 0
  store ptr addrspace(1) %1325, ptr addrspace(1) %1326
  %1327 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1320, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1327
  %1328 = bitcast ptr addrspace(1) %1320 to ptr addrspace(1)
  %1329 = getelementptr i8, ptr addrspace(1) %1328, i64 864691128455135236
  store ptr addrspace(1) %1329, ptr %226
  %1330 = load ptr addrspace(1), ptr %226
  call void @_Bb02ioprintln(ptr addrspace(1) %1330), !dbg !247
  store ptr addrspace(1) null, ptr %227
  %1331 = load double, ptr %nInf
  %1332 = frem double 7.0, %1331
  store double %1332, ptr %228
  %1333 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !248
  %1334 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1333, i64 0, i32 3
  %1335 = load ptr addrspace(1), ptr addrspace(1) %1334, align 8
  %1336 = bitcast ptr addrspace(1) %1335 to ptr addrspace(1)
  %1337 = load double, ptr %228
  %1338 = call ptr addrspace(1) @_bal_float_to_tagged(double %1337), !dbg !249
  %1339 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1336, i64 0, i64 0
  store ptr addrspace(1) %1338, ptr addrspace(1) %1339
  %1340 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1333, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1340
  %1341 = bitcast ptr addrspace(1) %1333 to ptr addrspace(1)
  %1342 = getelementptr i8, ptr addrspace(1) %1341, i64 864691128455135236
  store ptr addrspace(1) %1342, ptr %229
  %1343 = load ptr addrspace(1), ptr %229
  call void @_Bb02ioprintln(ptr addrspace(1) %1343), !dbg !250
  store ptr addrspace(1) null, ptr %230
  %1344 = load double, ptr %nInf
  %1345 = frem double 5.0, %1344
  store double %1345, ptr %231
  %1346 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !251
  %1347 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1346, i64 0, i32 3
  %1348 = load ptr addrspace(1), ptr addrspace(1) %1347, align 8
  %1349 = bitcast ptr addrspace(1) %1348 to ptr addrspace(1)
  %1350 = load double, ptr %231
  %1351 = call ptr addrspace(1) @_bal_float_to_tagged(double %1350), !dbg !252
  %1352 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1349, i64 0, i64 0
  store ptr addrspace(1) %1351, ptr addrspace(1) %1352
  %1353 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1346, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1353
  %1354 = bitcast ptr addrspace(1) %1346 to ptr addrspace(1)
  %1355 = getelementptr i8, ptr addrspace(1) %1354, i64 864691128455135236
  store ptr addrspace(1) %1355, ptr %232
  %1356 = load ptr addrspace(1), ptr %232
  call void @_Bb02ioprintln(ptr addrspace(1) %1356), !dbg !253
  store ptr addrspace(1) null, ptr %233
  %1357 = load double, ptr %nInf
  %1358 = frem double 0.7, %1357
  store double %1358, ptr %234
  %1359 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !254
  %1360 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1359, i64 0, i32 3
  %1361 = load ptr addrspace(1), ptr addrspace(1) %1360, align 8
  %1362 = bitcast ptr addrspace(1) %1361 to ptr addrspace(1)
  %1363 = load double, ptr %234
  %1364 = call ptr addrspace(1) @_bal_float_to_tagged(double %1363), !dbg !255
  %1365 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1362, i64 0, i64 0
  store ptr addrspace(1) %1364, ptr addrspace(1) %1365
  %1366 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1359, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1366
  %1367 = bitcast ptr addrspace(1) %1359 to ptr addrspace(1)
  %1368 = getelementptr i8, ptr addrspace(1) %1367, i64 864691128455135236
  store ptr addrspace(1) %1368, ptr %235
  %1369 = load ptr addrspace(1), ptr %235
  call void @_Bb02ioprintln(ptr addrspace(1) %1369), !dbg !256
  store ptr addrspace(1) null, ptr %236
  %1370 = load double, ptr %nInf
  %1371 = frem double 0.5, %1370
  store double %1371, ptr %237
  %1372 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !257
  %1373 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1372, i64 0, i32 3
  %1374 = load ptr addrspace(1), ptr addrspace(1) %1373, align 8
  %1375 = bitcast ptr addrspace(1) %1374 to ptr addrspace(1)
  %1376 = load double, ptr %237
  %1377 = call ptr addrspace(1) @_bal_float_to_tagged(double %1376), !dbg !258
  %1378 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1375, i64 0, i64 0
  store ptr addrspace(1) %1377, ptr addrspace(1) %1378
  %1379 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1372, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1379
  %1380 = bitcast ptr addrspace(1) %1372 to ptr addrspace(1)
  %1381 = getelementptr i8, ptr addrspace(1) %1380, i64 864691128455135236
  store ptr addrspace(1) %1381, ptr %238
  %1382 = load ptr addrspace(1), ptr %238
  call void @_Bb02ioprintln(ptr addrspace(1) %1382), !dbg !259
  store ptr addrspace(1) null, ptr %239
  %1383 = load double, ptr %nInf
  %1384 = frem double 0.0, %1383
  store double %1384, ptr %240
  %1385 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !260
  %1386 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1385, i64 0, i32 3
  %1387 = load ptr addrspace(1), ptr addrspace(1) %1386, align 8
  %1388 = bitcast ptr addrspace(1) %1387 to ptr addrspace(1)
  %1389 = load double, ptr %240
  %1390 = call ptr addrspace(1) @_bal_float_to_tagged(double %1389), !dbg !261
  %1391 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1388, i64 0, i64 0
  store ptr addrspace(1) %1390, ptr addrspace(1) %1391
  %1392 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1385, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1392
  %1393 = bitcast ptr addrspace(1) %1385 to ptr addrspace(1)
  %1394 = getelementptr i8, ptr addrspace(1) %1393, i64 864691128455135236
  store ptr addrspace(1) %1394, ptr %241
  %1395 = load ptr addrspace(1), ptr %241
  call void @_Bb02ioprintln(ptr addrspace(1) %1395), !dbg !262
  store ptr addrspace(1) null, ptr %242
  %1396 = load double, ptr %nInf
  %1397 = frem double -7.0, %1396
  store double %1397, ptr %243
  %1398 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !263
  %1399 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1398, i64 0, i32 3
  %1400 = load ptr addrspace(1), ptr addrspace(1) %1399, align 8
  %1401 = bitcast ptr addrspace(1) %1400 to ptr addrspace(1)
  %1402 = load double, ptr %243
  %1403 = call ptr addrspace(1) @_bal_float_to_tagged(double %1402), !dbg !264
  %1404 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1401, i64 0, i64 0
  store ptr addrspace(1) %1403, ptr addrspace(1) %1404
  %1405 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1398, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1405
  %1406 = bitcast ptr addrspace(1) %1398 to ptr addrspace(1)
  %1407 = getelementptr i8, ptr addrspace(1) %1406, i64 864691128455135236
  store ptr addrspace(1) %1407, ptr %244
  %1408 = load ptr addrspace(1), ptr %244
  call void @_Bb02ioprintln(ptr addrspace(1) %1408), !dbg !265
  store ptr addrspace(1) null, ptr %245
  %1409 = load double, ptr %nInf
  %1410 = frem double -5.0, %1409
  store double %1410, ptr %246
  %1411 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !266
  %1412 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1411, i64 0, i32 3
  %1413 = load ptr addrspace(1), ptr addrspace(1) %1412, align 8
  %1414 = bitcast ptr addrspace(1) %1413 to ptr addrspace(1)
  %1415 = load double, ptr %246
  %1416 = call ptr addrspace(1) @_bal_float_to_tagged(double %1415), !dbg !267
  %1417 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1414, i64 0, i64 0
  store ptr addrspace(1) %1416, ptr addrspace(1) %1417
  %1418 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1411, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1418
  %1419 = bitcast ptr addrspace(1) %1411 to ptr addrspace(1)
  %1420 = getelementptr i8, ptr addrspace(1) %1419, i64 864691128455135236
  store ptr addrspace(1) %1420, ptr %247
  %1421 = load ptr addrspace(1), ptr %247
  call void @_Bb02ioprintln(ptr addrspace(1) %1421), !dbg !268
  store ptr addrspace(1) null, ptr %248
  %1422 = load double, ptr %nInf
  %1423 = frem double -0.7, %1422
  store double %1423, ptr %249
  %1424 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !269
  %1425 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1424, i64 0, i32 3
  %1426 = load ptr addrspace(1), ptr addrspace(1) %1425, align 8
  %1427 = bitcast ptr addrspace(1) %1426 to ptr addrspace(1)
  %1428 = load double, ptr %249
  %1429 = call ptr addrspace(1) @_bal_float_to_tagged(double %1428), !dbg !270
  %1430 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1427, i64 0, i64 0
  store ptr addrspace(1) %1429, ptr addrspace(1) %1430
  %1431 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1424, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1431
  %1432 = bitcast ptr addrspace(1) %1424 to ptr addrspace(1)
  %1433 = getelementptr i8, ptr addrspace(1) %1432, i64 864691128455135236
  store ptr addrspace(1) %1433, ptr %250
  %1434 = load ptr addrspace(1), ptr %250
  call void @_Bb02ioprintln(ptr addrspace(1) %1434), !dbg !271
  store ptr addrspace(1) null, ptr %251
  %1435 = load double, ptr %nInf
  %1436 = frem double -0.5, %1435
  store double %1436, ptr %252
  %1437 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !272
  %1438 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1437, i64 0, i32 3
  %1439 = load ptr addrspace(1), ptr addrspace(1) %1438, align 8
  %1440 = bitcast ptr addrspace(1) %1439 to ptr addrspace(1)
  %1441 = load double, ptr %252
  %1442 = call ptr addrspace(1) @_bal_float_to_tagged(double %1441), !dbg !273
  %1443 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1440, i64 0, i64 0
  store ptr addrspace(1) %1442, ptr addrspace(1) %1443
  %1444 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1437, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1444
  %1445 = bitcast ptr addrspace(1) %1437 to ptr addrspace(1)
  %1446 = getelementptr i8, ptr addrspace(1) %1445, i64 864691128455135236
  store ptr addrspace(1) %1446, ptr %253
  %1447 = load ptr addrspace(1), ptr %253
  call void @_Bb02ioprintln(ptr addrspace(1) %1447), !dbg !274
  store ptr addrspace(1) null, ptr %254
  %1448 = load double, ptr %nInf
  %1449 = frem double -0.0, %1448
  store double %1449, ptr %255
  %1450 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !275
  %1451 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1450, i64 0, i32 3
  %1452 = load ptr addrspace(1), ptr addrspace(1) %1451, align 8
  %1453 = bitcast ptr addrspace(1) %1452 to ptr addrspace(1)
  %1454 = load double, ptr %255
  %1455 = call ptr addrspace(1) @_bal_float_to_tagged(double %1454), !dbg !276
  %1456 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1453, i64 0, i64 0
  store ptr addrspace(1) %1455, ptr addrspace(1) %1456
  %1457 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1450, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1457
  %1458 = bitcast ptr addrspace(1) %1450 to ptr addrspace(1)
  %1459 = getelementptr i8, ptr addrspace(1) %1458, i64 864691128455135236
  store ptr addrspace(1) %1459, ptr %256
  %1460 = load ptr addrspace(1), ptr %256
  call void @_Bb02ioprintln(ptr addrspace(1) %1460), !dbg !277
  store ptr addrspace(1) null, ptr %257
  %1461 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !278
  %1462 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1461, i64 0, i32 3
  %1463 = load ptr addrspace(1), ptr addrspace(1) %1462, align 8
  %1464 = bitcast ptr addrspace(1) %1463 to ptr addrspace(1)
  %1465 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !279
  %1466 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1464, i64 0, i64 0
  store ptr addrspace(1) %1465, ptr addrspace(1) %1466
  %1467 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1461, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1467
  %1468 = bitcast ptr addrspace(1) %1461 to ptr addrspace(1)
  %1469 = getelementptr i8, ptr addrspace(1) %1468, i64 864691128455135236
  store ptr addrspace(1) %1469, ptr %258
  %1470 = load ptr addrspace(1), ptr %258
  call void @_Bb02ioprintln(ptr addrspace(1) %1470), !dbg !280
  store ptr addrspace(1) null, ptr %259
  %1471 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !281
  %1472 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1471, i64 0, i32 3
  %1473 = load ptr addrspace(1), ptr addrspace(1) %1472, align 8
  %1474 = bitcast ptr addrspace(1) %1473 to ptr addrspace(1)
  %1475 = call ptr addrspace(1) @_bal_float_to_tagged(double 5.0), !dbg !282
  %1476 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1474, i64 0, i64 0
  store ptr addrspace(1) %1475, ptr addrspace(1) %1476
  %1477 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1471, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1477
  %1478 = bitcast ptr addrspace(1) %1471 to ptr addrspace(1)
  %1479 = getelementptr i8, ptr addrspace(1) %1478, i64 864691128455135236
  store ptr addrspace(1) %1479, ptr %260
  %1480 = load ptr addrspace(1), ptr %260
  call void @_Bb02ioprintln(ptr addrspace(1) %1480), !dbg !283
  store ptr addrspace(1) null, ptr %261
  %1481 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !284
  %1482 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1481, i64 0, i32 3
  %1483 = load ptr addrspace(1), ptr addrspace(1) %1482, align 8
  %1484 = bitcast ptr addrspace(1) %1483 to ptr addrspace(1)
  %1485 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.7), !dbg !285
  %1486 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1484, i64 0, i64 0
  store ptr addrspace(1) %1485, ptr addrspace(1) %1486
  %1487 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1481, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1487
  %1488 = bitcast ptr addrspace(1) %1481 to ptr addrspace(1)
  %1489 = getelementptr i8, ptr addrspace(1) %1488, i64 864691128455135236
  store ptr addrspace(1) %1489, ptr %262
  %1490 = load ptr addrspace(1), ptr %262
  call void @_Bb02ioprintln(ptr addrspace(1) %1490), !dbg !286
  store ptr addrspace(1) null, ptr %263
  %1491 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !287
  %1492 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1491, i64 0, i32 3
  %1493 = load ptr addrspace(1), ptr addrspace(1) %1492, align 8
  %1494 = bitcast ptr addrspace(1) %1493 to ptr addrspace(1)
  %1495 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.5), !dbg !288
  %1496 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1494, i64 0, i64 0
  store ptr addrspace(1) %1495, ptr addrspace(1) %1496
  %1497 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1491, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1497
  %1498 = bitcast ptr addrspace(1) %1491 to ptr addrspace(1)
  %1499 = getelementptr i8, ptr addrspace(1) %1498, i64 864691128455135236
  store ptr addrspace(1) %1499, ptr %264
  %1500 = load ptr addrspace(1), ptr %264
  call void @_Bb02ioprintln(ptr addrspace(1) %1500), !dbg !289
  store ptr addrspace(1) null, ptr %265
  %1501 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !290
  %1502 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1501, i64 0, i32 3
  %1503 = load ptr addrspace(1), ptr addrspace(1) %1502, align 8
  %1504 = bitcast ptr addrspace(1) %1503 to ptr addrspace(1)
  %1505 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !291
  %1506 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1504, i64 0, i64 0
  store ptr addrspace(1) %1505, ptr addrspace(1) %1506
  %1507 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1501, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1507
  %1508 = bitcast ptr addrspace(1) %1501 to ptr addrspace(1)
  %1509 = getelementptr i8, ptr addrspace(1) %1508, i64 864691128455135236
  store ptr addrspace(1) %1509, ptr %266
  %1510 = load ptr addrspace(1), ptr %266
  call void @_Bb02ioprintln(ptr addrspace(1) %1510), !dbg !292
  store ptr addrspace(1) null, ptr %267
  %1511 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !293
  %1512 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1511, i64 0, i32 3
  %1513 = load ptr addrspace(1), ptr addrspace(1) %1512, align 8
  %1514 = bitcast ptr addrspace(1) %1513 to ptr addrspace(1)
  %1515 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.0), !dbg !294
  %1516 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1514, i64 0, i64 0
  store ptr addrspace(1) %1515, ptr addrspace(1) %1516
  %1517 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1511, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1517
  %1518 = bitcast ptr addrspace(1) %1511 to ptr addrspace(1)
  %1519 = getelementptr i8, ptr addrspace(1) %1518, i64 864691128455135236
  store ptr addrspace(1) %1519, ptr %268
  %1520 = load ptr addrspace(1), ptr %268
  call void @_Bb02ioprintln(ptr addrspace(1) %1520), !dbg !295
  store ptr addrspace(1) null, ptr %269
  %1521 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !296
  %1522 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1521, i64 0, i32 3
  %1523 = load ptr addrspace(1), ptr addrspace(1) %1522, align 8
  %1524 = bitcast ptr addrspace(1) %1523 to ptr addrspace(1)
  %1525 = call ptr addrspace(1) @_bal_float_to_tagged(double -5.0), !dbg !297
  %1526 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1524, i64 0, i64 0
  store ptr addrspace(1) %1525, ptr addrspace(1) %1526
  %1527 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1521, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1527
  %1528 = bitcast ptr addrspace(1) %1521 to ptr addrspace(1)
  %1529 = getelementptr i8, ptr addrspace(1) %1528, i64 864691128455135236
  store ptr addrspace(1) %1529, ptr %270
  %1530 = load ptr addrspace(1), ptr %270
  call void @_Bb02ioprintln(ptr addrspace(1) %1530), !dbg !298
  store ptr addrspace(1) null, ptr %271
  %1531 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !299
  %1532 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1531, i64 0, i32 3
  %1533 = load ptr addrspace(1), ptr addrspace(1) %1532, align 8
  %1534 = bitcast ptr addrspace(1) %1533 to ptr addrspace(1)
  %1535 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.7), !dbg !300
  %1536 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1534, i64 0, i64 0
  store ptr addrspace(1) %1535, ptr addrspace(1) %1536
  %1537 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1531, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1537
  %1538 = bitcast ptr addrspace(1) %1531 to ptr addrspace(1)
  %1539 = getelementptr i8, ptr addrspace(1) %1538, i64 864691128455135236
  store ptr addrspace(1) %1539, ptr %272
  %1540 = load ptr addrspace(1), ptr %272
  call void @_Bb02ioprintln(ptr addrspace(1) %1540), !dbg !301
  store ptr addrspace(1) null, ptr %273
  %1541 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !302
  %1542 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1541, i64 0, i32 3
  %1543 = load ptr addrspace(1), ptr addrspace(1) %1542, align 8
  %1544 = bitcast ptr addrspace(1) %1543 to ptr addrspace(1)
  %1545 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.5), !dbg !303
  %1546 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1544, i64 0, i64 0
  store ptr addrspace(1) %1545, ptr addrspace(1) %1546
  %1547 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1541, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1547
  %1548 = bitcast ptr addrspace(1) %1541 to ptr addrspace(1)
  %1549 = getelementptr i8, ptr addrspace(1) %1548, i64 864691128455135236
  store ptr addrspace(1) %1549, ptr %274
  %1550 = load ptr addrspace(1), ptr %274
  call void @_Bb02ioprintln(ptr addrspace(1) %1550), !dbg !304
  store ptr addrspace(1) null, ptr %275
  %1551 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !305
  %1552 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1551, i64 0, i32 3
  %1553 = load ptr addrspace(1), ptr addrspace(1) %1552, align 8
  %1554 = bitcast ptr addrspace(1) %1553 to ptr addrspace(1)
  %1555 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.0), !dbg !306
  %1556 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1554, i64 0, i64 0
  store ptr addrspace(1) %1555, ptr addrspace(1) %1556
  %1557 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1551, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1557
  %1558 = bitcast ptr addrspace(1) %1551 to ptr addrspace(1)
  %1559 = getelementptr i8, ptr addrspace(1) %1558, i64 864691128455135236
  store ptr addrspace(1) %1559, ptr %276
  %1560 = load ptr addrspace(1), ptr %276
  call void @_Bb02ioprintln(ptr addrspace(1) %1560), !dbg !307
  store ptr addrspace(1) null, ptr %277
  %1561 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !308
  %1562 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1561, i64 0, i32 3
  %1563 = load ptr addrspace(1), ptr addrspace(1) %1562, align 8
  %1564 = bitcast ptr addrspace(1) %1563 to ptr addrspace(1)
  %1565 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.0), !dbg !309
  %1566 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1564, i64 0, i64 0
  store ptr addrspace(1) %1565, ptr addrspace(1) %1566
  %1567 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1561, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1567
  %1568 = bitcast ptr addrspace(1) %1561 to ptr addrspace(1)
  %1569 = getelementptr i8, ptr addrspace(1) %1568, i64 864691128455135236
  store ptr addrspace(1) %1569, ptr %278
  %1570 = load ptr addrspace(1), ptr %278
  call void @_Bb02ioprintln(ptr addrspace(1) %1570), !dbg !310
  store ptr addrspace(1) null, ptr %279
  %1571 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !311
  %1572 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1571, i64 0, i32 3
  %1573 = load ptr addrspace(1), ptr addrspace(1) %1572, align 8
  %1574 = bitcast ptr addrspace(1) %1573 to ptr addrspace(1)
  %1575 = call ptr addrspace(1) @_bal_float_to_tagged(double -2.0), !dbg !312
  %1576 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1574, i64 0, i64 0
  store ptr addrspace(1) %1575, ptr addrspace(1) %1576
  %1577 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1571, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1577
  %1578 = bitcast ptr addrspace(1) %1571 to ptr addrspace(1)
  %1579 = getelementptr i8, ptr addrspace(1) %1578, i64 864691128455135236
  store ptr addrspace(1) %1579, ptr %280
  %1580 = load ptr addrspace(1), ptr %280
  call void @_Bb02ioprintln(ptr addrspace(1) %1580), !dbg !313
  store ptr addrspace(1) null, ptr %281
  %1581 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !314
  %1582 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1581, i64 0, i32 3
  %1583 = load ptr addrspace(1), ptr addrspace(1) %1582, align 8
  %1584 = bitcast ptr addrspace(1) %1583 to ptr addrspace(1)
  %1585 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !315
  %1586 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1584, i64 0, i64 0
  store ptr addrspace(1) %1585, ptr addrspace(1) %1586
  %1587 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1581, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1587
  %1588 = bitcast ptr addrspace(1) %1581 to ptr addrspace(1)
  %1589 = getelementptr i8, ptr addrspace(1) %1588, i64 864691128455135236
  store ptr addrspace(1) %1589, ptr %282
  %1590 = load ptr addrspace(1), ptr %282
  call void @_Bb02ioprintln(ptr addrspace(1) %1590), !dbg !316
  store ptr addrspace(1) null, ptr %283
  %1591 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !317
  %1592 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1591, i64 0, i32 3
  %1593 = load ptr addrspace(1), ptr addrspace(1) %1592, align 8
  %1594 = bitcast ptr addrspace(1) %1593 to ptr addrspace(1)
  %1595 = call ptr addrspace(1) @_bal_float_to_tagged(double 5.0), !dbg !318
  %1596 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1594, i64 0, i64 0
  store ptr addrspace(1) %1595, ptr addrspace(1) %1596
  %1597 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1591, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1597
  %1598 = bitcast ptr addrspace(1) %1591 to ptr addrspace(1)
  %1599 = getelementptr i8, ptr addrspace(1) %1598, i64 864691128455135236
  store ptr addrspace(1) %1599, ptr %284
  %1600 = load ptr addrspace(1), ptr %284
  call void @_Bb02ioprintln(ptr addrspace(1) %1600), !dbg !319
  store ptr addrspace(1) null, ptr %285
  %1601 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !320
  %1602 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1601, i64 0, i32 3
  %1603 = load ptr addrspace(1), ptr addrspace(1) %1602, align 8
  %1604 = bitcast ptr addrspace(1) %1603 to ptr addrspace(1)
  %1605 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.7), !dbg !321
  %1606 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1604, i64 0, i64 0
  store ptr addrspace(1) %1605, ptr addrspace(1) %1606
  %1607 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1601, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1607
  %1608 = bitcast ptr addrspace(1) %1601 to ptr addrspace(1)
  %1609 = getelementptr i8, ptr addrspace(1) %1608, i64 864691128455135236
  store ptr addrspace(1) %1609, ptr %286
  %1610 = load ptr addrspace(1), ptr %286
  call void @_Bb02ioprintln(ptr addrspace(1) %1610), !dbg !322
  store ptr addrspace(1) null, ptr %287
  %1611 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !323
  %1612 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1611, i64 0, i32 3
  %1613 = load ptr addrspace(1), ptr addrspace(1) %1612, align 8
  %1614 = bitcast ptr addrspace(1) %1613 to ptr addrspace(1)
  %1615 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.5), !dbg !324
  %1616 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1614, i64 0, i64 0
  store ptr addrspace(1) %1615, ptr addrspace(1) %1616
  %1617 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1611, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1617
  %1618 = bitcast ptr addrspace(1) %1611 to ptr addrspace(1)
  %1619 = getelementptr i8, ptr addrspace(1) %1618, i64 864691128455135236
  store ptr addrspace(1) %1619, ptr %288
  %1620 = load ptr addrspace(1), ptr %288
  call void @_Bb02ioprintln(ptr addrspace(1) %1620), !dbg !325
  store ptr addrspace(1) null, ptr %289
  %1621 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !326
  %1622 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1621, i64 0, i32 3
  %1623 = load ptr addrspace(1), ptr addrspace(1) %1622, align 8
  %1624 = bitcast ptr addrspace(1) %1623 to ptr addrspace(1)
  %1625 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !327
  %1626 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1624, i64 0, i64 0
  store ptr addrspace(1) %1625, ptr addrspace(1) %1626
  %1627 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1621, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1627
  %1628 = bitcast ptr addrspace(1) %1621 to ptr addrspace(1)
  %1629 = getelementptr i8, ptr addrspace(1) %1628, i64 864691128455135236
  store ptr addrspace(1) %1629, ptr %290
  %1630 = load ptr addrspace(1), ptr %290
  call void @_Bb02ioprintln(ptr addrspace(1) %1630), !dbg !328
  store ptr addrspace(1) null, ptr %291
  %1631 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !329
  %1632 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1631, i64 0, i32 3
  %1633 = load ptr addrspace(1), ptr addrspace(1) %1632, align 8
  %1634 = bitcast ptr addrspace(1) %1633 to ptr addrspace(1)
  %1635 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.0), !dbg !330
  %1636 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1634, i64 0, i64 0
  store ptr addrspace(1) %1635, ptr addrspace(1) %1636
  %1637 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1631, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1637
  %1638 = bitcast ptr addrspace(1) %1631 to ptr addrspace(1)
  %1639 = getelementptr i8, ptr addrspace(1) %1638, i64 864691128455135236
  store ptr addrspace(1) %1639, ptr %292
  %1640 = load ptr addrspace(1), ptr %292
  call void @_Bb02ioprintln(ptr addrspace(1) %1640), !dbg !331
  store ptr addrspace(1) null, ptr %293
  %1641 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !332
  %1642 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1641, i64 0, i32 3
  %1643 = load ptr addrspace(1), ptr addrspace(1) %1642, align 8
  %1644 = bitcast ptr addrspace(1) %1643 to ptr addrspace(1)
  %1645 = call ptr addrspace(1) @_bal_float_to_tagged(double -5.0), !dbg !333
  %1646 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1644, i64 0, i64 0
  store ptr addrspace(1) %1645, ptr addrspace(1) %1646
  %1647 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1641, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1647
  %1648 = bitcast ptr addrspace(1) %1641 to ptr addrspace(1)
  %1649 = getelementptr i8, ptr addrspace(1) %1648, i64 864691128455135236
  store ptr addrspace(1) %1649, ptr %294
  %1650 = load ptr addrspace(1), ptr %294
  call void @_Bb02ioprintln(ptr addrspace(1) %1650), !dbg !334
  store ptr addrspace(1) null, ptr %295
  %1651 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !335
  %1652 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1651, i64 0, i32 3
  %1653 = load ptr addrspace(1), ptr addrspace(1) %1652, align 8
  %1654 = bitcast ptr addrspace(1) %1653 to ptr addrspace(1)
  %1655 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.7), !dbg !336
  %1656 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1654, i64 0, i64 0
  store ptr addrspace(1) %1655, ptr addrspace(1) %1656
  %1657 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1651, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1657
  %1658 = bitcast ptr addrspace(1) %1651 to ptr addrspace(1)
  %1659 = getelementptr i8, ptr addrspace(1) %1658, i64 864691128455135236
  store ptr addrspace(1) %1659, ptr %296
  %1660 = load ptr addrspace(1), ptr %296
  call void @_Bb02ioprintln(ptr addrspace(1) %1660), !dbg !337
  store ptr addrspace(1) null, ptr %297
  %1661 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !338
  %1662 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1661, i64 0, i32 3
  %1663 = load ptr addrspace(1), ptr addrspace(1) %1662, align 8
  %1664 = bitcast ptr addrspace(1) %1663 to ptr addrspace(1)
  %1665 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.5), !dbg !339
  %1666 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1664, i64 0, i64 0
  store ptr addrspace(1) %1665, ptr addrspace(1) %1666
  %1667 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1661, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1667
  %1668 = bitcast ptr addrspace(1) %1661 to ptr addrspace(1)
  %1669 = getelementptr i8, ptr addrspace(1) %1668, i64 864691128455135236
  store ptr addrspace(1) %1669, ptr %298
  %1670 = load ptr addrspace(1), ptr %298
  call void @_Bb02ioprintln(ptr addrspace(1) %1670), !dbg !340
  store ptr addrspace(1) null, ptr %299
  %1671 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !341
  %1672 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1671, i64 0, i32 3
  %1673 = load ptr addrspace(1), ptr addrspace(1) %1672, align 8
  %1674 = bitcast ptr addrspace(1) %1673 to ptr addrspace(1)
  %1675 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.0), !dbg !342
  %1676 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1674, i64 0, i64 0
  store ptr addrspace(1) %1675, ptr addrspace(1) %1676
  %1677 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1671, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1677
  %1678 = bitcast ptr addrspace(1) %1671 to ptr addrspace(1)
  %1679 = getelementptr i8, ptr addrspace(1) %1678, i64 864691128455135236
  store ptr addrspace(1) %1679, ptr %300
  %1680 = load ptr addrspace(1), ptr %300
  call void @_Bb02ioprintln(ptr addrspace(1) %1680), !dbg !343
  store ptr addrspace(1) null, ptr %301
  %1681 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !344
  %1682 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1681, i64 0, i32 3
  %1683 = load ptr addrspace(1), ptr addrspace(1) %1682, align 8
  %1684 = bitcast ptr addrspace(1) %1683 to ptr addrspace(1)
  %1685 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.0), !dbg !345
  %1686 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1684, i64 0, i64 0
  store ptr addrspace(1) %1685, ptr addrspace(1) %1686
  %1687 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1681, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1687
  %1688 = bitcast ptr addrspace(1) %1681 to ptr addrspace(1)
  %1689 = getelementptr i8, ptr addrspace(1) %1688, i64 864691128455135236
  store ptr addrspace(1) %1689, ptr %302
  %1690 = load ptr addrspace(1), ptr %302
  call void @_Bb02ioprintln(ptr addrspace(1) %1690), !dbg !346
  store ptr addrspace(1) null, ptr %303
  %1691 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !347
  %1692 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1691, i64 0, i32 3
  %1693 = load ptr addrspace(1), ptr addrspace(1) %1692, align 8
  %1694 = bitcast ptr addrspace(1) %1693 to ptr addrspace(1)
  %1695 = call ptr addrspace(1) @_bal_float_to_tagged(double -2.0), !dbg !348
  %1696 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1694, i64 0, i64 0
  store ptr addrspace(1) %1695, ptr addrspace(1) %1696
  %1697 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1691, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1697
  %1698 = bitcast ptr addrspace(1) %1691 to ptr addrspace(1)
  %1699 = getelementptr i8, ptr addrspace(1) %1698, i64 864691128455135236
  store ptr addrspace(1) %1699, ptr %304
  %1700 = load ptr addrspace(1), ptr %304
  call void @_Bb02ioprintln(ptr addrspace(1) %1700), !dbg !349
  store ptr addrspace(1) null, ptr %305
  %1701 = call double @_B_floatRem(double 1.0, double 0.1), !dbg !350
  store double %1701, ptr %306
  %1702 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !351
  %1703 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1702, i64 0, i32 3
  %1704 = load ptr addrspace(1), ptr addrspace(1) %1703, align 8
  %1705 = bitcast ptr addrspace(1) %1704 to ptr addrspace(1)
  %1706 = load double, ptr %306
  %1707 = call ptr addrspace(1) @_bal_float_to_tagged(double %1706), !dbg !352
  %1708 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1705, i64 0, i64 0
  store ptr addrspace(1) %1707, ptr addrspace(1) %1708
  %1709 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1702, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1709
  %1710 = bitcast ptr addrspace(1) %1702 to ptr addrspace(1)
  %1711 = getelementptr i8, ptr addrspace(1) %1710, i64 864691128455135236
  store ptr addrspace(1) %1711, ptr %307
  %1712 = load ptr addrspace(1), ptr %307
  call void @_Bb02ioprintln(ptr addrspace(1) %1712), !dbg !353
  store ptr addrspace(1) null, ptr %308
  store double 100.0, ptr %f
  %1713 = load double, ptr %f
  %1714 = frem double %1713, 19.0
  store double %1714, ptr %309
  %1715 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !354
  %1716 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1715, i64 0, i32 3
  %1717 = load ptr addrspace(1), ptr addrspace(1) %1716, align 8
  %1718 = bitcast ptr addrspace(1) %1717 to ptr addrspace(1)
  %1719 = load double, ptr %309
  %1720 = call ptr addrspace(1) @_bal_float_to_tagged(double %1719), !dbg !355
  %1721 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1718, i64 0, i64 0
  store ptr addrspace(1) %1720, ptr addrspace(1) %1721
  %1722 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1715, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1722
  %1723 = bitcast ptr addrspace(1) %1715 to ptr addrspace(1)
  %1724 = getelementptr i8, ptr addrspace(1) %1723, i64 864691128455135236
  store ptr addrspace(1) %1724, ptr %310
  %1725 = load ptr addrspace(1), ptr %310
  call void @_Bb02ioprintln(ptr addrspace(1) %1725), !dbg !356
  store ptr addrspace(1) null, ptr %311
  %1726 = load double, ptr %f
  %1727 = frem double 1999.0, %1726
  store double %1727, ptr %312
  %1728 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !357
  %1729 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1728, i64 0, i32 3
  %1730 = load ptr addrspace(1), ptr addrspace(1) %1729, align 8
  %1731 = bitcast ptr addrspace(1) %1730 to ptr addrspace(1)
  %1732 = load double, ptr %312
  %1733 = call ptr addrspace(1) @_bal_float_to_tagged(double %1732), !dbg !358
  %1734 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1731, i64 0, i64 0
  store ptr addrspace(1) %1733, ptr addrspace(1) %1734
  %1735 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1728, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1735
  %1736 = bitcast ptr addrspace(1) %1728 to ptr addrspace(1)
  %1737 = getelementptr i8, ptr addrspace(1) %1736, i64 864691128455135236
  store ptr addrspace(1) %1737, ptr %313
  %1738 = load ptr addrspace(1), ptr %313
  call void @_Bb02ioprintln(ptr addrspace(1) %1738), !dbg !359
  store ptr addrspace(1) null, ptr %314
  ret void
1739:
  %1740 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %1740), !dbg !10
  unreachable
}
define internal double @_B_floatRem(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca double
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store double %0, ptr %f1
  store double %1, ptr %f2
  %8 = load double, ptr %f1
  %9 = load double, ptr %f2
  %10 = frem double %8, %9
  store double %10, ptr %3
  %11 = load double, ptr %3
  ret double %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 36100), !dbg !360
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !361
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/22-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"floatRem", linkageName:"_B_floatRem", scope: !1, file: !1, line: 141, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 10, column: 15, scope: !5)
!12 = !DILocation(line: 10, column: 15, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
!14 = !DILocation(line: 11, column: 15, scope: !5)
!15 = !DILocation(line: 11, column: 15, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
!17 = !DILocation(line: 12, column: 15, scope: !5)
!18 = !DILocation(line: 12, column: 15, scope: !5)
!19 = !DILocation(line: 12, column: 4, scope: !5)
!20 = !DILocation(line: 13, column: 15, scope: !5)
!21 = !DILocation(line: 13, column: 15, scope: !5)
!22 = !DILocation(line: 13, column: 4, scope: !5)
!23 = !DILocation(line: 14, column: 15, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 15, column: 15, scope: !5)
!27 = !DILocation(line: 15, column: 15, scope: !5)
!28 = !DILocation(line: 15, column: 4, scope: !5)
!29 = !DILocation(line: 16, column: 15, scope: !5)
!30 = !DILocation(line: 16, column: 15, scope: !5)
!31 = !DILocation(line: 16, column: 4, scope: !5)
!32 = !DILocation(line: 17, column: 15, scope: !5)
!33 = !DILocation(line: 17, column: 15, scope: !5)
!34 = !DILocation(line: 17, column: 4, scope: !5)
!35 = !DILocation(line: 18, column: 15, scope: !5)
!36 = !DILocation(line: 18, column: 15, scope: !5)
!37 = !DILocation(line: 18, column: 4, scope: !5)
!38 = !DILocation(line: 19, column: 15, scope: !5)
!39 = !DILocation(line: 19, column: 15, scope: !5)
!40 = !DILocation(line: 19, column: 4, scope: !5)
!41 = !DILocation(line: 20, column: 15, scope: !5)
!42 = !DILocation(line: 20, column: 15, scope: !5)
!43 = !DILocation(line: 20, column: 4, scope: !5)
!44 = !DILocation(line: 21, column: 15, scope: !5)
!45 = !DILocation(line: 21, column: 15, scope: !5)
!46 = !DILocation(line: 21, column: 4, scope: !5)
!47 = !DILocation(line: 22, column: 15, scope: !5)
!48 = !DILocation(line: 22, column: 15, scope: !5)
!49 = !DILocation(line: 22, column: 4, scope: !5)
!50 = !DILocation(line: 23, column: 15, scope: !5)
!51 = !DILocation(line: 23, column: 15, scope: !5)
!52 = !DILocation(line: 23, column: 4, scope: !5)
!53 = !DILocation(line: 25, column: 15, scope: !5)
!54 = !DILocation(line: 25, column: 15, scope: !5)
!55 = !DILocation(line: 25, column: 4, scope: !5)
!56 = !DILocation(line: 26, column: 15, scope: !5)
!57 = !DILocation(line: 26, column: 15, scope: !5)
!58 = !DILocation(line: 26, column: 4, scope: !5)
!59 = !DILocation(line: 27, column: 15, scope: !5)
!60 = !DILocation(line: 27, column: 15, scope: !5)
!61 = !DILocation(line: 27, column: 4, scope: !5)
!62 = !DILocation(line: 28, column: 15, scope: !5)
!63 = !DILocation(line: 28, column: 15, scope: !5)
!64 = !DILocation(line: 28, column: 4, scope: !5)
!65 = !DILocation(line: 29, column: 15, scope: !5)
!66 = !DILocation(line: 29, column: 15, scope: !5)
!67 = !DILocation(line: 29, column: 4, scope: !5)
!68 = !DILocation(line: 30, column: 15, scope: !5)
!69 = !DILocation(line: 30, column: 15, scope: !5)
!70 = !DILocation(line: 30, column: 4, scope: !5)
!71 = !DILocation(line: 31, column: 15, scope: !5)
!72 = !DILocation(line: 31, column: 15, scope: !5)
!73 = !DILocation(line: 31, column: 4, scope: !5)
!74 = !DILocation(line: 32, column: 15, scope: !5)
!75 = !DILocation(line: 32, column: 15, scope: !5)
!76 = !DILocation(line: 32, column: 4, scope: !5)
!77 = !DILocation(line: 33, column: 15, scope: !5)
!78 = !DILocation(line: 33, column: 15, scope: !5)
!79 = !DILocation(line: 33, column: 4, scope: !5)
!80 = !DILocation(line: 34, column: 15, scope: !5)
!81 = !DILocation(line: 34, column: 15, scope: !5)
!82 = !DILocation(line: 34, column: 4, scope: !5)
!83 = !DILocation(line: 35, column: 15, scope: !5)
!84 = !DILocation(line: 35, column: 15, scope: !5)
!85 = !DILocation(line: 35, column: 4, scope: !5)
!86 = !DILocation(line: 36, column: 15, scope: !5)
!87 = !DILocation(line: 36, column: 15, scope: !5)
!88 = !DILocation(line: 36, column: 4, scope: !5)
!89 = !DILocation(line: 37, column: 15, scope: !5)
!90 = !DILocation(line: 37, column: 15, scope: !5)
!91 = !DILocation(line: 37, column: 4, scope: !5)
!92 = !DILocation(line: 39, column: 15, scope: !5)
!93 = !DILocation(line: 39, column: 15, scope: !5)
!94 = !DILocation(line: 39, column: 4, scope: !5)
!95 = !DILocation(line: 40, column: 15, scope: !5)
!96 = !DILocation(line: 40, column: 15, scope: !5)
!97 = !DILocation(line: 40, column: 4, scope: !5)
!98 = !DILocation(line: 41, column: 15, scope: !5)
!99 = !DILocation(line: 41, column: 15, scope: !5)
!100 = !DILocation(line: 41, column: 4, scope: !5)
!101 = !DILocation(line: 42, column: 15, scope: !5)
!102 = !DILocation(line: 42, column: 15, scope: !5)
!103 = !DILocation(line: 42, column: 4, scope: !5)
!104 = !DILocation(line: 43, column: 15, scope: !5)
!105 = !DILocation(line: 43, column: 15, scope: !5)
!106 = !DILocation(line: 43, column: 4, scope: !5)
!107 = !DILocation(line: 44, column: 15, scope: !5)
!108 = !DILocation(line: 44, column: 15, scope: !5)
!109 = !DILocation(line: 44, column: 4, scope: !5)
!110 = !DILocation(line: 45, column: 15, scope: !5)
!111 = !DILocation(line: 45, column: 15, scope: !5)
!112 = !DILocation(line: 45, column: 4, scope: !5)
!113 = !DILocation(line: 46, column: 15, scope: !5)
!114 = !DILocation(line: 46, column: 15, scope: !5)
!115 = !DILocation(line: 46, column: 4, scope: !5)
!116 = !DILocation(line: 47, column: 15, scope: !5)
!117 = !DILocation(line: 47, column: 15, scope: !5)
!118 = !DILocation(line: 47, column: 4, scope: !5)
!119 = !DILocation(line: 48, column: 15, scope: !5)
!120 = !DILocation(line: 48, column: 15, scope: !5)
!121 = !DILocation(line: 48, column: 4, scope: !5)
!122 = !DILocation(line: 49, column: 15, scope: !5)
!123 = !DILocation(line: 49, column: 15, scope: !5)
!124 = !DILocation(line: 49, column: 4, scope: !5)
!125 = !DILocation(line: 50, column: 15, scope: !5)
!126 = !DILocation(line: 50, column: 15, scope: !5)
!127 = !DILocation(line: 50, column: 4, scope: !5)
!128 = !DILocation(line: 51, column: 15, scope: !5)
!129 = !DILocation(line: 51, column: 15, scope: !5)
!130 = !DILocation(line: 51, column: 4, scope: !5)
!131 = !DILocation(line: 52, column: 15, scope: !5)
!132 = !DILocation(line: 52, column: 15, scope: !5)
!133 = !DILocation(line: 52, column: 4, scope: !5)
!134 = !DILocation(line: 54, column: 15, scope: !5)
!135 = !DILocation(line: 54, column: 15, scope: !5)
!136 = !DILocation(line: 54, column: 4, scope: !5)
!137 = !DILocation(line: 55, column: 15, scope: !5)
!138 = !DILocation(line: 55, column: 15, scope: !5)
!139 = !DILocation(line: 55, column: 4, scope: !5)
!140 = !DILocation(line: 56, column: 15, scope: !5)
!141 = !DILocation(line: 56, column: 15, scope: !5)
!142 = !DILocation(line: 56, column: 4, scope: !5)
!143 = !DILocation(line: 57, column: 15, scope: !5)
!144 = !DILocation(line: 57, column: 15, scope: !5)
!145 = !DILocation(line: 57, column: 4, scope: !5)
!146 = !DILocation(line: 58, column: 15, scope: !5)
!147 = !DILocation(line: 58, column: 15, scope: !5)
!148 = !DILocation(line: 58, column: 4, scope: !5)
!149 = !DILocation(line: 59, column: 15, scope: !5)
!150 = !DILocation(line: 59, column: 15, scope: !5)
!151 = !DILocation(line: 59, column: 4, scope: !5)
!152 = !DILocation(line: 60, column: 15, scope: !5)
!153 = !DILocation(line: 60, column: 15, scope: !5)
!154 = !DILocation(line: 60, column: 4, scope: !5)
!155 = !DILocation(line: 61, column: 15, scope: !5)
!156 = !DILocation(line: 61, column: 15, scope: !5)
!157 = !DILocation(line: 61, column: 4, scope: !5)
!158 = !DILocation(line: 62, column: 15, scope: !5)
!159 = !DILocation(line: 62, column: 15, scope: !5)
!160 = !DILocation(line: 62, column: 4, scope: !5)
!161 = !DILocation(line: 63, column: 15, scope: !5)
!162 = !DILocation(line: 63, column: 15, scope: !5)
!163 = !DILocation(line: 63, column: 4, scope: !5)
!164 = !DILocation(line: 64, column: 15, scope: !5)
!165 = !DILocation(line: 64, column: 15, scope: !5)
!166 = !DILocation(line: 64, column: 4, scope: !5)
!167 = !DILocation(line: 65, column: 15, scope: !5)
!168 = !DILocation(line: 65, column: 15, scope: !5)
!169 = !DILocation(line: 65, column: 4, scope: !5)
!170 = !DILocation(line: 66, column: 15, scope: !5)
!171 = !DILocation(line: 66, column: 15, scope: !5)
!172 = !DILocation(line: 66, column: 4, scope: !5)
!173 = !DILocation(line: 67, column: 15, scope: !5)
!174 = !DILocation(line: 67, column: 15, scope: !5)
!175 = !DILocation(line: 67, column: 4, scope: !5)
!176 = !DILocation(line: 70, column: 15, scope: !5)
!177 = !DILocation(line: 70, column: 15, scope: !5)
!178 = !DILocation(line: 70, column: 4, scope: !5)
!179 = !DILocation(line: 71, column: 15, scope: !5)
!180 = !DILocation(line: 71, column: 15, scope: !5)
!181 = !DILocation(line: 71, column: 4, scope: !5)
!182 = !DILocation(line: 72, column: 15, scope: !5)
!183 = !DILocation(line: 72, column: 15, scope: !5)
!184 = !DILocation(line: 72, column: 4, scope: !5)
!185 = !DILocation(line: 73, column: 15, scope: !5)
!186 = !DILocation(line: 73, column: 15, scope: !5)
!187 = !DILocation(line: 73, column: 4, scope: !5)
!188 = !DILocation(line: 74, column: 15, scope: !5)
!189 = !DILocation(line: 74, column: 15, scope: !5)
!190 = !DILocation(line: 74, column: 4, scope: !5)
!191 = !DILocation(line: 75, column: 15, scope: !5)
!192 = !DILocation(line: 75, column: 15, scope: !5)
!193 = !DILocation(line: 75, column: 4, scope: !5)
!194 = !DILocation(line: 76, column: 15, scope: !5)
!195 = !DILocation(line: 76, column: 15, scope: !5)
!196 = !DILocation(line: 76, column: 4, scope: !5)
!197 = !DILocation(line: 77, column: 15, scope: !5)
!198 = !DILocation(line: 77, column: 15, scope: !5)
!199 = !DILocation(line: 77, column: 4, scope: !5)
!200 = !DILocation(line: 78, column: 15, scope: !5)
!201 = !DILocation(line: 78, column: 15, scope: !5)
!202 = !DILocation(line: 78, column: 4, scope: !5)
!203 = !DILocation(line: 79, column: 15, scope: !5)
!204 = !DILocation(line: 79, column: 15, scope: !5)
!205 = !DILocation(line: 79, column: 4, scope: !5)
!206 = !DILocation(line: 80, column: 15, scope: !5)
!207 = !DILocation(line: 80, column: 15, scope: !5)
!208 = !DILocation(line: 80, column: 4, scope: !5)
!209 = !DILocation(line: 81, column: 15, scope: !5)
!210 = !DILocation(line: 81, column: 15, scope: !5)
!211 = !DILocation(line: 81, column: 4, scope: !5)
!212 = !DILocation(line: 82, column: 15, scope: !5)
!213 = !DILocation(line: 82, column: 15, scope: !5)
!214 = !DILocation(line: 82, column: 4, scope: !5)
!215 = !DILocation(line: 83, column: 15, scope: !5)
!216 = !DILocation(line: 83, column: 15, scope: !5)
!217 = !DILocation(line: 83, column: 4, scope: !5)
!218 = !DILocation(line: 85, column: 15, scope: !5)
!219 = !DILocation(line: 85, column: 15, scope: !5)
!220 = !DILocation(line: 85, column: 4, scope: !5)
!221 = !DILocation(line: 86, column: 15, scope: !5)
!222 = !DILocation(line: 86, column: 15, scope: !5)
!223 = !DILocation(line: 86, column: 4, scope: !5)
!224 = !DILocation(line: 87, column: 15, scope: !5)
!225 = !DILocation(line: 87, column: 15, scope: !5)
!226 = !DILocation(line: 87, column: 4, scope: !5)
!227 = !DILocation(line: 88, column: 15, scope: !5)
!228 = !DILocation(line: 88, column: 15, scope: !5)
!229 = !DILocation(line: 88, column: 4, scope: !5)
!230 = !DILocation(line: 89, column: 15, scope: !5)
!231 = !DILocation(line: 89, column: 15, scope: !5)
!232 = !DILocation(line: 89, column: 4, scope: !5)
!233 = !DILocation(line: 90, column: 15, scope: !5)
!234 = !DILocation(line: 90, column: 15, scope: !5)
!235 = !DILocation(line: 90, column: 4, scope: !5)
!236 = !DILocation(line: 91, column: 15, scope: !5)
!237 = !DILocation(line: 91, column: 15, scope: !5)
!238 = !DILocation(line: 91, column: 4, scope: !5)
!239 = !DILocation(line: 92, column: 15, scope: !5)
!240 = !DILocation(line: 92, column: 15, scope: !5)
!241 = !DILocation(line: 92, column: 4, scope: !5)
!242 = !DILocation(line: 93, column: 15, scope: !5)
!243 = !DILocation(line: 93, column: 15, scope: !5)
!244 = !DILocation(line: 93, column: 4, scope: !5)
!245 = !DILocation(line: 94, column: 15, scope: !5)
!246 = !DILocation(line: 94, column: 15, scope: !5)
!247 = !DILocation(line: 94, column: 4, scope: !5)
!248 = !DILocation(line: 96, column: 15, scope: !5)
!249 = !DILocation(line: 96, column: 15, scope: !5)
!250 = !DILocation(line: 96, column: 4, scope: !5)
!251 = !DILocation(line: 97, column: 15, scope: !5)
!252 = !DILocation(line: 97, column: 15, scope: !5)
!253 = !DILocation(line: 97, column: 4, scope: !5)
!254 = !DILocation(line: 98, column: 15, scope: !5)
!255 = !DILocation(line: 98, column: 15, scope: !5)
!256 = !DILocation(line: 98, column: 4, scope: !5)
!257 = !DILocation(line: 99, column: 15, scope: !5)
!258 = !DILocation(line: 99, column: 15, scope: !5)
!259 = !DILocation(line: 99, column: 4, scope: !5)
!260 = !DILocation(line: 100, column: 15, scope: !5)
!261 = !DILocation(line: 100, column: 15, scope: !5)
!262 = !DILocation(line: 100, column: 4, scope: !5)
!263 = !DILocation(line: 101, column: 15, scope: !5)
!264 = !DILocation(line: 101, column: 15, scope: !5)
!265 = !DILocation(line: 101, column: 4, scope: !5)
!266 = !DILocation(line: 102, column: 15, scope: !5)
!267 = !DILocation(line: 102, column: 15, scope: !5)
!268 = !DILocation(line: 102, column: 4, scope: !5)
!269 = !DILocation(line: 103, column: 15, scope: !5)
!270 = !DILocation(line: 103, column: 15, scope: !5)
!271 = !DILocation(line: 103, column: 4, scope: !5)
!272 = !DILocation(line: 104, column: 15, scope: !5)
!273 = !DILocation(line: 104, column: 15, scope: !5)
!274 = !DILocation(line: 104, column: 4, scope: !5)
!275 = !DILocation(line: 105, column: 15, scope: !5)
!276 = !DILocation(line: 105, column: 15, scope: !5)
!277 = !DILocation(line: 105, column: 4, scope: !5)
!278 = !DILocation(line: 107, column: 15, scope: !5)
!279 = !DILocation(line: 107, column: 15, scope: !5)
!280 = !DILocation(line: 107, column: 4, scope: !5)
!281 = !DILocation(line: 108, column: 15, scope: !5)
!282 = !DILocation(line: 108, column: 15, scope: !5)
!283 = !DILocation(line: 108, column: 4, scope: !5)
!284 = !DILocation(line: 109, column: 15, scope: !5)
!285 = !DILocation(line: 109, column: 15, scope: !5)
!286 = !DILocation(line: 109, column: 4, scope: !5)
!287 = !DILocation(line: 110, column: 15, scope: !5)
!288 = !DILocation(line: 110, column: 15, scope: !5)
!289 = !DILocation(line: 110, column: 4, scope: !5)
!290 = !DILocation(line: 111, column: 15, scope: !5)
!291 = !DILocation(line: 111, column: 15, scope: !5)
!292 = !DILocation(line: 111, column: 4, scope: !5)
!293 = !DILocation(line: 112, column: 15, scope: !5)
!294 = !DILocation(line: 112, column: 15, scope: !5)
!295 = !DILocation(line: 112, column: 4, scope: !5)
!296 = !DILocation(line: 113, column: 15, scope: !5)
!297 = !DILocation(line: 113, column: 15, scope: !5)
!298 = !DILocation(line: 113, column: 4, scope: !5)
!299 = !DILocation(line: 114, column: 15, scope: !5)
!300 = !DILocation(line: 114, column: 15, scope: !5)
!301 = !DILocation(line: 114, column: 4, scope: !5)
!302 = !DILocation(line: 115, column: 15, scope: !5)
!303 = !DILocation(line: 115, column: 15, scope: !5)
!304 = !DILocation(line: 115, column: 4, scope: !5)
!305 = !DILocation(line: 116, column: 15, scope: !5)
!306 = !DILocation(line: 116, column: 15, scope: !5)
!307 = !DILocation(line: 116, column: 4, scope: !5)
!308 = !DILocation(line: 118, column: 15, scope: !5)
!309 = !DILocation(line: 118, column: 15, scope: !5)
!310 = !DILocation(line: 118, column: 4, scope: !5)
!311 = !DILocation(line: 119, column: 15, scope: !5)
!312 = !DILocation(line: 119, column: 15, scope: !5)
!313 = !DILocation(line: 119, column: 4, scope: !5)
!314 = !DILocation(line: 121, column: 15, scope: !5)
!315 = !DILocation(line: 121, column: 15, scope: !5)
!316 = !DILocation(line: 121, column: 4, scope: !5)
!317 = !DILocation(line: 122, column: 15, scope: !5)
!318 = !DILocation(line: 122, column: 15, scope: !5)
!319 = !DILocation(line: 122, column: 4, scope: !5)
!320 = !DILocation(line: 123, column: 15, scope: !5)
!321 = !DILocation(line: 123, column: 15, scope: !5)
!322 = !DILocation(line: 123, column: 4, scope: !5)
!323 = !DILocation(line: 124, column: 15, scope: !5)
!324 = !DILocation(line: 124, column: 15, scope: !5)
!325 = !DILocation(line: 124, column: 4, scope: !5)
!326 = !DILocation(line: 125, column: 15, scope: !5)
!327 = !DILocation(line: 125, column: 15, scope: !5)
!328 = !DILocation(line: 125, column: 4, scope: !5)
!329 = !DILocation(line: 126, column: 15, scope: !5)
!330 = !DILocation(line: 126, column: 15, scope: !5)
!331 = !DILocation(line: 126, column: 4, scope: !5)
!332 = !DILocation(line: 127, column: 15, scope: !5)
!333 = !DILocation(line: 127, column: 15, scope: !5)
!334 = !DILocation(line: 127, column: 4, scope: !5)
!335 = !DILocation(line: 128, column: 15, scope: !5)
!336 = !DILocation(line: 128, column: 15, scope: !5)
!337 = !DILocation(line: 128, column: 4, scope: !5)
!338 = !DILocation(line: 129, column: 15, scope: !5)
!339 = !DILocation(line: 129, column: 15, scope: !5)
!340 = !DILocation(line: 129, column: 4, scope: !5)
!341 = !DILocation(line: 130, column: 15, scope: !5)
!342 = !DILocation(line: 130, column: 15, scope: !5)
!343 = !DILocation(line: 130, column: 4, scope: !5)
!344 = !DILocation(line: 132, column: 15, scope: !5)
!345 = !DILocation(line: 132, column: 15, scope: !5)
!346 = !DILocation(line: 132, column: 4, scope: !5)
!347 = !DILocation(line: 133, column: 15, scope: !5)
!348 = !DILocation(line: 133, column: 15, scope: !5)
!349 = !DILocation(line: 133, column: 4, scope: !5)
!350 = !DILocation(line: 135, column: 15, scope: !5)
!351 = !DILocation(line: 135, column: 15, scope: !5)
!352 = !DILocation(line: 135, column: 15, scope: !5)
!353 = !DILocation(line: 135, column: 4, scope: !5)
!354 = !DILocation(line: 137, column: 15, scope: !5)
!355 = !DILocation(line: 137, column: 15, scope: !5)
!356 = !DILocation(line: 137, column: 4, scope: !5)
!357 = !DILocation(line: 138, column: 15, scope: !5)
!358 = !DILocation(line: 138, column: 15, scope: !5)
!359 = !DILocation(line: 138, column: 4, scope: !5)
!360 = !DILocation(line: 0, column: 0, scope: !7)
!361 = !DILocation(line: 141, column: 9, scope: !7)
