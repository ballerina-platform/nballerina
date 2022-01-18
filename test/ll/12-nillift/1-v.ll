@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i1
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i64
  %17 = alloca i1
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i64
  %23 = alloca i1
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i1
  %29 = alloca i64
  %30 = alloca i1
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca i64
  %36 = alloca i1
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca i64
  %43 = alloca i1
  %44 = alloca i64
  %45 = alloca i64
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i8 addrspace(1)*
  %v4 = alloca i8 addrspace(1)*
  %48 = alloca i1
  %49 = alloca i64
  %50 = alloca i1
  %51 = alloca i64
  %52 = alloca i64
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i1
  %55 = alloca i64
  %56 = alloca i1
  %57 = alloca i64
  %58 = alloca i64
  %59 = alloca i8 addrspace(1)*
  %60 = alloca i8 addrspace(1)*
  %61 = alloca i1
  %62 = alloca i64
  %63 = alloca i1
  %64 = alloca i64
  %65 = alloca i64
  %66 = alloca i8 addrspace(1)*
  %67 = alloca i8 addrspace(1)*
  %v5 = alloca i8 addrspace(1)*
  %68 = alloca i1
  %69 = alloca i64
  %70 = alloca i64
  %71 = alloca i8 addrspace(1)*
  %72 = alloca i8 addrspace(1)*
  %v6 = alloca i8 addrspace(1)*
  %73 = alloca i1
  %74 = alloca i64
  %75 = alloca i64
  %76 = alloca i8 addrspace(1)*
  %77 = alloca i8 addrspace(1)*
  %78 = alloca i1
  %79 = alloca i64
  %80 = alloca i64
  %81 = alloca i8 addrspace(1)*
  %82 = alloca i8 addrspace(1)*
  %d = alloca i64
  %v7 = alloca i8 addrspace(1)*
  %83 = alloca i1
  %84 = alloca i64
  %85 = alloca i64
  %86 = alloca i8 addrspace(1)*
  %87 = alloca i8 addrspace(1)*
  %88 = alloca i1
  %89 = alloca i64
  %90 = alloca i1
  %91 = alloca i64
  %92 = alloca i64
  %93 = alloca i8 addrspace(1)*
  %94 = alloca i1
  %95 = alloca i64
  %96 = alloca i1
  %97 = alloca i64
  %98 = alloca i64
  %99 = alloca i8 addrspace(1)*
  %100 = alloca i1
  %101 = alloca i64
  %102 = alloca i64
  %103 = alloca i8 addrspace(1)*
  %104 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %v8 = alloca i8 addrspace(1)*
  %105 = alloca i1
  %106 = alloca i64
  %107 = alloca i1
  %108 = alloca i64
  %109 = alloca i64
  %110 = alloca i8 addrspace(1)*
  %111 = alloca i8 addrspace(1)*
  %112 = alloca i1
  %113 = alloca i64
  %114 = alloca i1
  %115 = alloca i64
  %116 = alloca i64
  %117 = alloca i8 addrspace(1)*
  %118 = alloca i1
  %119 = alloca i64
  %120 = alloca i1
  %121 = alloca i64
  %122 = alloca i64
  %123 = alloca i8 addrspace(1)*
  %124 = alloca i1
  %125 = alloca i64
  %126 = alloca i64
  %127 = alloca i8 addrspace(1)*
  %128 = alloca i1
  %129 = alloca i64
  %130 = alloca i1
  %131 = alloca i64
  %132 = alloca i64
  %133 = alloca i8 addrspace(1)*
  %134 = alloca i8 addrspace(1)*
  %135 = alloca i1
  %136 = alloca i64
  %137 = alloca i64
  %138 = alloca i8 addrspace(1)*
  %139 = alloca i8 addrspace(1)*
  %140 = alloca i8 addrspace(1)*
  %141 = alloca i8
  %142 = load i8*, i8** @_bal_stack_guard
  %143 = icmp ult i8* %141, %142
  br i1 %143, label %656, label %144
144:
  %145 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  store i8 addrspace(1)* %145, i8 addrspace(1)** %a
  %146 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6)
  store i8 addrspace(1)* %146, i8 addrspace(1)** %b
  %147 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %147, i8 addrspace(1)** %c
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %149 = addrspacecast i8 addrspace(1)* %148 to i8*
  %150 = ptrtoint i8* %149 to i64
  %151 = and i64 %150, 2233785415175766016
  %152 = icmp eq i64 %151, 0
  store i1 %152, i1* %1
  %153 = load i1, i1* %1
  br i1 %153, label %163, label %154
154:
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %156 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %155)
  store i64 %156, i64* %2
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %158 = addrspacecast i8 addrspace(1)* %157 to i8*
  %159 = ptrtoint i8* %158 to i64
  %160 = and i64 %159, 2233785415175766016
  %161 = icmp eq i64 %160, 0
  store i1 %161, i1* %3
  %162 = load i1, i1* %3
  br i1 %162, label %163, label %164
163:
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %171
164:
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %166 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %165)
  store i64 %166, i64* %4
  %167 = load i64, i64* %2
  %168 = load i64, i64* %4
  %169 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %167, i64 %168)
  %170 = extractvalue {i64, i1} %169, 1
  br i1 %170, label %662, label %658
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
  %182 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %181)
  store i64 %182, i64* %9
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
  br label %197
190:
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %192 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %191)
  store i64 %192, i64* %11
  %193 = load i64, i64* %9
  %194 = load i64, i64* %11
  %195 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %193, i64 %194)
  %196 = extractvalue {i64, i1} %195, 1
  br i1 %196, label %668, label %664
197:
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %198), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !9
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %200 = addrspacecast i8 addrspace(1)* %199 to i8*
  %201 = ptrtoint i8* %200 to i64
  %202 = and i64 %201, 2233785415175766016
  %203 = icmp eq i64 %202, 0
  store i1 %203, i1* %15
  %204 = load i1, i1* %15
  br i1 %204, label %214, label %205
205:
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %207 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %206)
  store i64 %207, i64* %16
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %209 = addrspacecast i8 addrspace(1)* %208 to i8*
  %210 = ptrtoint i8* %209 to i64
  %211 = and i64 %210, 2233785415175766016
  %212 = icmp eq i64 %211, 0
  store i1 %212, i1* %17
  %213 = load i1, i1* %17
  br i1 %213, label %214, label %215
214:
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  br label %222
215:
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %217 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %216)
  store i64 %217, i64* %18
  %218 = load i64, i64* %16
  %219 = load i64, i64* %18
  %220 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %218, i64 %219)
  %221 = extractvalue {i64, i1} %220, 1
  br i1 %221, label %674, label %670
222:
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %224 = addrspacecast i8 addrspace(1)* %223 to i8*
  %225 = ptrtoint i8* %224 to i64
  %226 = and i64 %225, 2233785415175766016
  %227 = icmp eq i64 %226, 0
  store i1 %227, i1* %21
  %228 = load i1, i1* %21
  br i1 %228, label %238, label %229
229:
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %20
  %231 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %230)
  store i64 %231, i64* %22
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %233 = addrspacecast i8 addrspace(1)* %232 to i8*
  %234 = ptrtoint i8* %233 to i64
  %235 = and i64 %234, 2233785415175766016
  %236 = icmp eq i64 %235, 0
  store i1 %236, i1* %23
  %237 = load i1, i1* %23
  br i1 %237, label %238, label %239
238:
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  br label %246
239:
  %240 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %241 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %240)
  store i64 %241, i64* %24
  %242 = load i64, i64* %22
  %243 = load i64, i64* %24
  %244 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %242, i64 %243)
  %245 = extractvalue {i64, i1} %244, 1
  br i1 %245, label %680, label %676
246:
  %247 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  store i8 addrspace(1)* %247, i8 addrspace(1)** %v2
  %248 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %248), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !10
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %250 = addrspacecast i8 addrspace(1)* %249 to i8*
  %251 = ptrtoint i8* %250 to i64
  %252 = and i64 %251, 2233785415175766016
  %253 = icmp eq i64 %252, 0
  store i1 %253, i1* %28
  %254 = load i1, i1* %28
  br i1 %254, label %264, label %255
255:
  %256 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %257 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %256)
  store i64 %257, i64* %29
  %258 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %259 = addrspacecast i8 addrspace(1)* %258 to i8*
  %260 = ptrtoint i8* %259 to i64
  %261 = and i64 %260, 2233785415175766016
  %262 = icmp eq i64 %261, 0
  store i1 %262, i1* %30
  %263 = load i1, i1* %30
  br i1 %263, label %264, label %265
264:
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  br label %272
265:
  %266 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %267 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %266)
  store i64 %267, i64* %31
  %268 = load i64, i64* %29
  %269 = load i64, i64* %31
  %270 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %268, i64 %269)
  %271 = extractvalue {i64, i1} %270, 1
  br i1 %271, label %686, label %682
272:
  %273 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  %274 = addrspacecast i8 addrspace(1)* %273 to i8*
  %275 = ptrtoint i8* %274 to i64
  %276 = and i64 %275, 2233785415175766016
  %277 = icmp eq i64 %276, 0
  store i1 %277, i1* %34
  %278 = load i1, i1* %34
  br i1 %278, label %288, label %279
279:
  %280 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  %281 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %280)
  store i64 %281, i64* %35
  %282 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %283 = addrspacecast i8 addrspace(1)* %282 to i8*
  %284 = ptrtoint i8* %283 to i64
  %285 = and i64 %284, 2233785415175766016
  %286 = icmp eq i64 %285, 0
  store i1 %286, i1* %36
  %287 = load i1, i1* %36
  br i1 %287, label %288, label %289
288:
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  br label %296
289:
  %290 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %291 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %290)
  store i64 %291, i64* %37
  %292 = load i64, i64* %35
  %293 = load i64, i64* %37
  %294 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %292, i64 %293)
  %295 = extractvalue {i64, i1} %294, 1
  br i1 %295, label %692, label %688
296:
  %297 = load i8 addrspace(1)*, i8 addrspace(1)** %39, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %297), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !11
  %298 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %299 = addrspacecast i8 addrspace(1)* %298 to i8*
  %300 = ptrtoint i8* %299 to i64
  %301 = and i64 %300, 2233785415175766016
  %302 = icmp eq i64 %301, 0
  store i1 %302, i1* %41
  %303 = load i1, i1* %41
  br i1 %303, label %313, label %304
304:
  %305 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %306 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %305)
  store i64 %306, i64* %42
  %307 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %308 = addrspacecast i8 addrspace(1)* %307 to i8*
  %309 = ptrtoint i8* %308 to i64
  %310 = and i64 %309, 2233785415175766016
  %311 = icmp eq i64 %310, 0
  store i1 %311, i1* %43
  %312 = load i1, i1* %43
  br i1 %312, label %313, label %314
313:
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  br label %321
314:
  %315 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %316 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %315)
  store i64 %316, i64* %44
  %317 = load i64, i64* %42
  %318 = load i64, i64* %44
  %319 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %317, i64 %318)
  %320 = extractvalue {i64, i1} %319, 1
  br i1 %320, label %698, label %694
321:
  %322 = load i8 addrspace(1)*, i8 addrspace(1)** %46
  store i8 addrspace(1)* %322, i8 addrspace(1)** %v3
  %323 = load i8 addrspace(1)*, i8 addrspace(1)** %v3, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %323), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %47, !dbg !12
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %325 = addrspacecast i8 addrspace(1)* %324 to i8*
  %326 = ptrtoint i8* %325 to i64
  %327 = and i64 %326, 2233785415175766016
  %328 = icmp eq i64 %327, 0
  store i1 %328, i1* %48
  %329 = load i1, i1* %48
  br i1 %329, label %339, label %330
330:
  %331 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %332 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %331)
  store i64 %332, i64* %49
  %333 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %334 = addrspacecast i8 addrspace(1)* %333 to i8*
  %335 = ptrtoint i8* %334 to i64
  %336 = and i64 %335, 2233785415175766016
  %337 = icmp eq i64 %336, 0
  store i1 %337, i1* %50
  %338 = load i1, i1* %50
  br i1 %338, label %339, label %340
339:
  store i8 addrspace(1)* null, i8 addrspace(1)** %53
  br label %347
340:
  %341 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %342 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %341)
  store i64 %342, i64* %51
  %343 = load i64, i64* %49
  %344 = load i64, i64* %51
  %345 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %343, i64 %344)
  %346 = extractvalue {i64, i1} %345, 1
  br i1 %346, label %704, label %700
347:
  %348 = load i8 addrspace(1)*, i8 addrspace(1)** %53
  %349 = addrspacecast i8 addrspace(1)* %348 to i8*
  %350 = ptrtoint i8* %349 to i64
  %351 = and i64 %350, 2233785415175766016
  %352 = icmp eq i64 %351, 0
  store i1 %352, i1* %54
  %353 = load i1, i1* %54
  br i1 %353, label %363, label %354
354:
  %355 = load i8 addrspace(1)*, i8 addrspace(1)** %53
  %356 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %355)
  store i64 %356, i64* %55
  %357 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %358 = addrspacecast i8 addrspace(1)* %357 to i8*
  %359 = ptrtoint i8* %358 to i64
  %360 = and i64 %359, 2233785415175766016
  %361 = icmp eq i64 %360, 0
  store i1 %361, i1* %56
  %362 = load i1, i1* %56
  br i1 %362, label %363, label %364
363:
  store i8 addrspace(1)* null, i8 addrspace(1)** %59
  br label %371
364:
  %365 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %366 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %365)
  store i64 %366, i64* %57
  %367 = load i64, i64* %55
  %368 = load i64, i64* %57
  %369 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %367, i64 %368)
  %370 = extractvalue {i64, i1} %369, 1
  br i1 %370, label %710, label %706
371:
  %372 = load i8 addrspace(1)*, i8 addrspace(1)** %59
  store i8 addrspace(1)* %372, i8 addrspace(1)** %v4
  %373 = load i8 addrspace(1)*, i8 addrspace(1)** %v4, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %373), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !13
  %374 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %375 = addrspacecast i8 addrspace(1)* %374 to i8*
  %376 = ptrtoint i8* %375 to i64
  %377 = and i64 %376, 2233785415175766016
  %378 = icmp eq i64 %377, 0
  store i1 %378, i1* %61
  %379 = load i1, i1* %61
  br i1 %379, label %389, label %380
380:
  %381 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %382 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %381)
  store i64 %382, i64* %62
  %383 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %384 = addrspacecast i8 addrspace(1)* %383 to i8*
  %385 = ptrtoint i8* %384 to i64
  %386 = and i64 %385, 2233785415175766016
  %387 = icmp eq i64 %386, 0
  store i1 %387, i1* %63
  %388 = load i1, i1* %63
  br i1 %388, label %389, label %390
389:
  store i8 addrspace(1)* null, i8 addrspace(1)** %66
  br label %396
390:
  %391 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %392 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %391)
  store i64 %392, i64* %64
  %393 = load i64, i64* %62
  %394 = load i64, i64* %64
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %712, label %714
396:
  %397 = load i8 addrspace(1)*, i8 addrspace(1)** %66, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %397), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %67, !dbg !14
  %398 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %399 = addrspacecast i8 addrspace(1)* %398 to i8*
  %400 = ptrtoint i8* %399 to i64
  %401 = and i64 %400, 2233785415175766016
  %402 = icmp eq i64 %401, 0
  store i1 %402, i1* %68
  %403 = load i1, i1* %68
  br i1 %403, label %409, label %404
404:
  %405 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %406 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %405)
  store i64 %406, i64* %69
  %407 = load i64, i64* %69
  %408 = icmp eq i64 3, 0
  br i1 %408, label %724, label %726
409:
  store i8 addrspace(1)* null, i8 addrspace(1)** %71
  br label %410
410:
  %411 = load i8 addrspace(1)*, i8 addrspace(1)** %71
  store i8 addrspace(1)* %411, i8 addrspace(1)** %v5
  %412 = load i8 addrspace(1)*, i8 addrspace(1)** %v5, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %412), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !15
  %413 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %414 = addrspacecast i8 addrspace(1)* %413 to i8*
  %415 = ptrtoint i8* %414 to i64
  %416 = and i64 %415, 2233785415175766016
  %417 = icmp eq i64 %416, 0
  store i1 %417, i1* %73
  %418 = load i1, i1* %73
  br i1 %418, label %425, label %419
419:
  %420 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %421 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %420)
  store i64 %421, i64* %74
  %422 = load i64, i64* %74
  %423 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %422)
  %424 = extractvalue {i64, i1} %423, 1
  br i1 %424, label %740, label %736
425:
  store i8 addrspace(1)* null, i8 addrspace(1)** %76
  br label %426
426:
  %427 = load i8 addrspace(1)*, i8 addrspace(1)** %76
  store i8 addrspace(1)* %427, i8 addrspace(1)** %v6
  %428 = load i8 addrspace(1)*, i8 addrspace(1)** %v6, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %428), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %77, !dbg !16
  %429 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %430 = addrspacecast i8 addrspace(1)* %429 to i8*
  %431 = ptrtoint i8* %430 to i64
  %432 = and i64 %431, 2233785415175766016
  %433 = icmp eq i64 %432, 0
  store i1 %433, i1* %78
  %434 = load i1, i1* %78
  br i1 %434, label %441, label %435
435:
  %436 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %437 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %436)
  store i64 %437, i64* %79
  %438 = load i64, i64* %79
  %439 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %438)
  %440 = extractvalue {i64, i1} %439, 1
  br i1 %440, label %746, label %742
441:
  store i8 addrspace(1)* null, i8 addrspace(1)** %81
  br label %442
442:
  %443 = load i8 addrspace(1)*, i8 addrspace(1)** %81, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %443), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %82, !dbg !17
  store i64 13, i64* %d
  %444 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %445 = addrspacecast i8 addrspace(1)* %444 to i8*
  %446 = ptrtoint i8* %445 to i64
  %447 = and i64 %446, 2233785415175766016
  %448 = icmp eq i64 %447, 0
  store i1 %448, i1* %83
  %449 = load i1, i1* %83
  br i1 %449, label %457, label %450
450:
  %451 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %452 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %451)
  store i64 %452, i64* %84
  %453 = load i64, i64* %84
  %454 = load i64, i64* %d
  %455 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %453, i64 %454)
  %456 = extractvalue {i64, i1} %455, 1
  br i1 %456, label %752, label %748
457:
  store i8 addrspace(1)* null, i8 addrspace(1)** %86
  br label %458
458:
  %459 = load i8 addrspace(1)*, i8 addrspace(1)** %86
  store i8 addrspace(1)* %459, i8 addrspace(1)** %v7
  %460 = load i8 addrspace(1)*, i8 addrspace(1)** %v7, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %460), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %87, !dbg !18
  %461 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %462 = addrspacecast i8 addrspace(1)* %461 to i8*
  %463 = ptrtoint i8* %462 to i64
  %464 = and i64 %463, 2233785415175766016
  %465 = icmp eq i64 %464, 0
  store i1 %465, i1* %88
  %466 = load i1, i1* %88
  br i1 %466, label %476, label %467
467:
  %468 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %469 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %468)
  store i64 %469, i64* %89
  %470 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %471 = addrspacecast i8 addrspace(1)* %470 to i8*
  %472 = ptrtoint i8* %471 to i64
  %473 = and i64 %472, 2233785415175766016
  %474 = icmp eq i64 %473, 0
  store i1 %474, i1* %90
  %475 = load i1, i1* %90
  br i1 %475, label %476, label %477
476:
  store i8 addrspace(1)* null, i8 addrspace(1)** %93
  br label %484
477:
  %478 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %479 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %478)
  store i64 %479, i64* %91
  %480 = load i64, i64* %89
  %481 = load i64, i64* %91
  %482 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %480, i64 %481)
  %483 = extractvalue {i64, i1} %482, 1
  br i1 %483, label %758, label %754
484:
  %485 = load i8 addrspace(1)*, i8 addrspace(1)** %93
  %486 = addrspacecast i8 addrspace(1)* %485 to i8*
  %487 = ptrtoint i8* %486 to i64
  %488 = and i64 %487, 2233785415175766016
  %489 = icmp eq i64 %488, 0
  store i1 %489, i1* %94
  %490 = load i1, i1* %94
  br i1 %490, label %500, label %491
491:
  %492 = load i8 addrspace(1)*, i8 addrspace(1)** %93
  %493 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %492)
  store i64 %493, i64* %95
  %494 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %495 = addrspacecast i8 addrspace(1)* %494 to i8*
  %496 = ptrtoint i8* %495 to i64
  %497 = and i64 %496, 2233785415175766016
  %498 = icmp eq i64 %497, 0
  store i1 %498, i1* %96
  %499 = load i1, i1* %96
  br i1 %499, label %500, label %501
500:
  store i8 addrspace(1)* null, i8 addrspace(1)** %99
  br label %508
501:
  %502 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %503 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %502)
  store i64 %503, i64* %97
  %504 = load i64, i64* %95
  %505 = load i64, i64* %97
  %506 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %504, i64 %505)
  %507 = extractvalue {i64, i1} %506, 1
  br i1 %507, label %764, label %760
508:
  %509 = load i8 addrspace(1)*, i8 addrspace(1)** %99
  %510 = addrspacecast i8 addrspace(1)* %509 to i8*
  %511 = ptrtoint i8* %510 to i64
  %512 = and i64 %511, 2233785415175766016
  %513 = icmp eq i64 %512, 0
  store i1 %513, i1* %100
  %514 = load i1, i1* %100
  br i1 %514, label %522, label %515
515:
  %516 = load i8 addrspace(1)*, i8 addrspace(1)** %99
  %517 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %516)
  store i64 %517, i64* %101
  %518 = load i64, i64* %101
  %519 = load i64, i64* %d
  %520 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %518, i64 %519)
  %521 = extractvalue {i64, i1} %520, 1
  br i1 %521, label %770, label %766
522:
  store i8 addrspace(1)* null, i8 addrspace(1)** %103
  br label %523
523:
  %524 = load i8 addrspace(1)*, i8 addrspace(1)** %103, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %524), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %104, !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %e
  %525 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %526 = addrspacecast i8 addrspace(1)* %525 to i8*
  %527 = ptrtoint i8* %526 to i64
  %528 = and i64 %527, 2233785415175766016
  %529 = icmp eq i64 %528, 0
  store i1 %529, i1* %105
  %530 = load i1, i1* %105
  br i1 %530, label %540, label %531
531:
  %532 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %533 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %532)
  store i64 %533, i64* %106
  %534 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %535 = addrspacecast i8 addrspace(1)* %534 to i8*
  %536 = ptrtoint i8* %535 to i64
  %537 = and i64 %536, 2233785415175766016
  %538 = icmp eq i64 %537, 0
  store i1 %538, i1* %107
  %539 = load i1, i1* %107
  br i1 %539, label %540, label %541
540:
  store i8 addrspace(1)* null, i8 addrspace(1)** %110
  br label %548
541:
  %542 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %543 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %542)
  store i64 %543, i64* %108
  %544 = load i64, i64* %106
  %545 = load i64, i64* %108
  %546 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %544, i64 %545)
  %547 = extractvalue {i64, i1} %546, 1
  br i1 %547, label %776, label %772
548:
  %549 = load i8 addrspace(1)*, i8 addrspace(1)** %110
  store i8 addrspace(1)* %549, i8 addrspace(1)** %v8
  %550 = load i8 addrspace(1)*, i8 addrspace(1)** %v8, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %550), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %111, !dbg !20
  %551 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %552 = addrspacecast i8 addrspace(1)* %551 to i8*
  %553 = ptrtoint i8* %552 to i64
  %554 = and i64 %553, 2233785415175766016
  %555 = icmp eq i64 %554, 0
  store i1 %555, i1* %112
  %556 = load i1, i1* %112
  br i1 %556, label %566, label %557
557:
  %558 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %559 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %558)
  store i64 %559, i64* %113
  %560 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %561 = addrspacecast i8 addrspace(1)* %560 to i8*
  %562 = ptrtoint i8* %561 to i64
  %563 = and i64 %562, 2233785415175766016
  %564 = icmp eq i64 %563, 0
  store i1 %564, i1* %114
  %565 = load i1, i1* %114
  br i1 %565, label %566, label %567
566:
  store i8 addrspace(1)* null, i8 addrspace(1)** %117
  br label %574
567:
  %568 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %569 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %568)
  store i64 %569, i64* %115
  %570 = load i64, i64* %113
  %571 = load i64, i64* %115
  %572 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %570, i64 %571)
  %573 = extractvalue {i64, i1} %572, 1
  br i1 %573, label %782, label %778
574:
  %575 = load i8 addrspace(1)*, i8 addrspace(1)** %117
  %576 = addrspacecast i8 addrspace(1)* %575 to i8*
  %577 = ptrtoint i8* %576 to i64
  %578 = and i64 %577, 2233785415175766016
  %579 = icmp eq i64 %578, 0
  store i1 %579, i1* %118
  %580 = load i1, i1* %118
  br i1 %580, label %590, label %581
581:
  %582 = load i8 addrspace(1)*, i8 addrspace(1)** %117
  %583 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %582)
  store i64 %583, i64* %119
  %584 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %585 = addrspacecast i8 addrspace(1)* %584 to i8*
  %586 = ptrtoint i8* %585 to i64
  %587 = and i64 %586, 2233785415175766016
  %588 = icmp eq i64 %587, 0
  store i1 %588, i1* %120
  %589 = load i1, i1* %120
  br i1 %589, label %590, label %591
590:
  store i8 addrspace(1)* null, i8 addrspace(1)** %123
  br label %598
591:
  %592 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %593 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %592)
  store i64 %593, i64* %121
  %594 = load i64, i64* %119
  %595 = load i64, i64* %121
  %596 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %594, i64 %595)
  %597 = extractvalue {i64, i1} %596, 1
  br i1 %597, label %788, label %784
598:
  %599 = load i8 addrspace(1)*, i8 addrspace(1)** %123
  %600 = addrspacecast i8 addrspace(1)* %599 to i8*
  %601 = ptrtoint i8* %600 to i64
  %602 = and i64 %601, 2233785415175766016
  %603 = icmp eq i64 %602, 0
  store i1 %603, i1* %124
  %604 = load i1, i1* %124
  br i1 %604, label %612, label %605
605:
  %606 = load i8 addrspace(1)*, i8 addrspace(1)** %123
  %607 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %606)
  store i64 %607, i64* %125
  %608 = load i64, i64* %125
  %609 = load i64, i64* %d
  %610 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %608, i64 %609)
  %611 = extractvalue {i64, i1} %610, 1
  br i1 %611, label %794, label %790
612:
  store i8 addrspace(1)* null, i8 addrspace(1)** %127
  br label %613
613:
  %614 = load i8 addrspace(1)*, i8 addrspace(1)** %127
  %615 = addrspacecast i8 addrspace(1)* %614 to i8*
  %616 = ptrtoint i8* %615 to i64
  %617 = and i64 %616, 2233785415175766016
  %618 = icmp eq i64 %617, 0
  store i1 %618, i1* %128
  %619 = load i1, i1* %128
  br i1 %619, label %629, label %620
620:
  %621 = load i8 addrspace(1)*, i8 addrspace(1)** %127
  %622 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %621)
  store i64 %622, i64* %129
  %623 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %624 = addrspacecast i8 addrspace(1)* %623 to i8*
  %625 = ptrtoint i8* %624 to i64
  %626 = and i64 %625, 2233785415175766016
  %627 = icmp eq i64 %626, 0
  store i1 %627, i1* %130
  %628 = load i1, i1* %130
  br i1 %628, label %629, label %630
629:
  store i8 addrspace(1)* null, i8 addrspace(1)** %133
  br label %637
630:
  %631 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %632 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %631)
  store i64 %632, i64* %131
  %633 = load i64, i64* %129
  %634 = load i64, i64* %131
  %635 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %633, i64 %634)
  %636 = extractvalue {i64, i1} %635, 1
  br i1 %636, label %800, label %796
637:
  %638 = load i8 addrspace(1)*, i8 addrspace(1)** %133, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %638), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %134, !dbg !21
  %639 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %640 = addrspacecast i8 addrspace(1)* %639 to i8*
  %641 = ptrtoint i8* %640 to i64
  %642 = and i64 %641, 2233785415175766016
  %643 = icmp eq i64 %642, 0
  store i1 %643, i1* %135
  %644 = load i1, i1* %135
  br i1 %644, label %651, label %645
645:
  %646 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %647 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %646)
  store i64 %647, i64* %136
  %648 = load i64, i64* %136
  %649 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %648)
  %650 = extractvalue {i64, i1} %649, 1
  br i1 %650, label %806, label %802
651:
  store i8 addrspace(1)* null, i8 addrspace(1)** %138
  br label %652
652:
  %653 = load i8 addrspace(1)*, i8 addrspace(1)** %138, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %653), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %139, !dbg !22
  ret void
654:
  %655 = load i8 addrspace(1)*, i8 addrspace(1)** %140
  call void @_bal_panic(i8 addrspace(1)* %655)
  unreachable
656:
  %657 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %657)
  unreachable
658:
  %659 = extractvalue {i64, i1} %169, 0
  store i64 %659, i64* %5
  %660 = load i64, i64* %5
  %661 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %660)
  store i8 addrspace(1)* %661, i8 addrspace(1)** %6
  br label %171
662:
  %663 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !7
  store i8 addrspace(1)* %663, i8 addrspace(1)** %140
  br label %654
664:
  %665 = extractvalue {i64, i1} %195, 0
  store i64 %665, i64* %12
  %666 = load i64, i64* %12
  %667 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %666)
  store i8 addrspace(1)* %667, i8 addrspace(1)** %13
  br label %197
668:
  %669 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %669, i8 addrspace(1)** %140
  br label %654
670:
  %671 = extractvalue {i64, i1} %220, 0
  store i64 %671, i64* %19
  %672 = load i64, i64* %19
  %673 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %672)
  store i8 addrspace(1)* %673, i8 addrspace(1)** %20
  br label %222
674:
  %675 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !7
  store i8 addrspace(1)* %675, i8 addrspace(1)** %140
  br label %654
676:
  %677 = extractvalue {i64, i1} %244, 0
  store i64 %677, i64* %25
  %678 = load i64, i64* %25
  %679 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %678)
  store i8 addrspace(1)* %679, i8 addrspace(1)** %26
  br label %246
680:
  %681 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !7
  store i8 addrspace(1)* %681, i8 addrspace(1)** %140
  br label %654
682:
  %683 = extractvalue {i64, i1} %270, 0
  store i64 %683, i64* %32
  %684 = load i64, i64* %32
  %685 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %684)
  store i8 addrspace(1)* %685, i8 addrspace(1)** %33
  br label %272
686:
  %687 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !7
  store i8 addrspace(1)* %687, i8 addrspace(1)** %140
  br label %654
688:
  %689 = extractvalue {i64, i1} %294, 0
  store i64 %689, i64* %38
  %690 = load i64, i64* %38
  %691 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %690)
  store i8 addrspace(1)* %691, i8 addrspace(1)** %39
  br label %296
692:
  %693 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !7
  store i8 addrspace(1)* %693, i8 addrspace(1)** %140
  br label %654
694:
  %695 = extractvalue {i64, i1} %319, 0
  store i64 %695, i64* %45
  %696 = load i64, i64* %45
  %697 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %696)
  store i8 addrspace(1)* %697, i8 addrspace(1)** %46
  br label %321
698:
  %699 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !7
  store i8 addrspace(1)* %699, i8 addrspace(1)** %140
  br label %654
700:
  %701 = extractvalue {i64, i1} %345, 0
  store i64 %701, i64* %52
  %702 = load i64, i64* %52
  %703 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %702)
  store i8 addrspace(1)* %703, i8 addrspace(1)** %53
  br label %347
704:
  %705 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609), !dbg !7
  store i8 addrspace(1)* %705, i8 addrspace(1)** %140
  br label %654
706:
  %707 = extractvalue {i64, i1} %369, 0
  store i64 %707, i64* %58
  %708 = load i64, i64* %58
  %709 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %708)
  store i8 addrspace(1)* %709, i8 addrspace(1)** %59
  br label %371
710:
  %711 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609), !dbg !7
  store i8 addrspace(1)* %711, i8 addrspace(1)** %140
  br label %654
712:
  %713 = call i8 addrspace(1)* @_bal_panic_construct(i64 5378), !dbg !7
  store i8 addrspace(1)* %713, i8 addrspace(1)** %140
  br label %654
714:
  %715 = icmp eq i64 %393, -9223372036854775808
  %716 = icmp eq i64 %394, -1
  %717 = and i1 %715, %716
  br i1 %717, label %722, label %718
718:
  %719 = sdiv i64 %393, %394
  store i64 %719, i64* %65
  %720 = load i64, i64* %65
  %721 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %720)
  store i8 addrspace(1)* %721, i8 addrspace(1)** %66
  br label %396
722:
  %723 = call i8 addrspace(1)* @_bal_panic_construct(i64 5377), !dbg !7
  store i8 addrspace(1)* %723, i8 addrspace(1)** %140
  br label %654
724:
  %725 = call i8 addrspace(1)* @_bal_panic_construct(i64 5890), !dbg !7
  store i8 addrspace(1)* %725, i8 addrspace(1)** %140
  br label %654
726:
  %727 = icmp eq i64 %407, -9223372036854775808
  %728 = icmp eq i64 3, -1
  %729 = and i1 %727, %728
  br i1 %729, label %734, label %730
730:
  %731 = sdiv i64 %407, 3
  store i64 %731, i64* %70
  %732 = load i64, i64* %70
  %733 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %732)
  store i8 addrspace(1)* %733, i8 addrspace(1)** %71
  br label %410
734:
  %735 = call i8 addrspace(1)* @_bal_panic_construct(i64 5889), !dbg !7
  store i8 addrspace(1)* %735, i8 addrspace(1)** %140
  br label %654
736:
  %737 = extractvalue {i64, i1} %423, 0
  store i64 %737, i64* %75
  %738 = load i64, i64* %75
  %739 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %738)
  store i8 addrspace(1)* %739, i8 addrspace(1)** %76
  br label %426
740:
  %741 = call i8 addrspace(1)* @_bal_panic_construct(i64 6657), !dbg !7
  store i8 addrspace(1)* %741, i8 addrspace(1)** %140
  br label %654
742:
  %743 = extractvalue {i64, i1} %439, 0
  store i64 %743, i64* %80
  %744 = load i64, i64* %80
  %745 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %744)
  store i8 addrspace(1)* %745, i8 addrspace(1)** %81
  br label %442
746:
  %747 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !7
  store i8 addrspace(1)* %747, i8 addrspace(1)** %140
  br label %654
748:
  %749 = extractvalue {i64, i1} %455, 0
  store i64 %749, i64* %85
  %750 = load i64, i64* %85
  %751 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %750)
  store i8 addrspace(1)* %751, i8 addrspace(1)** %86
  br label %458
752:
  %753 = call i8 addrspace(1)* @_bal_panic_construct(i64 7937), !dbg !7
  store i8 addrspace(1)* %753, i8 addrspace(1)** %140
  br label %654
754:
  %755 = extractvalue {i64, i1} %482, 0
  store i64 %755, i64* %92
  %756 = load i64, i64* %92
  %757 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %756)
  store i8 addrspace(1)* %757, i8 addrspace(1)** %93
  br label %484
758:
  %759 = call i8 addrspace(1)* @_bal_panic_construct(i64 8449), !dbg !7
  store i8 addrspace(1)* %759, i8 addrspace(1)** %140
  br label %654
760:
  %761 = extractvalue {i64, i1} %506, 0
  store i64 %761, i64* %98
  %762 = load i64, i64* %98
  %763 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %762)
  store i8 addrspace(1)* %763, i8 addrspace(1)** %99
  br label %508
764:
  %765 = call i8 addrspace(1)* @_bal_panic_construct(i64 8449), !dbg !7
  store i8 addrspace(1)* %765, i8 addrspace(1)** %140
  br label %654
766:
  %767 = extractvalue {i64, i1} %520, 0
  store i64 %767, i64* %102
  %768 = load i64, i64* %102
  %769 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %768)
  store i8 addrspace(1)* %769, i8 addrspace(1)** %103
  br label %523
770:
  %771 = call i8 addrspace(1)* @_bal_panic_construct(i64 8449), !dbg !7
  store i8 addrspace(1)* %771, i8 addrspace(1)** %140
  br label %654
772:
  %773 = extractvalue {i64, i1} %546, 0
  store i64 %773, i64* %109
  %774 = load i64, i64* %109
  %775 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %774)
  store i8 addrspace(1)* %775, i8 addrspace(1)** %110
  br label %548
776:
  %777 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217), !dbg !7
  store i8 addrspace(1)* %777, i8 addrspace(1)** %140
  br label %654
778:
  %779 = extractvalue {i64, i1} %572, 0
  store i64 %779, i64* %116
  %780 = load i64, i64* %116
  %781 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %780)
  store i8 addrspace(1)* %781, i8 addrspace(1)** %117
  br label %574
782:
  %783 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !7
  store i8 addrspace(1)* %783, i8 addrspace(1)** %140
  br label %654
784:
  %785 = extractvalue {i64, i1} %596, 0
  store i64 %785, i64* %122
  %786 = load i64, i64* %122
  %787 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %786)
  store i8 addrspace(1)* %787, i8 addrspace(1)** %123
  br label %598
788:
  %789 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !7
  store i8 addrspace(1)* %789, i8 addrspace(1)** %140
  br label %654
790:
  %791 = extractvalue {i64, i1} %610, 0
  store i64 %791, i64* %126
  %792 = load i64, i64* %126
  %793 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %792)
  store i8 addrspace(1)* %793, i8 addrspace(1)** %127
  br label %613
794:
  %795 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !7
  store i8 addrspace(1)* %795, i8 addrspace(1)** %140
  br label %654
796:
  %797 = extractvalue {i64, i1} %635, 0
  store i64 %797, i64* %132
  %798 = load i64, i64* %132
  %799 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %798)
  store i8 addrspace(1)* %799, i8 addrspace(1)** %133
  br label %637
800:
  %801 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !7
  store i8 addrspace(1)* %801, i8 addrspace(1)** %140
  br label %654
802:
  %803 = extractvalue {i64, i1} %649, 0
  store i64 %803, i64* %137
  %804 = load i64, i64* %137
  %805 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %804)
  store i8 addrspace(1)* %805, i8 addrspace(1)** %138
  br label %652
806:
  %807 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !7
  store i8 addrspace(1)* %807, i8 addrspace(1)** %140
  br label %654
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/1-v.bal", directory:"")
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
