@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
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
  %206 = load double, double* %1, !dbg !10
  %207 = call i8 addrspace(1)* @_bal_float_to_tagged(double %206), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %207), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  %208 = load double, double* %nan
  %209 = load double, double* %pInf
  %210 = frem double %208, %209
  store double %210, double* %3
  %211 = load double, double* %3, !dbg !11
  %212 = call i8 addrspace(1)* @_bal_float_to_tagged(double %211), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %212), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %213 = load double, double* %nan
  %214 = frem double %213, 7.0
  store double %214, double* %5
  %215 = load double, double* %5, !dbg !12
  %216 = call i8 addrspace(1)* @_bal_float_to_tagged(double %215), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %216), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !12
  %217 = load double, double* %nan
  %218 = frem double %217, 5.0
  store double %218, double* %7
  %219 = load double, double* %7, !dbg !13
  %220 = call i8 addrspace(1)* @_bal_float_to_tagged(double %219), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %220), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !13
  %221 = load double, double* %nan
  %222 = frem double %221, 0.7
  store double %222, double* %9
  %223 = load double, double* %9, !dbg !14
  %224 = call i8 addrspace(1)* @_bal_float_to_tagged(double %223), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %224), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !14
  %225 = load double, double* %nan
  %226 = frem double %225, 0.5
  store double %226, double* %11
  %227 = load double, double* %11, !dbg !15
  %228 = call i8 addrspace(1)* @_bal_float_to_tagged(double %227), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %228), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !15
  %229 = load double, double* %nan
  %230 = frem double %229, 0.0
  store double %230, double* %13
  %231 = load double, double* %13, !dbg !16
  %232 = call i8 addrspace(1)* @_bal_float_to_tagged(double %231), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %232), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !16
  %233 = load double, double* %nan
  %234 = frem double %233, -7.0
  store double %234, double* %15
  %235 = load double, double* %15, !dbg !17
  %236 = call i8 addrspace(1)* @_bal_float_to_tagged(double %235), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %236), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !17
  %237 = load double, double* %nan
  %238 = frem double %237, -5.0
  store double %238, double* %17
  %239 = load double, double* %17, !dbg !18
  %240 = call i8 addrspace(1)* @_bal_float_to_tagged(double %239), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %240), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !18
  %241 = load double, double* %nan
  %242 = frem double %241, -0.7
  store double %242, double* %19
  %243 = load double, double* %19, !dbg !19
  %244 = call i8 addrspace(1)* @_bal_float_to_tagged(double %243), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %244), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !19
  %245 = load double, double* %nan
  %246 = frem double %245, -0.5
  store double %246, double* %21
  %247 = load double, double* %21, !dbg !20
  %248 = call i8 addrspace(1)* @_bal_float_to_tagged(double %247), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %248), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !20
  %249 = load double, double* %nan
  %250 = frem double %249, -0.0
  store double %250, double* %23
  %251 = load double, double* %23, !dbg !21
  %252 = call i8 addrspace(1)* @_bal_float_to_tagged(double %251), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %252), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !21
  %253 = load double, double* %nan
  %254 = load double, double* %nInf
  %255 = frem double %253, %254
  store double %255, double* %25
  %256 = load double, double* %25, !dbg !22
  %257 = call i8 addrspace(1)* @_bal_float_to_tagged(double %256), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %257), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !22
  %258 = load double, double* %nan
  %259 = load double, double* %anotherNan
  %260 = frem double %258, %259
  store double %260, double* %27
  %261 = load double, double* %27, !dbg !23
  %262 = call i8 addrspace(1)* @_bal_float_to_tagged(double %261), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %262), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !23
  %263 = load double, double* %pInf
  %264 = load double, double* %nan
  %265 = frem double %263, %264
  store double %265, double* %29
  %266 = load double, double* %29, !dbg !24
  %267 = call i8 addrspace(1)* @_bal_float_to_tagged(double %266), !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %267), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !24
  %268 = load double, double* %nan
  %269 = frem double 7.0, %268
  store double %269, double* %31
  %270 = load double, double* %31, !dbg !25
  %271 = call i8 addrspace(1)* @_bal_float_to_tagged(double %270), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %271), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !25
  %272 = load double, double* %nan
  %273 = frem double 5.0, %272
  store double %273, double* %33
  %274 = load double, double* %33, !dbg !26
  %275 = call i8 addrspace(1)* @_bal_float_to_tagged(double %274), !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %275), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !26
  %276 = load double, double* %nan
  %277 = frem double 0.7, %276
  store double %277, double* %35
  %278 = load double, double* %35, !dbg !27
  %279 = call i8 addrspace(1)* @_bal_float_to_tagged(double %278), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %279), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !27
  %280 = load double, double* %nan
  %281 = frem double 0.5, %280
  store double %281, double* %37
  %282 = load double, double* %37, !dbg !28
  %283 = call i8 addrspace(1)* @_bal_float_to_tagged(double %282), !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %283), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !28
  %284 = load double, double* %nan
  %285 = frem double 0.0, %284
  store double %285, double* %39
  %286 = load double, double* %39, !dbg !29
  %287 = call i8 addrspace(1)* @_bal_float_to_tagged(double %286), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %287), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !29
  %288 = load double, double* %nan
  %289 = frem double -7.0, %288
  store double %289, double* %41
  %290 = load double, double* %41, !dbg !30
  %291 = call i8 addrspace(1)* @_bal_float_to_tagged(double %290), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %291), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !30
  %292 = load double, double* %nan
  %293 = frem double -5.0, %292
  store double %293, double* %43
  %294 = load double, double* %43, !dbg !31
  %295 = call i8 addrspace(1)* @_bal_float_to_tagged(double %294), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %295), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !31
  %296 = load double, double* %nan
  %297 = frem double -0.7, %296
  store double %297, double* %45
  %298 = load double, double* %45, !dbg !32
  %299 = call i8 addrspace(1)* @_bal_float_to_tagged(double %298), !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %299), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !32
  %300 = load double, double* %nan
  %301 = frem double -0.5, %300
  store double %301, double* %47
  %302 = load double, double* %47, !dbg !33
  %303 = call i8 addrspace(1)* @_bal_float_to_tagged(double %302), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %303), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !33
  %304 = load double, double* %nan
  %305 = frem double -0.0, %304
  store double %305, double* %49
  %306 = load double, double* %49, !dbg !34
  %307 = call i8 addrspace(1)* @_bal_float_to_tagged(double %306), !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %307), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !34
  %308 = load double, double* %nInf
  %309 = load double, double* %nan
  %310 = frem double %308, %309
  store double %310, double* %51
  %311 = load double, double* %51, !dbg !35
  %312 = call i8 addrspace(1)* @_bal_float_to_tagged(double %311), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %312), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !35
  %313 = load double, double* %anotherNan
  %314 = load double, double* %nan
  %315 = frem double %313, %314
  store double %315, double* %53
  %316 = load double, double* %53, !dbg !36
  %317 = call i8 addrspace(1)* @_bal_float_to_tagged(double %316), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %317), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !36
  %318 = load double, double* %pInf
  %319 = load double, double* %nan
  %320 = frem double %318, %319
  store double %320, double* %55
  %321 = load double, double* %55, !dbg !37
  %322 = call i8 addrspace(1)* @_bal_float_to_tagged(double %321), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %322), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !37
  %323 = load double, double* %pInf
  %324 = load double, double* %pInf
  %325 = frem double %323, %324
  store double %325, double* %57
  %326 = load double, double* %57, !dbg !38
  %327 = call i8 addrspace(1)* @_bal_float_to_tagged(double %326), !dbg !38
  call void @_Bb02ioprintln(i8 addrspace(1)* %327), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %58, !dbg !38
  %328 = load double, double* %pInf
  %329 = frem double %328, 7.0
  store double %329, double* %59
  %330 = load double, double* %59, !dbg !39
  %331 = call i8 addrspace(1)* @_bal_float_to_tagged(double %330), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %331), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !39
  %332 = load double, double* %pInf
  %333 = frem double %332, 5.0
  store double %333, double* %61
  %334 = load double, double* %61, !dbg !40
  %335 = call i8 addrspace(1)* @_bal_float_to_tagged(double %334), !dbg !40
  call void @_Bb02ioprintln(i8 addrspace(1)* %335), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %62, !dbg !40
  %336 = load double, double* %pInf
  %337 = frem double %336, 0.7
  store double %337, double* %63
  %338 = load double, double* %63, !dbg !41
  %339 = call i8 addrspace(1)* @_bal_float_to_tagged(double %338), !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %339), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %64, !dbg !41
  %340 = load double, double* %pInf
  %341 = frem double %340, 0.5
  store double %341, double* %65
  %342 = load double, double* %65, !dbg !42
  %343 = call i8 addrspace(1)* @_bal_float_to_tagged(double %342), !dbg !42
  call void @_Bb02ioprintln(i8 addrspace(1)* %343), !dbg !42
  store i8 addrspace(1)* null, i8 addrspace(1)** %66, !dbg !42
  %344 = load double, double* %pInf
  %345 = frem double %344, 0.0
  store double %345, double* %67
  %346 = load double, double* %67, !dbg !43
  %347 = call i8 addrspace(1)* @_bal_float_to_tagged(double %346), !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %347), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %68, !dbg !43
  %348 = load double, double* %pInf
  %349 = frem double %348, -7.0
  store double %349, double* %69
  %350 = load double, double* %69, !dbg !44
  %351 = call i8 addrspace(1)* @_bal_float_to_tagged(double %350), !dbg !44
  call void @_Bb02ioprintln(i8 addrspace(1)* %351), !dbg !44
  store i8 addrspace(1)* null, i8 addrspace(1)** %70, !dbg !44
  %352 = load double, double* %pInf
  %353 = frem double %352, -5.0
  store double %353, double* %71
  %354 = load double, double* %71, !dbg !45
  %355 = call i8 addrspace(1)* @_bal_float_to_tagged(double %354), !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %355), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !45
  %356 = load double, double* %pInf
  %357 = frem double %356, -0.7
  store double %357, double* %73
  %358 = load double, double* %73, !dbg !46
  %359 = call i8 addrspace(1)* @_bal_float_to_tagged(double %358), !dbg !46
  call void @_Bb02ioprintln(i8 addrspace(1)* %359), !dbg !46
  store i8 addrspace(1)* null, i8 addrspace(1)** %74, !dbg !46
  %360 = load double, double* %pInf
  %361 = frem double %360, -0.5
  store double %361, double* %75
  %362 = load double, double* %75, !dbg !47
  %363 = call i8 addrspace(1)* @_bal_float_to_tagged(double %362), !dbg !47
  call void @_Bb02ioprintln(i8 addrspace(1)* %363), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %76, !dbg !47
  %364 = load double, double* %pInf
  %365 = frem double %364, -0.0
  store double %365, double* %77
  %366 = load double, double* %77, !dbg !48
  %367 = call i8 addrspace(1)* @_bal_float_to_tagged(double %366), !dbg !48
  call void @_Bb02ioprintln(i8 addrspace(1)* %367), !dbg !48
  store i8 addrspace(1)* null, i8 addrspace(1)** %78, !dbg !48
  %368 = load double, double* %pInf
  %369 = load double, double* %nInf
  %370 = frem double %368, %369
  store double %370, double* %79
  %371 = load double, double* %79, !dbg !49
  %372 = call i8 addrspace(1)* @_bal_float_to_tagged(double %371), !dbg !49
  call void @_Bb02ioprintln(i8 addrspace(1)* %372), !dbg !49
  store i8 addrspace(1)* null, i8 addrspace(1)** %80, !dbg !49
  %373 = load double, double* %pInf
  %374 = load double, double* %anotherNan
  %375 = frem double %373, %374
  store double %375, double* %81
  %376 = load double, double* %81, !dbg !50
  %377 = call i8 addrspace(1)* @_bal_float_to_tagged(double %376), !dbg !50
  call void @_Bb02ioprintln(i8 addrspace(1)* %377), !dbg !50
  store i8 addrspace(1)* null, i8 addrspace(1)** %82, !dbg !50
  %378 = load double, double* %nInf
  %379 = load double, double* %nan
  %380 = frem double %378, %379
  store double %380, double* %83
  %381 = load double, double* %83, !dbg !51
  %382 = call i8 addrspace(1)* @_bal_float_to_tagged(double %381), !dbg !51
  call void @_Bb02ioprintln(i8 addrspace(1)* %382), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %84, !dbg !51
  %383 = load double, double* %nInf
  %384 = load double, double* %pInf
  %385 = frem double %383, %384
  store double %385, double* %85
  %386 = load double, double* %85, !dbg !52
  %387 = call i8 addrspace(1)* @_bal_float_to_tagged(double %386), !dbg !52
  call void @_Bb02ioprintln(i8 addrspace(1)* %387), !dbg !52
  store i8 addrspace(1)* null, i8 addrspace(1)** %86, !dbg !52
  %388 = load double, double* %nInf
  %389 = frem double %388, 7.0
  store double %389, double* %87
  %390 = load double, double* %87, !dbg !53
  %391 = call i8 addrspace(1)* @_bal_float_to_tagged(double %390), !dbg !53
  call void @_Bb02ioprintln(i8 addrspace(1)* %391), !dbg !53
  store i8 addrspace(1)* null, i8 addrspace(1)** %88, !dbg !53
  %392 = load double, double* %nInf
  %393 = frem double %392, 5.0
  store double %393, double* %89
  %394 = load double, double* %89, !dbg !54
  %395 = call i8 addrspace(1)* @_bal_float_to_tagged(double %394), !dbg !54
  call void @_Bb02ioprintln(i8 addrspace(1)* %395), !dbg !54
  store i8 addrspace(1)* null, i8 addrspace(1)** %90, !dbg !54
  %396 = load double, double* %nInf
  %397 = frem double %396, 0.7
  store double %397, double* %91
  %398 = load double, double* %91, !dbg !55
  %399 = call i8 addrspace(1)* @_bal_float_to_tagged(double %398), !dbg !55
  call void @_Bb02ioprintln(i8 addrspace(1)* %399), !dbg !55
  store i8 addrspace(1)* null, i8 addrspace(1)** %92, !dbg !55
  %400 = load double, double* %nInf
  %401 = frem double %400, 0.5
  store double %401, double* %93
  %402 = load double, double* %93, !dbg !56
  %403 = call i8 addrspace(1)* @_bal_float_to_tagged(double %402), !dbg !56
  call void @_Bb02ioprintln(i8 addrspace(1)* %403), !dbg !56
  store i8 addrspace(1)* null, i8 addrspace(1)** %94, !dbg !56
  %404 = load double, double* %nInf
  %405 = frem double %404, 0.0
  store double %405, double* %95
  %406 = load double, double* %95, !dbg !57
  %407 = call i8 addrspace(1)* @_bal_float_to_tagged(double %406), !dbg !57
  call void @_Bb02ioprintln(i8 addrspace(1)* %407), !dbg !57
  store i8 addrspace(1)* null, i8 addrspace(1)** %96, !dbg !57
  %408 = load double, double* %nInf
  %409 = frem double %408, -7.0
  store double %409, double* %97
  %410 = load double, double* %97, !dbg !58
  %411 = call i8 addrspace(1)* @_bal_float_to_tagged(double %410), !dbg !58
  call void @_Bb02ioprintln(i8 addrspace(1)* %411), !dbg !58
  store i8 addrspace(1)* null, i8 addrspace(1)** %98, !dbg !58
  %412 = load double, double* %nInf
  %413 = frem double %412, -5.0
  store double %413, double* %99
  %414 = load double, double* %99, !dbg !59
  %415 = call i8 addrspace(1)* @_bal_float_to_tagged(double %414), !dbg !59
  call void @_Bb02ioprintln(i8 addrspace(1)* %415), !dbg !59
  store i8 addrspace(1)* null, i8 addrspace(1)** %100, !dbg !59
  %416 = load double, double* %nInf
  %417 = frem double %416, -0.7
  store double %417, double* %101
  %418 = load double, double* %101, !dbg !60
  %419 = call i8 addrspace(1)* @_bal_float_to_tagged(double %418), !dbg !60
  call void @_Bb02ioprintln(i8 addrspace(1)* %419), !dbg !60
  store i8 addrspace(1)* null, i8 addrspace(1)** %102, !dbg !60
  %420 = load double, double* %nInf
  %421 = frem double %420, -0.5
  store double %421, double* %103
  %422 = load double, double* %103, !dbg !61
  %423 = call i8 addrspace(1)* @_bal_float_to_tagged(double %422), !dbg !61
  call void @_Bb02ioprintln(i8 addrspace(1)* %423), !dbg !61
  store i8 addrspace(1)* null, i8 addrspace(1)** %104, !dbg !61
  %424 = load double, double* %nInf
  %425 = frem double %424, -0.0
  store double %425, double* %105
  %426 = load double, double* %105, !dbg !62
  %427 = call i8 addrspace(1)* @_bal_float_to_tagged(double %426), !dbg !62
  call void @_Bb02ioprintln(i8 addrspace(1)* %427), !dbg !62
  store i8 addrspace(1)* null, i8 addrspace(1)** %106, !dbg !62
  %428 = load double, double* %nInf
  %429 = load double, double* %nInf
  %430 = frem double %428, %429
  store double %430, double* %107
  %431 = load double, double* %107, !dbg !63
  %432 = call i8 addrspace(1)* @_bal_float_to_tagged(double %431), !dbg !63
  call void @_Bb02ioprintln(i8 addrspace(1)* %432), !dbg !63
  store i8 addrspace(1)* null, i8 addrspace(1)** %108, !dbg !63
  %433 = load double, double* %nInf
  %434 = load double, double* %anotherNan
  %435 = frem double %433, %434
  store double %435, double* %109
  %436 = load double, double* %109, !dbg !64
  %437 = call i8 addrspace(1)* @_bal_float_to_tagged(double %436), !dbg !64
  call void @_Bb02ioprintln(i8 addrspace(1)* %437), !dbg !64
  store i8 addrspace(1)* null, i8 addrspace(1)** %110, !dbg !64
  %438 = load double, double* %nan
  %439 = frem double %438, 0.0
  store double %439, double* %111
  %440 = load double, double* %111, !dbg !65
  %441 = call i8 addrspace(1)* @_bal_float_to_tagged(double %440), !dbg !65
  call void @_Bb02ioprintln(i8 addrspace(1)* %441), !dbg !65
  store i8 addrspace(1)* null, i8 addrspace(1)** %112, !dbg !65
  %442 = load double, double* %pInf
  %443 = frem double %442, 0.0
  store double %443, double* %113
  %444 = load double, double* %113, !dbg !66
  %445 = call i8 addrspace(1)* @_bal_float_to_tagged(double %444), !dbg !66
  call void @_Bb02ioprintln(i8 addrspace(1)* %445), !dbg !66
  store i8 addrspace(1)* null, i8 addrspace(1)** %114, !dbg !66
  %446 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !67
  call void @_Bb02ioprintln(i8 addrspace(1)* %446), !dbg !67
  store i8 addrspace(1)* null, i8 addrspace(1)** %115, !dbg !67
  %447 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !68
  call void @_Bb02ioprintln(i8 addrspace(1)* %447), !dbg !68
  store i8 addrspace(1)* null, i8 addrspace(1)** %116, !dbg !68
  %448 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !69
  call void @_Bb02ioprintln(i8 addrspace(1)* %448), !dbg !69
  store i8 addrspace(1)* null, i8 addrspace(1)** %117, !dbg !69
  %449 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !70
  call void @_Bb02ioprintln(i8 addrspace(1)* %449), !dbg !70
  store i8 addrspace(1)* null, i8 addrspace(1)** %118, !dbg !70
  %450 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !71
  call void @_Bb02ioprintln(i8 addrspace(1)* %450), !dbg !71
  store i8 addrspace(1)* null, i8 addrspace(1)** %119, !dbg !71
  %451 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !72
  call void @_Bb02ioprintln(i8 addrspace(1)* %451), !dbg !72
  store i8 addrspace(1)* null, i8 addrspace(1)** %120, !dbg !72
  %452 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !73
  call void @_Bb02ioprintln(i8 addrspace(1)* %452), !dbg !73
  store i8 addrspace(1)* null, i8 addrspace(1)** %121, !dbg !73
  %453 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !74
  call void @_Bb02ioprintln(i8 addrspace(1)* %453), !dbg !74
  store i8 addrspace(1)* null, i8 addrspace(1)** %122, !dbg !74
  %454 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !75
  call void @_Bb02ioprintln(i8 addrspace(1)* %454), !dbg !75
  store i8 addrspace(1)* null, i8 addrspace(1)** %123, !dbg !75
  %455 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !76
  call void @_Bb02ioprintln(i8 addrspace(1)* %455), !dbg !76
  store i8 addrspace(1)* null, i8 addrspace(1)** %124, !dbg !76
  %456 = load double, double* %nInf
  %457 = frem double %456, 0.0
  store double %457, double* %125
  %458 = load double, double* %125, !dbg !77
  %459 = call i8 addrspace(1)* @_bal_float_to_tagged(double %458), !dbg !77
  call void @_Bb02ioprintln(i8 addrspace(1)* %459), !dbg !77
  store i8 addrspace(1)* null, i8 addrspace(1)** %126, !dbg !77
  %460 = load double, double* %anotherNan
  %461 = frem double %460, 0.0
  store double %461, double* %127
  %462 = load double, double* %127, !dbg !78
  %463 = call i8 addrspace(1)* @_bal_float_to_tagged(double %462), !dbg !78
  call void @_Bb02ioprintln(i8 addrspace(1)* %463), !dbg !78
  store i8 addrspace(1)* null, i8 addrspace(1)** %128, !dbg !78
  %464 = load double, double* %pInf
  %465 = frem double 7.0, %464
  store double %465, double* %129
  %466 = load double, double* %129, !dbg !79
  %467 = call i8 addrspace(1)* @_bal_float_to_tagged(double %466), !dbg !79
  call void @_Bb02ioprintln(i8 addrspace(1)* %467), !dbg !79
  store i8 addrspace(1)* null, i8 addrspace(1)** %130, !dbg !79
  %468 = load double, double* %pInf
  %469 = frem double 5.0, %468
  store double %469, double* %131
  %470 = load double, double* %131, !dbg !80
  %471 = call i8 addrspace(1)* @_bal_float_to_tagged(double %470), !dbg !80
  call void @_Bb02ioprintln(i8 addrspace(1)* %471), !dbg !80
  store i8 addrspace(1)* null, i8 addrspace(1)** %132, !dbg !80
  %472 = load double, double* %pInf
  %473 = frem double 0.7, %472
  store double %473, double* %133
  %474 = load double, double* %133, !dbg !81
  %475 = call i8 addrspace(1)* @_bal_float_to_tagged(double %474), !dbg !81
  call void @_Bb02ioprintln(i8 addrspace(1)* %475), !dbg !81
  store i8 addrspace(1)* null, i8 addrspace(1)** %134, !dbg !81
  %476 = load double, double* %pInf
  %477 = frem double 0.5, %476
  store double %477, double* %135
  %478 = load double, double* %135, !dbg !82
  %479 = call i8 addrspace(1)* @_bal_float_to_tagged(double %478), !dbg !82
  call void @_Bb02ioprintln(i8 addrspace(1)* %479), !dbg !82
  store i8 addrspace(1)* null, i8 addrspace(1)** %136, !dbg !82
  %480 = load double, double* %pInf
  %481 = frem double 0.0, %480
  store double %481, double* %137
  %482 = load double, double* %137, !dbg !83
  %483 = call i8 addrspace(1)* @_bal_float_to_tagged(double %482), !dbg !83
  call void @_Bb02ioprintln(i8 addrspace(1)* %483), !dbg !83
  store i8 addrspace(1)* null, i8 addrspace(1)** %138, !dbg !83
  %484 = load double, double* %pInf
  %485 = frem double -7.0, %484
  store double %485, double* %139
  %486 = load double, double* %139, !dbg !84
  %487 = call i8 addrspace(1)* @_bal_float_to_tagged(double %486), !dbg !84
  call void @_Bb02ioprintln(i8 addrspace(1)* %487), !dbg !84
  store i8 addrspace(1)* null, i8 addrspace(1)** %140, !dbg !84
  %488 = load double, double* %pInf
  %489 = frem double -5.0, %488
  store double %489, double* %141
  %490 = load double, double* %141, !dbg !85
  %491 = call i8 addrspace(1)* @_bal_float_to_tagged(double %490), !dbg !85
  call void @_Bb02ioprintln(i8 addrspace(1)* %491), !dbg !85
  store i8 addrspace(1)* null, i8 addrspace(1)** %142, !dbg !85
  %492 = load double, double* %pInf
  %493 = frem double -0.7, %492
  store double %493, double* %143
  %494 = load double, double* %143, !dbg !86
  %495 = call i8 addrspace(1)* @_bal_float_to_tagged(double %494), !dbg !86
  call void @_Bb02ioprintln(i8 addrspace(1)* %495), !dbg !86
  store i8 addrspace(1)* null, i8 addrspace(1)** %144, !dbg !86
  %496 = load double, double* %pInf
  %497 = frem double -0.5, %496
  store double %497, double* %145
  %498 = load double, double* %145, !dbg !87
  %499 = call i8 addrspace(1)* @_bal_float_to_tagged(double %498), !dbg !87
  call void @_Bb02ioprintln(i8 addrspace(1)* %499), !dbg !87
  store i8 addrspace(1)* null, i8 addrspace(1)** %146, !dbg !87
  %500 = load double, double* %pInf
  %501 = frem double -0.0, %500
  store double %501, double* %147
  %502 = load double, double* %147, !dbg !88
  %503 = call i8 addrspace(1)* @_bal_float_to_tagged(double %502), !dbg !88
  call void @_Bb02ioprintln(i8 addrspace(1)* %503), !dbg !88
  store i8 addrspace(1)* null, i8 addrspace(1)** %148, !dbg !88
  %504 = load double, double* %nInf
  %505 = frem double 7.0, %504
  store double %505, double* %149
  %506 = load double, double* %149, !dbg !89
  %507 = call i8 addrspace(1)* @_bal_float_to_tagged(double %506), !dbg !89
  call void @_Bb02ioprintln(i8 addrspace(1)* %507), !dbg !89
  store i8 addrspace(1)* null, i8 addrspace(1)** %150, !dbg !89
  %508 = load double, double* %nInf
  %509 = frem double 5.0, %508
  store double %509, double* %151
  %510 = load double, double* %151, !dbg !90
  %511 = call i8 addrspace(1)* @_bal_float_to_tagged(double %510), !dbg !90
  call void @_Bb02ioprintln(i8 addrspace(1)* %511), !dbg !90
  store i8 addrspace(1)* null, i8 addrspace(1)** %152, !dbg !90
  %512 = load double, double* %nInf
  %513 = frem double 0.7, %512
  store double %513, double* %153
  %514 = load double, double* %153, !dbg !91
  %515 = call i8 addrspace(1)* @_bal_float_to_tagged(double %514), !dbg !91
  call void @_Bb02ioprintln(i8 addrspace(1)* %515), !dbg !91
  store i8 addrspace(1)* null, i8 addrspace(1)** %154, !dbg !91
  %516 = load double, double* %nInf
  %517 = frem double 0.5, %516
  store double %517, double* %155
  %518 = load double, double* %155, !dbg !92
  %519 = call i8 addrspace(1)* @_bal_float_to_tagged(double %518), !dbg !92
  call void @_Bb02ioprintln(i8 addrspace(1)* %519), !dbg !92
  store i8 addrspace(1)* null, i8 addrspace(1)** %156, !dbg !92
  %520 = load double, double* %nInf
  %521 = frem double 0.0, %520
  store double %521, double* %157
  %522 = load double, double* %157, !dbg !93
  %523 = call i8 addrspace(1)* @_bal_float_to_tagged(double %522), !dbg !93
  call void @_Bb02ioprintln(i8 addrspace(1)* %523), !dbg !93
  store i8 addrspace(1)* null, i8 addrspace(1)** %158, !dbg !93
  %524 = load double, double* %nInf
  %525 = frem double -7.0, %524
  store double %525, double* %159
  %526 = load double, double* %159, !dbg !94
  %527 = call i8 addrspace(1)* @_bal_float_to_tagged(double %526), !dbg !94
  call void @_Bb02ioprintln(i8 addrspace(1)* %527), !dbg !94
  store i8 addrspace(1)* null, i8 addrspace(1)** %160, !dbg !94
  %528 = load double, double* %nInf
  %529 = frem double -5.0, %528
  store double %529, double* %161
  %530 = load double, double* %161, !dbg !95
  %531 = call i8 addrspace(1)* @_bal_float_to_tagged(double %530), !dbg !95
  call void @_Bb02ioprintln(i8 addrspace(1)* %531), !dbg !95
  store i8 addrspace(1)* null, i8 addrspace(1)** %162, !dbg !95
  %532 = load double, double* %nInf
  %533 = frem double -0.7, %532
  store double %533, double* %163
  %534 = load double, double* %163, !dbg !96
  %535 = call i8 addrspace(1)* @_bal_float_to_tagged(double %534), !dbg !96
  call void @_Bb02ioprintln(i8 addrspace(1)* %535), !dbg !96
  store i8 addrspace(1)* null, i8 addrspace(1)** %164, !dbg !96
  %536 = load double, double* %nInf
  %537 = frem double -0.5, %536
  store double %537, double* %165
  %538 = load double, double* %165, !dbg !97
  %539 = call i8 addrspace(1)* @_bal_float_to_tagged(double %538), !dbg !97
  call void @_Bb02ioprintln(i8 addrspace(1)* %539), !dbg !97
  store i8 addrspace(1)* null, i8 addrspace(1)** %166, !dbg !97
  %540 = load double, double* %nInf
  %541 = frem double -0.0, %540
  store double %541, double* %167
  %542 = load double, double* %167, !dbg !98
  %543 = call i8 addrspace(1)* @_bal_float_to_tagged(double %542), !dbg !98
  call void @_Bb02ioprintln(i8 addrspace(1)* %543), !dbg !98
  store i8 addrspace(1)* null, i8 addrspace(1)** %168, !dbg !98
  %544 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !99
  call void @_Bb02ioprintln(i8 addrspace(1)* %544), !dbg !99
  store i8 addrspace(1)* null, i8 addrspace(1)** %169, !dbg !99
  %545 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.0), !dbg !100
  call void @_Bb02ioprintln(i8 addrspace(1)* %545), !dbg !100
  store i8 addrspace(1)* null, i8 addrspace(1)** %170, !dbg !100
  %546 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.7), !dbg !101
  call void @_Bb02ioprintln(i8 addrspace(1)* %546), !dbg !101
  store i8 addrspace(1)* null, i8 addrspace(1)** %171, !dbg !101
  %547 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5), !dbg !102
  call void @_Bb02ioprintln(i8 addrspace(1)* %547), !dbg !102
  store i8 addrspace(1)* null, i8 addrspace(1)** %172, !dbg !102
  %548 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !103
  call void @_Bb02ioprintln(i8 addrspace(1)* %548), !dbg !103
  store i8 addrspace(1)* null, i8 addrspace(1)** %173, !dbg !103
  %549 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !104
  call void @_Bb02ioprintln(i8 addrspace(1)* %549), !dbg !104
  store i8 addrspace(1)* null, i8 addrspace(1)** %174, !dbg !104
  %550 = call i8 addrspace(1)* @_bal_float_to_tagged(double -5.0), !dbg !105
  call void @_Bb02ioprintln(i8 addrspace(1)* %550), !dbg !105
  store i8 addrspace(1)* null, i8 addrspace(1)** %175, !dbg !105
  %551 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.7), !dbg !106
  call void @_Bb02ioprintln(i8 addrspace(1)* %551), !dbg !106
  store i8 addrspace(1)* null, i8 addrspace(1)** %176, !dbg !106
  %552 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.5), !dbg !107
  call void @_Bb02ioprintln(i8 addrspace(1)* %552), !dbg !107
  store i8 addrspace(1)* null, i8 addrspace(1)** %177, !dbg !107
  %553 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !108
  call void @_Bb02ioprintln(i8 addrspace(1)* %553), !dbg !108
  store i8 addrspace(1)* null, i8 addrspace(1)** %178, !dbg !108
  %554 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0), !dbg !109
  call void @_Bb02ioprintln(i8 addrspace(1)* %554), !dbg !109
  store i8 addrspace(1)* null, i8 addrspace(1)** %179, !dbg !109
  %555 = call i8 addrspace(1)* @_bal_float_to_tagged(double -2.0), !dbg !110
  call void @_Bb02ioprintln(i8 addrspace(1)* %555), !dbg !110
  store i8 addrspace(1)* null, i8 addrspace(1)** %180, !dbg !110
  %556 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !111
  call void @_Bb02ioprintln(i8 addrspace(1)* %556), !dbg !111
  store i8 addrspace(1)* null, i8 addrspace(1)** %181, !dbg !111
  %557 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.0), !dbg !112
  call void @_Bb02ioprintln(i8 addrspace(1)* %557), !dbg !112
  store i8 addrspace(1)* null, i8 addrspace(1)** %182, !dbg !112
  %558 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.7), !dbg !113
  call void @_Bb02ioprintln(i8 addrspace(1)* %558), !dbg !113
  store i8 addrspace(1)* null, i8 addrspace(1)** %183, !dbg !113
  %559 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5), !dbg !114
  call void @_Bb02ioprintln(i8 addrspace(1)* %559), !dbg !114
  store i8 addrspace(1)* null, i8 addrspace(1)** %184, !dbg !114
  %560 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !115
  call void @_Bb02ioprintln(i8 addrspace(1)* %560), !dbg !115
  store i8 addrspace(1)* null, i8 addrspace(1)** %185, !dbg !115
  %561 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !116
  call void @_Bb02ioprintln(i8 addrspace(1)* %561), !dbg !116
  store i8 addrspace(1)* null, i8 addrspace(1)** %186, !dbg !116
  %562 = call i8 addrspace(1)* @_bal_float_to_tagged(double -5.0), !dbg !117
  call void @_Bb02ioprintln(i8 addrspace(1)* %562), !dbg !117
  store i8 addrspace(1)* null, i8 addrspace(1)** %187, !dbg !117
  %563 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.7), !dbg !118
  call void @_Bb02ioprintln(i8 addrspace(1)* %563), !dbg !118
  store i8 addrspace(1)* null, i8 addrspace(1)** %188, !dbg !118
  %564 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.5), !dbg !119
  call void @_Bb02ioprintln(i8 addrspace(1)* %564), !dbg !119
  store i8 addrspace(1)* null, i8 addrspace(1)** %189, !dbg !119
  %565 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0), !dbg !120
  call void @_Bb02ioprintln(i8 addrspace(1)* %565), !dbg !120
  store i8 addrspace(1)* null, i8 addrspace(1)** %190, !dbg !120
  %566 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0), !dbg !121
  call void @_Bb02ioprintln(i8 addrspace(1)* %566), !dbg !121
  store i8 addrspace(1)* null, i8 addrspace(1)** %191, !dbg !121
  %567 = call i8 addrspace(1)* @_bal_float_to_tagged(double -2.0), !dbg !122
  call void @_Bb02ioprintln(i8 addrspace(1)* %567), !dbg !122
  store i8 addrspace(1)* null, i8 addrspace(1)** %192, !dbg !122
  %568 = call double @_B_floatRem(double 1.0, double 0.1), !dbg !123
  store double %568, double* %193, !dbg !123
  %569 = load double, double* %193, !dbg !124
  %570 = call i8 addrspace(1)* @_bal_float_to_tagged(double %569), !dbg !124
  call void @_Bb02ioprintln(i8 addrspace(1)* %570), !dbg !124
  store i8 addrspace(1)* null, i8 addrspace(1)** %194, !dbg !124
  store double 100.0, double* %f
  %571 = load double, double* %f
  %572 = frem double %571, 19.0
  store double %572, double* %195
  %573 = load double, double* %195, !dbg !125
  %574 = call i8 addrspace(1)* @_bal_float_to_tagged(double %573), !dbg !125
  call void @_Bb02ioprintln(i8 addrspace(1)* %574), !dbg !125
  store i8 addrspace(1)* null, i8 addrspace(1)** %196, !dbg !125
  %575 = load double, double* %f
  %576 = frem double 1999.0, %575
  store double %576, double* %197
  %577 = load double, double* %197, !dbg !126
  %578 = call i8 addrspace(1)* @_bal_float_to_tagged(double %577), !dbg !126
  call void @_Bb02ioprintln(i8 addrspace(1)* %578), !dbg !126
  store i8 addrspace(1)* null, i8 addrspace(1)** %198, !dbg !126
  ret void
579:
  %580 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %580)
  unreachable
}
define internal double @_B_floatRem(double %0, double %1) !dbg !7 {
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
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 36100), !dbg !127
  call void @_bal_panic(i8 addrspace(1)* %13)
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
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
!14 = !DILocation(line: 14, column: 4, scope: !5)
!15 = !DILocation(line: 15, column: 4, scope: !5)
!16 = !DILocation(line: 16, column: 4, scope: !5)
!17 = !DILocation(line: 17, column: 4, scope: !5)
!18 = !DILocation(line: 18, column: 4, scope: !5)
!19 = !DILocation(line: 19, column: 4, scope: !5)
!20 = !DILocation(line: 20, column: 4, scope: !5)
!21 = !DILocation(line: 21, column: 4, scope: !5)
!22 = !DILocation(line: 22, column: 4, scope: !5)
!23 = !DILocation(line: 23, column: 4, scope: !5)
!24 = !DILocation(line: 25, column: 4, scope: !5)
!25 = !DILocation(line: 26, column: 4, scope: !5)
!26 = !DILocation(line: 27, column: 4, scope: !5)
!27 = !DILocation(line: 28, column: 4, scope: !5)
!28 = !DILocation(line: 29, column: 4, scope: !5)
!29 = !DILocation(line: 30, column: 4, scope: !5)
!30 = !DILocation(line: 31, column: 4, scope: !5)
!31 = !DILocation(line: 32, column: 4, scope: !5)
!32 = !DILocation(line: 33, column: 4, scope: !5)
!33 = !DILocation(line: 34, column: 4, scope: !5)
!34 = !DILocation(line: 35, column: 4, scope: !5)
!35 = !DILocation(line: 36, column: 4, scope: !5)
!36 = !DILocation(line: 37, column: 4, scope: !5)
!37 = !DILocation(line: 39, column: 4, scope: !5)
!38 = !DILocation(line: 40, column: 4, scope: !5)
!39 = !DILocation(line: 41, column: 4, scope: !5)
!40 = !DILocation(line: 42, column: 4, scope: !5)
!41 = !DILocation(line: 43, column: 4, scope: !5)
!42 = !DILocation(line: 44, column: 4, scope: !5)
!43 = !DILocation(line: 45, column: 4, scope: !5)
!44 = !DILocation(line: 46, column: 4, scope: !5)
!45 = !DILocation(line: 47, column: 4, scope: !5)
!46 = !DILocation(line: 48, column: 4, scope: !5)
!47 = !DILocation(line: 49, column: 4, scope: !5)
!48 = !DILocation(line: 50, column: 4, scope: !5)
!49 = !DILocation(line: 51, column: 4, scope: !5)
!50 = !DILocation(line: 52, column: 4, scope: !5)
!51 = !DILocation(line: 54, column: 4, scope: !5)
!52 = !DILocation(line: 55, column: 4, scope: !5)
!53 = !DILocation(line: 56, column: 4, scope: !5)
!54 = !DILocation(line: 57, column: 4, scope: !5)
!55 = !DILocation(line: 58, column: 4, scope: !5)
!56 = !DILocation(line: 59, column: 4, scope: !5)
!57 = !DILocation(line: 60, column: 4, scope: !5)
!58 = !DILocation(line: 61, column: 4, scope: !5)
!59 = !DILocation(line: 62, column: 4, scope: !5)
!60 = !DILocation(line: 63, column: 4, scope: !5)
!61 = !DILocation(line: 64, column: 4, scope: !5)
!62 = !DILocation(line: 65, column: 4, scope: !5)
!63 = !DILocation(line: 66, column: 4, scope: !5)
!64 = !DILocation(line: 67, column: 4, scope: !5)
!65 = !DILocation(line: 70, column: 4, scope: !5)
!66 = !DILocation(line: 71, column: 4, scope: !5)
!67 = !DILocation(line: 72, column: 4, scope: !5)
!68 = !DILocation(line: 73, column: 4, scope: !5)
!69 = !DILocation(line: 74, column: 4, scope: !5)
!70 = !DILocation(line: 75, column: 4, scope: !5)
!71 = !DILocation(line: 76, column: 4, scope: !5)
!72 = !DILocation(line: 77, column: 4, scope: !5)
!73 = !DILocation(line: 78, column: 4, scope: !5)
!74 = !DILocation(line: 79, column: 4, scope: !5)
!75 = !DILocation(line: 80, column: 4, scope: !5)
!76 = !DILocation(line: 81, column: 4, scope: !5)
!77 = !DILocation(line: 82, column: 4, scope: !5)
!78 = !DILocation(line: 83, column: 4, scope: !5)
!79 = !DILocation(line: 85, column: 4, scope: !5)
!80 = !DILocation(line: 86, column: 4, scope: !5)
!81 = !DILocation(line: 87, column: 4, scope: !5)
!82 = !DILocation(line: 88, column: 4, scope: !5)
!83 = !DILocation(line: 89, column: 4, scope: !5)
!84 = !DILocation(line: 90, column: 4, scope: !5)
!85 = !DILocation(line: 91, column: 4, scope: !5)
!86 = !DILocation(line: 92, column: 4, scope: !5)
!87 = !DILocation(line: 93, column: 4, scope: !5)
!88 = !DILocation(line: 94, column: 4, scope: !5)
!89 = !DILocation(line: 96, column: 4, scope: !5)
!90 = !DILocation(line: 97, column: 4, scope: !5)
!91 = !DILocation(line: 98, column: 4, scope: !5)
!92 = !DILocation(line: 99, column: 4, scope: !5)
!93 = !DILocation(line: 100, column: 4, scope: !5)
!94 = !DILocation(line: 101, column: 4, scope: !5)
!95 = !DILocation(line: 102, column: 4, scope: !5)
!96 = !DILocation(line: 103, column: 4, scope: !5)
!97 = !DILocation(line: 104, column: 4, scope: !5)
!98 = !DILocation(line: 105, column: 4, scope: !5)
!99 = !DILocation(line: 107, column: 4, scope: !5)
!100 = !DILocation(line: 108, column: 4, scope: !5)
!101 = !DILocation(line: 109, column: 4, scope: !5)
!102 = !DILocation(line: 110, column: 4, scope: !5)
!103 = !DILocation(line: 111, column: 4, scope: !5)
!104 = !DILocation(line: 112, column: 4, scope: !5)
!105 = !DILocation(line: 113, column: 4, scope: !5)
!106 = !DILocation(line: 114, column: 4, scope: !5)
!107 = !DILocation(line: 115, column: 4, scope: !5)
!108 = !DILocation(line: 116, column: 4, scope: !5)
!109 = !DILocation(line: 118, column: 4, scope: !5)
!110 = !DILocation(line: 119, column: 4, scope: !5)
!111 = !DILocation(line: 121, column: 4, scope: !5)
!112 = !DILocation(line: 122, column: 4, scope: !5)
!113 = !DILocation(line: 123, column: 4, scope: !5)
!114 = !DILocation(line: 124, column: 4, scope: !5)
!115 = !DILocation(line: 125, column: 4, scope: !5)
!116 = !DILocation(line: 126, column: 4, scope: !5)
!117 = !DILocation(line: 127, column: 4, scope: !5)
!118 = !DILocation(line: 128, column: 4, scope: !5)
!119 = !DILocation(line: 129, column: 4, scope: !5)
!120 = !DILocation(line: 130, column: 4, scope: !5)
!121 = !DILocation(line: 132, column: 4, scope: !5)
!122 = !DILocation(line: 133, column: 4, scope: !5)
!123 = !DILocation(line: 135, column: 15, scope: !5)
!124 = !DILocation(line: 135, column: 4, scope: !5)
!125 = !DILocation(line: 137, column: 4, scope: !5)
!126 = !DILocation(line: 138, column: 4, scope: !5)
!127 = !DILocation(line: 0, column: 0, scope: !7)
