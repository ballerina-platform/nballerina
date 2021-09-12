@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %nan = alloca double
  %anotherNan = alloca double
  %pInf = alloca double
  %nInf = alloca double
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %9 = alloca double
  %10 = alloca i8 addrspace(1)*
  %11 = alloca double
  %12 = alloca i8 addrspace(1)*
  %13 = alloca double
  %14 = alloca i8 addrspace(1)*
  %15 = alloca double
  %16 = alloca i8 addrspace(1)*
  %17 = alloca double
  %18 = alloca i8 addrspace(1)*
  %19 = alloca double
  %20 = alloca i8 addrspace(1)*
  %21 = alloca double
  %22 = alloca i8 addrspace(1)*
  %23 = alloca double
  %24 = alloca i8 addrspace(1)*
  %25 = alloca double
  %26 = alloca i8 addrspace(1)*
  %27 = alloca double
  %28 = alloca i8 addrspace(1)*
  %29 = alloca double
  %30 = alloca i8 addrspace(1)*
  %31 = alloca double
  %32 = alloca i8 addrspace(1)*
  %33 = alloca double
  %34 = alloca i8 addrspace(1)*
  %35 = alloca double
  %36 = alloca i8 addrspace(1)*
  %37 = alloca double
  %38 = alloca i8 addrspace(1)*
  %39 = alloca double
  %40 = alloca i8 addrspace(1)*
  %41 = alloca double
  %42 = alloca i8 addrspace(1)*
  %43 = alloca double
  %44 = alloca i8 addrspace(1)*
  %45 = alloca double
  %46 = alloca i8 addrspace(1)*
  %47 = alloca double
  %48 = alloca i8 addrspace(1)*
  %49 = alloca double
  %50 = alloca i8 addrspace(1)*
  %51 = alloca double
  %52 = alloca i8 addrspace(1)*
  %53 = alloca double
  %54 = alloca i8 addrspace(1)*
  %55 = alloca double
  %56 = alloca i8 addrspace(1)*
  %57 = alloca double
  %58 = alloca i8 addrspace(1)*
  %59 = alloca double
  %60 = alloca i8 addrspace(1)*
  %61 = alloca double
  %62 = alloca i8 addrspace(1)*
  %63 = alloca double
  %64 = alloca i8 addrspace(1)*
  %65 = alloca double
  %66 = alloca i8 addrspace(1)*
  %67 = alloca double
  %68 = alloca i8 addrspace(1)*
  %69 = alloca double
  %70 = alloca i8 addrspace(1)*
  %71 = alloca double
  %72 = alloca i8 addrspace(1)*
  %73 = alloca double
  %74 = alloca i8 addrspace(1)*
  %75 = alloca double
  %76 = alloca i8 addrspace(1)*
  %77 = alloca double
  %78 = alloca i8 addrspace(1)*
  %79 = alloca double
  %80 = alloca i8 addrspace(1)*
  %81 = alloca double
  %82 = alloca i8 addrspace(1)*
  %83 = alloca double
  %84 = alloca i8 addrspace(1)*
  %85 = alloca double
  %86 = alloca i8 addrspace(1)*
  %87 = alloca double
  %88 = alloca i8 addrspace(1)*
  %89 = alloca double
  %90 = alloca i8 addrspace(1)*
  %91 = alloca double
  %92 = alloca i8 addrspace(1)*
  %93 = alloca double
  %94 = alloca i8 addrspace(1)*
  %95 = alloca double
  %96 = alloca i8 addrspace(1)*
  %97 = alloca double
  %98 = alloca i8 addrspace(1)*
  %99 = alloca double
  %100 = alloca i8 addrspace(1)*
  %101 = alloca double
  %102 = alloca i8 addrspace(1)*
  %103 = alloca double
  %104 = alloca i8 addrspace(1)*
  %105 = alloca double
  %106 = alloca i8 addrspace(1)*
  %107 = alloca double
  %108 = alloca i8 addrspace(1)*
  %109 = alloca double
  %110 = alloca i8 addrspace(1)*
  %111 = alloca double
  %112 = alloca i8 addrspace(1)*
  %113 = alloca double
  %114 = alloca i8 addrspace(1)*
  %115 = alloca i8 addrspace(1)*
  %116 = alloca i8 addrspace(1)*
  %117 = alloca i8 addrspace(1)*
  %118 = alloca i8 addrspace(1)*
  %119 = alloca i8 addrspace(1)*
  %120 = alloca i8 addrspace(1)*
  %121 = alloca i8 addrspace(1)*
  %122 = alloca i8 addrspace(1)*
  %123 = alloca i8 addrspace(1)*
  %124 = alloca i8 addrspace(1)*
  %125 = alloca double
  %126 = alloca i8 addrspace(1)*
  %127 = alloca double
  %128 = alloca i8 addrspace(1)*
  %129 = alloca double
  %130 = alloca i8 addrspace(1)*
  %131 = alloca double
  %132 = alloca i8 addrspace(1)*
  %133 = alloca double
  %134 = alloca i8 addrspace(1)*
  %135 = alloca double
  %136 = alloca i8 addrspace(1)*
  %137 = alloca double
  %138 = alloca i8 addrspace(1)*
  %139 = alloca double
  %140 = alloca i8 addrspace(1)*
  %141 = alloca double
  %142 = alloca i8 addrspace(1)*
  %143 = alloca double
  %144 = alloca i8 addrspace(1)*
  %145 = alloca double
  %146 = alloca i8 addrspace(1)*
  %147 = alloca double
  %148 = alloca i8 addrspace(1)*
  %149 = alloca double
  %150 = alloca i8 addrspace(1)*
  %151 = alloca double
  %152 = alloca i8 addrspace(1)*
  %153 = alloca double
  %154 = alloca i8 addrspace(1)*
  %155 = alloca double
  %156 = alloca i8 addrspace(1)*
  %157 = alloca double
  %158 = alloca i8 addrspace(1)*
  %159 = alloca double
  %160 = alloca i8 addrspace(1)*
  %161 = alloca double
  %162 = alloca i8 addrspace(1)*
  %163 = alloca double
  %164 = alloca i8 addrspace(1)*
  %165 = alloca double
  %166 = alloca i8 addrspace(1)*
  %167 = alloca double
  %168 = alloca i8 addrspace(1)*
  %169 = alloca i8 addrspace(1)*
  %170 = alloca i8 addrspace(1)*
  %171 = alloca i8 addrspace(1)*
  %172 = alloca i8 addrspace(1)*
  %173 = alloca i8 addrspace(1)*
  %174 = alloca i8 addrspace(1)*
  %175 = alloca i8 addrspace(1)*
  %176 = alloca i8 addrspace(1)*
  %177 = alloca i8 addrspace(1)*
  %178 = alloca i8 addrspace(1)*
  %179 = alloca i8 addrspace(1)*
  %180 = alloca i8 addrspace(1)*
  %181 = alloca i8 addrspace(1)*
  %182 = alloca i8 addrspace(1)*
  %183 = alloca i8 addrspace(1)*
  %184 = alloca i8 addrspace(1)*
  %185 = alloca i8 addrspace(1)*
  %186 = alloca i8 addrspace(1)*
  %187 = alloca i8 addrspace(1)*
  %188 = alloca i8 addrspace(1)*
  %189 = alloca i8 addrspace(1)*
  %190 = alloca i8 addrspace(1)*
  %191 = alloca i8 addrspace(1)*
  %192 = alloca i8 addrspace(1)*
  %193 = alloca double
  %194 = alloca i8 addrspace(1)*
  %f = alloca double
  %195 = alloca double
  %196 = alloca i8 addrspace(1)*
  %197 = alloca double
  %198 = alloca i8 addrspace(1)*
  %199 = alloca i8
  %200 = load i8*, i8** @_bal_stack_guard
  %201 = icmp ult i8* %199, %200
  br i1 %201, label %579, label %202
202:
  store double 0x7FF8000000000000, double* %nan
  store double 0x7FF8000000000000, double* %anotherNan
  store double 0x7FF0000000000000, double* %pInf
  store double 0xFFF0000000000000, double* %nInf
  %203 = load double, double* %nan
  %204 = load double, double* %nan
  %205 = frem double %203, %204
  store double %205, double* %1
  %206 = load double, double* %1
  %207 = call i8 addrspace(1)* @_bal_float_to_tagged(double %206)
  call void @_Bio__println(i8 addrspace(1)* %207)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %208 = load double, double* %nan
  %209 = load double, double* %pInf
  %210 = frem double %208, %209
  store double %210, double* %3
  %211 = load double, double* %3
  %212 = call i8 addrspace(1)* @_bal_float_to_tagged(double %211)
  call void @_Bio__println(i8 addrspace(1)* %212)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %213 = load double, double* %nan
  %214 = frem double %213, 7.0
  store double %214, double* %5
  %215 = load double, double* %5
  %216 = call i8 addrspace(1)* @_bal_float_to_tagged(double %215)
  call void @_Bio__println(i8 addrspace(1)* %216)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %217 = load double, double* %nan
  %218 = frem double %217, 5.0
  store double %218, double* %7
  %219 = load double, double* %7
  %220 = call i8 addrspace(1)* @_bal_float_to_tagged(double %219)
  call void @_Bio__println(i8 addrspace(1)* %220)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %221 = load double, double* %nan
  %222 = frem double %221, 0.7
  store double %222, double* %9
  %223 = load double, double* %9
  %224 = call i8 addrspace(1)* @_bal_float_to_tagged(double %223)
  call void @_Bio__println(i8 addrspace(1)* %224)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %225 = load double, double* %nan
  %226 = frem double %225, 0.5
  store double %226, double* %11
  %227 = load double, double* %11
  %228 = call i8 addrspace(1)* @_bal_float_to_tagged(double %227)
  call void @_Bio__println(i8 addrspace(1)* %228)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %229 = load double, double* %nan
  %230 = frem double %229, 0.0
  store double %230, double* %13
  %231 = load double, double* %13
  %232 = call i8 addrspace(1)* @_bal_float_to_tagged(double %231)
  call void @_Bio__println(i8 addrspace(1)* %232)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %233 = load double, double* %nan
  %234 = frem double %233, -7.0
  store double %234, double* %15
  %235 = load double, double* %15
  %236 = call i8 addrspace(1)* @_bal_float_to_tagged(double %235)
  call void @_Bio__println(i8 addrspace(1)* %236)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %237 = load double, double* %nan
  %238 = frem double %237, -5.0
  store double %238, double* %17
  %239 = load double, double* %17
  %240 = call i8 addrspace(1)* @_bal_float_to_tagged(double %239)
  call void @_Bio__println(i8 addrspace(1)* %240)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %241 = load double, double* %nan
  %242 = frem double %241, -0.7
  store double %242, double* %19
  %243 = load double, double* %19
  %244 = call i8 addrspace(1)* @_bal_float_to_tagged(double %243)
  call void @_Bio__println(i8 addrspace(1)* %244)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %245 = load double, double* %nan
  %246 = frem double %245, -0.5
  store double %246, double* %21
  %247 = load double, double* %21
  %248 = call i8 addrspace(1)* @_bal_float_to_tagged(double %247)
  call void @_Bio__println(i8 addrspace(1)* %248)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %249 = load double, double* %nan
  %250 = frem double %249, -0.0
  store double %250, double* %23
  %251 = load double, double* %23
  %252 = call i8 addrspace(1)* @_bal_float_to_tagged(double %251)
  call void @_Bio__println(i8 addrspace(1)* %252)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %253 = load double, double* %nan
  %254 = load double, double* %nInf
  %255 = frem double %253, %254
  store double %255, double* %25
  %256 = load double, double* %25
  %257 = call i8 addrspace(1)* @_bal_float_to_tagged(double %256)
  call void @_Bio__println(i8 addrspace(1)* %257)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %258 = load double, double* %nan
  %259 = load double, double* %anotherNan
  %260 = frem double %258, %259
  store double %260, double* %27
  %261 = load double, double* %27
  %262 = call i8 addrspace(1)* @_bal_float_to_tagged(double %261)
  call void @_Bio__println(i8 addrspace(1)* %262)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %263 = load double, double* %pInf
  %264 = load double, double* %nan
  %265 = frem double %263, %264
  store double %265, double* %29
  %266 = load double, double* %29
  %267 = call i8 addrspace(1)* @_bal_float_to_tagged(double %266)
  call void @_Bio__println(i8 addrspace(1)* %267)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %268 = load double, double* %nan
  %269 = frem double 7.0, %268
  store double %269, double* %31
  %270 = load double, double* %31
  %271 = call i8 addrspace(1)* @_bal_float_to_tagged(double %270)
  call void @_Bio__println(i8 addrspace(1)* %271)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %272 = load double, double* %nan
  %273 = frem double 5.0, %272
  store double %273, double* %33
  %274 = load double, double* %33
  %275 = call i8 addrspace(1)* @_bal_float_to_tagged(double %274)
  call void @_Bio__println(i8 addrspace(1)* %275)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %276 = load double, double* %nan
  %277 = frem double 0.7, %276
  store double %277, double* %35
  %278 = load double, double* %35
  %279 = call i8 addrspace(1)* @_bal_float_to_tagged(double %278)
  call void @_Bio__println(i8 addrspace(1)* %279)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %280 = load double, double* %nan
  %281 = frem double 0.5, %280
  store double %281, double* %37
  %282 = load double, double* %37
  %283 = call i8 addrspace(1)* @_bal_float_to_tagged(double %282)
  call void @_Bio__println(i8 addrspace(1)* %283)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  %284 = load double, double* %nan
  %285 = frem double 0.0, %284
  store double %285, double* %39
  %286 = load double, double* %39
  %287 = call i8 addrspace(1)* @_bal_float_to_tagged(double %286)
  call void @_Bio__println(i8 addrspace(1)* %287)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  %288 = load double, double* %nan
  %289 = frem double -7.0, %288
  store double %289, double* %41
  %290 = load double, double* %41
  %291 = call i8 addrspace(1)* @_bal_float_to_tagged(double %290)
  call void @_Bio__println(i8 addrspace(1)* %291)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %292 = load double, double* %nan
  %293 = frem double -5.0, %292
  store double %293, double* %43
  %294 = load double, double* %43
  %295 = call i8 addrspace(1)* @_bal_float_to_tagged(double %294)
  call void @_Bio__println(i8 addrspace(1)* %295)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %296 = load double, double* %nan
  %297 = frem double -0.7, %296
  store double %297, double* %45
  %298 = load double, double* %45
  %299 = call i8 addrspace(1)* @_bal_float_to_tagged(double %298)
  call void @_Bio__println(i8 addrspace(1)* %299)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %300 = load double, double* %nan
  %301 = frem double -0.5, %300
  store double %301, double* %47
  %302 = load double, double* %47
  %303 = call i8 addrspace(1)* @_bal_float_to_tagged(double %302)
  call void @_Bio__println(i8 addrspace(1)* %303)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  %304 = load double, double* %nan
  %305 = frem double -0.0, %304
  store double %305, double* %49
  %306 = load double, double* %49
  %307 = call i8 addrspace(1)* @_bal_float_to_tagged(double %306)
  call void @_Bio__println(i8 addrspace(1)* %307)
  store i8 addrspace(1)* null, i8 addrspace(1)** %50
  %308 = load double, double* %nInf
  %309 = load double, double* %nan
  %310 = frem double %308, %309
  store double %310, double* %51
  %311 = load double, double* %51
  %312 = call i8 addrspace(1)* @_bal_float_to_tagged(double %311)
  call void @_Bio__println(i8 addrspace(1)* %312)
  store i8 addrspace(1)* null, i8 addrspace(1)** %52
  %313 = load double, double* %anotherNan
  %314 = load double, double* %nan
  %315 = frem double %313, %314
  store double %315, double* %53
  %316 = load double, double* %53
  %317 = call i8 addrspace(1)* @_bal_float_to_tagged(double %316)
  call void @_Bio__println(i8 addrspace(1)* %317)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  %318 = load double, double* %pInf
  %319 = load double, double* %nan
  %320 = frem double %318, %319
  store double %320, double* %55
  %321 = load double, double* %55
  %322 = call i8 addrspace(1)* @_bal_float_to_tagged(double %321)
  call void @_Bio__println(i8 addrspace(1)* %322)
  store i8 addrspace(1)* null, i8 addrspace(1)** %56
  %323 = load double, double* %pInf
  %324 = load double, double* %pInf
  %325 = frem double %323, %324
  store double %325, double* %57
  %326 = load double, double* %57
  %327 = call i8 addrspace(1)* @_bal_float_to_tagged(double %326)
  call void @_Bio__println(i8 addrspace(1)* %327)
  store i8 addrspace(1)* null, i8 addrspace(1)** %58
  %328 = load double, double* %pInf
  %329 = frem double %328, 7.0
  store double %329, double* %59
  %330 = load double, double* %59
  %331 = call i8 addrspace(1)* @_bal_float_to_tagged(double %330)
  call void @_Bio__println(i8 addrspace(1)* %331)
  store i8 addrspace(1)* null, i8 addrspace(1)** %60
  %332 = load double, double* %pInf
  %333 = frem double %332, 5.0
  store double %333, double* %61
  %334 = load double, double* %61
  %335 = call i8 addrspace(1)* @_bal_float_to_tagged(double %334)
  call void @_Bio__println(i8 addrspace(1)* %335)
  store i8 addrspace(1)* null, i8 addrspace(1)** %62
  %336 = load double, double* %pInf
  %337 = frem double %336, 0.7
  store double %337, double* %63
  %338 = load double, double* %63
  %339 = call i8 addrspace(1)* @_bal_float_to_tagged(double %338)
  call void @_Bio__println(i8 addrspace(1)* %339)
  store i8 addrspace(1)* null, i8 addrspace(1)** %64
  %340 = load double, double* %pInf
  %341 = frem double %340, 0.5
  store double %341, double* %65
  %342 = load double, double* %65
  %343 = call i8 addrspace(1)* @_bal_float_to_tagged(double %342)
  call void @_Bio__println(i8 addrspace(1)* %343)
  store i8 addrspace(1)* null, i8 addrspace(1)** %66
  %344 = load double, double* %pInf
  %345 = frem double %344, 0.0
  store double %345, double* %67
  %346 = load double, double* %67
  %347 = call i8 addrspace(1)* @_bal_float_to_tagged(double %346)
  call void @_Bio__println(i8 addrspace(1)* %347)
  store i8 addrspace(1)* null, i8 addrspace(1)** %68
  %348 = load double, double* %pInf
  %349 = frem double %348, -7.0
  store double %349, double* %69
  %350 = load double, double* %69
  %351 = call i8 addrspace(1)* @_bal_float_to_tagged(double %350)
  call void @_Bio__println(i8 addrspace(1)* %351)
  store i8 addrspace(1)* null, i8 addrspace(1)** %70
  %352 = load double, double* %pInf
  %353 = frem double %352, -5.0
  store double %353, double* %71
  %354 = load double, double* %71
  %355 = call i8 addrspace(1)* @_bal_float_to_tagged(double %354)
  call void @_Bio__println(i8 addrspace(1)* %355)
  store i8 addrspace(1)* null, i8 addrspace(1)** %72
  %356 = load double, double* %pInf
  %357 = frem double %356, -0.7
  store double %357, double* %73
  %358 = load double, double* %73
  %359 = call i8 addrspace(1)* @_bal_float_to_tagged(double %358)
  call void @_Bio__println(i8 addrspace(1)* %359)
  store i8 addrspace(1)* null, i8 addrspace(1)** %74
  %360 = load double, double* %pInf
  %361 = frem double %360, -0.5
  store double %361, double* %75
  %362 = load double, double* %75
  %363 = call i8 addrspace(1)* @_bal_float_to_tagged(double %362)
  call void @_Bio__println(i8 addrspace(1)* %363)
  store i8 addrspace(1)* null, i8 addrspace(1)** %76
  %364 = load double, double* %pInf
  %365 = frem double %364, -0.0
  store double %365, double* %77
  %366 = load double, double* %77
  %367 = call i8 addrspace(1)* @_bal_float_to_tagged(double %366)
  call void @_Bio__println(i8 addrspace(1)* %367)
  store i8 addrspace(1)* null, i8 addrspace(1)** %78
  %368 = load double, double* %pInf
  %369 = load double, double* %nInf
  %370 = frem double %368, %369
  store double %370, double* %79
  %371 = load double, double* %79
  %372 = call i8 addrspace(1)* @_bal_float_to_tagged(double %371)
  call void @_Bio__println(i8 addrspace(1)* %372)
  store i8 addrspace(1)* null, i8 addrspace(1)** %80
  %373 = load double, double* %pInf
  %374 = load double, double* %anotherNan
  %375 = frem double %373, %374
  store double %375, double* %81
  %376 = load double, double* %81
  %377 = call i8 addrspace(1)* @_bal_float_to_tagged(double %376)
  call void @_Bio__println(i8 addrspace(1)* %377)
  store i8 addrspace(1)* null, i8 addrspace(1)** %82
  %378 = load double, double* %nInf
  %379 = load double, double* %nan
  %380 = frem double %378, %379
  store double %380, double* %83
  %381 = load double, double* %83
  %382 = call i8 addrspace(1)* @_bal_float_to_tagged(double %381)
  call void @_Bio__println(i8 addrspace(1)* %382)
  store i8 addrspace(1)* null, i8 addrspace(1)** %84
  %383 = load double, double* %nInf
  %384 = load double, double* %pInf
  %385 = frem double %383, %384
  store double %385, double* %85
  %386 = load double, double* %85
  %387 = call i8 addrspace(1)* @_bal_float_to_tagged(double %386)
  call void @_Bio__println(i8 addrspace(1)* %387)
  store i8 addrspace(1)* null, i8 addrspace(1)** %86
  %388 = load double, double* %nInf
  %389 = frem double %388, 7.0
  store double %389, double* %87
  %390 = load double, double* %87
  %391 = call i8 addrspace(1)* @_bal_float_to_tagged(double %390)
  call void @_Bio__println(i8 addrspace(1)* %391)
  store i8 addrspace(1)* null, i8 addrspace(1)** %88
  %392 = load double, double* %nInf
  %393 = frem double %392, 5.0
  store double %393, double* %89
  %394 = load double, double* %89
  %395 = call i8 addrspace(1)* @_bal_float_to_tagged(double %394)
  call void @_Bio__println(i8 addrspace(1)* %395)
  store i8 addrspace(1)* null, i8 addrspace(1)** %90
  %396 = load double, double* %nInf
  %397 = frem double %396, 0.7
  store double %397, double* %91
  %398 = load double, double* %91
  %399 = call i8 addrspace(1)* @_bal_float_to_tagged(double %398)
  call void @_Bio__println(i8 addrspace(1)* %399)
  store i8 addrspace(1)* null, i8 addrspace(1)** %92
  %400 = load double, double* %nInf
  %401 = frem double %400, 0.5
  store double %401, double* %93
  %402 = load double, double* %93
  %403 = call i8 addrspace(1)* @_bal_float_to_tagged(double %402)
  call void @_Bio__println(i8 addrspace(1)* %403)
  store i8 addrspace(1)* null, i8 addrspace(1)** %94
  %404 = load double, double* %nInf
  %405 = frem double %404, 0.0
  store double %405, double* %95
  %406 = load double, double* %95
  %407 = call i8 addrspace(1)* @_bal_float_to_tagged(double %406)
  call void @_Bio__println(i8 addrspace(1)* %407)
  store i8 addrspace(1)* null, i8 addrspace(1)** %96
  %408 = load double, double* %nInf
  %409 = frem double %408, -7.0
  store double %409, double* %97
  %410 = load double, double* %97
  %411 = call i8 addrspace(1)* @_bal_float_to_tagged(double %410)
  call void @_Bio__println(i8 addrspace(1)* %411)
  store i8 addrspace(1)* null, i8 addrspace(1)** %98
  %412 = load double, double* %nInf
  %413 = frem double %412, -5.0
  store double %413, double* %99
  %414 = load double, double* %99
  %415 = call i8 addrspace(1)* @_bal_float_to_tagged(double %414)
  call void @_Bio__println(i8 addrspace(1)* %415)
  store i8 addrspace(1)* null, i8 addrspace(1)** %100
  %416 = load double, double* %nInf
  %417 = frem double %416, -0.7
  store double %417, double* %101
  %418 = load double, double* %101
  %419 = call i8 addrspace(1)* @_bal_float_to_tagged(double %418)
  call void @_Bio__println(i8 addrspace(1)* %419)
  store i8 addrspace(1)* null, i8 addrspace(1)** %102
  %420 = load double, double* %nInf
  %421 = frem double %420, -0.5
  store double %421, double* %103
  %422 = load double, double* %103
  %423 = call i8 addrspace(1)* @_bal_float_to_tagged(double %422)
  call void @_Bio__println(i8 addrspace(1)* %423)
  store i8 addrspace(1)* null, i8 addrspace(1)** %104
  %424 = load double, double* %nInf
  %425 = frem double %424, -0.0
  store double %425, double* %105
  %426 = load double, double* %105
  %427 = call i8 addrspace(1)* @_bal_float_to_tagged(double %426)
  call void @_Bio__println(i8 addrspace(1)* %427)
  store i8 addrspace(1)* null, i8 addrspace(1)** %106
  %428 = load double, double* %nInf
  %429 = load double, double* %nInf
  %430 = frem double %428, %429
  store double %430, double* %107
  %431 = load double, double* %107
  %432 = call i8 addrspace(1)* @_bal_float_to_tagged(double %431)
  call void @_Bio__println(i8 addrspace(1)* %432)
  store i8 addrspace(1)* null, i8 addrspace(1)** %108
  %433 = load double, double* %nInf
  %434 = load double, double* %anotherNan
  %435 = frem double %433, %434
  store double %435, double* %109
  %436 = load double, double* %109
  %437 = call i8 addrspace(1)* @_bal_float_to_tagged(double %436)
  call void @_Bio__println(i8 addrspace(1)* %437)
  store i8 addrspace(1)* null, i8 addrspace(1)** %110
  %438 = load double, double* %nan
  %439 = frem double %438, 0.0
  store double %439, double* %111
  %440 = load double, double* %111
  %441 = call i8 addrspace(1)* @_bal_float_to_tagged(double %440)
  call void @_Bio__println(i8 addrspace(1)* %441)
  store i8 addrspace(1)* null, i8 addrspace(1)** %112
  %442 = load double, double* %pInf
  %443 = frem double %442, 0.0
  store double %443, double* %113
  %444 = load double, double* %113
  %445 = call i8 addrspace(1)* @_bal_float_to_tagged(double %444)
  call void @_Bio__println(i8 addrspace(1)* %445)
  store i8 addrspace(1)* null, i8 addrspace(1)** %114
  %446 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %446)
  store i8 addrspace(1)* null, i8 addrspace(1)** %115
  %447 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %447)
  store i8 addrspace(1)* null, i8 addrspace(1)** %116
  %448 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %448)
  store i8 addrspace(1)* null, i8 addrspace(1)** %117
  %449 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %449)
  store i8 addrspace(1)* null, i8 addrspace(1)** %118
  %450 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %450)
  store i8 addrspace(1)* null, i8 addrspace(1)** %119
  %451 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %451)
  store i8 addrspace(1)* null, i8 addrspace(1)** %120
  %452 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %452)
  store i8 addrspace(1)* null, i8 addrspace(1)** %121
  %453 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %453)
  store i8 addrspace(1)* null, i8 addrspace(1)** %122
  %454 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %454)
  store i8 addrspace(1)* null, i8 addrspace(1)** %123
  %455 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %455)
  store i8 addrspace(1)* null, i8 addrspace(1)** %124
  %456 = load double, double* %nInf
  %457 = frem double %456, 0.0
  store double %457, double* %125
  %458 = load double, double* %125
  %459 = call i8 addrspace(1)* @_bal_float_to_tagged(double %458)
  call void @_Bio__println(i8 addrspace(1)* %459)
  store i8 addrspace(1)* null, i8 addrspace(1)** %126
  %460 = load double, double* %anotherNan
  %461 = frem double %460, 0.0
  store double %461, double* %127
  %462 = load double, double* %127
  %463 = call i8 addrspace(1)* @_bal_float_to_tagged(double %462)
  call void @_Bio__println(i8 addrspace(1)* %463)
  store i8 addrspace(1)* null, i8 addrspace(1)** %128
  %464 = load double, double* %pInf
  %465 = frem double 7.0, %464
  store double %465, double* %129
  %466 = load double, double* %129
  %467 = call i8 addrspace(1)* @_bal_float_to_tagged(double %466)
  call void @_Bio__println(i8 addrspace(1)* %467)
  store i8 addrspace(1)* null, i8 addrspace(1)** %130
  %468 = load double, double* %pInf
  %469 = frem double 5.0, %468
  store double %469, double* %131
  %470 = load double, double* %131
  %471 = call i8 addrspace(1)* @_bal_float_to_tagged(double %470)
  call void @_Bio__println(i8 addrspace(1)* %471)
  store i8 addrspace(1)* null, i8 addrspace(1)** %132
  %472 = load double, double* %pInf
  %473 = frem double 0.7, %472
  store double %473, double* %133
  %474 = load double, double* %133
  %475 = call i8 addrspace(1)* @_bal_float_to_tagged(double %474)
  call void @_Bio__println(i8 addrspace(1)* %475)
  store i8 addrspace(1)* null, i8 addrspace(1)** %134
  %476 = load double, double* %pInf
  %477 = frem double 0.5, %476
  store double %477, double* %135
  %478 = load double, double* %135
  %479 = call i8 addrspace(1)* @_bal_float_to_tagged(double %478)
  call void @_Bio__println(i8 addrspace(1)* %479)
  store i8 addrspace(1)* null, i8 addrspace(1)** %136
  %480 = load double, double* %pInf
  %481 = frem double 0.0, %480
  store double %481, double* %137
  %482 = load double, double* %137
  %483 = call i8 addrspace(1)* @_bal_float_to_tagged(double %482)
  call void @_Bio__println(i8 addrspace(1)* %483)
  store i8 addrspace(1)* null, i8 addrspace(1)** %138
  %484 = load double, double* %pInf
  %485 = frem double -7.0, %484
  store double %485, double* %139
  %486 = load double, double* %139
  %487 = call i8 addrspace(1)* @_bal_float_to_tagged(double %486)
  call void @_Bio__println(i8 addrspace(1)* %487)
  store i8 addrspace(1)* null, i8 addrspace(1)** %140
  %488 = load double, double* %pInf
  %489 = frem double -5.0, %488
  store double %489, double* %141
  %490 = load double, double* %141
  %491 = call i8 addrspace(1)* @_bal_float_to_tagged(double %490)
  call void @_Bio__println(i8 addrspace(1)* %491)
  store i8 addrspace(1)* null, i8 addrspace(1)** %142
  %492 = load double, double* %pInf
  %493 = frem double -0.7, %492
  store double %493, double* %143
  %494 = load double, double* %143
  %495 = call i8 addrspace(1)* @_bal_float_to_tagged(double %494)
  call void @_Bio__println(i8 addrspace(1)* %495)
  store i8 addrspace(1)* null, i8 addrspace(1)** %144
  %496 = load double, double* %pInf
  %497 = frem double -0.5, %496
  store double %497, double* %145
  %498 = load double, double* %145
  %499 = call i8 addrspace(1)* @_bal_float_to_tagged(double %498)
  call void @_Bio__println(i8 addrspace(1)* %499)
  store i8 addrspace(1)* null, i8 addrspace(1)** %146
  %500 = load double, double* %pInf
  %501 = frem double -0.0, %500
  store double %501, double* %147
  %502 = load double, double* %147
  %503 = call i8 addrspace(1)* @_bal_float_to_tagged(double %502)
  call void @_Bio__println(i8 addrspace(1)* %503)
  store i8 addrspace(1)* null, i8 addrspace(1)** %148
  %504 = load double, double* %nInf
  %505 = frem double 7.0, %504
  store double %505, double* %149
  %506 = load double, double* %149
  %507 = call i8 addrspace(1)* @_bal_float_to_tagged(double %506)
  call void @_Bio__println(i8 addrspace(1)* %507)
  store i8 addrspace(1)* null, i8 addrspace(1)** %150
  %508 = load double, double* %nInf
  %509 = frem double 5.0, %508
  store double %509, double* %151
  %510 = load double, double* %151
  %511 = call i8 addrspace(1)* @_bal_float_to_tagged(double %510)
  call void @_Bio__println(i8 addrspace(1)* %511)
  store i8 addrspace(1)* null, i8 addrspace(1)** %152
  %512 = load double, double* %nInf
  %513 = frem double 0.7, %512
  store double %513, double* %153
  %514 = load double, double* %153
  %515 = call i8 addrspace(1)* @_bal_float_to_tagged(double %514)
  call void @_Bio__println(i8 addrspace(1)* %515)
  store i8 addrspace(1)* null, i8 addrspace(1)** %154
  %516 = load double, double* %nInf
  %517 = frem double 0.5, %516
  store double %517, double* %155
  %518 = load double, double* %155
  %519 = call i8 addrspace(1)* @_bal_float_to_tagged(double %518)
  call void @_Bio__println(i8 addrspace(1)* %519)
  store i8 addrspace(1)* null, i8 addrspace(1)** %156
  %520 = load double, double* %nInf
  %521 = frem double 0.0, %520
  store double %521, double* %157
  %522 = load double, double* %157
  %523 = call i8 addrspace(1)* @_bal_float_to_tagged(double %522)
  call void @_Bio__println(i8 addrspace(1)* %523)
  store i8 addrspace(1)* null, i8 addrspace(1)** %158
  %524 = load double, double* %nInf
  %525 = frem double -7.0, %524
  store double %525, double* %159
  %526 = load double, double* %159
  %527 = call i8 addrspace(1)* @_bal_float_to_tagged(double %526)
  call void @_Bio__println(i8 addrspace(1)* %527)
  store i8 addrspace(1)* null, i8 addrspace(1)** %160
  %528 = load double, double* %nInf
  %529 = frem double -5.0, %528
  store double %529, double* %161
  %530 = load double, double* %161
  %531 = call i8 addrspace(1)* @_bal_float_to_tagged(double %530)
  call void @_Bio__println(i8 addrspace(1)* %531)
  store i8 addrspace(1)* null, i8 addrspace(1)** %162
  %532 = load double, double* %nInf
  %533 = frem double -0.7, %532
  store double %533, double* %163
  %534 = load double, double* %163
  %535 = call i8 addrspace(1)* @_bal_float_to_tagged(double %534)
  call void @_Bio__println(i8 addrspace(1)* %535)
  store i8 addrspace(1)* null, i8 addrspace(1)** %164
  %536 = load double, double* %nInf
  %537 = frem double -0.5, %536
  store double %537, double* %165
  %538 = load double, double* %165
  %539 = call i8 addrspace(1)* @_bal_float_to_tagged(double %538)
  call void @_Bio__println(i8 addrspace(1)* %539)
  store i8 addrspace(1)* null, i8 addrspace(1)** %166
  %540 = load double, double* %nInf
  %541 = frem double -0.0, %540
  store double %541, double* %167
  %542 = load double, double* %167
  %543 = call i8 addrspace(1)* @_bal_float_to_tagged(double %542)
  call void @_Bio__println(i8 addrspace(1)* %543)
  store i8 addrspace(1)* null, i8 addrspace(1)** %168
  %544 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %544)
  store i8 addrspace(1)* null, i8 addrspace(1)** %169
  %545 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.0)
  call void @_Bio__println(i8 addrspace(1)* %545)
  store i8 addrspace(1)* null, i8 addrspace(1)** %170
  %546 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.7)
  call void @_Bio__println(i8 addrspace(1)* %546)
  store i8 addrspace(1)* null, i8 addrspace(1)** %171
  %547 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  call void @_Bio__println(i8 addrspace(1)* %547)
  store i8 addrspace(1)* null, i8 addrspace(1)** %172
  %548 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %548)
  store i8 addrspace(1)* null, i8 addrspace(1)** %173
  %549 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  call void @_Bio__println(i8 addrspace(1)* %549)
  store i8 addrspace(1)* null, i8 addrspace(1)** %174
  %550 = call i8 addrspace(1)* @_bal_float_to_tagged(double -5.0)
  call void @_Bio__println(i8 addrspace(1)* %550)
  store i8 addrspace(1)* null, i8 addrspace(1)** %175
  %551 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.7)
  call void @_Bio__println(i8 addrspace(1)* %551)
  store i8 addrspace(1)* null, i8 addrspace(1)** %176
  %552 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.5)
  call void @_Bio__println(i8 addrspace(1)* %552)
  store i8 addrspace(1)* null, i8 addrspace(1)** %177
  %553 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  call void @_Bio__println(i8 addrspace(1)* %553)
  store i8 addrspace(1)* null, i8 addrspace(1)** %178
  %554 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  call void @_Bio__println(i8 addrspace(1)* %554)
  store i8 addrspace(1)* null, i8 addrspace(1)** %179
  %555 = call i8 addrspace(1)* @_bal_float_to_tagged(double -2.0)
  call void @_Bio__println(i8 addrspace(1)* %555)
  store i8 addrspace(1)* null, i8 addrspace(1)** %180
  %556 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %556)
  store i8 addrspace(1)* null, i8 addrspace(1)** %181
  %557 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.0)
  call void @_Bio__println(i8 addrspace(1)* %557)
  store i8 addrspace(1)* null, i8 addrspace(1)** %182
  %558 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.7)
  call void @_Bio__println(i8 addrspace(1)* %558)
  store i8 addrspace(1)* null, i8 addrspace(1)** %183
  %559 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  call void @_Bio__println(i8 addrspace(1)* %559)
  store i8 addrspace(1)* null, i8 addrspace(1)** %184
  %560 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %560)
  store i8 addrspace(1)* null, i8 addrspace(1)** %185
  %561 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  call void @_Bio__println(i8 addrspace(1)* %561)
  store i8 addrspace(1)* null, i8 addrspace(1)** %186
  %562 = call i8 addrspace(1)* @_bal_float_to_tagged(double -5.0)
  call void @_Bio__println(i8 addrspace(1)* %562)
  store i8 addrspace(1)* null, i8 addrspace(1)** %187
  %563 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.7)
  call void @_Bio__println(i8 addrspace(1)* %563)
  store i8 addrspace(1)* null, i8 addrspace(1)** %188
  %564 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.5)
  call void @_Bio__println(i8 addrspace(1)* %564)
  store i8 addrspace(1)* null, i8 addrspace(1)** %189
  %565 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  call void @_Bio__println(i8 addrspace(1)* %565)
  store i8 addrspace(1)* null, i8 addrspace(1)** %190
  %566 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  call void @_Bio__println(i8 addrspace(1)* %566)
  store i8 addrspace(1)* null, i8 addrspace(1)** %191
  %567 = call i8 addrspace(1)* @_bal_float_to_tagged(double -2.0)
  call void @_Bio__println(i8 addrspace(1)* %567)
  store i8 addrspace(1)* null, i8 addrspace(1)** %192
  %568 = call double @_B_floatRem(double 1.0, double 0.1)
  store double %568, double* %193
  %569 = load double, double* %193
  %570 = call i8 addrspace(1)* @_bal_float_to_tagged(double %569)
  call void @_Bio__println(i8 addrspace(1)* %570)
  store i8 addrspace(1)* null, i8 addrspace(1)** %194
  store double 100.0, double* %f
  %571 = load double, double* %f
  %572 = frem double %571, 19.0
  store double %572, double* %195
  %573 = load double, double* %195
  %574 = call i8 addrspace(1)* @_bal_float_to_tagged(double %573)
  call void @_Bio__println(i8 addrspace(1)* %574)
  store i8 addrspace(1)* null, i8 addrspace(1)** %196
  %575 = load double, double* %f
  %576 = frem double 1999.0, %575
  store double %576, double* %197
  %577 = load double, double* %197
  %578 = call i8 addrspace(1)* @_bal_float_to_tagged(double %577)
  call void @_Bio__println(i8 addrspace(1)* %578)
  store i8 addrspace(1)* null, i8 addrspace(1)** %198
  ret void
579:
  %580 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %580)
  unreachable
}
define internal double @_B_floatRem(double %0, double %1) {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca double
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store double %0, double* %f1
  store double %1, double* %f2
  %8 = load double, double* %f1
  %9 = load double, double* %f2
  %10 = frem double %8, %9
  store double %10, double* %3
  %11 = load double, double* %3
  ret double %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 35844)
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
