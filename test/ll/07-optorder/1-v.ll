@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %n1 = alloca i8 addrspace(1)*
  %n2 = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %n3 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %n4 = alloca i64
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i1
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i1
  %40 = alloca i8 addrspace(1)*
  %n5 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i1
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i1
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i8
  %50 = load i8*, i8** @_bal_stack_guard
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %59, label %52
52:
  %53 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %n1
  store i8 addrspace(1)* null, i8 addrspace(1)** %n2
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %56 = icmp eq i8 addrspace(1)* %54, null
  %57 = icmp eq i8 addrspace(1)* %55, null
  %58 = or i1 %56, %57
  br i1 %58, label %61, label %63
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %60)
  unreachable
61:
  %62 = and i1 %56, %57
  store i1 0, i1* %1
  br label %67
63:
  %64 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %54)
  %65 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %55)
  %66 = icmp slt i64 %64, %65
  store i1 %66, i1* %1
  br label %67
67:
  %68 = load i1, i1* %1
  %69 = zext i1 %68 to i64
  %70 = or i64 %69, 72057594037927936
  %71 = getelementptr i8, i8 addrspace(1)* null, i64 %70
  call void @_Bio__println(i8 addrspace(1)* %71)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %74 = icmp eq i8 addrspace(1)* %72, null
  %75 = icmp eq i8 addrspace(1)* %73, null
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %79
77:
  %78 = and i1 %74, %75
  store i1 %78, i1* %3
  br label %83
79:
  %80 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %72)
  %81 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %73)
  %82 = icmp sle i64 %80, %81
  store i1 %82, i1* %3
  br label %83
83:
  %84 = load i1, i1* %3
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86
  call void @_Bio__println(i8 addrspace(1)* %87)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %90 = icmp eq i8 addrspace(1)* %88, null
  %91 = icmp eq i8 addrspace(1)* %89, null
  %92 = or i1 %90, %91
  br i1 %92, label %93, label %95
93:
  %94 = and i1 %90, %91
  store i1 0, i1* %5
  br label %99
95:
  %96 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %88)
  %97 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %89)
  %98 = icmp sgt i64 %96, %97
  store i1 %98, i1* %5
  br label %99
99:
  %100 = load i1, i1* %5
  %101 = zext i1 %100 to i64
  %102 = or i64 %101, 72057594037927936
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102
  call void @_Bio__println(i8 addrspace(1)* %103)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %106 = icmp eq i8 addrspace(1)* %104, null
  %107 = icmp eq i8 addrspace(1)* %105, null
  %108 = or i1 %106, %107
  br i1 %108, label %109, label %111
109:
  %110 = and i1 %106, %107
  store i1 %110, i1* %7
  br label %115
111:
  %112 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %104)
  %113 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %105)
  %114 = icmp sge i64 %112, %113
  store i1 %114, i1* %7
  br label %115
115:
  %116 = load i1, i1* %7
  %117 = zext i1 %116 to i64
  %118 = or i64 %117, 72057594037927936
  %119 = getelementptr i8, i8 addrspace(1)* null, i64 %118
  call void @_Bio__println(i8 addrspace(1)* %119)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %122 = icmp eq i8 addrspace(1)* %120, null
  %123 = icmp eq i8 addrspace(1)* %121, null
  %124 = or i1 %122, %123
  br i1 %124, label %125, label %127
125:
  %126 = and i1 %122, %123
  store i1 0, i1* %9
  br label %131
127:
  %128 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %120)
  %129 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %121)
  %130 = icmp slt i64 %128, %129
  store i1 %130, i1* %9
  br label %131
131:
  %132 = load i1, i1* %9
  %133 = zext i1 %132 to i64
  %134 = or i64 %133, 72057594037927936
  %135 = getelementptr i8, i8 addrspace(1)* null, i64 %134
  call void @_Bio__println(i8 addrspace(1)* %135)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %138 = icmp eq i8 addrspace(1)* %136, null
  %139 = icmp eq i8 addrspace(1)* %137, null
  %140 = or i1 %138, %139
  br i1 %140, label %141, label %143
141:
  %142 = and i1 %138, %139
  store i1 %142, i1* %11
  br label %147
143:
  %144 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %136)
  %145 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %137)
  %146 = icmp sle i64 %144, %145
  store i1 %146, i1* %11
  br label %147
147:
  %148 = load i1, i1* %11
  %149 = zext i1 %148 to i64
  %150 = or i64 %149, 72057594037927936
  %151 = getelementptr i8, i8 addrspace(1)* null, i64 %150
  call void @_Bio__println(i8 addrspace(1)* %151)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %154 = icmp eq i8 addrspace(1)* %152, null
  %155 = icmp eq i8 addrspace(1)* %153, null
  %156 = or i1 %154, %155
  br i1 %156, label %157, label %159
157:
  %158 = and i1 %154, %155
  store i1 0, i1* %13
  br label %163
159:
  %160 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %152)
  %161 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %153)
  %162 = icmp sgt i64 %160, %161
  store i1 %162, i1* %13
  br label %163
163:
  %164 = load i1, i1* %13
  %165 = zext i1 %164 to i64
  %166 = or i64 %165, 72057594037927936
  %167 = getelementptr i8, i8 addrspace(1)* null, i64 %166
  call void @_Bio__println(i8 addrspace(1)* %167)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %170 = icmp eq i8 addrspace(1)* %168, null
  %171 = icmp eq i8 addrspace(1)* %169, null
  %172 = or i1 %170, %171
  br i1 %172, label %173, label %175
173:
  %174 = and i1 %170, %171
  store i1 %174, i1* %15
  br label %179
175:
  %176 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %168)
  %177 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %169)
  %178 = icmp sge i64 %176, %177
  store i1 %178, i1* %15
  br label %179
179:
  %180 = load i1, i1* %15
  %181 = zext i1 %180 to i64
  %182 = or i64 %181, 72057594037927936
  %183 = getelementptr i8, i8 addrspace(1)* null, i64 %182
  call void @_Bio__println(i8 addrspace(1)* %183)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %184 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  store i8 addrspace(1)* %184, i8 addrspace(1)** %n3
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %187 = icmp eq i8 addrspace(1)* %185, null
  %188 = icmp eq i8 addrspace(1)* %186, null
  %189 = or i1 %187, %188
  br i1 %189, label %190, label %192
190:
  %191 = and i1 %187, %188
  store i1 %191, i1* %17
  br label %196
192:
  %193 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %185)
  %194 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %186)
  %195 = icmp sle i64 %193, %194
  store i1 %195, i1* %17
  br label %196
196:
  %197 = load i1, i1* %17
  %198 = zext i1 %197 to i64
  %199 = or i64 %198, 72057594037927936
  %200 = getelementptr i8, i8 addrspace(1)* null, i64 %199
  call void @_Bio__println(i8 addrspace(1)* %200)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %203 = icmp eq i8 addrspace(1)* %201, null
  %204 = icmp eq i8 addrspace(1)* %202, null
  %205 = or i1 %203, %204
  br i1 %205, label %206, label %208
206:
  %207 = and i1 %203, %204
  store i1 0, i1* %19
  br label %212
208:
  %209 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %201)
  %210 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %202)
  %211 = icmp slt i64 %209, %210
  store i1 %211, i1* %19
  br label %212
212:
  %213 = load i1, i1* %19
  %214 = zext i1 %213 to i64
  %215 = or i64 %214, 72057594037927936
  %216 = getelementptr i8, i8 addrspace(1)* null, i64 %215
  call void @_Bio__println(i8 addrspace(1)* %216)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %219 = icmp eq i8 addrspace(1)* %217, null
  %220 = icmp eq i8 addrspace(1)* %218, null
  %221 = or i1 %219, %220
  br i1 %221, label %222, label %224
222:
  %223 = and i1 %219, %220
  store i1 %223, i1* %21
  br label %228
224:
  %225 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %217)
  %226 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %218)
  %227 = icmp sge i64 %225, %226
  store i1 %227, i1* %21
  br label %228
228:
  %229 = load i1, i1* %21
  %230 = zext i1 %229 to i64
  %231 = or i64 %230, 72057594037927936
  %232 = getelementptr i8, i8 addrspace(1)* null, i64 %231
  call void @_Bio__println(i8 addrspace(1)* %232)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %235 = icmp eq i8 addrspace(1)* %233, null
  %236 = icmp eq i8 addrspace(1)* %234, null
  %237 = or i1 %235, %236
  br i1 %237, label %238, label %240
238:
  %239 = and i1 %235, %236
  store i1 0, i1* %23
  br label %244
240:
  %241 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %233)
  %242 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %234)
  %243 = icmp sgt i64 %241, %242
  store i1 %243, i1* %23
  br label %244
244:
  %245 = load i1, i1* %23
  %246 = zext i1 %245 to i64
  %247 = or i64 %246, 72057594037927936
  %248 = getelementptr i8, i8 addrspace(1)* null, i64 %247
  call void @_Bio__println(i8 addrspace(1)* %248)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  store i64 5, i64* %n4
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %250 = load i64, i64* %n4
  %251 = icmp eq i8 addrspace(1)* %249, null
  br i1 %251, label %252, label %253
252:
  store i1 0, i1* %25
  br label %256
253:
  %254 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %249)
  %255 = icmp sle i64 %254, %250
  store i1 %255, i1* %25
  br label %256
256:
  %257 = load i1, i1* %25
  %258 = zext i1 %257 to i64
  %259 = or i64 %258, 72057594037927936
  %260 = getelementptr i8, i8 addrspace(1)* null, i64 %259
  call void @_Bio__println(i8 addrspace(1)* %260)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %261 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %262 = load i64, i64* %n4
  %263 = icmp eq i8 addrspace(1)* %261, null
  br i1 %263, label %264, label %265
264:
  store i1 0, i1* %27
  br label %268
265:
  %266 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %261)
  %267 = icmp slt i64 %266, %262
  store i1 %267, i1* %27
  br label %268
268:
  %269 = load i1, i1* %27
  %270 = zext i1 %269 to i64
  %271 = or i64 %270, 72057594037927936
  %272 = getelementptr i8, i8 addrspace(1)* null, i64 %271
  call void @_Bio__println(i8 addrspace(1)* %272)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %273 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %274 = load i64, i64* %n4
  %275 = icmp eq i8 addrspace(1)* %273, null
  br i1 %275, label %276, label %277
276:
  store i1 0, i1* %29
  br label %280
277:
  %278 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %273)
  %279 = icmp sge i64 %278, %274
  store i1 %279, i1* %29
  br label %280
280:
  %281 = load i1, i1* %29
  %282 = zext i1 %281 to i64
  %283 = or i64 %282, 72057594037927936
  %284 = getelementptr i8, i8 addrspace(1)* null, i64 %283
  call void @_Bio__println(i8 addrspace(1)* %284)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %285 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %286 = load i64, i64* %n4
  %287 = icmp eq i8 addrspace(1)* %285, null
  br i1 %287, label %288, label %289
288:
  store i1 0, i1* %31
  br label %292
289:
  %290 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %285)
  %291 = icmp sgt i64 %290, %286
  store i1 %291, i1* %31
  br label %292
292:
  %293 = load i1, i1* %31
  %294 = zext i1 %293 to i64
  %295 = or i64 %294, 72057594037927936
  %296 = getelementptr i8, i8 addrspace(1)* null, i64 %295
  call void @_Bio__println(i8 addrspace(1)* %296)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %297 = load i64, i64* %n4
  %298 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %299 = icmp eq i8 addrspace(1)* %298, null
  br i1 %299, label %300, label %301
300:
  store i1 0, i1* %33
  br label %304
301:
  %302 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %298)
  %303 = icmp sge i64 %302, %297
  store i1 %303, i1* %33
  br label %304
304:
  %305 = load i1, i1* %33
  %306 = zext i1 %305 to i64
  %307 = or i64 %306, 72057594037927936
  %308 = getelementptr i8, i8 addrspace(1)* null, i64 %307
  call void @_Bio__println(i8 addrspace(1)* %308)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %309 = load i64, i64* %n4
  %310 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %311 = icmp eq i8 addrspace(1)* %310, null
  br i1 %311, label %312, label %313
312:
  store i1 0, i1* %35
  br label %316
313:
  %314 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %310)
  %315 = icmp sgt i64 %314, %309
  store i1 %315, i1* %35
  br label %316
316:
  %317 = load i1, i1* %35
  %318 = zext i1 %317 to i64
  %319 = or i64 %318, 72057594037927936
  %320 = getelementptr i8, i8 addrspace(1)* null, i64 %319
  call void @_Bio__println(i8 addrspace(1)* %320)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %321 = load i64, i64* %n4
  %322 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %323 = icmp eq i8 addrspace(1)* %322, null
  br i1 %323, label %324, label %325
324:
  store i1 0, i1* %37
  br label %328
325:
  %326 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %322)
  %327 = icmp sle i64 %326, %321
  store i1 %327, i1* %37
  br label %328
328:
  %329 = load i1, i1* %37
  %330 = zext i1 %329 to i64
  %331 = or i64 %330, 72057594037927936
  %332 = getelementptr i8, i8 addrspace(1)* null, i64 %331
  call void @_Bio__println(i8 addrspace(1)* %332)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  %333 = load i64, i64* %n4
  %334 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %335 = icmp eq i8 addrspace(1)* %334, null
  br i1 %335, label %336, label %337
336:
  store i1 0, i1* %39
  br label %340
337:
  %338 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %334)
  %339 = icmp slt i64 %338, %333
  store i1 %339, i1* %39
  br label %340
340:
  %341 = load i1, i1* %39
  %342 = zext i1 %341 to i64
  %343 = or i64 %342, 72057594037927936
  %344 = getelementptr i8, i8 addrspace(1)* null, i64 %343
  call void @_Bio__println(i8 addrspace(1)* %344)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  store i8 addrspace(1)* null, i8 addrspace(1)** %n5
  %345 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %346 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %347 = icmp eq i8 addrspace(1)* %345, null
  %348 = icmp eq i8 addrspace(1)* %346, null
  %349 = or i1 %347, %348
  br i1 %349, label %350, label %352
350:
  %351 = and i1 %347, %348
  store i1 0, i1* %41
  br label %356
352:
  %353 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %345)
  %354 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %346)
  %355 = icmp slt i64 %353, %354
  store i1 %355, i1* %41
  br label %356
356:
  %357 = load i1, i1* %41
  %358 = zext i1 %357 to i64
  %359 = or i64 %358, 72057594037927936
  %360 = getelementptr i8, i8 addrspace(1)* null, i64 %359
  call void @_Bio__println(i8 addrspace(1)* %360)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %361 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %362 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %363 = icmp eq i8 addrspace(1)* %361, null
  %364 = icmp eq i8 addrspace(1)* %362, null
  %365 = or i1 %363, %364
  br i1 %365, label %366, label %368
366:
  %367 = and i1 %363, %364
  store i1 %367, i1* %43
  br label %372
368:
  %369 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %361)
  %370 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %362)
  %371 = icmp sle i64 %369, %370
  store i1 %371, i1* %43
  br label %372
372:
  %373 = load i1, i1* %43
  %374 = zext i1 %373 to i64
  %375 = or i64 %374, 72057594037927936
  %376 = getelementptr i8, i8 addrspace(1)* null, i64 %375
  call void @_Bio__println(i8 addrspace(1)* %376)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %377 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %378 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %379 = icmp eq i8 addrspace(1)* %377, null
  %380 = icmp eq i8 addrspace(1)* %378, null
  %381 = or i1 %379, %380
  br i1 %381, label %382, label %384
382:
  %383 = and i1 %379, %380
  store i1 0, i1* %45
  br label %388
384:
  %385 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %377)
  %386 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %378)
  %387 = icmp sgt i64 %385, %386
  store i1 %387, i1* %45
  br label %388
388:
  %389 = load i1, i1* %45
  %390 = zext i1 %389 to i64
  %391 = or i64 %390, 72057594037927936
  %392 = getelementptr i8, i8 addrspace(1)* null, i64 %391
  call void @_Bio__println(i8 addrspace(1)* %392)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %393 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %394 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %395 = icmp eq i8 addrspace(1)* %393, null
  %396 = icmp eq i8 addrspace(1)* %394, null
  %397 = or i1 %395, %396
  br i1 %397, label %398, label %400
398:
  %399 = and i1 %395, %396
  store i1 %399, i1* %47
  br label %404
400:
  %401 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %393)
  %402 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %394)
  %403 = icmp sge i64 %401, %402
  store i1 %403, i1* %47
  br label %404
404:
  %405 = load i1, i1* %47
  %406 = zext i1 %405 to i64
  %407 = or i64 %406, 72057594037927936
  %408 = getelementptr i8, i8 addrspace(1)* null, i64 %407
  call void @_Bio__println(i8 addrspace(1)* %408)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  ret void
}
