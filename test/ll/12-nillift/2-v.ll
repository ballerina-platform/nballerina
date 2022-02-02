@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca double
  %3 = alloca i1
  %4 = alloca double
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca double
  %10 = alloca i1
  %11 = alloca double
  %12 = alloca double
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca double
  %17 = alloca i1
  %18 = alloca double
  %19 = alloca double
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca double
  %23 = alloca i1
  %24 = alloca double
  %25 = alloca double
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i1
  %29 = alloca double
  %30 = alloca i1
  %31 = alloca double
  %32 = alloca double
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca double
  %36 = alloca i1
  %37 = alloca double
  %38 = alloca double
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca double
  %43 = alloca i1
  %44 = alloca double
  %45 = alloca double
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i8 addrspace(1)*
  %v4 = alloca i8 addrspace(1)*
  %48 = alloca i1
  %49 = alloca double
  %50 = alloca i1
  %51 = alloca double
  %52 = alloca double
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i1
  %55 = alloca double
  %56 = alloca i1
  %57 = alloca double
  %58 = alloca double
  %59 = alloca i8 addrspace(1)*
  %60 = alloca i8 addrspace(1)*
  %61 = alloca i1
  %62 = alloca double
  %63 = alloca i1
  %64 = alloca double
  %65 = alloca double
  %66 = alloca i8 addrspace(1)*
  %67 = alloca i8 addrspace(1)*
  %v5 = alloca i8 addrspace(1)*
  %68 = alloca i1
  %69 = alloca double
  %70 = alloca double
  %71 = alloca i8 addrspace(1)*
  %72 = alloca i8 addrspace(1)*
  %v6 = alloca i8 addrspace(1)*
  %73 = alloca i1
  %74 = alloca double
  %75 = alloca double
  %76 = alloca i8 addrspace(1)*
  %77 = alloca i8 addrspace(1)*
  %78 = alloca i1
  %79 = alloca double
  %80 = alloca double
  %81 = alloca i8 addrspace(1)*
  %82 = alloca i8 addrspace(1)*
  %d = alloca double
  %v7 = alloca i8 addrspace(1)*
  %83 = alloca i1
  %84 = alloca double
  %85 = alloca double
  %86 = alloca i8 addrspace(1)*
  %87 = alloca i8 addrspace(1)*
  %88 = alloca i1
  %89 = alloca double
  %90 = alloca i1
  %91 = alloca double
  %92 = alloca double
  %93 = alloca i8 addrspace(1)*
  %94 = alloca i1
  %95 = alloca double
  %96 = alloca i1
  %97 = alloca double
  %98 = alloca double
  %99 = alloca i8 addrspace(1)*
  %100 = alloca i1
  %101 = alloca double
  %102 = alloca double
  %103 = alloca i8 addrspace(1)*
  %104 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %v8 = alloca i8 addrspace(1)*
  %105 = alloca i1
  %106 = alloca double
  %107 = alloca i1
  %108 = alloca double
  %109 = alloca double
  %110 = alloca i8 addrspace(1)*
  %111 = alloca i8 addrspace(1)*
  %112 = alloca i1
  %113 = alloca double
  %114 = alloca i1
  %115 = alloca double
  %116 = alloca double
  %117 = alloca i8 addrspace(1)*
  %118 = alloca i1
  %119 = alloca double
  %120 = alloca i1
  %121 = alloca double
  %122 = alloca double
  %123 = alloca i8 addrspace(1)*
  %124 = alloca i1
  %125 = alloca double
  %126 = alloca double
  %127 = alloca i8 addrspace(1)*
  %128 = alloca i1
  %129 = alloca double
  %130 = alloca i1
  %131 = alloca double
  %132 = alloca double
  %133 = alloca i8 addrspace(1)*
  %134 = alloca i8 addrspace(1)*
  %135 = alloca i1
  %136 = alloca double
  %137 = alloca double
  %138 = alloca i8 addrspace(1)*
  %139 = alloca i8 addrspace(1)*
  %140 = alloca i8
  %141 = load i8*, i8** @_bal_stack_guard
  %142 = icmp ult i8* %140, %141
  br i1 %142, label %678, label %143
143:
  %144 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.0)
  store i8 addrspace(1)* %144, i8 addrspace(1)** %a
  %145 = call i8 addrspace(1)* @_bal_float_to_tagged(double 6.0)
  store i8 addrspace(1)* %145, i8 addrspace(1)** %b
  %146 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
  store i8 addrspace(1)* %146, i8 addrspace(1)** %c
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %148 = addrspacecast i8 addrspace(1)* %147 to i8*
  %149 = ptrtoint i8* %148 to i64
  %150 = and i64 %149, 2233785415175766016
  %151 = icmp eq i64 %150, 0
  store i1 %151, i1* %1
  %152 = load i1, i1* %1
  br i1 %152, label %162, label %153
153:
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %155 = call double @_bal_tagged_to_float(i8 addrspace(1)* %154)
  store double %155, double* %2
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %157 = addrspacecast i8 addrspace(1)* %156 to i8*
  %158 = ptrtoint i8* %157 to i64
  %159 = and i64 %158, 2233785415175766016
  %160 = icmp eq i64 %159, 0
  store i1 %160, i1* %3
  %161 = load i1, i1* %3
  br i1 %161, label %162, label %163
162:
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %171
163:
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %165 = call double @_bal_tagged_to_float(i8 addrspace(1)* %164)
  store double %165, double* %4
  %166 = load double, double* %2
  %167 = load double, double* %4
  %168 = fadd double %166, %167
  store double %168, double* %5
  %169 = load double, double* %5
  %170 = call i8 addrspace(1)* @_bal_float_to_tagged(double %169)
  store i8 addrspace(1)* %170, i8 addrspace(1)** %6
  br label %171
171:
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %172, i8 addrspace(1)** %v1
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %173), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !8
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %175 = addrspacecast i8 addrspace(1)* %174 to i8*
  %176 = ptrtoint i8* %175 to i64
  %177 = and i64 %176, 2233785415175766016
  %178 = icmp eq i64 %177, 0
  store i1 %178, i1* %8
  %179 = load i1, i1* %8
  br i1 %179, label %189, label %180
180:
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %182 = call double @_bal_tagged_to_float(i8 addrspace(1)* %181)
  store double %182, double* %9
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %184 = addrspacecast i8 addrspace(1)* %183 to i8*
  %185 = ptrtoint i8* %184 to i64
  %186 = and i64 %185, 2233785415175766016
  %187 = icmp eq i64 %186, 0
  store i1 %187, i1* %10
  %188 = load i1, i1* %10
  br i1 %188, label %189, label %190
189:
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  br label %198
190:
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %192 = call double @_bal_tagged_to_float(i8 addrspace(1)* %191)
  store double %192, double* %11
  %193 = load double, double* %9
  %194 = load double, double* %11
  %195 = fadd double %193, %194
  store double %195, double* %12
  %196 = load double, double* %12
  %197 = call i8 addrspace(1)* @_bal_float_to_tagged(double %196)
  store i8 addrspace(1)* %197, i8 addrspace(1)** %13
  br label %198
198:
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %199), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !9
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %201 = addrspacecast i8 addrspace(1)* %200 to i8*
  %202 = ptrtoint i8* %201 to i64
  %203 = and i64 %202, 2233785415175766016
  %204 = icmp eq i64 %203, 0
  store i1 %204, i1* %15
  %205 = load i1, i1* %15
  br i1 %205, label %215, label %206
206:
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %208 = call double @_bal_tagged_to_float(i8 addrspace(1)* %207)
  store double %208, double* %16
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %210 = addrspacecast i8 addrspace(1)* %209 to i8*
  %211 = ptrtoint i8* %210 to i64
  %212 = and i64 %211, 2233785415175766016
  %213 = icmp eq i64 %212, 0
  store i1 %213, i1* %17
  %214 = load i1, i1* %17
  br i1 %214, label %215, label %216
215:
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  br label %224
216:
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %218 = call double @_bal_tagged_to_float(i8 addrspace(1)* %217)
  store double %218, double* %18
  %219 = load double, double* %16
  %220 = load double, double* %18
  %221 = fadd double %219, %220
  store double %221, double* %19
  %222 = load double, double* %19
  %223 = call i8 addrspace(1)* @_bal_float_to_tagged(double %222)
  store i8 addrspace(1)* %223, i8 addrspace(1)** %20
  br label %224
224:
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %226 = addrspacecast i8 addrspace(1)* %225 to i8*
  %227 = ptrtoint i8* %226 to i64
  %228 = and i64 %227, 2233785415175766016
  %229 = icmp eq i64 %228, 0
  store i1 %229, i1* %21
  %230 = load i1, i1* %21
  br i1 %230, label %240, label %231
231:
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %233 = call double @_bal_tagged_to_float(i8 addrspace(1)* %232)
  store double %233, double* %22
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %235 = addrspacecast i8 addrspace(1)* %234 to i8*
  %236 = ptrtoint i8* %235 to i64
  %237 = and i64 %236, 2233785415175766016
  %238 = icmp eq i64 %237, 0
  store i1 %238, i1* %23
  %239 = load i1, i1* %23
  br i1 %239, label %240, label %241
240:
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  br label %249
241:
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %243 = call double @_bal_tagged_to_float(i8 addrspace(1)* %242)
  store double %243, double* %24
  %244 = load double, double* %22
  %245 = load double, double* %24
  %246 = fadd double %244, %245
  store double %246, double* %25
  %247 = load double, double* %25
  %248 = call i8 addrspace(1)* @_bal_float_to_tagged(double %247)
  store i8 addrspace(1)* %248, i8 addrspace(1)** %26
  br label %249
249:
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  store i8 addrspace(1)* %250, i8 addrspace(1)** %v2
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %251), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !10
  %252 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %253 = addrspacecast i8 addrspace(1)* %252 to i8*
  %254 = ptrtoint i8* %253 to i64
  %255 = and i64 %254, 2233785415175766016
  %256 = icmp eq i64 %255, 0
  store i1 %256, i1* %28
  %257 = load i1, i1* %28
  br i1 %257, label %267, label %258
258:
  %259 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %260 = call double @_bal_tagged_to_float(i8 addrspace(1)* %259)
  store double %260, double* %29
  %261 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %262 = addrspacecast i8 addrspace(1)* %261 to i8*
  %263 = ptrtoint i8* %262 to i64
  %264 = and i64 %263, 2233785415175766016
  %265 = icmp eq i64 %264, 0
  store i1 %265, i1* %30
  %266 = load i1, i1* %30
  br i1 %266, label %267, label %268
267:
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  br label %276
268:
  %269 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %270 = call double @_bal_tagged_to_float(i8 addrspace(1)* %269)
  store double %270, double* %31
  %271 = load double, double* %29
  %272 = load double, double* %31
  %273 = fadd double %271, %272
  store double %273, double* %32
  %274 = load double, double* %32
  %275 = call i8 addrspace(1)* @_bal_float_to_tagged(double %274)
  store i8 addrspace(1)* %275, i8 addrspace(1)** %33
  br label %276
276:
  %277 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  %278 = addrspacecast i8 addrspace(1)* %277 to i8*
  %279 = ptrtoint i8* %278 to i64
  %280 = and i64 %279, 2233785415175766016
  %281 = icmp eq i64 %280, 0
  store i1 %281, i1* %34
  %282 = load i1, i1* %34
  br i1 %282, label %292, label %283
283:
  %284 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  %285 = call double @_bal_tagged_to_float(i8 addrspace(1)* %284)
  store double %285, double* %35
  %286 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %287 = addrspacecast i8 addrspace(1)* %286 to i8*
  %288 = ptrtoint i8* %287 to i64
  %289 = and i64 %288, 2233785415175766016
  %290 = icmp eq i64 %289, 0
  store i1 %290, i1* %36
  %291 = load i1, i1* %36
  br i1 %291, label %292, label %293
292:
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  br label %301
293:
  %294 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %295 = call double @_bal_tagged_to_float(i8 addrspace(1)* %294)
  store double %295, double* %37
  %296 = load double, double* %35
  %297 = load double, double* %37
  %298 = fadd double %296, %297
  store double %298, double* %38
  %299 = load double, double* %38
  %300 = call i8 addrspace(1)* @_bal_float_to_tagged(double %299)
  store i8 addrspace(1)* %300, i8 addrspace(1)** %39
  br label %301
301:
  %302 = load i8 addrspace(1)*, i8 addrspace(1)** %39, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %302), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !11
  %303 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %304 = addrspacecast i8 addrspace(1)* %303 to i8*
  %305 = ptrtoint i8* %304 to i64
  %306 = and i64 %305, 2233785415175766016
  %307 = icmp eq i64 %306, 0
  store i1 %307, i1* %41
  %308 = load i1, i1* %41
  br i1 %308, label %318, label %309
309:
  %310 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %311 = call double @_bal_tagged_to_float(i8 addrspace(1)* %310)
  store double %311, double* %42
  %312 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %313 = addrspacecast i8 addrspace(1)* %312 to i8*
  %314 = ptrtoint i8* %313 to i64
  %315 = and i64 %314, 2233785415175766016
  %316 = icmp eq i64 %315, 0
  store i1 %316, i1* %43
  %317 = load i1, i1* %43
  br i1 %317, label %318, label %319
318:
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  br label %327
319:
  %320 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %321 = call double @_bal_tagged_to_float(i8 addrspace(1)* %320)
  store double %321, double* %44
  %322 = load double, double* %42
  %323 = load double, double* %44
  %324 = fsub double %322, %323
  store double %324, double* %45
  %325 = load double, double* %45
  %326 = call i8 addrspace(1)* @_bal_float_to_tagged(double %325)
  store i8 addrspace(1)* %326, i8 addrspace(1)** %46
  br label %327
327:
  %328 = load i8 addrspace(1)*, i8 addrspace(1)** %46
  store i8 addrspace(1)* %328, i8 addrspace(1)** %v3
  %329 = load i8 addrspace(1)*, i8 addrspace(1)** %v3, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %329), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %47, !dbg !12
  %330 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %331 = addrspacecast i8 addrspace(1)* %330 to i8*
  %332 = ptrtoint i8* %331 to i64
  %333 = and i64 %332, 2233785415175766016
  %334 = icmp eq i64 %333, 0
  store i1 %334, i1* %48
  %335 = load i1, i1* %48
  br i1 %335, label %345, label %336
336:
  %337 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %338 = call double @_bal_tagged_to_float(i8 addrspace(1)* %337)
  store double %338, double* %49
  %339 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %340 = addrspacecast i8 addrspace(1)* %339 to i8*
  %341 = ptrtoint i8* %340 to i64
  %342 = and i64 %341, 2233785415175766016
  %343 = icmp eq i64 %342, 0
  store i1 %343, i1* %50
  %344 = load i1, i1* %50
  br i1 %344, label %345, label %346
345:
  store i8 addrspace(1)* null, i8 addrspace(1)** %53
  br label %354
346:
  %347 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %348 = call double @_bal_tagged_to_float(i8 addrspace(1)* %347)
  store double %348, double* %51
  %349 = load double, double* %49
  %350 = load double, double* %51
  %351 = fadd double %349, %350
  store double %351, double* %52
  %352 = load double, double* %52
  %353 = call i8 addrspace(1)* @_bal_float_to_tagged(double %352)
  store i8 addrspace(1)* %353, i8 addrspace(1)** %53
  br label %354
354:
  %355 = load i8 addrspace(1)*, i8 addrspace(1)** %53
  %356 = addrspacecast i8 addrspace(1)* %355 to i8*
  %357 = ptrtoint i8* %356 to i64
  %358 = and i64 %357, 2233785415175766016
  %359 = icmp eq i64 %358, 0
  store i1 %359, i1* %54
  %360 = load i1, i1* %54
  br i1 %360, label %370, label %361
361:
  %362 = load i8 addrspace(1)*, i8 addrspace(1)** %53
  %363 = call double @_bal_tagged_to_float(i8 addrspace(1)* %362)
  store double %363, double* %55
  %364 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %365 = addrspacecast i8 addrspace(1)* %364 to i8*
  %366 = ptrtoint i8* %365 to i64
  %367 = and i64 %366, 2233785415175766016
  %368 = icmp eq i64 %367, 0
  store i1 %368, i1* %56
  %369 = load i1, i1* %56
  br i1 %369, label %370, label %371
370:
  store i8 addrspace(1)* null, i8 addrspace(1)** %59
  br label %379
371:
  %372 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %373 = call double @_bal_tagged_to_float(i8 addrspace(1)* %372)
  store double %373, double* %57
  %374 = load double, double* %55
  %375 = load double, double* %57
  %376 = fsub double %374, %375
  store double %376, double* %58
  %377 = load double, double* %58
  %378 = call i8 addrspace(1)* @_bal_float_to_tagged(double %377)
  store i8 addrspace(1)* %378, i8 addrspace(1)** %59
  br label %379
379:
  %380 = load i8 addrspace(1)*, i8 addrspace(1)** %59
  store i8 addrspace(1)* %380, i8 addrspace(1)** %v4
  %381 = load i8 addrspace(1)*, i8 addrspace(1)** %v4, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %381), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !13
  %382 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %383 = addrspacecast i8 addrspace(1)* %382 to i8*
  %384 = ptrtoint i8* %383 to i64
  %385 = and i64 %384, 2233785415175766016
  %386 = icmp eq i64 %385, 0
  store i1 %386, i1* %61
  %387 = load i1, i1* %61
  br i1 %387, label %397, label %388
388:
  %389 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %390 = call double @_bal_tagged_to_float(i8 addrspace(1)* %389)
  store double %390, double* %62
  %391 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %392 = addrspacecast i8 addrspace(1)* %391 to i8*
  %393 = ptrtoint i8* %392 to i64
  %394 = and i64 %393, 2233785415175766016
  %395 = icmp eq i64 %394, 0
  store i1 %395, i1* %63
  %396 = load i1, i1* %63
  br i1 %396, label %397, label %398
397:
  store i8 addrspace(1)* null, i8 addrspace(1)** %66
  br label %406
398:
  %399 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %400 = call double @_bal_tagged_to_float(i8 addrspace(1)* %399)
  store double %400, double* %64
  %401 = load double, double* %62
  %402 = load double, double* %64
  %403 = fdiv double %401, %402
  store double %403, double* %65
  %404 = load double, double* %65
  %405 = call i8 addrspace(1)* @_bal_float_to_tagged(double %404)
  store i8 addrspace(1)* %405, i8 addrspace(1)** %66
  br label %406
406:
  %407 = load i8 addrspace(1)*, i8 addrspace(1)** %66, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %407), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %67, !dbg !14
  %408 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %409 = addrspacecast i8 addrspace(1)* %408 to i8*
  %410 = ptrtoint i8* %409 to i64
  %411 = and i64 %410, 2233785415175766016
  %412 = icmp eq i64 %411, 0
  store i1 %412, i1* %68
  %413 = load i1, i1* %68
  br i1 %413, label %421, label %414
414:
  %415 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %416 = call double @_bal_tagged_to_float(i8 addrspace(1)* %415)
  store double %416, double* %69
  %417 = load double, double* %69
  %418 = fdiv double %417, 3.0
  store double %418, double* %70
  %419 = load double, double* %70
  %420 = call i8 addrspace(1)* @_bal_float_to_tagged(double %419)
  store i8 addrspace(1)* %420, i8 addrspace(1)** %71
  br label %422
421:
  store i8 addrspace(1)* null, i8 addrspace(1)** %71
  br label %422
422:
  %423 = load i8 addrspace(1)*, i8 addrspace(1)** %71
  store i8 addrspace(1)* %423, i8 addrspace(1)** %v5
  %424 = load i8 addrspace(1)*, i8 addrspace(1)** %v5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %424), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !15
  %425 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %426 = addrspacecast i8 addrspace(1)* %425 to i8*
  %427 = ptrtoint i8* %426 to i64
  %428 = and i64 %427, 2233785415175766016
  %429 = icmp eq i64 %428, 0
  store i1 %429, i1* %73
  %430 = load i1, i1* %73
  br i1 %430, label %438, label %431
431:
  %432 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %433 = call double @_bal_tagged_to_float(i8 addrspace(1)* %432)
  store double %433, double* %74
  %434 = load double, double* %74
  %435 = fneg double %434
  store double %435, double* %75
  %436 = load double, double* %75
  %437 = call i8 addrspace(1)* @_bal_float_to_tagged(double %436)
  store i8 addrspace(1)* %437, i8 addrspace(1)** %76
  br label %439
438:
  store i8 addrspace(1)* null, i8 addrspace(1)** %76
  br label %439
439:
  %440 = load i8 addrspace(1)*, i8 addrspace(1)** %76
  store i8 addrspace(1)* %440, i8 addrspace(1)** %v6
  %441 = load i8 addrspace(1)*, i8 addrspace(1)** %v6, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %441), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %77, !dbg !16
  %442 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %443 = addrspacecast i8 addrspace(1)* %442 to i8*
  %444 = ptrtoint i8* %443 to i64
  %445 = and i64 %444, 2233785415175766016
  %446 = icmp eq i64 %445, 0
  store i1 %446, i1* %78
  %447 = load i1, i1* %78
  br i1 %447, label %455, label %448
448:
  %449 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %450 = call double @_bal_tagged_to_float(i8 addrspace(1)* %449)
  store double %450, double* %79
  %451 = load double, double* %79
  %452 = fneg double %451
  store double %452, double* %80
  %453 = load double, double* %80
  %454 = call i8 addrspace(1)* @_bal_float_to_tagged(double %453)
  store i8 addrspace(1)* %454, i8 addrspace(1)** %81
  br label %456
455:
  store i8 addrspace(1)* null, i8 addrspace(1)** %81
  br label %456
456:
  %457 = load i8 addrspace(1)*, i8 addrspace(1)** %81, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %457), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %82, !dbg !17
  store double 13.0, double* %d
  %458 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %459 = addrspacecast i8 addrspace(1)* %458 to i8*
  %460 = ptrtoint i8* %459 to i64
  %461 = and i64 %460, 2233785415175766016
  %462 = icmp eq i64 %461, 0
  store i1 %462, i1* %83
  %463 = load i1, i1* %83
  br i1 %463, label %472, label %464
464:
  %465 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %466 = call double @_bal_tagged_to_float(i8 addrspace(1)* %465)
  store double %466, double* %84
  %467 = load double, double* %84
  %468 = load double, double* %d
  %469 = fadd double %467, %468
  store double %469, double* %85
  %470 = load double, double* %85
  %471 = call i8 addrspace(1)* @_bal_float_to_tagged(double %470)
  store i8 addrspace(1)* %471, i8 addrspace(1)** %86
  br label %473
472:
  store i8 addrspace(1)* null, i8 addrspace(1)** %86
  br label %473
473:
  %474 = load i8 addrspace(1)*, i8 addrspace(1)** %86
  store i8 addrspace(1)* %474, i8 addrspace(1)** %v7
  %475 = load i8 addrspace(1)*, i8 addrspace(1)** %v7, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %475), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %87, !dbg !18
  %476 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %477 = addrspacecast i8 addrspace(1)* %476 to i8*
  %478 = ptrtoint i8* %477 to i64
  %479 = and i64 %478, 2233785415175766016
  %480 = icmp eq i64 %479, 0
  store i1 %480, i1* %88
  %481 = load i1, i1* %88
  br i1 %481, label %491, label %482
482:
  %483 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %484 = call double @_bal_tagged_to_float(i8 addrspace(1)* %483)
  store double %484, double* %89
  %485 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %486 = addrspacecast i8 addrspace(1)* %485 to i8*
  %487 = ptrtoint i8* %486 to i64
  %488 = and i64 %487, 2233785415175766016
  %489 = icmp eq i64 %488, 0
  store i1 %489, i1* %90
  %490 = load i1, i1* %90
  br i1 %490, label %491, label %492
491:
  store i8 addrspace(1)* null, i8 addrspace(1)** %93
  br label %500
492:
  %493 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %494 = call double @_bal_tagged_to_float(i8 addrspace(1)* %493)
  store double %494, double* %91
  %495 = load double, double* %89
  %496 = load double, double* %91
  %497 = fadd double %495, %496
  store double %497, double* %92
  %498 = load double, double* %92
  %499 = call i8 addrspace(1)* @_bal_float_to_tagged(double %498)
  store i8 addrspace(1)* %499, i8 addrspace(1)** %93
  br label %500
500:
  %501 = load i8 addrspace(1)*, i8 addrspace(1)** %93
  %502 = addrspacecast i8 addrspace(1)* %501 to i8*
  %503 = ptrtoint i8* %502 to i64
  %504 = and i64 %503, 2233785415175766016
  %505 = icmp eq i64 %504, 0
  store i1 %505, i1* %94
  %506 = load i1, i1* %94
  br i1 %506, label %516, label %507
507:
  %508 = load i8 addrspace(1)*, i8 addrspace(1)** %93
  %509 = call double @_bal_tagged_to_float(i8 addrspace(1)* %508)
  store double %509, double* %95
  %510 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %511 = addrspacecast i8 addrspace(1)* %510 to i8*
  %512 = ptrtoint i8* %511 to i64
  %513 = and i64 %512, 2233785415175766016
  %514 = icmp eq i64 %513, 0
  store i1 %514, i1* %96
  %515 = load i1, i1* %96
  br i1 %515, label %516, label %517
516:
  store i8 addrspace(1)* null, i8 addrspace(1)** %99
  br label %525
517:
  %518 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %519 = call double @_bal_tagged_to_float(i8 addrspace(1)* %518)
  store double %519, double* %97
  %520 = load double, double* %95
  %521 = load double, double* %97
  %522 = fadd double %520, %521
  store double %522, double* %98
  %523 = load double, double* %98
  %524 = call i8 addrspace(1)* @_bal_float_to_tagged(double %523)
  store i8 addrspace(1)* %524, i8 addrspace(1)** %99
  br label %525
525:
  %526 = load i8 addrspace(1)*, i8 addrspace(1)** %99
  %527 = addrspacecast i8 addrspace(1)* %526 to i8*
  %528 = ptrtoint i8* %527 to i64
  %529 = and i64 %528, 2233785415175766016
  %530 = icmp eq i64 %529, 0
  store i1 %530, i1* %100
  %531 = load i1, i1* %100
  br i1 %531, label %540, label %532
532:
  %533 = load i8 addrspace(1)*, i8 addrspace(1)** %99
  %534 = call double @_bal_tagged_to_float(i8 addrspace(1)* %533)
  store double %534, double* %101
  %535 = load double, double* %101
  %536 = load double, double* %d
  %537 = fadd double %535, %536
  store double %537, double* %102
  %538 = load double, double* %102
  %539 = call i8 addrspace(1)* @_bal_float_to_tagged(double %538)
  store i8 addrspace(1)* %539, i8 addrspace(1)** %103
  br label %541
540:
  store i8 addrspace(1)* null, i8 addrspace(1)** %103
  br label %541
541:
  %542 = load i8 addrspace(1)*, i8 addrspace(1)** %103, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %542), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %104, !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %e
  %543 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %544 = addrspacecast i8 addrspace(1)* %543 to i8*
  %545 = ptrtoint i8* %544 to i64
  %546 = and i64 %545, 2233785415175766016
  %547 = icmp eq i64 %546, 0
  store i1 %547, i1* %105
  %548 = load i1, i1* %105
  br i1 %548, label %558, label %549
549:
  %550 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %551 = call double @_bal_tagged_to_float(i8 addrspace(1)* %550)
  store double %551, double* %106
  %552 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %553 = addrspacecast i8 addrspace(1)* %552 to i8*
  %554 = ptrtoint i8* %553 to i64
  %555 = and i64 %554, 2233785415175766016
  %556 = icmp eq i64 %555, 0
  store i1 %556, i1* %107
  %557 = load i1, i1* %107
  br i1 %557, label %558, label %559
558:
  store i8 addrspace(1)* null, i8 addrspace(1)** %110
  br label %567
559:
  %560 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %561 = call double @_bal_tagged_to_float(i8 addrspace(1)* %560)
  store double %561, double* %108
  %562 = load double, double* %106
  %563 = load double, double* %108
  %564 = fadd double %562, %563
  store double %564, double* %109
  %565 = load double, double* %109
  %566 = call i8 addrspace(1)* @_bal_float_to_tagged(double %565)
  store i8 addrspace(1)* %566, i8 addrspace(1)** %110
  br label %567
567:
  %568 = load i8 addrspace(1)*, i8 addrspace(1)** %110
  store i8 addrspace(1)* %568, i8 addrspace(1)** %v8
  %569 = load i8 addrspace(1)*, i8 addrspace(1)** %v8, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %569), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %111, !dbg !20
  %570 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %571 = addrspacecast i8 addrspace(1)* %570 to i8*
  %572 = ptrtoint i8* %571 to i64
  %573 = and i64 %572, 2233785415175766016
  %574 = icmp eq i64 %573, 0
  store i1 %574, i1* %112
  %575 = load i1, i1* %112
  br i1 %575, label %585, label %576
576:
  %577 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %578 = call double @_bal_tagged_to_float(i8 addrspace(1)* %577)
  store double %578, double* %113
  %579 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %580 = addrspacecast i8 addrspace(1)* %579 to i8*
  %581 = ptrtoint i8* %580 to i64
  %582 = and i64 %581, 2233785415175766016
  %583 = icmp eq i64 %582, 0
  store i1 %583, i1* %114
  %584 = load i1, i1* %114
  br i1 %584, label %585, label %586
585:
  store i8 addrspace(1)* null, i8 addrspace(1)** %117
  br label %594
586:
  %587 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %588 = call double @_bal_tagged_to_float(i8 addrspace(1)* %587)
  store double %588, double* %115
  %589 = load double, double* %113
  %590 = load double, double* %115
  %591 = fadd double %589, %590
  store double %591, double* %116
  %592 = load double, double* %116
  %593 = call i8 addrspace(1)* @_bal_float_to_tagged(double %592)
  store i8 addrspace(1)* %593, i8 addrspace(1)** %117
  br label %594
594:
  %595 = load i8 addrspace(1)*, i8 addrspace(1)** %117
  %596 = addrspacecast i8 addrspace(1)* %595 to i8*
  %597 = ptrtoint i8* %596 to i64
  %598 = and i64 %597, 2233785415175766016
  %599 = icmp eq i64 %598, 0
  store i1 %599, i1* %118
  %600 = load i1, i1* %118
  br i1 %600, label %610, label %601
601:
  %602 = load i8 addrspace(1)*, i8 addrspace(1)** %117
  %603 = call double @_bal_tagged_to_float(i8 addrspace(1)* %602)
  store double %603, double* %119
  %604 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %605 = addrspacecast i8 addrspace(1)* %604 to i8*
  %606 = ptrtoint i8* %605 to i64
  %607 = and i64 %606, 2233785415175766016
  %608 = icmp eq i64 %607, 0
  store i1 %608, i1* %120
  %609 = load i1, i1* %120
  br i1 %609, label %610, label %611
610:
  store i8 addrspace(1)* null, i8 addrspace(1)** %123
  br label %619
611:
  %612 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %613 = call double @_bal_tagged_to_float(i8 addrspace(1)* %612)
  store double %613, double* %121
  %614 = load double, double* %119
  %615 = load double, double* %121
  %616 = fadd double %614, %615
  store double %616, double* %122
  %617 = load double, double* %122
  %618 = call i8 addrspace(1)* @_bal_float_to_tagged(double %617)
  store i8 addrspace(1)* %618, i8 addrspace(1)** %123
  br label %619
619:
  %620 = load i8 addrspace(1)*, i8 addrspace(1)** %123
  %621 = addrspacecast i8 addrspace(1)* %620 to i8*
  %622 = ptrtoint i8* %621 to i64
  %623 = and i64 %622, 2233785415175766016
  %624 = icmp eq i64 %623, 0
  store i1 %624, i1* %124
  %625 = load i1, i1* %124
  br i1 %625, label %634, label %626
626:
  %627 = load i8 addrspace(1)*, i8 addrspace(1)** %123
  %628 = call double @_bal_tagged_to_float(i8 addrspace(1)* %627)
  store double %628, double* %125
  %629 = load double, double* %125
  %630 = load double, double* %d
  %631 = fadd double %629, %630
  store double %631, double* %126
  %632 = load double, double* %126
  %633 = call i8 addrspace(1)* @_bal_float_to_tagged(double %632)
  store i8 addrspace(1)* %633, i8 addrspace(1)** %127
  br label %635
634:
  store i8 addrspace(1)* null, i8 addrspace(1)** %127
  br label %635
635:
  %636 = load i8 addrspace(1)*, i8 addrspace(1)** %127
  %637 = addrspacecast i8 addrspace(1)* %636 to i8*
  %638 = ptrtoint i8* %637 to i64
  %639 = and i64 %638, 2233785415175766016
  %640 = icmp eq i64 %639, 0
  store i1 %640, i1* %128
  %641 = load i1, i1* %128
  br i1 %641, label %651, label %642
642:
  %643 = load i8 addrspace(1)*, i8 addrspace(1)** %127
  %644 = call double @_bal_tagged_to_float(i8 addrspace(1)* %643)
  store double %644, double* %129
  %645 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %646 = addrspacecast i8 addrspace(1)* %645 to i8*
  %647 = ptrtoint i8* %646 to i64
  %648 = and i64 %647, 2233785415175766016
  %649 = icmp eq i64 %648, 0
  store i1 %649, i1* %130
  %650 = load i1, i1* %130
  br i1 %650, label %651, label %652
651:
  store i8 addrspace(1)* null, i8 addrspace(1)** %133
  br label %660
652:
  %653 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %654 = call double @_bal_tagged_to_float(i8 addrspace(1)* %653)
  store double %654, double* %131
  %655 = load double, double* %129
  %656 = load double, double* %131
  %657 = fadd double %655, %656
  store double %657, double* %132
  %658 = load double, double* %132
  %659 = call i8 addrspace(1)* @_bal_float_to_tagged(double %658)
  store i8 addrspace(1)* %659, i8 addrspace(1)** %133
  br label %660
660:
  %661 = load i8 addrspace(1)*, i8 addrspace(1)** %133, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %661), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %134, !dbg !21
  %662 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %663 = addrspacecast i8 addrspace(1)* %662 to i8*
  %664 = ptrtoint i8* %663 to i64
  %665 = and i64 %664, 2233785415175766016
  %666 = icmp eq i64 %665, 0
  store i1 %666, i1* %135
  %667 = load i1, i1* %135
  br i1 %667, label %675, label %668
668:
  %669 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %670 = call double @_bal_tagged_to_float(i8 addrspace(1)* %669)
  store double %670, double* %136
  %671 = load double, double* %136
  %672 = fneg double %671
  store double %672, double* %137
  %673 = load double, double* %137
  %674 = call i8 addrspace(1)* @_bal_float_to_tagged(double %673)
  store i8 addrspace(1)* %674, i8 addrspace(1)** %138
  br label %676
675:
  store i8 addrspace(1)* null, i8 addrspace(1)** %138
  br label %676
676:
  %677 = load i8 addrspace(1)*, i8 addrspace(1)** %138, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %677), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %139, !dbg !22
  ret void
678:
  %679 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %679)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 13, column: 4, scope: !5)
!12 = !DILocation(line: 16, column: 4, scope: !5)
!13 = !DILocation(line: 19, column: 4, scope: !5)
!14 = !DILocation(line: 21, column: 4, scope: !5)
!15 = !DILocation(line: 24, column: 4, scope: !5)
!16 = !DILocation(line: 27, column: 4, scope: !5)
!17 = !DILocation(line: 28, column: 4, scope: !5)
!18 = !DILocation(line: 32, column: 4, scope: !5)
!19 = !DILocation(line: 33, column: 4, scope: !5)
!20 = !DILocation(line: 37, column: 4, scope: !5)
!21 = !DILocation(line: 38, column: 4, scope: !5)
!22 = !DILocation(line: 40, column: 4, scope: !5)
