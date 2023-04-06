@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca double
  %6 = alloca ptr addrspace(1)
  %7 = alloca double
  %8 = alloca double
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca double
  %16 = alloca ptr addrspace(1)
  %17 = alloca double
  %18 = alloca double
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca double
  %23 = alloca ptr addrspace(1)
  %24 = alloca double
  %25 = alloca double
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca double
  %33 = alloca ptr addrspace(1)
  %34 = alloca double
  %35 = alloca double
  %36 = alloca ptr addrspace(1)
  %37 = alloca ptr addrspace(1)
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %42 = alloca double
  %43 = alloca ptr addrspace(1)
  %44 = alloca double
  %45 = alloca double
  %46 = alloca ptr addrspace(1)
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca double
  %50 = alloca ptr addrspace(1)
  %51 = alloca double
  %52 = alloca double
  %53 = alloca ptr addrspace(1)
  %54 = alloca ptr addrspace(1)
  %55 = alloca ptr addrspace(1)
  %56 = alloca ptr addrspace(1)
  %57 = alloca ptr addrspace(1)
  %58 = alloca ptr addrspace(1)
  %59 = alloca double
  %60 = alloca ptr addrspace(1)
  %61 = alloca double
  %62 = alloca double
  %63 = alloca ptr addrspace(1)
  %64 = alloca ptr addrspace(1)
  %65 = alloca ptr addrspace(1)
  %v5 = alloca ptr addrspace(1)
  %66 = alloca ptr addrspace(1)
  %67 = alloca ptr addrspace(1)
  %68 = alloca double
  %69 = alloca double
  %70 = alloca ptr addrspace(1)
  %71 = alloca ptr addrspace(1)
  %72 = alloca ptr addrspace(1)
  %v6 = alloca ptr addrspace(1)
  %73 = alloca ptr addrspace(1)
  %74 = alloca ptr addrspace(1)
  %75 = alloca double
  %76 = alloca double
  %77 = alloca ptr addrspace(1)
  %78 = alloca ptr addrspace(1)
  %79 = alloca ptr addrspace(1)
  %80 = alloca ptr addrspace(1)
  %81 = alloca ptr addrspace(1)
  %82 = alloca double
  %83 = alloca double
  %84 = alloca ptr addrspace(1)
  %85 = alloca ptr addrspace(1)
  %86 = alloca ptr addrspace(1)
  %d = alloca double
  %v7 = alloca ptr addrspace(1)
  %87 = alloca ptr addrspace(1)
  %88 = alloca ptr addrspace(1)
  %89 = alloca double
  %90 = alloca double
  %91 = alloca ptr addrspace(1)
  %92 = alloca ptr addrspace(1)
  %93 = alloca ptr addrspace(1)
  %94 = alloca ptr addrspace(1)
  %95 = alloca ptr addrspace(1)
  %96 = alloca ptr addrspace(1)
  %97 = alloca double
  %98 = alloca ptr addrspace(1)
  %99 = alloca double
  %100 = alloca double
  %101 = alloca ptr addrspace(1)
  %102 = alloca ptr addrspace(1)
  %103 = alloca ptr addrspace(1)
  %104 = alloca double
  %105 = alloca ptr addrspace(1)
  %106 = alloca double
  %107 = alloca double
  %108 = alloca ptr addrspace(1)
  %109 = alloca ptr addrspace(1)
  %110 = alloca double
  %111 = alloca double
  %112 = alloca ptr addrspace(1)
  %113 = alloca ptr addrspace(1)
  %114 = alloca ptr addrspace(1)
  %e = alloca ptr addrspace(1)
  %v8 = alloca ptr addrspace(1)
  %115 = alloca ptr addrspace(1)
  %116 = alloca ptr addrspace(1)
  %117 = alloca double
  %e.1 = alloca ptr addrspace(1)
  %e.2 = alloca double
  %118 = alloca double
  %119 = alloca ptr addrspace(1)
  %120 = alloca ptr addrspace(1)
  %121 = alloca ptr addrspace(1)
  %122 = alloca ptr addrspace(1)
  %123 = alloca ptr addrspace(1)
  %124 = alloca ptr addrspace(1)
  %125 = alloca double
  %126 = alloca ptr addrspace(1)
  %127 = alloca double
  %128 = alloca double
  %129 = alloca ptr addrspace(1)
  %130 = alloca ptr addrspace(1)
  %131 = alloca ptr addrspace(1)
  %132 = alloca double
  %133 = alloca ptr addrspace(1)
  %134 = alloca double
  %135 = alloca double
  %136 = alloca ptr addrspace(1)
  %137 = alloca ptr addrspace(1)
  %138 = alloca double
  %139 = alloca double
  %140 = alloca ptr addrspace(1)
  %141 = alloca ptr addrspace(1)
  %142 = alloca double
  %e.3 = alloca ptr addrspace(1)
  %e.4 = alloca double
  %143 = alloca double
  %144 = alloca ptr addrspace(1)
  %145 = alloca ptr addrspace(1)
  %146 = alloca ptr addrspace(1)
  %147 = alloca ptr addrspace(1)
  %148 = alloca ptr addrspace(1)
  %149 = alloca double
  %150 = alloca double
  %151 = alloca ptr addrspace(1)
  %152 = alloca ptr addrspace(1)
  %153 = alloca ptr addrspace(1)
  %154 = alloca ptr addrspace(1)
  %155 = alloca i8
  %156 = load ptr, ptr @_bal_stack_guard
  %157 = icmp ult ptr %155, %156
  br i1 %157, label %773, label %158
158:
  %159 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %159, ptr %1
  %160 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %160, ptr %m
  %161 = load ptr addrspace(1), ptr %m
  %162 = call ptr addrspace(1) @_bal_float_to_tagged(double 5.0), !dbg !10
  %163 = call i64 @_bal_mapping_set(ptr addrspace(1) %161, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %162), !dbg !11
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %775, label %780
165:
  %166 = load ptr addrspace(1), ptr %2
  %167 = call double @_bal_tagged_to_float(ptr addrspace(1) %166), !dbg !18
  store double %167, ptr %5
  %168 = load ptr addrspace(1), ptr %3
  %169 = addrspacecast ptr addrspace(1) %168 to ptr
  %170 = ptrtoint ptr %169 to i64
  %171 = and i64 %170, 2233785415175766016
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %176
173:
  %174 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %174, ptr %4
  %175 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %175, ptr %6
  store ptr addrspace(1) null, ptr %9
  br label %184
176:
  %177 = load ptr addrspace(1), ptr %3
  %178 = call double @_bal_tagged_to_float(ptr addrspace(1) %177), !dbg !19
  store double %178, ptr %7
  %179 = load double, ptr %5
  %180 = load double, ptr %7
  %181 = fadd double %179, %180
  store double %181, ptr %8
  %182 = load double, ptr %8
  %183 = call ptr addrspace(1) @_bal_float_to_tagged(double %182), !dbg !20
  store ptr addrspace(1) %183, ptr %9
  br label %184
184:
  %185 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %185, i64 0, i32 3
  %187 = load ptr addrspace(1), ptr addrspace(1) %186, align 8
  %188 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %189 = load ptr addrspace(1), ptr %9
  %190 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %188, i64 0, i64 0
  store ptr addrspace(1) %189, ptr addrspace(1) %190
  %191 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %185, i64 0, i32 1
  store i64 1, ptr addrspace(1) %191
  %192 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %193 = getelementptr i8, ptr addrspace(1) %192, i64 864691128455135236
  store ptr addrspace(1) %193, ptr %10
  %194 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %194), !dbg !22
  store ptr addrspace(1) null, ptr %11
  %195 = load ptr addrspace(1), ptr %m
  %196 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %195, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !23
  store ptr addrspace(1) %196, ptr %12
  %197 = load ptr addrspace(1), ptr %m
  %198 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %197, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)), !dbg !24
  store ptr addrspace(1) %198, ptr %13
  %199 = load ptr addrspace(1), ptr %12
  %200 = addrspacecast ptr addrspace(1) %199 to ptr
  %201 = ptrtoint ptr %200 to i64
  %202 = and i64 %201, 2233785415175766016
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %212, label %204
204:
  %205 = load ptr addrspace(1), ptr %12
  %206 = call double @_bal_tagged_to_float(ptr addrspace(1) %205), !dbg !25
  store double %206, ptr %15
  %207 = load ptr addrspace(1), ptr %13
  %208 = addrspacecast ptr addrspace(1) %207 to ptr
  %209 = ptrtoint ptr %208 to i64
  %210 = and i64 %209, 2233785415175766016
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %215
212:
  %213 = load ptr addrspace(1), ptr %12
  store ptr addrspace(1) %213, ptr %14
  %214 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %214, ptr %16
  store ptr addrspace(1) null, ptr %19
  br label %223
215:
  %216 = load ptr addrspace(1), ptr %13
  %217 = call double @_bal_tagged_to_float(ptr addrspace(1) %216), !dbg !26
  store double %217, ptr %17
  %218 = load double, ptr %15
  %219 = load double, ptr %17
  %220 = fadd double %218, %219
  store double %220, ptr %18
  %221 = load double, ptr %18
  %222 = call ptr addrspace(1) @_bal_float_to_tagged(double %221), !dbg !27
  store ptr addrspace(1) %222, ptr %19
  br label %223
223:
  %224 = load ptr addrspace(1), ptr %m
  %225 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %224, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411)), !dbg !28
  store ptr addrspace(1) %225, ptr %20
  %226 = load ptr addrspace(1), ptr %19
  %227 = addrspacecast ptr addrspace(1) %226 to ptr
  %228 = ptrtoint ptr %227 to i64
  %229 = and i64 %228, 2233785415175766016
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %239, label %231
231:
  %232 = load ptr addrspace(1), ptr %19
  %233 = call double @_bal_tagged_to_float(ptr addrspace(1) %232), !dbg !29
  store double %233, ptr %22
  %234 = load ptr addrspace(1), ptr %20
  %235 = addrspacecast ptr addrspace(1) %234 to ptr
  %236 = ptrtoint ptr %235 to i64
  %237 = and i64 %236, 2233785415175766016
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %242
239:
  %240 = load ptr addrspace(1), ptr %19
  store ptr addrspace(1) %240, ptr %21
  %241 = load ptr addrspace(1), ptr %20
  store ptr addrspace(1) %241, ptr %23
  store ptr addrspace(1) null, ptr %26
  br label %250
242:
  %243 = load ptr addrspace(1), ptr %20
  %244 = call double @_bal_tagged_to_float(ptr addrspace(1) %243), !dbg !30
  store double %244, ptr %24
  %245 = load double, ptr %22
  %246 = load double, ptr %24
  %247 = fadd double %245, %246
  store double %247, ptr %25
  %248 = load double, ptr %25
  %249 = call ptr addrspace(1) @_bal_float_to_tagged(double %248), !dbg !31
  store ptr addrspace(1) %249, ptr %26
  br label %250
250:
  %251 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !32
  %252 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %251, i64 0, i32 3
  %253 = load ptr addrspace(1), ptr addrspace(1) %252, align 8
  %254 = bitcast ptr addrspace(1) %253 to ptr addrspace(1)
  %255 = load ptr addrspace(1), ptr %26
  %256 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %254, i64 0, i64 0
  store ptr addrspace(1) %255, ptr addrspace(1) %256
  %257 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %251, i64 0, i32 1
  store i64 1, ptr addrspace(1) %257
  %258 = bitcast ptr addrspace(1) %251 to ptr addrspace(1)
  %259 = getelementptr i8, ptr addrspace(1) %258, i64 864691128455135236
  store ptr addrspace(1) %259, ptr %27
  %260 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %260), !dbg !33
  store ptr addrspace(1) null, ptr %28
  %261 = load ptr addrspace(1), ptr %m
  %262 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %261, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !34
  store ptr addrspace(1) %262, ptr %29
  %263 = load ptr addrspace(1), ptr %m
  %264 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %263, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)), !dbg !35
  store ptr addrspace(1) %264, ptr %30
  %265 = load ptr addrspace(1), ptr %29
  %266 = addrspacecast ptr addrspace(1) %265 to ptr
  %267 = ptrtoint ptr %266 to i64
  %268 = and i64 %267, 2233785415175766016
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %278, label %270
270:
  %271 = load ptr addrspace(1), ptr %29
  %272 = call double @_bal_tagged_to_float(ptr addrspace(1) %271), !dbg !36
  store double %272, ptr %32
  %273 = load ptr addrspace(1), ptr %30
  %274 = addrspacecast ptr addrspace(1) %273 to ptr
  %275 = ptrtoint ptr %274 to i64
  %276 = and i64 %275, 2233785415175766016
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %281
278:
  %279 = load ptr addrspace(1), ptr %29
  store ptr addrspace(1) %279, ptr %31
  %280 = load ptr addrspace(1), ptr %30
  store ptr addrspace(1) %280, ptr %33
  store ptr addrspace(1) null, ptr %36
  br label %289
281:
  %282 = load ptr addrspace(1), ptr %30
  %283 = call double @_bal_tagged_to_float(ptr addrspace(1) %282), !dbg !37
  store double %283, ptr %34
  %284 = load double, ptr %32
  %285 = load double, ptr %34
  %286 = fsub double %284, %285
  store double %286, ptr %35
  %287 = load double, ptr %35
  %288 = call ptr addrspace(1) @_bal_float_to_tagged(double %287), !dbg !38
  store ptr addrspace(1) %288, ptr %36
  br label %289
289:
  %290 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !39
  %291 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 3
  %292 = load ptr addrspace(1), ptr addrspace(1) %291, align 8
  %293 = bitcast ptr addrspace(1) %292 to ptr addrspace(1)
  %294 = load ptr addrspace(1), ptr %36
  %295 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %293, i64 0, i64 0
  store ptr addrspace(1) %294, ptr addrspace(1) %295
  %296 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 1
  store i64 1, ptr addrspace(1) %296
  %297 = bitcast ptr addrspace(1) %290 to ptr addrspace(1)
  %298 = getelementptr i8, ptr addrspace(1) %297, i64 864691128455135236
  store ptr addrspace(1) %298, ptr %37
  %299 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %299), !dbg !40
  store ptr addrspace(1) null, ptr %38
  %300 = load ptr addrspace(1), ptr %m
  %301 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %300, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !41
  store ptr addrspace(1) %301, ptr %39
  %302 = load ptr addrspace(1), ptr %m
  %303 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %302, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)), !dbg !42
  store ptr addrspace(1) %303, ptr %40
  %304 = load ptr addrspace(1), ptr %39
  %305 = addrspacecast ptr addrspace(1) %304 to ptr
  %306 = ptrtoint ptr %305 to i64
  %307 = and i64 %306, 2233785415175766016
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %317, label %309
309:
  %310 = load ptr addrspace(1), ptr %39
  %311 = call double @_bal_tagged_to_float(ptr addrspace(1) %310), !dbg !43
  store double %311, ptr %42
  %312 = load ptr addrspace(1), ptr %40
  %313 = addrspacecast ptr addrspace(1) %312 to ptr
  %314 = ptrtoint ptr %313 to i64
  %315 = and i64 %314, 2233785415175766016
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %320
317:
  %318 = load ptr addrspace(1), ptr %39
  store ptr addrspace(1) %318, ptr %41
  %319 = load ptr addrspace(1), ptr %40
  store ptr addrspace(1) %319, ptr %43
  store ptr addrspace(1) null, ptr %46
  br label %328
320:
  %321 = load ptr addrspace(1), ptr %40
  %322 = call double @_bal_tagged_to_float(ptr addrspace(1) %321), !dbg !44
  store double %322, ptr %44
  %323 = load double, ptr %42
  %324 = load double, ptr %44
  %325 = fadd double %323, %324
  store double %325, ptr %45
  %326 = load double, ptr %45
  %327 = call ptr addrspace(1) @_bal_float_to_tagged(double %326), !dbg !45
  store ptr addrspace(1) %327, ptr %46
  br label %328
328:
  %329 = load ptr addrspace(1), ptr %m
  %330 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %329, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411)), !dbg !46
  store ptr addrspace(1) %330, ptr %47
  %331 = load ptr addrspace(1), ptr %46
  %332 = addrspacecast ptr addrspace(1) %331 to ptr
  %333 = ptrtoint ptr %332 to i64
  %334 = and i64 %333, 2233785415175766016
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %344, label %336
336:
  %337 = load ptr addrspace(1), ptr %46
  %338 = call double @_bal_tagged_to_float(ptr addrspace(1) %337), !dbg !47
  store double %338, ptr %49
  %339 = load ptr addrspace(1), ptr %47
  %340 = addrspacecast ptr addrspace(1) %339 to ptr
  %341 = ptrtoint ptr %340 to i64
  %342 = and i64 %341, 2233785415175766016
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %347
344:
  %345 = load ptr addrspace(1), ptr %46
  store ptr addrspace(1) %345, ptr %48
  %346 = load ptr addrspace(1), ptr %47
  store ptr addrspace(1) %346, ptr %50
  store ptr addrspace(1) null, ptr %53
  br label %355
347:
  %348 = load ptr addrspace(1), ptr %47
  %349 = call double @_bal_tagged_to_float(ptr addrspace(1) %348), !dbg !48
  store double %349, ptr %51
  %350 = load double, ptr %49
  %351 = load double, ptr %51
  %352 = fsub double %350, %351
  store double %352, ptr %52
  %353 = load double, ptr %52
  %354 = call ptr addrspace(1) @_bal_float_to_tagged(double %353), !dbg !49
  store ptr addrspace(1) %354, ptr %53
  br label %355
355:
  %356 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !50
  %357 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %356, i64 0, i32 3
  %358 = load ptr addrspace(1), ptr addrspace(1) %357, align 8
  %359 = bitcast ptr addrspace(1) %358 to ptr addrspace(1)
  %360 = load ptr addrspace(1), ptr %53
  %361 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %359, i64 0, i64 0
  store ptr addrspace(1) %360, ptr addrspace(1) %361
  %362 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %356, i64 0, i32 1
  store i64 1, ptr addrspace(1) %362
  %363 = bitcast ptr addrspace(1) %356 to ptr addrspace(1)
  %364 = getelementptr i8, ptr addrspace(1) %363, i64 864691128455135236
  store ptr addrspace(1) %364, ptr %54
  %365 = load ptr addrspace(1), ptr %54
  call void @_Bb02ioprintln(ptr addrspace(1) %365), !dbg !51
  store ptr addrspace(1) null, ptr %55
  %366 = load ptr addrspace(1), ptr %m
  %367 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %366, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)), !dbg !52
  store ptr addrspace(1) %367, ptr %56
  %368 = load ptr addrspace(1), ptr %m
  %369 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %368, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411)), !dbg !53
  store ptr addrspace(1) %369, ptr %57
  %370 = load ptr addrspace(1), ptr %56
  %371 = addrspacecast ptr addrspace(1) %370 to ptr
  %372 = ptrtoint ptr %371 to i64
  %373 = and i64 %372, 2233785415175766016
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %383, label %375
375:
  %376 = load ptr addrspace(1), ptr %56
  %377 = call double @_bal_tagged_to_float(ptr addrspace(1) %376), !dbg !54
  store double %377, ptr %59
  %378 = load ptr addrspace(1), ptr %57
  %379 = addrspacecast ptr addrspace(1) %378 to ptr
  %380 = ptrtoint ptr %379 to i64
  %381 = and i64 %380, 2233785415175766016
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %386
383:
  %384 = load ptr addrspace(1), ptr %56
  store ptr addrspace(1) %384, ptr %58
  %385 = load ptr addrspace(1), ptr %57
  store ptr addrspace(1) %385, ptr %60
  store ptr addrspace(1) null, ptr %63
  br label %394
386:
  %387 = load ptr addrspace(1), ptr %57
  %388 = call double @_bal_tagged_to_float(ptr addrspace(1) %387), !dbg !55
  store double %388, ptr %61
  %389 = load double, ptr %59
  %390 = load double, ptr %61
  %391 = fdiv double %389, %390
  store double %391, ptr %62
  %392 = load double, ptr %62
  %393 = call ptr addrspace(1) @_bal_float_to_tagged(double %392), !dbg !56
  store ptr addrspace(1) %393, ptr %63
  br label %394
394:
  %395 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !57
  %396 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %395, i64 0, i32 3
  %397 = load ptr addrspace(1), ptr addrspace(1) %396, align 8
  %398 = bitcast ptr addrspace(1) %397 to ptr addrspace(1)
  %399 = load ptr addrspace(1), ptr %63
  %400 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %398, i64 0, i64 0
  store ptr addrspace(1) %399, ptr addrspace(1) %400
  %401 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %395, i64 0, i32 1
  store i64 1, ptr addrspace(1) %401
  %402 = bitcast ptr addrspace(1) %395 to ptr addrspace(1)
  %403 = getelementptr i8, ptr addrspace(1) %402, i64 864691128455135236
  store ptr addrspace(1) %403, ptr %64
  %404 = load ptr addrspace(1), ptr %64
  call void @_Bb02ioprintln(ptr addrspace(1) %404), !dbg !58
  store ptr addrspace(1) null, ptr %65
  %405 = load ptr addrspace(1), ptr %m
  %406 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %405, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)), !dbg !59
  store ptr addrspace(1) %406, ptr %66
  %407 = load ptr addrspace(1), ptr %66
  %408 = addrspacecast ptr addrspace(1) %407 to ptr
  %409 = ptrtoint ptr %408 to i64
  %410 = and i64 %409, 2233785415175766016
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %419, label %412
412:
  %413 = load ptr addrspace(1), ptr %66
  %414 = call double @_bal_tagged_to_float(ptr addrspace(1) %413), !dbg !60
  store double %414, ptr %68
  %415 = load double, ptr %68
  %416 = fdiv double %415, 3.0
  store double %416, ptr %69
  %417 = load double, ptr %69
  %418 = call ptr addrspace(1) @_bal_float_to_tagged(double %417), !dbg !61
  store ptr addrspace(1) %418, ptr %70
  br label %421
419:
  %420 = load ptr addrspace(1), ptr %66
  store ptr addrspace(1) %420, ptr %67
  store ptr addrspace(1) null, ptr %70
  br label %421
421:
  %422 = load ptr addrspace(1), ptr %70
  store ptr addrspace(1) %422, ptr %v5
  %423 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !62
  %424 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %423, i64 0, i32 3
  %425 = load ptr addrspace(1), ptr addrspace(1) %424, align 8
  %426 = bitcast ptr addrspace(1) %425 to ptr addrspace(1)
  %427 = load ptr addrspace(1), ptr %v5
  %428 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %426, i64 0, i64 0
  store ptr addrspace(1) %427, ptr addrspace(1) %428
  %429 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %423, i64 0, i32 1
  store i64 1, ptr addrspace(1) %429
  %430 = bitcast ptr addrspace(1) %423 to ptr addrspace(1)
  %431 = getelementptr i8, ptr addrspace(1) %430, i64 864691128455135236
  store ptr addrspace(1) %431, ptr %71
  %432 = load ptr addrspace(1), ptr %71
  call void @_Bb02ioprintln(ptr addrspace(1) %432), !dbg !63
  store ptr addrspace(1) null, ptr %72
  %433 = load ptr addrspace(1), ptr %m
  %434 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %433, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !64
  store ptr addrspace(1) %434, ptr %73
  %435 = load ptr addrspace(1), ptr %73
  %436 = addrspacecast ptr addrspace(1) %435 to ptr
  %437 = ptrtoint ptr %436 to i64
  %438 = and i64 %437, 2233785415175766016
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %447, label %440
440:
  %441 = load ptr addrspace(1), ptr %73
  %442 = call double @_bal_tagged_to_float(ptr addrspace(1) %441), !dbg !65
  store double %442, ptr %75
  %443 = load double, ptr %75
  %444 = fneg double %443
  store double %444, ptr %76
  %445 = load double, ptr %76
  %446 = call ptr addrspace(1) @_bal_float_to_tagged(double %445), !dbg !66
  store ptr addrspace(1) %446, ptr %77
  br label %449
447:
  %448 = load ptr addrspace(1), ptr %73
  store ptr addrspace(1) %448, ptr %74
  store ptr addrspace(1) null, ptr %77
  br label %449
449:
  %450 = load ptr addrspace(1), ptr %77
  store ptr addrspace(1) %450, ptr %v6
  %451 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !67
  %452 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %451, i64 0, i32 3
  %453 = load ptr addrspace(1), ptr addrspace(1) %452, align 8
  %454 = bitcast ptr addrspace(1) %453 to ptr addrspace(1)
  %455 = load ptr addrspace(1), ptr %v6
  %456 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %454, i64 0, i64 0
  store ptr addrspace(1) %455, ptr addrspace(1) %456
  %457 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %451, i64 0, i32 1
  store i64 1, ptr addrspace(1) %457
  %458 = bitcast ptr addrspace(1) %451 to ptr addrspace(1)
  %459 = getelementptr i8, ptr addrspace(1) %458, i64 864691128455135236
  store ptr addrspace(1) %459, ptr %78
  %460 = load ptr addrspace(1), ptr %78
  call void @_Bb02ioprintln(ptr addrspace(1) %460), !dbg !68
  store ptr addrspace(1) null, ptr %79
  %461 = load ptr addrspace(1), ptr %m
  %462 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %461, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411)), !dbg !69
  store ptr addrspace(1) %462, ptr %80
  %463 = load ptr addrspace(1), ptr %80
  %464 = addrspacecast ptr addrspace(1) %463 to ptr
  %465 = ptrtoint ptr %464 to i64
  %466 = and i64 %465, 2233785415175766016
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %475, label %468
468:
  %469 = load ptr addrspace(1), ptr %80
  %470 = call double @_bal_tagged_to_float(ptr addrspace(1) %469), !dbg !70
  store double %470, ptr %82
  %471 = load double, ptr %82
  %472 = fneg double %471
  store double %472, ptr %83
  %473 = load double, ptr %83
  %474 = call ptr addrspace(1) @_bal_float_to_tagged(double %473), !dbg !71
  store ptr addrspace(1) %474, ptr %84
  br label %477
475:
  %476 = load ptr addrspace(1), ptr %80
  store ptr addrspace(1) %476, ptr %81
  store ptr addrspace(1) null, ptr %84
  br label %477
477:
  %478 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !72
  %479 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %478, i64 0, i32 3
  %480 = load ptr addrspace(1), ptr addrspace(1) %479, align 8
  %481 = bitcast ptr addrspace(1) %480 to ptr addrspace(1)
  %482 = load ptr addrspace(1), ptr %84
  %483 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %481, i64 0, i64 0
  store ptr addrspace(1) %482, ptr addrspace(1) %483
  %484 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %478, i64 0, i32 1
  store i64 1, ptr addrspace(1) %484
  %485 = bitcast ptr addrspace(1) %478 to ptr addrspace(1)
  %486 = getelementptr i8, ptr addrspace(1) %485, i64 864691128455135236
  store ptr addrspace(1) %486, ptr %85
  %487 = load ptr addrspace(1), ptr %85
  call void @_Bb02ioprintln(ptr addrspace(1) %487), !dbg !73
  store ptr addrspace(1) null, ptr %86
  store double 13.0, ptr %d
  %488 = load ptr addrspace(1), ptr %m
  %489 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %488, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !74
  store ptr addrspace(1) %489, ptr %87
  %490 = load ptr addrspace(1), ptr %87
  %491 = addrspacecast ptr addrspace(1) %490 to ptr
  %492 = ptrtoint ptr %491 to i64
  %493 = and i64 %492, 2233785415175766016
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %503, label %495
495:
  %496 = load ptr addrspace(1), ptr %87
  %497 = call double @_bal_tagged_to_float(ptr addrspace(1) %496), !dbg !75
  store double %497, ptr %89
  %498 = load double, ptr %89
  %499 = load double, ptr %d
  %500 = fadd double %498, %499
  store double %500, ptr %90
  %501 = load double, ptr %90
  %502 = call ptr addrspace(1) @_bal_float_to_tagged(double %501), !dbg !76
  store ptr addrspace(1) %502, ptr %91
  br label %505
503:
  %504 = load ptr addrspace(1), ptr %87
  store ptr addrspace(1) %504, ptr %88
  store ptr addrspace(1) null, ptr %91
  br label %505
505:
  %506 = load ptr addrspace(1), ptr %91
  store ptr addrspace(1) %506, ptr %v7
  %507 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !77
  %508 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %507, i64 0, i32 3
  %509 = load ptr addrspace(1), ptr addrspace(1) %508, align 8
  %510 = bitcast ptr addrspace(1) %509 to ptr addrspace(1)
  %511 = load ptr addrspace(1), ptr %v7
  %512 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %510, i64 0, i64 0
  store ptr addrspace(1) %511, ptr addrspace(1) %512
  %513 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %507, i64 0, i32 1
  store i64 1, ptr addrspace(1) %513
  %514 = bitcast ptr addrspace(1) %507 to ptr addrspace(1)
  %515 = getelementptr i8, ptr addrspace(1) %514, i64 864691128455135236
  store ptr addrspace(1) %515, ptr %92
  %516 = load ptr addrspace(1), ptr %92
  call void @_Bb02ioprintln(ptr addrspace(1) %516), !dbg !78
  store ptr addrspace(1) null, ptr %93
  %517 = load ptr addrspace(1), ptr %m
  %518 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %517, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !79
  store ptr addrspace(1) %518, ptr %94
  %519 = load ptr addrspace(1), ptr %m
  %520 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %519, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)), !dbg !80
  store ptr addrspace(1) %520, ptr %95
  %521 = load ptr addrspace(1), ptr %94
  %522 = addrspacecast ptr addrspace(1) %521 to ptr
  %523 = ptrtoint ptr %522 to i64
  %524 = and i64 %523, 2233785415175766016
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %534, label %526
526:
  %527 = load ptr addrspace(1), ptr %94
  %528 = call double @_bal_tagged_to_float(ptr addrspace(1) %527), !dbg !81
  store double %528, ptr %97
  %529 = load ptr addrspace(1), ptr %95
  %530 = addrspacecast ptr addrspace(1) %529 to ptr
  %531 = ptrtoint ptr %530 to i64
  %532 = and i64 %531, 2233785415175766016
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %537
534:
  %535 = load ptr addrspace(1), ptr %94
  store ptr addrspace(1) %535, ptr %96
  %536 = load ptr addrspace(1), ptr %95
  store ptr addrspace(1) %536, ptr %98
  store ptr addrspace(1) null, ptr %101
  br label %545
537:
  %538 = load ptr addrspace(1), ptr %95
  %539 = call double @_bal_tagged_to_float(ptr addrspace(1) %538), !dbg !82
  store double %539, ptr %99
  %540 = load double, ptr %97
  %541 = load double, ptr %99
  %542 = fadd double %540, %541
  store double %542, ptr %100
  %543 = load double, ptr %100
  %544 = call ptr addrspace(1) @_bal_float_to_tagged(double %543), !dbg !83
  store ptr addrspace(1) %544, ptr %101
  br label %545
545:
  %546 = load ptr addrspace(1), ptr %m
  %547 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %546, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411)), !dbg !84
  store ptr addrspace(1) %547, ptr %102
  %548 = load ptr addrspace(1), ptr %101
  %549 = addrspacecast ptr addrspace(1) %548 to ptr
  %550 = ptrtoint ptr %549 to i64
  %551 = and i64 %550, 2233785415175766016
  %552 = icmp eq i64 %551, 0
  br i1 %552, label %561, label %553
553:
  %554 = load ptr addrspace(1), ptr %101
  %555 = call double @_bal_tagged_to_float(ptr addrspace(1) %554), !dbg !85
  store double %555, ptr %104
  %556 = load ptr addrspace(1), ptr %102
  %557 = addrspacecast ptr addrspace(1) %556 to ptr
  %558 = ptrtoint ptr %557 to i64
  %559 = and i64 %558, 2233785415175766016
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %561, label %564
561:
  %562 = load ptr addrspace(1), ptr %101
  store ptr addrspace(1) %562, ptr %103
  %563 = load ptr addrspace(1), ptr %102
  store ptr addrspace(1) %563, ptr %105
  store ptr addrspace(1) null, ptr %108
  br label %572
564:
  %565 = load ptr addrspace(1), ptr %102
  %566 = call double @_bal_tagged_to_float(ptr addrspace(1) %565), !dbg !86
  store double %566, ptr %106
  %567 = load double, ptr %104
  %568 = load double, ptr %106
  %569 = fadd double %567, %568
  store double %569, ptr %107
  %570 = load double, ptr %107
  %571 = call ptr addrspace(1) @_bal_float_to_tagged(double %570), !dbg !87
  store ptr addrspace(1) %571, ptr %108
  br label %572
572:
  %573 = load ptr addrspace(1), ptr %108
  %574 = addrspacecast ptr addrspace(1) %573 to ptr
  %575 = ptrtoint ptr %574 to i64
  %576 = and i64 %575, 2233785415175766016
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %586, label %578
578:
  %579 = load ptr addrspace(1), ptr %108
  %580 = call double @_bal_tagged_to_float(ptr addrspace(1) %579), !dbg !88
  store double %580, ptr %110
  %581 = load double, ptr %110
  %582 = load double, ptr %d
  %583 = fadd double %581, %582
  store double %583, ptr %111
  %584 = load double, ptr %111
  %585 = call ptr addrspace(1) @_bal_float_to_tagged(double %584), !dbg !89
  store ptr addrspace(1) %585, ptr %112
  br label %588
586:
  %587 = load ptr addrspace(1), ptr %108
  store ptr addrspace(1) %587, ptr %109
  store ptr addrspace(1) null, ptr %112
  br label %588
588:
  %589 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !90
  %590 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %589, i64 0, i32 3
  %591 = load ptr addrspace(1), ptr addrspace(1) %590, align 8
  %592 = bitcast ptr addrspace(1) %591 to ptr addrspace(1)
  %593 = load ptr addrspace(1), ptr %112
  %594 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %592, i64 0, i64 0
  store ptr addrspace(1) %593, ptr addrspace(1) %594
  %595 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %589, i64 0, i32 1
  store i64 1, ptr addrspace(1) %595
  %596 = bitcast ptr addrspace(1) %589 to ptr addrspace(1)
  %597 = getelementptr i8, ptr addrspace(1) %596, i64 864691128455135236
  store ptr addrspace(1) %597, ptr %113
  %598 = load ptr addrspace(1), ptr %113
  call void @_Bb02ioprintln(ptr addrspace(1) %598), !dbg !91
  store ptr addrspace(1) null, ptr %114
  store ptr addrspace(1) null, ptr %e
  %599 = load ptr addrspace(1), ptr %m
  %600 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %599, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !92
  store ptr addrspace(1) %600, ptr %115
  %601 = load ptr addrspace(1), ptr %115
  %602 = addrspacecast ptr addrspace(1) %601 to ptr
  %603 = ptrtoint ptr %602 to i64
  %604 = and i64 %603, 2233785415175766016
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %614, label %606
606:
  %607 = load ptr addrspace(1), ptr %115
  %608 = call double @_bal_tagged_to_float(ptr addrspace(1) %607), !dbg !93
  store double %608, ptr %117
  %609 = load ptr addrspace(1), ptr %e
  %610 = addrspacecast ptr addrspace(1) %609 to ptr
  %611 = ptrtoint ptr %610 to i64
  %612 = and i64 %611, 2233785415175766016
  %613 = icmp eq i64 %612, 0
  br i1 %613, label %614, label %617
614:
  %615 = load ptr addrspace(1), ptr %115
  store ptr addrspace(1) %615, ptr %116
  %616 = load ptr addrspace(1), ptr %e
  store ptr addrspace(1) %616, ptr %e.1
  store ptr addrspace(1) null, ptr %119
  br label %625
617:
  %618 = load ptr addrspace(1), ptr %e
  %619 = call double @_bal_tagged_to_float(ptr addrspace(1) %618), !dbg !94
  store double %619, ptr %e.2
  %620 = load double, ptr %117
  %621 = load double, ptr %e.2
  %622 = fadd double %620, %621
  store double %622, ptr %118
  %623 = load double, ptr %118
  %624 = call ptr addrspace(1) @_bal_float_to_tagged(double %623), !dbg !95
  store ptr addrspace(1) %624, ptr %119
  br label %625
625:
  %626 = load ptr addrspace(1), ptr %119
  store ptr addrspace(1) %626, ptr %v8
  %627 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !96
  %628 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %627, i64 0, i32 3
  %629 = load ptr addrspace(1), ptr addrspace(1) %628, align 8
  %630 = bitcast ptr addrspace(1) %629 to ptr addrspace(1)
  %631 = load ptr addrspace(1), ptr %v8
  %632 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %630, i64 0, i64 0
  store ptr addrspace(1) %631, ptr addrspace(1) %632
  %633 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %627, i64 0, i32 1
  store i64 1, ptr addrspace(1) %633
  %634 = bitcast ptr addrspace(1) %627 to ptr addrspace(1)
  %635 = getelementptr i8, ptr addrspace(1) %634, i64 864691128455135236
  store ptr addrspace(1) %635, ptr %120
  %636 = load ptr addrspace(1), ptr %120
  call void @_Bb02ioprintln(ptr addrspace(1) %636), !dbg !97
  store ptr addrspace(1) null, ptr %121
  %637 = load ptr addrspace(1), ptr %m
  %638 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %637, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !98
  store ptr addrspace(1) %638, ptr %122
  %639 = load ptr addrspace(1), ptr %m
  %640 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %639, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)), !dbg !99
  store ptr addrspace(1) %640, ptr %123
  %641 = load ptr addrspace(1), ptr %122
  %642 = addrspacecast ptr addrspace(1) %641 to ptr
  %643 = ptrtoint ptr %642 to i64
  %644 = and i64 %643, 2233785415175766016
  %645 = icmp eq i64 %644, 0
  br i1 %645, label %654, label %646
646:
  %647 = load ptr addrspace(1), ptr %122
  %648 = call double @_bal_tagged_to_float(ptr addrspace(1) %647), !dbg !100
  store double %648, ptr %125
  %649 = load ptr addrspace(1), ptr %123
  %650 = addrspacecast ptr addrspace(1) %649 to ptr
  %651 = ptrtoint ptr %650 to i64
  %652 = and i64 %651, 2233785415175766016
  %653 = icmp eq i64 %652, 0
  br i1 %653, label %654, label %657
654:
  %655 = load ptr addrspace(1), ptr %122
  store ptr addrspace(1) %655, ptr %124
  %656 = load ptr addrspace(1), ptr %123
  store ptr addrspace(1) %656, ptr %126
  store ptr addrspace(1) null, ptr %129
  br label %665
657:
  %658 = load ptr addrspace(1), ptr %123
  %659 = call double @_bal_tagged_to_float(ptr addrspace(1) %658), !dbg !101
  store double %659, ptr %127
  %660 = load double, ptr %125
  %661 = load double, ptr %127
  %662 = fadd double %660, %661
  store double %662, ptr %128
  %663 = load double, ptr %128
  %664 = call ptr addrspace(1) @_bal_float_to_tagged(double %663), !dbg !102
  store ptr addrspace(1) %664, ptr %129
  br label %665
665:
  %666 = load ptr addrspace(1), ptr %m
  %667 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %666, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411)), !dbg !103
  store ptr addrspace(1) %667, ptr %130
  %668 = load ptr addrspace(1), ptr %129
  %669 = addrspacecast ptr addrspace(1) %668 to ptr
  %670 = ptrtoint ptr %669 to i64
  %671 = and i64 %670, 2233785415175766016
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %681, label %673
673:
  %674 = load ptr addrspace(1), ptr %129
  %675 = call double @_bal_tagged_to_float(ptr addrspace(1) %674), !dbg !104
  store double %675, ptr %132
  %676 = load ptr addrspace(1), ptr %130
  %677 = addrspacecast ptr addrspace(1) %676 to ptr
  %678 = ptrtoint ptr %677 to i64
  %679 = and i64 %678, 2233785415175766016
  %680 = icmp eq i64 %679, 0
  br i1 %680, label %681, label %684
681:
  %682 = load ptr addrspace(1), ptr %129
  store ptr addrspace(1) %682, ptr %131
  %683 = load ptr addrspace(1), ptr %130
  store ptr addrspace(1) %683, ptr %133
  store ptr addrspace(1) null, ptr %136
  br label %692
684:
  %685 = load ptr addrspace(1), ptr %130
  %686 = call double @_bal_tagged_to_float(ptr addrspace(1) %685), !dbg !105
  store double %686, ptr %134
  %687 = load double, ptr %132
  %688 = load double, ptr %134
  %689 = fadd double %687, %688
  store double %689, ptr %135
  %690 = load double, ptr %135
  %691 = call ptr addrspace(1) @_bal_float_to_tagged(double %690), !dbg !106
  store ptr addrspace(1) %691, ptr %136
  br label %692
692:
  %693 = load ptr addrspace(1), ptr %136
  %694 = addrspacecast ptr addrspace(1) %693 to ptr
  %695 = ptrtoint ptr %694 to i64
  %696 = and i64 %695, 2233785415175766016
  %697 = icmp eq i64 %696, 0
  br i1 %697, label %706, label %698
698:
  %699 = load ptr addrspace(1), ptr %136
  %700 = call double @_bal_tagged_to_float(ptr addrspace(1) %699), !dbg !107
  store double %700, ptr %138
  %701 = load double, ptr %138
  %702 = load double, ptr %d
  %703 = fadd double %701, %702
  store double %703, ptr %139
  %704 = load double, ptr %139
  %705 = call ptr addrspace(1) @_bal_float_to_tagged(double %704), !dbg !108
  store ptr addrspace(1) %705, ptr %140
  br label %708
706:
  %707 = load ptr addrspace(1), ptr %136
  store ptr addrspace(1) %707, ptr %137
  store ptr addrspace(1) null, ptr %140
  br label %708
708:
  %709 = load ptr addrspace(1), ptr %140
  %710 = addrspacecast ptr addrspace(1) %709 to ptr
  %711 = ptrtoint ptr %710 to i64
  %712 = and i64 %711, 2233785415175766016
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %722, label %714
714:
  %715 = load ptr addrspace(1), ptr %140
  %716 = call double @_bal_tagged_to_float(ptr addrspace(1) %715), !dbg !109
  store double %716, ptr %142
  %717 = load ptr addrspace(1), ptr %e
  %718 = addrspacecast ptr addrspace(1) %717 to ptr
  %719 = ptrtoint ptr %718 to i64
  %720 = and i64 %719, 2233785415175766016
  %721 = icmp eq i64 %720, 0
  br i1 %721, label %722, label %725
722:
  %723 = load ptr addrspace(1), ptr %140
  store ptr addrspace(1) %723, ptr %141
  %724 = load ptr addrspace(1), ptr %e
  store ptr addrspace(1) %724, ptr %e.3
  store ptr addrspace(1) null, ptr %144
  br label %733
725:
  %726 = load ptr addrspace(1), ptr %e
  %727 = call double @_bal_tagged_to_float(ptr addrspace(1) %726), !dbg !110
  store double %727, ptr %e.4
  %728 = load double, ptr %142
  %729 = load double, ptr %e.4
  %730 = fadd double %728, %729
  store double %730, ptr %143
  %731 = load double, ptr %143
  %732 = call ptr addrspace(1) @_bal_float_to_tagged(double %731), !dbg !111
  store ptr addrspace(1) %732, ptr %144
  br label %733
733:
  %734 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !112
  %735 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %734, i64 0, i32 3
  %736 = load ptr addrspace(1), ptr addrspace(1) %735, align 8
  %737 = bitcast ptr addrspace(1) %736 to ptr addrspace(1)
  %738 = load ptr addrspace(1), ptr %144
  %739 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %737, i64 0, i64 0
  store ptr addrspace(1) %738, ptr addrspace(1) %739
  %740 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %734, i64 0, i32 1
  store i64 1, ptr addrspace(1) %740
  %741 = bitcast ptr addrspace(1) %734 to ptr addrspace(1)
  %742 = getelementptr i8, ptr addrspace(1) %741, i64 864691128455135236
  store ptr addrspace(1) %742, ptr %145
  %743 = load ptr addrspace(1), ptr %145
  call void @_Bb02ioprintln(ptr addrspace(1) %743), !dbg !113
  store ptr addrspace(1) null, ptr %146
  %744 = load ptr addrspace(1), ptr %m
  %745 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %744, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !114
  store ptr addrspace(1) %745, ptr %147
  %746 = load ptr addrspace(1), ptr %147
  %747 = addrspacecast ptr addrspace(1) %746 to ptr
  %748 = ptrtoint ptr %747 to i64
  %749 = and i64 %748, 2233785415175766016
  %750 = icmp eq i64 %749, 0
  br i1 %750, label %758, label %751
751:
  %752 = load ptr addrspace(1), ptr %147
  %753 = call double @_bal_tagged_to_float(ptr addrspace(1) %752), !dbg !115
  store double %753, ptr %149
  %754 = load double, ptr %149
  %755 = fneg double %754
  store double %755, ptr %150
  %756 = load double, ptr %150
  %757 = call ptr addrspace(1) @_bal_float_to_tagged(double %756), !dbg !116
  store ptr addrspace(1) %757, ptr %151
  br label %760
758:
  %759 = load ptr addrspace(1), ptr %147
  store ptr addrspace(1) %759, ptr %148
  store ptr addrspace(1) null, ptr %151
  br label %760
760:
  %761 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !117
  %762 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %761, i64 0, i32 3
  %763 = load ptr addrspace(1), ptr addrspace(1) %762, align 8
  %764 = bitcast ptr addrspace(1) %763 to ptr addrspace(1)
  %765 = load ptr addrspace(1), ptr %151
  %766 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %764, i64 0, i64 0
  store ptr addrspace(1) %765, ptr addrspace(1) %766
  %767 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %761, i64 0, i32 1
  store i64 1, ptr addrspace(1) %767
  %768 = bitcast ptr addrspace(1) %761 to ptr addrspace(1)
  %769 = getelementptr i8, ptr addrspace(1) %768, i64 864691128455135236
  store ptr addrspace(1) %769, ptr %152
  %770 = load ptr addrspace(1), ptr %152
  call void @_Bb02ioprintln(ptr addrspace(1) %770), !dbg !118
  store ptr addrspace(1) null, ptr %153
  ret void
771:
  %772 = load ptr addrspace(1), ptr %154
  call void @_bal_panic(ptr addrspace(1) %772), !dbg !119
  unreachable
773:
  %774 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %774), !dbg !8
  unreachable
775:
  %776 = load ptr addrspace(1), ptr %m
  %777 = call ptr addrspace(1) @_bal_float_to_tagged(double 6.0), !dbg !12
  %778 = call i64 @_bal_mapping_set(ptr addrspace(1) %776, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %777), !dbg !13
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %783, label %788
780:
  %781 = or i64 %163, 1024
  %782 = call ptr addrspace(1) @_bal_panic_construct(i64 %781), !dbg !7
  store ptr addrspace(1) %782, ptr %154
  br label %771
783:
  %784 = load ptr addrspace(1), ptr %m
  %785 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.0), !dbg !14
  %786 = call i64 @_bal_mapping_set(ptr addrspace(1) %784, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411), ptr addrspace(1) %785), !dbg !15
  %787 = icmp eq i64 %786, 0
  br i1 %787, label %791, label %801
788:
  %789 = or i64 %778, 1280
  %790 = call ptr addrspace(1) @_bal_panic_construct(i64 %789), !dbg !7
  store ptr addrspace(1) %790, ptr %154
  br label %771
791:
  %792 = load ptr addrspace(1), ptr %m
  %793 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %792, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)), !dbg !16
  store ptr addrspace(1) %793, ptr %2
  %794 = load ptr addrspace(1), ptr %m
  %795 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %794, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)), !dbg !17
  store ptr addrspace(1) %795, ptr %3
  %796 = load ptr addrspace(1), ptr %2
  %797 = addrspacecast ptr addrspace(1) %796 to ptr
  %798 = ptrtoint ptr %797 to i64
  %799 = and i64 %798, 2233785415175766016
  %800 = icmp eq i64 %799, 0
  br i1 %800, label %173, label %165
801:
  %802 = or i64 %786, 1536
  %803 = call ptr addrspace(1) @_bal_panic_construct(i64 %802), !dbg !7
  store ptr addrspace(1) %803, ptr %154
  br label %771
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 19, scope: !5)
!10 = !DILocation(line: 4, column: 5, scope: !5)
!11 = !DILocation(line: 4, column: 5, scope: !5)
!12 = !DILocation(line: 5, column: 5, scope: !5)
!13 = !DILocation(line: 5, column: 5, scope: !5)
!14 = !DILocation(line: 6, column: 5, scope: !5)
!15 = !DILocation(line: 6, column: 5, scope: !5)
!16 = !DILocation(line: 8, column: 16, scope: !5)
!17 = !DILocation(line: 8, column: 25, scope: !5)
!18 = !DILocation(line: 8, column: 22, scope: !5)
!19 = !DILocation(line: 8, column: 22, scope: !5)
!20 = !DILocation(line: 8, column: 22, scope: !5)
!21 = !DILocation(line: 8, column: 15, scope: !5)
!22 = !DILocation(line: 8, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 16, scope: !5)
!24 = !DILocation(line: 10, column: 25, scope: !5)
!25 = !DILocation(line: 10, column: 22, scope: !5)
!26 = !DILocation(line: 10, column: 22, scope: !5)
!27 = !DILocation(line: 10, column: 22, scope: !5)
!28 = !DILocation(line: 10, column: 34, scope: !5)
!29 = !DILocation(line: 10, column: 31, scope: !5)
!30 = !DILocation(line: 10, column: 31, scope: !5)
!31 = !DILocation(line: 10, column: 31, scope: !5)
!32 = !DILocation(line: 10, column: 15, scope: !5)
!33 = !DILocation(line: 10, column: 4, scope: !5)
!34 = !DILocation(line: 12, column: 16, scope: !5)
!35 = !DILocation(line: 12, column: 25, scope: !5)
!36 = !DILocation(line: 12, column: 22, scope: !5)
!37 = !DILocation(line: 12, column: 22, scope: !5)
!38 = !DILocation(line: 12, column: 22, scope: !5)
!39 = !DILocation(line: 12, column: 15, scope: !5)
!40 = !DILocation(line: 12, column: 4, scope: !5)
!41 = !DILocation(line: 14, column: 16, scope: !5)
!42 = !DILocation(line: 14, column: 25, scope: !5)
!43 = !DILocation(line: 14, column: 22, scope: !5)
!44 = !DILocation(line: 14, column: 22, scope: !5)
!45 = !DILocation(line: 14, column: 22, scope: !5)
!46 = !DILocation(line: 14, column: 34, scope: !5)
!47 = !DILocation(line: 14, column: 31, scope: !5)
!48 = !DILocation(line: 14, column: 31, scope: !5)
!49 = !DILocation(line: 14, column: 31, scope: !5)
!50 = !DILocation(line: 14, column: 15, scope: !5)
!51 = !DILocation(line: 14, column: 4, scope: !5)
!52 = !DILocation(line: 16, column: 16, scope: !5)
!53 = !DILocation(line: 16, column: 25, scope: !5)
!54 = !DILocation(line: 16, column: 22, scope: !5)
!55 = !DILocation(line: 16, column: 22, scope: !5)
!56 = !DILocation(line: 16, column: 22, scope: !5)
!57 = !DILocation(line: 16, column: 15, scope: !5)
!58 = !DILocation(line: 16, column: 4, scope: !5)
!59 = !DILocation(line: 18, column: 17, scope: !5)
!60 = !DILocation(line: 18, column: 23, scope: !5)
!61 = !DILocation(line: 18, column: 23, scope: !5)
!62 = !DILocation(line: 19, column: 15, scope: !5)
!63 = !DILocation(line: 19, column: 4, scope: !5)
!64 = !DILocation(line: 21, column: 18, scope: !5)
!65 = !DILocation(line: 21, column: 16, scope: !5)
!66 = !DILocation(line: 21, column: 16, scope: !5)
!67 = !DILocation(line: 22, column: 15, scope: !5)
!68 = !DILocation(line: 22, column: 4, scope: !5)
!69 = !DILocation(line: 23, column: 17, scope: !5)
!70 = !DILocation(line: 23, column: 15, scope: !5)
!71 = !DILocation(line: 23, column: 15, scope: !5)
!72 = !DILocation(line: 23, column: 15, scope: !5)
!73 = !DILocation(line: 23, column: 4, scope: !5)
!74 = !DILocation(line: 26, column: 17, scope: !5)
!75 = !DILocation(line: 26, column: 23, scope: !5)
!76 = !DILocation(line: 26, column: 23, scope: !5)
!77 = !DILocation(line: 27, column: 15, scope: !5)
!78 = !DILocation(line: 27, column: 4, scope: !5)
!79 = !DILocation(line: 28, column: 16, scope: !5)
!80 = !DILocation(line: 28, column: 25, scope: !5)
!81 = !DILocation(line: 28, column: 22, scope: !5)
!82 = !DILocation(line: 28, column: 22, scope: !5)
!83 = !DILocation(line: 28, column: 22, scope: !5)
!84 = !DILocation(line: 28, column: 34, scope: !5)
!85 = !DILocation(line: 28, column: 31, scope: !5)
!86 = !DILocation(line: 28, column: 31, scope: !5)
!87 = !DILocation(line: 28, column: 31, scope: !5)
!88 = !DILocation(line: 28, column: 40, scope: !5)
!89 = !DILocation(line: 28, column: 40, scope: !5)
!90 = !DILocation(line: 28, column: 15, scope: !5)
!91 = !DILocation(line: 28, column: 4, scope: !5)
!92 = !DILocation(line: 31, column: 17, scope: !5)
!93 = !DILocation(line: 31, column: 23, scope: !5)
!94 = !DILocation(line: 31, column: 23, scope: !5)
!95 = !DILocation(line: 31, column: 23, scope: !5)
!96 = !DILocation(line: 32, column: 15, scope: !5)
!97 = !DILocation(line: 32, column: 4, scope: !5)
!98 = !DILocation(line: 33, column: 16, scope: !5)
!99 = !DILocation(line: 33, column: 25, scope: !5)
!100 = !DILocation(line: 33, column: 22, scope: !5)
!101 = !DILocation(line: 33, column: 22, scope: !5)
!102 = !DILocation(line: 33, column: 22, scope: !5)
!103 = !DILocation(line: 33, column: 34, scope: !5)
!104 = !DILocation(line: 33, column: 31, scope: !5)
!105 = !DILocation(line: 33, column: 31, scope: !5)
!106 = !DILocation(line: 33, column: 31, scope: !5)
!107 = !DILocation(line: 33, column: 40, scope: !5)
!108 = !DILocation(line: 33, column: 40, scope: !5)
!109 = !DILocation(line: 33, column: 44, scope: !5)
!110 = !DILocation(line: 33, column: 44, scope: !5)
!111 = !DILocation(line: 33, column: 44, scope: !5)
!112 = !DILocation(line: 33, column: 15, scope: !5)
!113 = !DILocation(line: 33, column: 4, scope: !5)
!114 = !DILocation(line: 35, column: 17, scope: !5)
!115 = !DILocation(line: 35, column: 15, scope: !5)
!116 = !DILocation(line: 35, column: 15, scope: !5)
!117 = !DILocation(line: 35, column: 15, scope: !5)
!118 = !DILocation(line: 35, column: 4, scope: !5)
!119 = !DILocation(line: 36, column: 0, scope: !5)
