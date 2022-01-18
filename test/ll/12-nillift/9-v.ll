@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %m = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca double
  %6 = alloca i1
  %7 = alloca double
  %8 = alloca double
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca double
  %15 = alloca i1
  %16 = alloca double
  %17 = alloca double
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca double
  %22 = alloca i1
  %23 = alloca double
  %24 = alloca double
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca double
  %31 = alloca i1
  %32 = alloca double
  %33 = alloca double
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i1
  %39 = alloca double
  %40 = alloca i1
  %41 = alloca double
  %42 = alloca double
  %43 = alloca i8 addrspace(1)*
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca double
  %47 = alloca i1
  %48 = alloca double
  %49 = alloca double
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i8 addrspace(1)*
  %52 = alloca i8 addrspace(1)*
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i1
  %55 = alloca double
  %56 = alloca i1
  %57 = alloca double
  %58 = alloca double
  %59 = alloca i8 addrspace(1)*
  %60 = alloca i8 addrspace(1)*
  %v5 = alloca i8 addrspace(1)*
  %61 = alloca i8 addrspace(1)*
  %62 = alloca i1
  %63 = alloca double
  %64 = alloca double
  %65 = alloca i8 addrspace(1)*
  %66 = alloca i8 addrspace(1)*
  %v6 = alloca i8 addrspace(1)*
  %67 = alloca i8 addrspace(1)*
  %68 = alloca i1
  %69 = alloca double
  %70 = alloca double
  %71 = alloca i8 addrspace(1)*
  %72 = alloca i8 addrspace(1)*
  %73 = alloca i8 addrspace(1)*
  %74 = alloca i1
  %75 = alloca double
  %76 = alloca double
  %77 = alloca i8 addrspace(1)*
  %78 = alloca i8 addrspace(1)*
  %d = alloca double
  %v7 = alloca i8 addrspace(1)*
  %79 = alloca i8 addrspace(1)*
  %80 = alloca i1
  %81 = alloca double
  %82 = alloca double
  %83 = alloca i8 addrspace(1)*
  %84 = alloca i8 addrspace(1)*
  %85 = alloca i8 addrspace(1)*
  %86 = alloca i8 addrspace(1)*
  %87 = alloca i1
  %88 = alloca double
  %89 = alloca i1
  %90 = alloca double
  %91 = alloca double
  %92 = alloca i8 addrspace(1)*
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
  %105 = alloca i8 addrspace(1)*
  %106 = alloca i1
  %107 = alloca double
  %108 = alloca i1
  %109 = alloca double
  %110 = alloca double
  %111 = alloca i8 addrspace(1)*
  %112 = alloca i8 addrspace(1)*
  %113 = alloca i8 addrspace(1)*
  %114 = alloca i8 addrspace(1)*
  %115 = alloca i1
  %116 = alloca double
  %117 = alloca i1
  %118 = alloca double
  %119 = alloca double
  %120 = alloca i8 addrspace(1)*
  %121 = alloca i8 addrspace(1)*
  %122 = alloca i1
  %123 = alloca double
  %124 = alloca i1
  %125 = alloca double
  %126 = alloca double
  %127 = alloca i8 addrspace(1)*
  %128 = alloca i1
  %129 = alloca double
  %130 = alloca double
  %131 = alloca i8 addrspace(1)*
  %132 = alloca i1
  %133 = alloca double
  %134 = alloca i1
  %135 = alloca double
  %136 = alloca double
  %137 = alloca i8 addrspace(1)*
  %138 = alloca i8 addrspace(1)*
  %139 = alloca i8 addrspace(1)*
  %140 = alloca i1
  %141 = alloca double
  %142 = alloca double
  %143 = alloca i8 addrspace(1)*
  %144 = alloca i8 addrspace(1)*
  %145 = alloca i8 addrspace(1)*
  %146 = alloca i8
  %147 = load i8*, i8** @_bal_stack_guard
  %148 = icmp ult i8* %146, %147
  br i1 %148, label %646, label %149
149:
  %150 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %150, i8 addrspace(1)** %1
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %151, i8 addrspace(1)** %m
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %153 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.0)
  %154 = call i64 @_bal_mapping_set(i8 addrspace(1)* %152, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %648, label %653
156:
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %158 = call double @_bal_tagged_to_float(i8 addrspace(1)* %157)
  store double %158, double* %5
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %160 = addrspacecast i8 addrspace(1)* %159 to i8*
  %161 = ptrtoint i8* %160 to i64
  %162 = and i64 %161, 2233785415175766016
  %163 = icmp eq i64 %162, 0
  store i1 %163, i1* %6
  %164 = load i1, i1* %6
  br i1 %164, label %165, label %166
165:
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %174
166:
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %168 = call double @_bal_tagged_to_float(i8 addrspace(1)* %167)
  store double %168, double* %7
  %169 = load double, double* %5
  %170 = load double, double* %7
  %171 = fadd double %169, %170
  store double %171, double* %8
  %172 = load double, double* %8
  %173 = call i8 addrspace(1)* @_bal_float_to_tagged(double %172)
  store i8 addrspace(1)* %173, i8 addrspace(1)** %9
  br label %174
174:
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %175), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !8
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %177 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %176, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %177, i8 addrspace(1)** %11
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %179 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %178, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %179, i8 addrspace(1)** %12
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %181 = addrspacecast i8 addrspace(1)* %180 to i8*
  %182 = ptrtoint i8* %181 to i64
  %183 = and i64 %182, 2233785415175766016
  %184 = icmp eq i64 %183, 0
  store i1 %184, i1* %13
  %185 = load i1, i1* %13
  br i1 %185, label %195, label %186
186:
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %188 = call double @_bal_tagged_to_float(i8 addrspace(1)* %187)
  store double %188, double* %14
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %190 = addrspacecast i8 addrspace(1)* %189 to i8*
  %191 = ptrtoint i8* %190 to i64
  %192 = and i64 %191, 2233785415175766016
  %193 = icmp eq i64 %192, 0
  store i1 %193, i1* %15
  %194 = load i1, i1* %15
  br i1 %194, label %195, label %196
195:
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  br label %204
196:
  %197 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %198 = call double @_bal_tagged_to_float(i8 addrspace(1)* %197)
  store double %198, double* %16
  %199 = load double, double* %14
  %200 = load double, double* %16
  %201 = fadd double %199, %200
  store double %201, double* %17
  %202 = load double, double* %17
  %203 = call i8 addrspace(1)* @_bal_float_to_tagged(double %202)
  store i8 addrspace(1)* %203, i8 addrspace(1)** %18
  br label %204
204:
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %206 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %205, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %206, i8 addrspace(1)** %19
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %208 = addrspacecast i8 addrspace(1)* %207 to i8*
  %209 = ptrtoint i8* %208 to i64
  %210 = and i64 %209, 2233785415175766016
  %211 = icmp eq i64 %210, 0
  store i1 %211, i1* %20
  %212 = load i1, i1* %20
  br i1 %212, label %222, label %213
213:
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %215 = call double @_bal_tagged_to_float(i8 addrspace(1)* %214)
  store double %215, double* %21
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %217 = addrspacecast i8 addrspace(1)* %216 to i8*
  %218 = ptrtoint i8* %217 to i64
  %219 = and i64 %218, 2233785415175766016
  %220 = icmp eq i64 %219, 0
  store i1 %220, i1* %22
  %221 = load i1, i1* %22
  br i1 %221, label %222, label %223
222:
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  br label %231
223:
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %225 = call double @_bal_tagged_to_float(i8 addrspace(1)* %224)
  store double %225, double* %23
  %226 = load double, double* %21
  %227 = load double, double* %23
  %228 = fadd double %226, %227
  store double %228, double* %24
  %229 = load double, double* %24
  %230 = call i8 addrspace(1)* @_bal_float_to_tagged(double %229)
  store i8 addrspace(1)* %230, i8 addrspace(1)** %25
  br label %231
231:
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %232), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !9
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %234 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %233, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %234, i8 addrspace(1)** %27
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %236 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %235, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %236, i8 addrspace(1)** %28
  %237 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %238 = addrspacecast i8 addrspace(1)* %237 to i8*
  %239 = ptrtoint i8* %238 to i64
  %240 = and i64 %239, 2233785415175766016
  %241 = icmp eq i64 %240, 0
  store i1 %241, i1* %29
  %242 = load i1, i1* %29
  br i1 %242, label %252, label %243
243:
  %244 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %245 = call double @_bal_tagged_to_float(i8 addrspace(1)* %244)
  store double %245, double* %30
  %246 = load i8 addrspace(1)*, i8 addrspace(1)** %28
  %247 = addrspacecast i8 addrspace(1)* %246 to i8*
  %248 = ptrtoint i8* %247 to i64
  %249 = and i64 %248, 2233785415175766016
  %250 = icmp eq i64 %249, 0
  store i1 %250, i1* %31
  %251 = load i1, i1* %31
  br i1 %251, label %252, label %253
252:
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  br label %261
253:
  %254 = load i8 addrspace(1)*, i8 addrspace(1)** %28
  %255 = call double @_bal_tagged_to_float(i8 addrspace(1)* %254)
  store double %255, double* %32
  %256 = load double, double* %30
  %257 = load double, double* %32
  %258 = fsub double %256, %257
  store double %258, double* %33
  %259 = load double, double* %33
  %260 = call i8 addrspace(1)* @_bal_float_to_tagged(double %259)
  store i8 addrspace(1)* %260, i8 addrspace(1)** %34
  br label %261
261:
  %262 = load i8 addrspace(1)*, i8 addrspace(1)** %34, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %262), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !10
  %263 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %264 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %263, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %264, i8 addrspace(1)** %36
  %265 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %266 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %265, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %266, i8 addrspace(1)** %37
  %267 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  %268 = addrspacecast i8 addrspace(1)* %267 to i8*
  %269 = ptrtoint i8* %268 to i64
  %270 = and i64 %269, 2233785415175766016
  %271 = icmp eq i64 %270, 0
  store i1 %271, i1* %38
  %272 = load i1, i1* %38
  br i1 %272, label %282, label %273
273:
  %274 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  %275 = call double @_bal_tagged_to_float(i8 addrspace(1)* %274)
  store double %275, double* %39
  %276 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  %277 = addrspacecast i8 addrspace(1)* %276 to i8*
  %278 = ptrtoint i8* %277 to i64
  %279 = and i64 %278, 2233785415175766016
  %280 = icmp eq i64 %279, 0
  store i1 %280, i1* %40
  %281 = load i1, i1* %40
  br i1 %281, label %282, label %283
282:
  store i8 addrspace(1)* null, i8 addrspace(1)** %43
  br label %291
283:
  %284 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  %285 = call double @_bal_tagged_to_float(i8 addrspace(1)* %284)
  store double %285, double* %41
  %286 = load double, double* %39
  %287 = load double, double* %41
  %288 = fadd double %286, %287
  store double %288, double* %42
  %289 = load double, double* %42
  %290 = call i8 addrspace(1)* @_bal_float_to_tagged(double %289)
  store i8 addrspace(1)* %290, i8 addrspace(1)** %43
  br label %291
291:
  %292 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %293 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %292, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %293, i8 addrspace(1)** %44
  %294 = load i8 addrspace(1)*, i8 addrspace(1)** %43
  %295 = addrspacecast i8 addrspace(1)* %294 to i8*
  %296 = ptrtoint i8* %295 to i64
  %297 = and i64 %296, 2233785415175766016
  %298 = icmp eq i64 %297, 0
  store i1 %298, i1* %45
  %299 = load i1, i1* %45
  br i1 %299, label %309, label %300
300:
  %301 = load i8 addrspace(1)*, i8 addrspace(1)** %43
  %302 = call double @_bal_tagged_to_float(i8 addrspace(1)* %301)
  store double %302, double* %46
  %303 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  %304 = addrspacecast i8 addrspace(1)* %303 to i8*
  %305 = ptrtoint i8* %304 to i64
  %306 = and i64 %305, 2233785415175766016
  %307 = icmp eq i64 %306, 0
  store i1 %307, i1* %47
  %308 = load i1, i1* %47
  br i1 %308, label %309, label %310
309:
  store i8 addrspace(1)* null, i8 addrspace(1)** %50
  br label %318
310:
  %311 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  %312 = call double @_bal_tagged_to_float(i8 addrspace(1)* %311)
  store double %312, double* %48
  %313 = load double, double* %46
  %314 = load double, double* %48
  %315 = fsub double %313, %314
  store double %315, double* %49
  %316 = load double, double* %49
  %317 = call i8 addrspace(1)* @_bal_float_to_tagged(double %316)
  store i8 addrspace(1)* %317, i8 addrspace(1)** %50
  br label %318
318:
  %319 = load i8 addrspace(1)*, i8 addrspace(1)** %50, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %319), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %51, !dbg !11
  %320 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %321 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %320, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %321, i8 addrspace(1)** %52
  %322 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %323 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %322, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %323, i8 addrspace(1)** %53
  %324 = load i8 addrspace(1)*, i8 addrspace(1)** %52
  %325 = addrspacecast i8 addrspace(1)* %324 to i8*
  %326 = ptrtoint i8* %325 to i64
  %327 = and i64 %326, 2233785415175766016
  %328 = icmp eq i64 %327, 0
  store i1 %328, i1* %54
  %329 = load i1, i1* %54
  br i1 %329, label %339, label %330
330:
  %331 = load i8 addrspace(1)*, i8 addrspace(1)** %52
  %332 = call double @_bal_tagged_to_float(i8 addrspace(1)* %331)
  store double %332, double* %55
  %333 = load i8 addrspace(1)*, i8 addrspace(1)** %53
  %334 = addrspacecast i8 addrspace(1)* %333 to i8*
  %335 = ptrtoint i8* %334 to i64
  %336 = and i64 %335, 2233785415175766016
  %337 = icmp eq i64 %336, 0
  store i1 %337, i1* %56
  %338 = load i1, i1* %56
  br i1 %338, label %339, label %340
339:
  store i8 addrspace(1)* null, i8 addrspace(1)** %59
  br label %348
340:
  %341 = load i8 addrspace(1)*, i8 addrspace(1)** %53
  %342 = call double @_bal_tagged_to_float(i8 addrspace(1)* %341)
  store double %342, double* %57
  %343 = load double, double* %55
  %344 = load double, double* %57
  %345 = fdiv double %343, %344
  store double %345, double* %58
  %346 = load double, double* %58
  %347 = call i8 addrspace(1)* @_bal_float_to_tagged(double %346)
  store i8 addrspace(1)* %347, i8 addrspace(1)** %59
  br label %348
348:
  %349 = load i8 addrspace(1)*, i8 addrspace(1)** %59, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %349), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !12
  %350 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %351 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %350, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %351, i8 addrspace(1)** %61
  %352 = load i8 addrspace(1)*, i8 addrspace(1)** %61
  %353 = addrspacecast i8 addrspace(1)* %352 to i8*
  %354 = ptrtoint i8* %353 to i64
  %355 = and i64 %354, 2233785415175766016
  %356 = icmp eq i64 %355, 0
  store i1 %356, i1* %62
  %357 = load i1, i1* %62
  br i1 %357, label %365, label %358
358:
  %359 = load i8 addrspace(1)*, i8 addrspace(1)** %61
  %360 = call double @_bal_tagged_to_float(i8 addrspace(1)* %359)
  store double %360, double* %63
  %361 = load double, double* %63
  %362 = fdiv double %361, 3.0
  store double %362, double* %64
  %363 = load double, double* %64
  %364 = call i8 addrspace(1)* @_bal_float_to_tagged(double %363)
  store i8 addrspace(1)* %364, i8 addrspace(1)** %65
  br label %366
365:
  store i8 addrspace(1)* null, i8 addrspace(1)** %65
  br label %366
366:
  %367 = load i8 addrspace(1)*, i8 addrspace(1)** %65
  store i8 addrspace(1)* %367, i8 addrspace(1)** %v5
  %368 = load i8 addrspace(1)*, i8 addrspace(1)** %v5, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %368), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %66, !dbg !13
  %369 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %370 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %369, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %370, i8 addrspace(1)** %67
  %371 = load i8 addrspace(1)*, i8 addrspace(1)** %67
  %372 = addrspacecast i8 addrspace(1)* %371 to i8*
  %373 = ptrtoint i8* %372 to i64
  %374 = and i64 %373, 2233785415175766016
  %375 = icmp eq i64 %374, 0
  store i1 %375, i1* %68
  %376 = load i1, i1* %68
  br i1 %376, label %384, label %377
377:
  %378 = load i8 addrspace(1)*, i8 addrspace(1)** %67
  %379 = call double @_bal_tagged_to_float(i8 addrspace(1)* %378)
  store double %379, double* %69
  %380 = load double, double* %69
  %381 = fneg double %380
  store double %381, double* %70
  %382 = load double, double* %70
  %383 = call i8 addrspace(1)* @_bal_float_to_tagged(double %382)
  store i8 addrspace(1)* %383, i8 addrspace(1)** %71
  br label %385
384:
  store i8 addrspace(1)* null, i8 addrspace(1)** %71
  br label %385
385:
  %386 = load i8 addrspace(1)*, i8 addrspace(1)** %71
  store i8 addrspace(1)* %386, i8 addrspace(1)** %v6
  %387 = load i8 addrspace(1)*, i8 addrspace(1)** %v6, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %387), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !14
  %388 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %389 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %388, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %389, i8 addrspace(1)** %73
  %390 = load i8 addrspace(1)*, i8 addrspace(1)** %73
  %391 = addrspacecast i8 addrspace(1)* %390 to i8*
  %392 = ptrtoint i8* %391 to i64
  %393 = and i64 %392, 2233785415175766016
  %394 = icmp eq i64 %393, 0
  store i1 %394, i1* %74
  %395 = load i1, i1* %74
  br i1 %395, label %403, label %396
396:
  %397 = load i8 addrspace(1)*, i8 addrspace(1)** %73
  %398 = call double @_bal_tagged_to_float(i8 addrspace(1)* %397)
  store double %398, double* %75
  %399 = load double, double* %75
  %400 = fneg double %399
  store double %400, double* %76
  %401 = load double, double* %76
  %402 = call i8 addrspace(1)* @_bal_float_to_tagged(double %401)
  store i8 addrspace(1)* %402, i8 addrspace(1)** %77
  br label %404
403:
  store i8 addrspace(1)* null, i8 addrspace(1)** %77
  br label %404
404:
  %405 = load i8 addrspace(1)*, i8 addrspace(1)** %77, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %405), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %78, !dbg !15
  store double 13.0, double* %d
  %406 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %407 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %406, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %407, i8 addrspace(1)** %79
  %408 = load i8 addrspace(1)*, i8 addrspace(1)** %79
  %409 = addrspacecast i8 addrspace(1)* %408 to i8*
  %410 = ptrtoint i8* %409 to i64
  %411 = and i64 %410, 2233785415175766016
  %412 = icmp eq i64 %411, 0
  store i1 %412, i1* %80
  %413 = load i1, i1* %80
  br i1 %413, label %422, label %414
414:
  %415 = load i8 addrspace(1)*, i8 addrspace(1)** %79
  %416 = call double @_bal_tagged_to_float(i8 addrspace(1)* %415)
  store double %416, double* %81
  %417 = load double, double* %81
  %418 = load double, double* %d
  %419 = fadd double %417, %418
  store double %419, double* %82
  %420 = load double, double* %82
  %421 = call i8 addrspace(1)* @_bal_float_to_tagged(double %420)
  store i8 addrspace(1)* %421, i8 addrspace(1)** %83
  br label %423
422:
  store i8 addrspace(1)* null, i8 addrspace(1)** %83
  br label %423
423:
  %424 = load i8 addrspace(1)*, i8 addrspace(1)** %83
  store i8 addrspace(1)* %424, i8 addrspace(1)** %v7
  %425 = load i8 addrspace(1)*, i8 addrspace(1)** %v7, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %425), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %84, !dbg !16
  %426 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %427 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %426, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %427, i8 addrspace(1)** %85
  %428 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %429 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %428, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %429, i8 addrspace(1)** %86
  %430 = load i8 addrspace(1)*, i8 addrspace(1)** %85
  %431 = addrspacecast i8 addrspace(1)* %430 to i8*
  %432 = ptrtoint i8* %431 to i64
  %433 = and i64 %432, 2233785415175766016
  %434 = icmp eq i64 %433, 0
  store i1 %434, i1* %87
  %435 = load i1, i1* %87
  br i1 %435, label %445, label %436
436:
  %437 = load i8 addrspace(1)*, i8 addrspace(1)** %85
  %438 = call double @_bal_tagged_to_float(i8 addrspace(1)* %437)
  store double %438, double* %88
  %439 = load i8 addrspace(1)*, i8 addrspace(1)** %86
  %440 = addrspacecast i8 addrspace(1)* %439 to i8*
  %441 = ptrtoint i8* %440 to i64
  %442 = and i64 %441, 2233785415175766016
  %443 = icmp eq i64 %442, 0
  store i1 %443, i1* %89
  %444 = load i1, i1* %89
  br i1 %444, label %445, label %446
445:
  store i8 addrspace(1)* null, i8 addrspace(1)** %92
  br label %454
446:
  %447 = load i8 addrspace(1)*, i8 addrspace(1)** %86
  %448 = call double @_bal_tagged_to_float(i8 addrspace(1)* %447)
  store double %448, double* %90
  %449 = load double, double* %88
  %450 = load double, double* %90
  %451 = fadd double %449, %450
  store double %451, double* %91
  %452 = load double, double* %91
  %453 = call i8 addrspace(1)* @_bal_float_to_tagged(double %452)
  store i8 addrspace(1)* %453, i8 addrspace(1)** %92
  br label %454
454:
  %455 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %456 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %455, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %456, i8 addrspace(1)** %93
  %457 = load i8 addrspace(1)*, i8 addrspace(1)** %92
  %458 = addrspacecast i8 addrspace(1)* %457 to i8*
  %459 = ptrtoint i8* %458 to i64
  %460 = and i64 %459, 2233785415175766016
  %461 = icmp eq i64 %460, 0
  store i1 %461, i1* %94
  %462 = load i1, i1* %94
  br i1 %462, label %472, label %463
463:
  %464 = load i8 addrspace(1)*, i8 addrspace(1)** %92
  %465 = call double @_bal_tagged_to_float(i8 addrspace(1)* %464)
  store double %465, double* %95
  %466 = load i8 addrspace(1)*, i8 addrspace(1)** %93
  %467 = addrspacecast i8 addrspace(1)* %466 to i8*
  %468 = ptrtoint i8* %467 to i64
  %469 = and i64 %468, 2233785415175766016
  %470 = icmp eq i64 %469, 0
  store i1 %470, i1* %96
  %471 = load i1, i1* %96
  br i1 %471, label %472, label %473
472:
  store i8 addrspace(1)* null, i8 addrspace(1)** %99
  br label %481
473:
  %474 = load i8 addrspace(1)*, i8 addrspace(1)** %93
  %475 = call double @_bal_tagged_to_float(i8 addrspace(1)* %474)
  store double %475, double* %97
  %476 = load double, double* %95
  %477 = load double, double* %97
  %478 = fadd double %476, %477
  store double %478, double* %98
  %479 = load double, double* %98
  %480 = call i8 addrspace(1)* @_bal_float_to_tagged(double %479)
  store i8 addrspace(1)* %480, i8 addrspace(1)** %99
  br label %481
481:
  %482 = load i8 addrspace(1)*, i8 addrspace(1)** %99
  %483 = addrspacecast i8 addrspace(1)* %482 to i8*
  %484 = ptrtoint i8* %483 to i64
  %485 = and i64 %484, 2233785415175766016
  %486 = icmp eq i64 %485, 0
  store i1 %486, i1* %100
  %487 = load i1, i1* %100
  br i1 %487, label %496, label %488
488:
  %489 = load i8 addrspace(1)*, i8 addrspace(1)** %99
  %490 = call double @_bal_tagged_to_float(i8 addrspace(1)* %489)
  store double %490, double* %101
  %491 = load double, double* %101
  %492 = load double, double* %d
  %493 = fadd double %491, %492
  store double %493, double* %102
  %494 = load double, double* %102
  %495 = call i8 addrspace(1)* @_bal_float_to_tagged(double %494)
  store i8 addrspace(1)* %495, i8 addrspace(1)** %103
  br label %497
496:
  store i8 addrspace(1)* null, i8 addrspace(1)** %103
  br label %497
497:
  %498 = load i8 addrspace(1)*, i8 addrspace(1)** %103, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %498), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %104, !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %e
  %499 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %500 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %499, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %500, i8 addrspace(1)** %105
  %501 = load i8 addrspace(1)*, i8 addrspace(1)** %105
  %502 = addrspacecast i8 addrspace(1)* %501 to i8*
  %503 = ptrtoint i8* %502 to i64
  %504 = and i64 %503, 2233785415175766016
  %505 = icmp eq i64 %504, 0
  store i1 %505, i1* %106
  %506 = load i1, i1* %106
  br i1 %506, label %516, label %507
507:
  %508 = load i8 addrspace(1)*, i8 addrspace(1)** %105
  %509 = call double @_bal_tagged_to_float(i8 addrspace(1)* %508)
  store double %509, double* %107
  %510 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %511 = addrspacecast i8 addrspace(1)* %510 to i8*
  %512 = ptrtoint i8* %511 to i64
  %513 = and i64 %512, 2233785415175766016
  %514 = icmp eq i64 %513, 0
  store i1 %514, i1* %108
  %515 = load i1, i1* %108
  br i1 %515, label %516, label %517
516:
  store i8 addrspace(1)* null, i8 addrspace(1)** %111
  br label %525
517:
  %518 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %519 = call double @_bal_tagged_to_float(i8 addrspace(1)* %518)
  store double %519, double* %109
  %520 = load double, double* %107
  %521 = load double, double* %109
  %522 = fadd double %520, %521
  store double %522, double* %110
  %523 = load double, double* %110
  %524 = call i8 addrspace(1)* @_bal_float_to_tagged(double %523)
  store i8 addrspace(1)* %524, i8 addrspace(1)** %111
  br label %525
525:
  %526 = load i8 addrspace(1)*, i8 addrspace(1)** %111
  store i8 addrspace(1)* %526, i8 addrspace(1)** %v8
  %527 = load i8 addrspace(1)*, i8 addrspace(1)** %v8, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %527), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %112, !dbg !18
  %528 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %529 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %528, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %529, i8 addrspace(1)** %113
  %530 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %531 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %530, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %531, i8 addrspace(1)** %114
  %532 = load i8 addrspace(1)*, i8 addrspace(1)** %113
  %533 = addrspacecast i8 addrspace(1)* %532 to i8*
  %534 = ptrtoint i8* %533 to i64
  %535 = and i64 %534, 2233785415175766016
  %536 = icmp eq i64 %535, 0
  store i1 %536, i1* %115
  %537 = load i1, i1* %115
  br i1 %537, label %547, label %538
538:
  %539 = load i8 addrspace(1)*, i8 addrspace(1)** %113
  %540 = call double @_bal_tagged_to_float(i8 addrspace(1)* %539)
  store double %540, double* %116
  %541 = load i8 addrspace(1)*, i8 addrspace(1)** %114
  %542 = addrspacecast i8 addrspace(1)* %541 to i8*
  %543 = ptrtoint i8* %542 to i64
  %544 = and i64 %543, 2233785415175766016
  %545 = icmp eq i64 %544, 0
  store i1 %545, i1* %117
  %546 = load i1, i1* %117
  br i1 %546, label %547, label %548
547:
  store i8 addrspace(1)* null, i8 addrspace(1)** %120
  br label %556
548:
  %549 = load i8 addrspace(1)*, i8 addrspace(1)** %114
  %550 = call double @_bal_tagged_to_float(i8 addrspace(1)* %549)
  store double %550, double* %118
  %551 = load double, double* %116
  %552 = load double, double* %118
  %553 = fadd double %551, %552
  store double %553, double* %119
  %554 = load double, double* %119
  %555 = call i8 addrspace(1)* @_bal_float_to_tagged(double %554)
  store i8 addrspace(1)* %555, i8 addrspace(1)** %120
  br label %556
556:
  %557 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %558 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %557, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %558, i8 addrspace(1)** %121
  %559 = load i8 addrspace(1)*, i8 addrspace(1)** %120
  %560 = addrspacecast i8 addrspace(1)* %559 to i8*
  %561 = ptrtoint i8* %560 to i64
  %562 = and i64 %561, 2233785415175766016
  %563 = icmp eq i64 %562, 0
  store i1 %563, i1* %122
  %564 = load i1, i1* %122
  br i1 %564, label %574, label %565
565:
  %566 = load i8 addrspace(1)*, i8 addrspace(1)** %120
  %567 = call double @_bal_tagged_to_float(i8 addrspace(1)* %566)
  store double %567, double* %123
  %568 = load i8 addrspace(1)*, i8 addrspace(1)** %121
  %569 = addrspacecast i8 addrspace(1)* %568 to i8*
  %570 = ptrtoint i8* %569 to i64
  %571 = and i64 %570, 2233785415175766016
  %572 = icmp eq i64 %571, 0
  store i1 %572, i1* %124
  %573 = load i1, i1* %124
  br i1 %573, label %574, label %575
574:
  store i8 addrspace(1)* null, i8 addrspace(1)** %127
  br label %583
575:
  %576 = load i8 addrspace(1)*, i8 addrspace(1)** %121
  %577 = call double @_bal_tagged_to_float(i8 addrspace(1)* %576)
  store double %577, double* %125
  %578 = load double, double* %123
  %579 = load double, double* %125
  %580 = fadd double %578, %579
  store double %580, double* %126
  %581 = load double, double* %126
  %582 = call i8 addrspace(1)* @_bal_float_to_tagged(double %581)
  store i8 addrspace(1)* %582, i8 addrspace(1)** %127
  br label %583
583:
  %584 = load i8 addrspace(1)*, i8 addrspace(1)** %127
  %585 = addrspacecast i8 addrspace(1)* %584 to i8*
  %586 = ptrtoint i8* %585 to i64
  %587 = and i64 %586, 2233785415175766016
  %588 = icmp eq i64 %587, 0
  store i1 %588, i1* %128
  %589 = load i1, i1* %128
  br i1 %589, label %598, label %590
590:
  %591 = load i8 addrspace(1)*, i8 addrspace(1)** %127
  %592 = call double @_bal_tagged_to_float(i8 addrspace(1)* %591)
  store double %592, double* %129
  %593 = load double, double* %129
  %594 = load double, double* %d
  %595 = fadd double %593, %594
  store double %595, double* %130
  %596 = load double, double* %130
  %597 = call i8 addrspace(1)* @_bal_float_to_tagged(double %596)
  store i8 addrspace(1)* %597, i8 addrspace(1)** %131
  br label %599
598:
  store i8 addrspace(1)* null, i8 addrspace(1)** %131
  br label %599
599:
  %600 = load i8 addrspace(1)*, i8 addrspace(1)** %131
  %601 = addrspacecast i8 addrspace(1)* %600 to i8*
  %602 = ptrtoint i8* %601 to i64
  %603 = and i64 %602, 2233785415175766016
  %604 = icmp eq i64 %603, 0
  store i1 %604, i1* %132
  %605 = load i1, i1* %132
  br i1 %605, label %615, label %606
606:
  %607 = load i8 addrspace(1)*, i8 addrspace(1)** %131
  %608 = call double @_bal_tagged_to_float(i8 addrspace(1)* %607)
  store double %608, double* %133
  %609 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %610 = addrspacecast i8 addrspace(1)* %609 to i8*
  %611 = ptrtoint i8* %610 to i64
  %612 = and i64 %611, 2233785415175766016
  %613 = icmp eq i64 %612, 0
  store i1 %613, i1* %134
  %614 = load i1, i1* %134
  br i1 %614, label %615, label %616
615:
  store i8 addrspace(1)* null, i8 addrspace(1)** %137
  br label %624
616:
  %617 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %618 = call double @_bal_tagged_to_float(i8 addrspace(1)* %617)
  store double %618, double* %135
  %619 = load double, double* %133
  %620 = load double, double* %135
  %621 = fadd double %619, %620
  store double %621, double* %136
  %622 = load double, double* %136
  %623 = call i8 addrspace(1)* @_bal_float_to_tagged(double %622)
  store i8 addrspace(1)* %623, i8 addrspace(1)** %137
  br label %624
624:
  %625 = load i8 addrspace(1)*, i8 addrspace(1)** %137, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %625), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %138, !dbg !19
  %626 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %627 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %626, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %627, i8 addrspace(1)** %139
  %628 = load i8 addrspace(1)*, i8 addrspace(1)** %139
  %629 = addrspacecast i8 addrspace(1)* %628 to i8*
  %630 = ptrtoint i8* %629 to i64
  %631 = and i64 %630, 2233785415175766016
  %632 = icmp eq i64 %631, 0
  store i1 %632, i1* %140
  %633 = load i1, i1* %140
  br i1 %633, label %641, label %634
634:
  %635 = load i8 addrspace(1)*, i8 addrspace(1)** %139
  %636 = call double @_bal_tagged_to_float(i8 addrspace(1)* %635)
  store double %636, double* %141
  %637 = load double, double* %141
  %638 = fneg double %637
  store double %638, double* %142
  %639 = load double, double* %142
  %640 = call i8 addrspace(1)* @_bal_float_to_tagged(double %639)
  store i8 addrspace(1)* %640, i8 addrspace(1)** %143
  br label %642
641:
  store i8 addrspace(1)* null, i8 addrspace(1)** %143
  br label %642
642:
  %643 = load i8 addrspace(1)*, i8 addrspace(1)** %143, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %643), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %144, !dbg !20
  ret void
644:
  %645 = load i8 addrspace(1)*, i8 addrspace(1)** %145
  call void @_bal_panic(i8 addrspace(1)* %645)
  unreachable
646:
  %647 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %647)
  unreachable
648:
  %649 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %650 = call i8 addrspace(1)* @_bal_float_to_tagged(double 6.0)
  %651 = call i64 @_bal_mapping_set(i8 addrspace(1)* %649, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)* %650)
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %656, label %661
653:
  %654 = or i64 %154, 1024
  %655 = call i8 addrspace(1)* @_bal_panic_construct(i64 %654), !dbg !7
  store i8 addrspace(1)* %655, i8 addrspace(1)** %145
  br label %644
656:
  %657 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %658 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
  %659 = call i64 @_bal_mapping_set(i8 addrspace(1)* %657, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091), i8 addrspace(1)* %658)
  %660 = icmp eq i64 %659, 0
  br i1 %660, label %664, label %675
661:
  %662 = or i64 %651, 1280
  %663 = call i8 addrspace(1)* @_bal_panic_construct(i64 %662), !dbg !7
  store i8 addrspace(1)* %663, i8 addrspace(1)** %145
  br label %644
664:
  %665 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %666 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %665, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %666, i8 addrspace(1)** %2
  %667 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %668 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %667, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %668, i8 addrspace(1)** %3
  %669 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %670 = addrspacecast i8 addrspace(1)* %669 to i8*
  %671 = ptrtoint i8* %670 to i64
  %672 = and i64 %671, 2233785415175766016
  %673 = icmp eq i64 %672, 0
  store i1 %673, i1* %4
  %674 = load i1, i1* %4
  br i1 %674, label %165, label %156
675:
  %676 = or i64 %659, 1536
  %677 = call i8 addrspace(1)* @_bal_panic_construct(i64 %676), !dbg !7
  store i8 addrspace(1)* %677, i8 addrspace(1)** %145
  br label %644
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
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 10, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 14, column: 4, scope: !5)
!12 = !DILocation(line: 16, column: 4, scope: !5)
!13 = !DILocation(line: 19, column: 4, scope: !5)
!14 = !DILocation(line: 22, column: 4, scope: !5)
!15 = !DILocation(line: 23, column: 4, scope: !5)
!16 = !DILocation(line: 27, column: 4, scope: !5)
!17 = !DILocation(line: 28, column: 4, scope: !5)
!18 = !DILocation(line: 32, column: 4, scope: !5)
!19 = !DILocation(line: 33, column: 4, scope: !5)
!20 = !DILocation(line: 35, column: 4, scope: !5)
