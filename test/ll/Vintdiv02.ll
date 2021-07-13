@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
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
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i64
  %34 = alloca i8
  %35 = load i8*, i8** @_bal_stack_guard
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %41, label %37
37:
  %38 = icmp eq i64 2, 0
  br i1 %38, label %42, label %43
39:
  %40 = load i64, i64* %33
  call void @_bal_panic(i64 %40)
  unreachable
41:
  call void @_bal_panic(i64 772)
  unreachable
42:
  store i64 1026, i64* %33
  br label %39
43:
  %44 = icmp eq i64 60, -9223372036854775808
  %45 = icmp eq i64 2, -1
  %46 = and i1 %44, %45
  br i1 %46, label %52, label %47
47:
  %48 = sdiv i64 60, 2
  store i64 %48, i64* %1
  %49 = load i64, i64* %1
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %49)
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %51 = icmp eq i64 3, 0
  br i1 %51, label %53, label %54
52:
  store i64 1025, i64* %33
  br label %39
53:
  store i64 1282, i64* %33
  br label %39
54:
  %55 = icmp eq i64 120, -9223372036854775808
  %56 = icmp eq i64 3, -1
  %57 = and i1 %55, %56
  br i1 %57, label %62, label %58
58:
  %59 = sdiv i64 120, 3
  store i64 %59, i64* %3
  %60 = load i64, i64* %3
  %61 = icmp eq i64 4, 0
  br i1 %61, label %63, label %64
62:
  store i64 1281, i64* %33
  br label %39
63:
  store i64 1282, i64* %33
  br label %39
64:
  %65 = icmp eq i64 %60, -9223372036854775808
  %66 = icmp eq i64 4, -1
  %67 = and i1 %65, %66
  br i1 %67, label %73, label %68
68:
  %69 = sdiv i64 %60, 4
  store i64 %69, i64* %4
  %70 = load i64, i64* %4
  %71 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %70)
  call void @_Bio__println(i8 addrspace(1)* %71)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %72 = icmp eq i64 3, 0
  br i1 %72, label %74, label %75
73:
  store i64 1281, i64* %33
  br label %39
74:
  store i64 1538, i64* %33
  br label %39
75:
  %76 = icmp eq i64 120, -9223372036854775808
  %77 = icmp eq i64 3, -1
  %78 = and i1 %76, %77
  br i1 %78, label %82, label %79
79:
  %80 = sdiv i64 120, 3
  store i64 %80, i64* %6
  %81 = icmp eq i64 4, 0
  br i1 %81, label %83, label %84
82:
  store i64 1537, i64* %33
  br label %39
83:
  store i64 1538, i64* %33
  br label %39
84:
  %85 = icmp eq i64 16, -9223372036854775808
  %86 = icmp eq i64 4, -1
  %87 = and i1 %85, %86
  br i1 %87, label %93, label %88
88:
  %89 = sdiv i64 16, 4
  store i64 %89, i64* %7
  %90 = load i64, i64* %6
  %91 = load i64, i64* %7
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %94, label %95
93:
  store i64 1537, i64* %33
  br label %39
94:
  store i64 1538, i64* %33
  br label %39
95:
  %96 = icmp eq i64 %90, -9223372036854775808
  %97 = icmp eq i64 %91, -1
  %98 = and i1 %96, %97
  br i1 %98, label %104, label %99
99:
  %100 = sdiv i64 %90, %91
  store i64 %100, i64* %8
  %101 = load i64, i64* %8
  %102 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %101)
  call void @_Bio__println(i8 addrspace(1)* %102)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %103 = icmp eq i64 3, 0
  br i1 %103, label %105, label %106
104:
  store i64 1537, i64* %33
  br label %39
105:
  store i64 1794, i64* %33
  br label %39
106:
  %107 = icmp eq i64 120, -9223372036854775808
  %108 = icmp eq i64 3, -1
  %109 = and i1 %107, %108
  br i1 %109, label %113, label %110
110:
  %111 = sdiv i64 120, 3
  store i64 %111, i64* %10
  %112 = icmp eq i64 4, 0
  br i1 %112, label %114, label %115
113:
  store i64 1793, i64* %33
  br label %39
114:
  store i64 1794, i64* %33
  br label %39
115:
  %116 = icmp eq i64 16, -9223372036854775808
  %117 = icmp eq i64 4, -1
  %118 = and i1 %116, %117
  br i1 %118, label %124, label %119
119:
  %120 = sdiv i64 16, 4
  store i64 %120, i64* %11
  %121 = load i64, i64* %10
  %122 = load i64, i64* %11
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %125, label %126
124:
  store i64 1793, i64* %33
  br label %39
125:
  store i64 1794, i64* %33
  br label %39
126:
  %127 = icmp eq i64 %121, -9223372036854775808
  %128 = icmp eq i64 %122, -1
  %129 = and i1 %127, %128
  br i1 %129, label %135, label %130
130:
  %131 = sdiv i64 %121, %122
  store i64 %131, i64* %12
  %132 = load i64, i64* %12
  %133 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %132)
  call void @_Bio__println(i8 addrspace(1)* %133)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %134 = icmp eq i64 3, 0
  br i1 %134, label %136, label %137
135:
  store i64 1793, i64* %33
  br label %39
136:
  store i64 2050, i64* %33
  br label %39
137:
  %138 = icmp eq i64 120, -9223372036854775808
  %139 = icmp eq i64 3, -1
  %140 = and i1 %138, %139
  br i1 %140, label %144, label %141
141:
  %142 = sdiv i64 120, 3
  store i64 %142, i64* %14
  %143 = icmp eq i64 4, 0
  br i1 %143, label %145, label %146
144:
  store i64 2049, i64* %33
  br label %39
145:
  store i64 2050, i64* %33
  br label %39
146:
  %147 = icmp eq i64 16, -9223372036854775808
  %148 = icmp eq i64 4, -1
  %149 = and i1 %147, %148
  br i1 %149, label %155, label %150
150:
  %151 = sdiv i64 16, 4
  store i64 %151, i64* %15
  %152 = load i64, i64* %14
  %153 = load i64, i64* %15
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %156, label %157
155:
  store i64 2049, i64* %33
  br label %39
156:
  store i64 2050, i64* %33
  br label %39
157:
  %158 = icmp eq i64 %152, -9223372036854775808
  %159 = icmp eq i64 %153, -1
  %160 = and i1 %158, %159
  br i1 %160, label %165, label %161
161:
  %162 = sdiv i64 %152, %153
  store i64 %162, i64* %16
  %163 = load i64, i64* %16
  %164 = icmp eq i64 2, 0
  br i1 %164, label %166, label %167
165:
  store i64 2049, i64* %33
  br label %39
166:
  store i64 2050, i64* %33
  br label %39
167:
  %168 = icmp eq i64 %163, -9223372036854775808
  %169 = icmp eq i64 2, -1
  %170 = and i1 %168, %169
  br i1 %170, label %176, label %171
171:
  %172 = sdiv i64 %163, 2
  store i64 %172, i64* %17
  %173 = load i64, i64* %17
  %174 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %173)
  call void @_Bio__println(i8 addrspace(1)* %174)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %175 = icmp eq i64 3, 0
  br i1 %175, label %177, label %178
176:
  store i64 2049, i64* %33
  br label %39
177:
  store i64 2306, i64* %33
  br label %39
178:
  %179 = icmp eq i64 120, -9223372036854775808
  %180 = icmp eq i64 3, -1
  %181 = and i1 %179, %180
  br i1 %181, label %185, label %182
182:
  %183 = sdiv i64 120, 3
  store i64 %183, i64* %19
  %184 = icmp eq i64 4, 0
  br i1 %184, label %186, label %187
185:
  store i64 2305, i64* %33
  br label %39
186:
  store i64 2306, i64* %33
  br label %39
187:
  %188 = icmp eq i64 16, -9223372036854775808
  %189 = icmp eq i64 4, -1
  %190 = and i1 %188, %189
  br i1 %190, label %196, label %191
191:
  %192 = sdiv i64 16, 4
  store i64 %192, i64* %20
  %193 = load i64, i64* %19
  %194 = load i64, i64* %20
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %197, label %198
196:
  store i64 2305, i64* %33
  br label %39
197:
  store i64 2306, i64* %33
  br label %39
198:
  %199 = icmp eq i64 %193, -9223372036854775808
  %200 = icmp eq i64 %194, -1
  %201 = and i1 %199, %200
  br i1 %201, label %205, label %202
202:
  %203 = sdiv i64 %193, %194
  store i64 %203, i64* %21
  %204 = icmp eq i64 5, 0
  br i1 %204, label %206, label %207
205:
  store i64 2305, i64* %33
  br label %39
206:
  store i64 2306, i64* %33
  br label %39
207:
  %208 = icmp eq i64 10, -9223372036854775808
  %209 = icmp eq i64 5, -1
  %210 = and i1 %208, %209
  br i1 %210, label %216, label %211
211:
  %212 = sdiv i64 10, 5
  store i64 %212, i64* %22
  %213 = load i64, i64* %21
  %214 = load i64, i64* %22
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %217, label %218
216:
  store i64 2305, i64* %33
  br label %39
217:
  store i64 2306, i64* %33
  br label %39
218:
  %219 = icmp eq i64 %213, -9223372036854775808
  %220 = icmp eq i64 %214, -1
  %221 = and i1 %219, %220
  br i1 %221, label %227, label %222
222:
  %223 = sdiv i64 %213, %214
  store i64 %223, i64* %23
  %224 = load i64, i64* %23
  %225 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %224)
  call void @_Bio__println(i8 addrspace(1)* %225)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %226 = icmp eq i64 3, 0
  br i1 %226, label %228, label %229
227:
  store i64 2305, i64* %33
  br label %39
228:
  store i64 2562, i64* %33
  br label %39
229:
  %230 = icmp eq i64 120, -9223372036854775808
  %231 = icmp eq i64 3, -1
  %232 = and i1 %230, %231
  br i1 %232, label %236, label %233
233:
  %234 = sdiv i64 120, 3
  store i64 %234, i64* %25
  %235 = icmp eq i64 4, 0
  br i1 %235, label %237, label %238
236:
  store i64 2561, i64* %33
  br label %39
237:
  store i64 2562, i64* %33
  br label %39
238:
  %239 = icmp eq i64 16, -9223372036854775808
  %240 = icmp eq i64 4, -1
  %241 = and i1 %239, %240
  br i1 %241, label %247, label %242
242:
  %243 = sdiv i64 16, 4
  store i64 %243, i64* %26
  %244 = load i64, i64* %25
  %245 = load i64, i64* %26
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %248, label %249
247:
  store i64 2561, i64* %33
  br label %39
248:
  store i64 2562, i64* %33
  br label %39
249:
  %250 = icmp eq i64 %244, -9223372036854775808
  %251 = icmp eq i64 %245, -1
  %252 = and i1 %250, %251
  br i1 %252, label %256, label %253
253:
  %254 = sdiv i64 %244, %245
  store i64 %254, i64* %27
  %255 = icmp eq i64 20, 0
  br i1 %255, label %257, label %258
256:
  store i64 2561, i64* %33
  br label %39
257:
  store i64 2562, i64* %33
  br label %39
258:
  %259 = icmp eq i64 400, -9223372036854775808
  %260 = icmp eq i64 20, -1
  %261 = and i1 %259, %260
  br i1 %261, label %265, label %262
262:
  %263 = sdiv i64 400, 20
  store i64 %263, i64* %28
  %264 = icmp eq i64 10, 0
  br i1 %264, label %266, label %267
265:
  store i64 2561, i64* %33
  br label %39
266:
  store i64 2562, i64* %33
  br label %39
267:
  %268 = icmp eq i64 100, -9223372036854775808
  %269 = icmp eq i64 10, -1
  %270 = and i1 %268, %269
  br i1 %270, label %276, label %271
271:
  %272 = sdiv i64 100, 10
  store i64 %272, i64* %29
  %273 = load i64, i64* %28
  %274 = load i64, i64* %29
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %277, label %278
276:
  store i64 2561, i64* %33
  br label %39
277:
  store i64 2562, i64* %33
  br label %39
278:
  %279 = icmp eq i64 %273, -9223372036854775808
  %280 = icmp eq i64 %274, -1
  %281 = and i1 %279, %280
  br i1 %281, label %287, label %282
282:
  %283 = sdiv i64 %273, %274
  store i64 %283, i64* %30
  %284 = load i64, i64* %27
  %285 = load i64, i64* %30
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %288, label %289
287:
  store i64 2561, i64* %33
  br label %39
288:
  store i64 2562, i64* %33
  br label %39
289:
  %290 = icmp eq i64 %284, -9223372036854775808
  %291 = icmp eq i64 %285, -1
  %292 = and i1 %290, %291
  br i1 %292, label %297, label %293
293:
  %294 = sdiv i64 %284, %285
  store i64 %294, i64* %31
  %295 = load i64, i64* %31
  %296 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %295)
  call void @_Bio__println(i8 addrspace(1)* %296)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  ret void
297:
  store i64 2561, i64* %33
  br label %39
}
