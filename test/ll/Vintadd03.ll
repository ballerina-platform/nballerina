@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  call void @_bal_panic(i64 516)
  unreachable
81:
  %82 = extractvalue {i64, i1} %76, 0
  store i64 %82, i64* %1
  %83 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %84 = extractvalue {i64, i1} %83, 1
  br i1 %84, label %95, label %86
85:
  store i64 769, i64* %71
  br label %78
86:
  %87 = extractvalue {i64, i1} %83, 0
  store i64 %87, i64* %2
  %88 = load i64, i64* %1
  %89 = load i64, i64* %2
  %90 = call i64 @_B_add(i64 %88, i64 %89)
  store i64 %90, i64* %3
  %91 = load i64, i64* %3
  %92 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %91)
  call void @_Bio__println(i8 addrspace(1)* %92)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %93 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %94 = extractvalue {i64, i1} %93, 1
  br i1 %94, label %100, label %96
95:
  store i64 769, i64* %71
  br label %78
96:
  %97 = extractvalue {i64, i1} %93, 0
  store i64 %97, i64* %5
  %98 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %99 = extractvalue {i64, i1} %98, 1
  br i1 %99, label %108, label %101
100:
  store i64 1025, i64* %71
  br label %78
101:
  %102 = extractvalue {i64, i1} %98, 0
  store i64 %102, i64* %6
  %103 = load i64, i64* %5
  %104 = load i64, i64* %6
  %105 = call i64 @_B_add(i64 %103, i64 %104)
  store i64 %105, i64* %7
  %106 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 11)
  %107 = extractvalue {i64, i1} %106, 1
  br i1 %107, label %118, label %109
108:
  store i64 1025, i64* %71
  br label %78
109:
  %110 = extractvalue {i64, i1} %106, 0
  store i64 %110, i64* %8
  %111 = load i64, i64* %7
  %112 = load i64, i64* %8
  %113 = call i64 @_B_add(i64 %111, i64 %112)
  store i64 %113, i64* %9
  %114 = load i64, i64* %9
  %115 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %114)
  call void @_Bio__println(i8 addrspace(1)* %115)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %116 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %117 = extractvalue {i64, i1} %116, 1
  br i1 %117, label %123, label %119
118:
  store i64 1025, i64* %71
  br label %78
119:
  %120 = extractvalue {i64, i1} %116, 0
  store i64 %120, i64* %11
  %121 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %122 = extractvalue {i64, i1} %121, 1
  br i1 %122, label %131, label %124
123:
  store i64 1281, i64* %71
  br label %78
124:
  %125 = extractvalue {i64, i1} %121, 0
  store i64 %125, i64* %12
  %126 = load i64, i64* %11
  %127 = load i64, i64* %12
  %128 = call i64 @_B_add(i64 %126, i64 %127)
  store i64 %128, i64* %13
  %129 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %130 = extractvalue {i64, i1} %129, 1
  br i1 %130, label %136, label %132
131:
  store i64 1281, i64* %71
  br label %78
132:
  %133 = extractvalue {i64, i1} %129, 0
  store i64 %133, i64* %14
  %134 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %135 = extractvalue {i64, i1} %134, 1
  br i1 %135, label %149, label %137
136:
  store i64 1281, i64* %71
  br label %78
137:
  %138 = extractvalue {i64, i1} %134, 0
  store i64 %138, i64* %15
  %139 = load i64, i64* %14
  %140 = load i64, i64* %15
  %141 = call i64 @_B_add(i64 %139, i64 %140)
  store i64 %141, i64* %16
  %142 = load i64, i64* %13
  %143 = load i64, i64* %16
  %144 = call i64 @_B_add(i64 %142, i64 %143)
  store i64 %144, i64* %17
  %145 = load i64, i64* %17
  %146 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %145)
  call void @_Bio__println(i8 addrspace(1)* %146)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %147 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %148 = extractvalue {i64, i1} %147, 1
  br i1 %148, label %154, label %150
149:
  store i64 1281, i64* %71
  br label %78
150:
  %151 = extractvalue {i64, i1} %147, 0
  store i64 %151, i64* %19
  %152 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %153 = extractvalue {i64, i1} %152, 1
  br i1 %153, label %162, label %155
154:
  store i64 1537, i64* %71
  br label %78
155:
  %156 = extractvalue {i64, i1} %152, 0
  store i64 %156, i64* %20
  %157 = load i64, i64* %19
  %158 = load i64, i64* %20
  %159 = call i64 @_B_add(i64 %157, i64 %158)
  store i64 %159, i64* %21
  %160 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %161 = extractvalue {i64, i1} %160, 1
  br i1 %161, label %167, label %163
162:
  store i64 1537, i64* %71
  br label %78
163:
  %164 = extractvalue {i64, i1} %160, 0
  store i64 %164, i64* %22
  %165 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %166 = extractvalue {i64, i1} %165, 1
  br i1 %166, label %178, label %168
167:
  store i64 1537, i64* %71
  br label %78
168:
  %169 = extractvalue {i64, i1} %165, 0
  store i64 %169, i64* %23
  %170 = load i64, i64* %22
  %171 = load i64, i64* %23
  %172 = call i64 @_B_add(i64 %170, i64 %171)
  store i64 %172, i64* %24
  %173 = load i64, i64* %21
  %174 = load i64, i64* %24
  %175 = call i64 @_B_add(i64 %173, i64 %174)
  store i64 %175, i64* %25
  %176 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 12)
  %177 = extractvalue {i64, i1} %176, 1
  br i1 %177, label %188, label %179
178:
  store i64 1537, i64* %71
  br label %78
179:
  %180 = extractvalue {i64, i1} %176, 0
  store i64 %180, i64* %26
  %181 = load i64, i64* %25
  %182 = load i64, i64* %26
  %183 = call i64 @_B_add(i64 %181, i64 %182)
  store i64 %183, i64* %27
  %184 = load i64, i64* %27
  %185 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %184)
  call void @_Bio__println(i8 addrspace(1)* %185)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %186 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %187 = extractvalue {i64, i1} %186, 1
  br i1 %187, label %193, label %189
188:
  store i64 1537, i64* %71
  br label %78
189:
  %190 = extractvalue {i64, i1} %186, 0
  store i64 %190, i64* %29
  %191 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %192 = extractvalue {i64, i1} %191, 1
  br i1 %192, label %201, label %194
193:
  store i64 1793, i64* %71
  br label %78
194:
  %195 = extractvalue {i64, i1} %191, 0
  store i64 %195, i64* %30
  %196 = load i64, i64* %29
  %197 = load i64, i64* %30
  %198 = call i64 @_B_add(i64 %196, i64 %197)
  store i64 %198, i64* %31
  %199 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %200 = extractvalue {i64, i1} %199, 1
  br i1 %200, label %206, label %202
201:
  store i64 1793, i64* %71
  br label %78
202:
  %203 = extractvalue {i64, i1} %199, 0
  store i64 %203, i64* %32
  %204 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %205 = extractvalue {i64, i1} %204, 1
  br i1 %205, label %217, label %207
206:
  store i64 1793, i64* %71
  br label %78
207:
  %208 = extractvalue {i64, i1} %204, 0
  store i64 %208, i64* %33
  %209 = load i64, i64* %32
  %210 = load i64, i64* %33
  %211 = call i64 @_B_add(i64 %209, i64 %210)
  store i64 %211, i64* %34
  %212 = load i64, i64* %31
  %213 = load i64, i64* %34
  %214 = call i64 @_B_add(i64 %212, i64 %213)
  store i64 %214, i64* %35
  %215 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 4)
  %216 = extractvalue {i64, i1} %215, 1
  br i1 %216, label %222, label %218
217:
  store i64 1793, i64* %71
  br label %78
218:
  %219 = extractvalue {i64, i1} %215, 0
  store i64 %219, i64* %36
  %220 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 7)
  %221 = extractvalue {i64, i1} %220, 1
  br i1 %221, label %235, label %223
222:
  store i64 1793, i64* %71
  br label %78
223:
  %224 = extractvalue {i64, i1} %220, 0
  store i64 %224, i64* %37
  %225 = load i64, i64* %36
  %226 = load i64, i64* %37
  %227 = call i64 @_B_add(i64 %225, i64 %226)
  store i64 %227, i64* %38
  %228 = load i64, i64* %35
  %229 = load i64, i64* %38
  %230 = call i64 @_B_add(i64 %228, i64 %229)
  store i64 %230, i64* %39
  %231 = load i64, i64* %39
  %232 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %231)
  call void @_Bio__println(i8 addrspace(1)* %232)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  %233 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %234 = extractvalue {i64, i1} %233, 1
  br i1 %234, label %240, label %236
235:
  store i64 1793, i64* %71
  br label %78
236:
  %237 = extractvalue {i64, i1} %233, 0
  store i64 %237, i64* %41
  %238 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %239 = extractvalue {i64, i1} %238, 1
  br i1 %239, label %248, label %241
240:
  store i64 2049, i64* %71
  br label %78
241:
  %242 = extractvalue {i64, i1} %238, 0
  store i64 %242, i64* %42
  %243 = load i64, i64* %41
  %244 = load i64, i64* %42
  %245 = call i64 @_B_add(i64 %243, i64 %244)
  store i64 %245, i64* %43
  %246 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %247 = extractvalue {i64, i1} %246, 1
  br i1 %247, label %253, label %249
248:
  store i64 2049, i64* %71
  br label %78
249:
  %250 = extractvalue {i64, i1} %246, 0
  store i64 %250, i64* %44
  %251 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %252 = extractvalue {i64, i1} %251, 1
  br i1 %252, label %264, label %254
253:
  store i64 2049, i64* %71
  br label %78
254:
  %255 = extractvalue {i64, i1} %251, 0
  store i64 %255, i64* %45
  %256 = load i64, i64* %44
  %257 = load i64, i64* %45
  %258 = call i64 @_B_add(i64 %256, i64 %257)
  store i64 %258, i64* %46
  %259 = load i64, i64* %43
  %260 = load i64, i64* %46
  %261 = call i64 @_B_add(i64 %259, i64 %260)
  store i64 %261, i64* %47
  %262 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 4)
  %263 = extractvalue {i64, i1} %262, 1
  br i1 %263, label %269, label %265
264:
  store i64 2049, i64* %71
  br label %78
265:
  %266 = extractvalue {i64, i1} %262, 0
  store i64 %266, i64* %48
  %267 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 7)
  %268 = extractvalue {i64, i1} %267, 1
  br i1 %268, label %277, label %270
269:
  store i64 2049, i64* %71
  br label %78
270:
  %271 = extractvalue {i64, i1} %267, 0
  store i64 %271, i64* %49
  %272 = load i64, i64* %48
  %273 = load i64, i64* %49
  %274 = call i64 @_B_add(i64 %272, i64 %273)
  store i64 %274, i64* %50
  %275 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %276 = extractvalue {i64, i1} %275, 1
  br i1 %276, label %290, label %278
277:
  store i64 2049, i64* %71
  br label %78
278:
  %279 = extractvalue {i64, i1} %275, 0
  store i64 %279, i64* %51
  %280 = load i64, i64* %50
  %281 = load i64, i64* %51
  %282 = call i64 @_B_add(i64 %280, i64 %281)
  store i64 %282, i64* %52
  %283 = load i64, i64* %47
  %284 = load i64, i64* %52
  %285 = call i64 @_B_add(i64 %283, i64 %284)
  store i64 %285, i64* %53
  %286 = load i64, i64* %53
  %287 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %286)
  call void @_Bio__println(i8 addrspace(1)* %287)
  store i8 addrspace(1)* null, i8 addrspace(1)** %54
  %288 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %289 = extractvalue {i64, i1} %288, 1
  br i1 %289, label %295, label %291
290:
  store i64 2049, i64* %71
  br label %78
291:
  %292 = extractvalue {i64, i1} %288, 0
  store i64 %292, i64* %55
  %293 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %294 = extractvalue {i64, i1} %293, 1
  br i1 %294, label %303, label %296
295:
  store i64 2305, i64* %71
  br label %78
296:
  %297 = extractvalue {i64, i1} %293, 0
  store i64 %297, i64* %56
  %298 = load i64, i64* %55
  %299 = load i64, i64* %56
  %300 = call i64 @_B_add(i64 %298, i64 %299)
  store i64 %300, i64* %57
  %301 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 5)
  %302 = extractvalue {i64, i1} %301, 1
  br i1 %302, label %308, label %304
303:
  store i64 2305, i64* %71
  br label %78
304:
  %305 = extractvalue {i64, i1} %301, 0
  store i64 %305, i64* %58
  %306 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9)
  %307 = extractvalue {i64, i1} %306, 1
  br i1 %307, label %319, label %309
308:
  store i64 2305, i64* %71
  br label %78
309:
  %310 = extractvalue {i64, i1} %306, 0
  store i64 %310, i64* %59
  %311 = load i64, i64* %58
  %312 = load i64, i64* %59
  %313 = call i64 @_B_add(i64 %311, i64 %312)
  store i64 %313, i64* %60
  %314 = load i64, i64* %57
  %315 = load i64, i64* %60
  %316 = call i64 @_B_add(i64 %314, i64 %315)
  store i64 %316, i64* %61
  %317 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 4)
  %318 = extractvalue {i64, i1} %317, 1
  br i1 %318, label %324, label %320
319:
  store i64 2305, i64* %71
  br label %78
320:
  %321 = extractvalue {i64, i1} %317, 0
  store i64 %321, i64* %62
  %322 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 7)
  %323 = extractvalue {i64, i1} %322, 1
  br i1 %323, label %332, label %325
324:
  store i64 2305, i64* %71
  br label %78
325:
  %326 = extractvalue {i64, i1} %322, 0
  store i64 %326, i64* %63
  %327 = load i64, i64* %62
  %328 = load i64, i64* %63
  %329 = call i64 @_B_add(i64 %327, i64 %328)
  store i64 %329, i64* %64
  %330 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 23)
  %331 = extractvalue {i64, i1} %330, 1
  br i1 %331, label %337, label %333
332:
  store i64 2305, i64* %71
  br label %78
333:
  %334 = extractvalue {i64, i1} %330, 0
  store i64 %334, i64* %65
  %335 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 50)
  %336 = extractvalue {i64, i1} %335, 1
  br i1 %336, label %351, label %338
337:
  store i64 2305, i64* %71
  br label %78
338:
  %339 = extractvalue {i64, i1} %335, 0
  store i64 %339, i64* %66
  %340 = load i64, i64* %65
  %341 = load i64, i64* %66
  %342 = call i64 @_B_add(i64 %340, i64 %341)
  store i64 %342, i64* %67
  %343 = load i64, i64* %64
  %344 = load i64, i64* %67
  %345 = call i64 @_B_add(i64 %343, i64 %344)
  store i64 %345, i64* %68
  %346 = load i64, i64* %61
  %347 = load i64, i64* %68
  %348 = call i64 @_B_add(i64 %346, i64 %347)
  store i64 %348, i64* %69
  %349 = load i64, i64* %69
  %350 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %349)
  call void @_Bio__println(i8 addrspace(1)* %350)
  store i8 addrspace(1)* null, i8 addrspace(1)** %70
  ret void
351:
  store i64 2305, i64* %71
  br label %78
}
define internal i64 @_B_add(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %19, label %16
13:
  %14 = load i64, i64* %4
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 3076)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %3
  %18 = load i64, i64* %3
  ret i64 %18
19:
  store i64 3329, i64* %4
  br label %13
}
