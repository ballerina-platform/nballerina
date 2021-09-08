@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_string_cmp(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  %n4 = alloca i8 addrspace(1)*
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
  br i1 %51, label %58, label %52
52:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)** %n1
  store i8 addrspace(1)* null, i8 addrspace(1)** %n2
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %55 = icmp eq i8 addrspace(1)* %53, null
  %56 = icmp eq i8 addrspace(1)* %54, null
  %57 = or i1 %55, %56
  br i1 %57, label %60, label %62
58:
  %59 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %59)
  unreachable
60:
  %61 = and i1 %55, %56
  store i1 0, i1* %1
  br label %65
62:
  %63 = call i64 @_bal_string_cmp(i8 addrspace(1)* %53, i8 addrspace(1)* %54)
  %64 = icmp slt i64 %63, 0
  store i1 %64, i1* %1
  br label %65
65:
  %66 = load i1, i1* %1
  %67 = zext i1 %66 to i64
  %68 = or i64 %67, 72057594037927936
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %72 = icmp eq i8 addrspace(1)* %70, null
  %73 = icmp eq i8 addrspace(1)* %71, null
  %74 = or i1 %72, %73
  br i1 %74, label %75, label %77
75:
  %76 = and i1 %72, %73
  store i1 %76, i1* %3
  br label %80
77:
  %78 = call i64 @_bal_string_cmp(i8 addrspace(1)* %70, i8 addrspace(1)* %71)
  %79 = icmp sle i64 %78, 0
  store i1 %79, i1* %3
  br label %80
80:
  %81 = load i1, i1* %3
  %82 = zext i1 %81 to i64
  %83 = or i64 %82, 72057594037927936
  %84 = getelementptr i8, i8 addrspace(1)* null, i64 %83
  call void @_Bio__println(i8 addrspace(1)* %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %87 = icmp eq i8 addrspace(1)* %85, null
  %88 = icmp eq i8 addrspace(1)* %86, null
  %89 = or i1 %87, %88
  br i1 %89, label %90, label %92
90:
  %91 = and i1 %87, %88
  store i1 0, i1* %5
  br label %95
92:
  %93 = call i64 @_bal_string_cmp(i8 addrspace(1)* %85, i8 addrspace(1)* %86)
  %94 = icmp sgt i64 %93, 0
  store i1 %94, i1* %5
  br label %95
95:
  %96 = load i1, i1* %5
  %97 = zext i1 %96 to i64
  %98 = or i64 %97, 72057594037927936
  %99 = getelementptr i8, i8 addrspace(1)* null, i64 %98
  call void @_Bio__println(i8 addrspace(1)* %99)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %102 = icmp eq i8 addrspace(1)* %100, null
  %103 = icmp eq i8 addrspace(1)* %101, null
  %104 = or i1 %102, %103
  br i1 %104, label %105, label %107
105:
  %106 = and i1 %102, %103
  store i1 %106, i1* %7
  br label %110
107:
  %108 = call i64 @_bal_string_cmp(i8 addrspace(1)* %100, i8 addrspace(1)* %101)
  %109 = icmp sge i64 %108, 0
  store i1 %109, i1* %7
  br label %110
110:
  %111 = load i1, i1* %7
  %112 = zext i1 %111 to i64
  %113 = or i64 %112, 72057594037927936
  %114 = getelementptr i8, i8 addrspace(1)* null, i64 %113
  call void @_Bio__println(i8 addrspace(1)* %114)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %117 = icmp eq i8 addrspace(1)* %115, null
  %118 = icmp eq i8 addrspace(1)* %116, null
  %119 = or i1 %117, %118
  br i1 %119, label %120, label %122
120:
  %121 = and i1 %117, %118
  store i1 0, i1* %9
  br label %125
122:
  %123 = call i64 @_bal_string_cmp(i8 addrspace(1)* %115, i8 addrspace(1)* %116)
  %124 = icmp slt i64 %123, 0
  store i1 %124, i1* %9
  br label %125
125:
  %126 = load i1, i1* %9
  %127 = zext i1 %126 to i64
  %128 = or i64 %127, 72057594037927936
  %129 = getelementptr i8, i8 addrspace(1)* null, i64 %128
  call void @_Bio__println(i8 addrspace(1)* %129)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %132 = icmp eq i8 addrspace(1)* %130, null
  %133 = icmp eq i8 addrspace(1)* %131, null
  %134 = or i1 %132, %133
  br i1 %134, label %135, label %137
135:
  %136 = and i1 %132, %133
  store i1 %136, i1* %11
  br label %140
137:
  %138 = call i64 @_bal_string_cmp(i8 addrspace(1)* %130, i8 addrspace(1)* %131)
  %139 = icmp sle i64 %138, 0
  store i1 %139, i1* %11
  br label %140
140:
  %141 = load i1, i1* %11
  %142 = zext i1 %141 to i64
  %143 = or i64 %142, 72057594037927936
  %144 = getelementptr i8, i8 addrspace(1)* null, i64 %143
  call void @_Bio__println(i8 addrspace(1)* %144)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %147 = icmp eq i8 addrspace(1)* %145, null
  %148 = icmp eq i8 addrspace(1)* %146, null
  %149 = or i1 %147, %148
  br i1 %149, label %150, label %152
150:
  %151 = and i1 %147, %148
  store i1 0, i1* %13
  br label %155
152:
  %153 = call i64 @_bal_string_cmp(i8 addrspace(1)* %145, i8 addrspace(1)* %146)
  %154 = icmp sgt i64 %153, 0
  store i1 %154, i1* %13
  br label %155
155:
  %156 = load i1, i1* %13
  %157 = zext i1 %156 to i64
  %158 = or i64 %157, 72057594037927936
  %159 = getelementptr i8, i8 addrspace(1)* null, i64 %158
  call void @_Bio__println(i8 addrspace(1)* %159)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %162 = icmp eq i8 addrspace(1)* %160, null
  %163 = icmp eq i8 addrspace(1)* %161, null
  %164 = or i1 %162, %163
  br i1 %164, label %165, label %167
165:
  %166 = and i1 %162, %163
  store i1 %166, i1* %15
  br label %170
167:
  %168 = call i64 @_bal_string_cmp(i8 addrspace(1)* %160, i8 addrspace(1)* %161)
  %169 = icmp sge i64 %168, 0
  store i1 %169, i1* %15
  br label %170
170:
  %171 = load i1, i1* %15
  %172 = zext i1 %171 to i64
  %173 = or i64 %172, 72057594037927936
  %174 = getelementptr i8, i8 addrspace(1)* null, i64 %173
  call void @_Bio__println(i8 addrspace(1)* %174)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630866808), i8 addrspace(1)** %n3
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %177 = icmp eq i8 addrspace(1)* %175, null
  %178 = icmp eq i8 addrspace(1)* %176, null
  %179 = or i1 %177, %178
  br i1 %179, label %180, label %182
180:
  %181 = and i1 %177, %178
  store i1 %181, i1* %17
  br label %185
182:
  %183 = call i64 @_bal_string_cmp(i8 addrspace(1)* %175, i8 addrspace(1)* %176)
  %184 = icmp sle i64 %183, 0
  store i1 %184, i1* %17
  br label %185
185:
  %186 = load i1, i1* %17
  %187 = zext i1 %186 to i64
  %188 = or i64 %187, 72057594037927936
  %189 = getelementptr i8, i8 addrspace(1)* null, i64 %188
  call void @_Bio__println(i8 addrspace(1)* %189)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %192 = icmp eq i8 addrspace(1)* %190, null
  %193 = icmp eq i8 addrspace(1)* %191, null
  %194 = or i1 %192, %193
  br i1 %194, label %195, label %197
195:
  %196 = and i1 %192, %193
  store i1 0, i1* %19
  br label %200
197:
  %198 = call i64 @_bal_string_cmp(i8 addrspace(1)* %190, i8 addrspace(1)* %191)
  %199 = icmp slt i64 %198, 0
  store i1 %199, i1* %19
  br label %200
200:
  %201 = load i1, i1* %19
  %202 = zext i1 %201 to i64
  %203 = or i64 %202, 72057594037927936
  %204 = getelementptr i8, i8 addrspace(1)* null, i64 %203
  call void @_Bio__println(i8 addrspace(1)* %204)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %207 = icmp eq i8 addrspace(1)* %205, null
  %208 = icmp eq i8 addrspace(1)* %206, null
  %209 = or i1 %207, %208
  br i1 %209, label %210, label %212
210:
  %211 = and i1 %207, %208
  store i1 %211, i1* %21
  br label %215
212:
  %213 = call i64 @_bal_string_cmp(i8 addrspace(1)* %205, i8 addrspace(1)* %206)
  %214 = icmp sge i64 %213, 0
  store i1 %214, i1* %21
  br label %215
215:
  %216 = load i1, i1* %21
  %217 = zext i1 %216 to i64
  %218 = or i64 %217, 72057594037927936
  %219 = getelementptr i8, i8 addrspace(1)* null, i64 %218
  call void @_Bio__println(i8 addrspace(1)* %219)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %222 = icmp eq i8 addrspace(1)* %220, null
  %223 = icmp eq i8 addrspace(1)* %221, null
  %224 = or i1 %222, %223
  br i1 %224, label %225, label %227
225:
  %226 = and i1 %222, %223
  store i1 0, i1* %23
  br label %230
227:
  %228 = call i64 @_bal_string_cmp(i8 addrspace(1)* %220, i8 addrspace(1)* %221)
  %229 = icmp sgt i64 %228, 0
  store i1 %229, i1* %23
  br label %230
230:
  %231 = load i1, i1* %23
  %232 = zext i1 %231 to i64
  %233 = or i64 %232, 72057594037927936
  %234 = getelementptr i8, i8 addrspace(1)* null, i64 %233
  call void @_Bio__println(i8 addrspace(1)* %234)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622019450), i8 addrspace(1)** %n4
  %235 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %236 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %237 = icmp eq i8 addrspace(1)* %235, null
  %238 = icmp eq i8 addrspace(1)* %236, null
  %239 = or i1 %237, %238
  br i1 %239, label %240, label %242
240:
  %241 = and i1 %237, %238
  store i1 %241, i1* %25
  br label %245
242:
  %243 = call i64 @_bal_string_cmp(i8 addrspace(1)* %235, i8 addrspace(1)* %236)
  %244 = icmp sle i64 %243, 0
  store i1 %244, i1* %25
  br label %245
245:
  %246 = load i1, i1* %25
  %247 = zext i1 %246 to i64
  %248 = or i64 %247, 72057594037927936
  %249 = getelementptr i8, i8 addrspace(1)* null, i64 %248
  call void @_Bio__println(i8 addrspace(1)* %249)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %250 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %252 = icmp eq i8 addrspace(1)* %250, null
  %253 = icmp eq i8 addrspace(1)* %251, null
  %254 = or i1 %252, %253
  br i1 %254, label %255, label %257
255:
  %256 = and i1 %252, %253
  store i1 0, i1* %27
  br label %260
257:
  %258 = call i64 @_bal_string_cmp(i8 addrspace(1)* %250, i8 addrspace(1)* %251)
  %259 = icmp slt i64 %258, 0
  store i1 %259, i1* %27
  br label %260
260:
  %261 = load i1, i1* %27
  %262 = zext i1 %261 to i64
  %263 = or i64 %262, 72057594037927936
  %264 = getelementptr i8, i8 addrspace(1)* null, i64 %263
  call void @_Bio__println(i8 addrspace(1)* %264)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %265 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %266 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %267 = icmp eq i8 addrspace(1)* %265, null
  %268 = icmp eq i8 addrspace(1)* %266, null
  %269 = or i1 %267, %268
  br i1 %269, label %270, label %272
270:
  %271 = and i1 %267, %268
  store i1 %271, i1* %29
  br label %275
272:
  %273 = call i64 @_bal_string_cmp(i8 addrspace(1)* %265, i8 addrspace(1)* %266)
  %274 = icmp sge i64 %273, 0
  store i1 %274, i1* %29
  br label %275
275:
  %276 = load i1, i1* %29
  %277 = zext i1 %276 to i64
  %278 = or i64 %277, 72057594037927936
  %279 = getelementptr i8, i8 addrspace(1)* null, i64 %278
  call void @_Bio__println(i8 addrspace(1)* %279)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %280 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %281 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %282 = icmp eq i8 addrspace(1)* %280, null
  %283 = icmp eq i8 addrspace(1)* %281, null
  %284 = or i1 %282, %283
  br i1 %284, label %285, label %287
285:
  %286 = and i1 %282, %283
  store i1 0, i1* %31
  br label %290
287:
  %288 = call i64 @_bal_string_cmp(i8 addrspace(1)* %280, i8 addrspace(1)* %281)
  %289 = icmp sgt i64 %288, 0
  store i1 %289, i1* %31
  br label %290
290:
  %291 = load i1, i1* %31
  %292 = zext i1 %291 to i64
  %293 = or i64 %292, 72057594037927936
  %294 = getelementptr i8, i8 addrspace(1)* null, i64 %293
  call void @_Bio__println(i8 addrspace(1)* %294)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %295 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %296 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %297 = icmp eq i8 addrspace(1)* %295, null
  %298 = icmp eq i8 addrspace(1)* %296, null
  %299 = or i1 %297, %298
  br i1 %299, label %300, label %302
300:
  %301 = and i1 %297, %298
  store i1 %301, i1* %33
  br label %305
302:
  %303 = call i64 @_bal_string_cmp(i8 addrspace(1)* %295, i8 addrspace(1)* %296)
  %304 = icmp sle i64 %303, 0
  store i1 %304, i1* %33
  br label %305
305:
  %306 = load i1, i1* %33
  %307 = zext i1 %306 to i64
  %308 = or i64 %307, 72057594037927936
  %309 = getelementptr i8, i8 addrspace(1)* null, i64 %308
  call void @_Bio__println(i8 addrspace(1)* %309)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %310 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %311 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %312 = icmp eq i8 addrspace(1)* %310, null
  %313 = icmp eq i8 addrspace(1)* %311, null
  %314 = or i1 %312, %313
  br i1 %314, label %315, label %317
315:
  %316 = and i1 %312, %313
  store i1 0, i1* %35
  br label %320
317:
  %318 = call i64 @_bal_string_cmp(i8 addrspace(1)* %310, i8 addrspace(1)* %311)
  %319 = icmp slt i64 %318, 0
  store i1 %319, i1* %35
  br label %320
320:
  %321 = load i1, i1* %35
  %322 = zext i1 %321 to i64
  %323 = or i64 %322, 72057594037927936
  %324 = getelementptr i8, i8 addrspace(1)* null, i64 %323
  call void @_Bio__println(i8 addrspace(1)* %324)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %325 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %326 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %327 = icmp eq i8 addrspace(1)* %325, null
  %328 = icmp eq i8 addrspace(1)* %326, null
  %329 = or i1 %327, %328
  br i1 %329, label %330, label %332
330:
  %331 = and i1 %327, %328
  store i1 %331, i1* %37
  br label %335
332:
  %333 = call i64 @_bal_string_cmp(i8 addrspace(1)* %325, i8 addrspace(1)* %326)
  %334 = icmp sge i64 %333, 0
  store i1 %334, i1* %37
  br label %335
335:
  %336 = load i1, i1* %37
  %337 = zext i1 %336 to i64
  %338 = or i64 %337, 72057594037927936
  %339 = getelementptr i8, i8 addrspace(1)* null, i64 %338
  call void @_Bio__println(i8 addrspace(1)* %339)
  store i8 addrspace(1)* null, i8 addrspace(1)** %38
  %340 = load i8 addrspace(1)*, i8 addrspace(1)** %n4
  %341 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %342 = icmp eq i8 addrspace(1)* %340, null
  %343 = icmp eq i8 addrspace(1)* %341, null
  %344 = or i1 %342, %343
  br i1 %344, label %345, label %347
345:
  %346 = and i1 %342, %343
  store i1 0, i1* %39
  br label %350
347:
  %348 = call i64 @_bal_string_cmp(i8 addrspace(1)* %340, i8 addrspace(1)* %341)
  %349 = icmp sgt i64 %348, 0
  store i1 %349, i1* %39
  br label %350
350:
  %351 = load i1, i1* %39
  %352 = zext i1 %351 to i64
  %353 = or i64 %352, 72057594037927936
  %354 = getelementptr i8, i8 addrspace(1)* null, i64 %353
  call void @_Bio__println(i8 addrspace(1)* %354)
  store i8 addrspace(1)* null, i8 addrspace(1)** %40
  store i8 addrspace(1)* null, i8 addrspace(1)** %n5
  %355 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %356 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %357 = icmp eq i8 addrspace(1)* %355, null
  %358 = icmp eq i8 addrspace(1)* %356, null
  %359 = or i1 %357, %358
  br i1 %359, label %360, label %362
360:
  %361 = and i1 %357, %358
  store i1 0, i1* %41
  br label %365
362:
  %363 = call i64 @_bal_string_cmp(i8 addrspace(1)* %355, i8 addrspace(1)* %356)
  %364 = icmp slt i64 %363, 0
  store i1 %364, i1* %41
  br label %365
365:
  %366 = load i1, i1* %41
  %367 = zext i1 %366 to i64
  %368 = or i64 %367, 72057594037927936
  %369 = getelementptr i8, i8 addrspace(1)* null, i64 %368
  call void @_Bio__println(i8 addrspace(1)* %369)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %370 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %371 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %372 = icmp eq i8 addrspace(1)* %370, null
  %373 = icmp eq i8 addrspace(1)* %371, null
  %374 = or i1 %372, %373
  br i1 %374, label %375, label %377
375:
  %376 = and i1 %372, %373
  store i1 %376, i1* %43
  br label %380
377:
  %378 = call i64 @_bal_string_cmp(i8 addrspace(1)* %370, i8 addrspace(1)* %371)
  %379 = icmp sle i64 %378, 0
  store i1 %379, i1* %43
  br label %380
380:
  %381 = load i1, i1* %43
  %382 = zext i1 %381 to i64
  %383 = or i64 %382, 72057594037927936
  %384 = getelementptr i8, i8 addrspace(1)* null, i64 %383
  call void @_Bio__println(i8 addrspace(1)* %384)
  store i8 addrspace(1)* null, i8 addrspace(1)** %44
  %385 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %386 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %387 = icmp eq i8 addrspace(1)* %385, null
  %388 = icmp eq i8 addrspace(1)* %386, null
  %389 = or i1 %387, %388
  br i1 %389, label %390, label %392
390:
  %391 = and i1 %387, %388
  store i1 0, i1* %45
  br label %395
392:
  %393 = call i64 @_bal_string_cmp(i8 addrspace(1)* %385, i8 addrspace(1)* %386)
  %394 = icmp sgt i64 %393, 0
  store i1 %394, i1* %45
  br label %395
395:
  %396 = load i1, i1* %45
  %397 = zext i1 %396 to i64
  %398 = or i64 %397, 72057594037927936
  %399 = getelementptr i8, i8 addrspace(1)* null, i64 %398
  call void @_Bio__println(i8 addrspace(1)* %399)
  store i8 addrspace(1)* null, i8 addrspace(1)** %46
  %400 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %401 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %402 = icmp eq i8 addrspace(1)* %400, null
  %403 = icmp eq i8 addrspace(1)* %401, null
  %404 = or i1 %402, %403
  br i1 %404, label %405, label %407
405:
  %406 = and i1 %402, %403
  store i1 %406, i1* %47
  br label %410
407:
  %408 = call i64 @_bal_string_cmp(i8 addrspace(1)* %400, i8 addrspace(1)* %401)
  %409 = icmp sge i64 %408, 0
  store i1 %409, i1* %47
  br label %410
410:
  %411 = load i1, i1* %47
  %412 = zext i1 %411 to i64
  %413 = or i64 %412, 72057594037927936
  %414 = getelementptr i8, i8 addrspace(1)* null, i64 %413
  call void @_Bio__println(i8 addrspace(1)* %414)
  store i8 addrspace(1)* null, i8 addrspace(1)** %48
  ret void
}
