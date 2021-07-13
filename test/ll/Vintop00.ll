@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i64
  %39 = alloca i8
  %40 = load i8*, i8** @_bal_stack_guard
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %46, label %42
42:
  %43 = icmp eq i64 3, 0
  br i1 %43, label %47, label %48
44:
  %45 = load i64, i64* %38
  call void @_bal_panic(i64 %45)
  unreachable
46:
  call void @_bal_panic(i64 772)
  unreachable
47:
  store i64 1026, i64* %38
  br label %44
48:
  %49 = icmp eq i64 6, -9223372036854775808
  %50 = icmp eq i64 3, -1
  %51 = and i1 %49, %50
  br i1 %51, label %57, label %52
52:
  %53 = sdiv i64 6, 3
  store i64 %53, i64* %1
  %54 = load i64, i64* %1
  %55 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 12, i64 %54)
  %56 = extractvalue {i64, i1} %55, 1
  br i1 %56, label %63, label %58
57:
  store i64 1025, i64* %38
  br label %44
58:
  %59 = extractvalue {i64, i1} %55, 0
  store i64 %59, i64* %2
  %60 = load i64, i64* %2
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %60)
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %62 = icmp eq i64 3, 0
  br i1 %62, label %64, label %65
63:
  store i64 1025, i64* %38
  br label %44
64:
  store i64 1282, i64* %38
  br label %44
65:
  %66 = icmp eq i64 30, -9223372036854775808
  %67 = icmp eq i64 3, -1
  %68 = and i1 %66, %67
  br i1 %68, label %74, label %69
69:
  %70 = sdiv i64 30, 3
  store i64 %70, i64* %4
  %71 = load i64, i64* %4
  %72 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %71, i64 12)
  %73 = extractvalue {i64, i1} %72, 1
  br i1 %73, label %81, label %75
74:
  store i64 1281, i64* %38
  br label %44
75:
  %76 = extractvalue {i64, i1} %72, 0
  store i64 %76, i64* %5
  %77 = load i64, i64* %5
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77)
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %79 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 6, i64 3)
  %80 = extractvalue {i64, i1} %79, 1
  br i1 %80, label %87, label %82
81:
  store i64 1281, i64* %38
  br label %44
82:
  %83 = extractvalue {i64, i1} %79, 0
  store i64 %83, i64* %7
  %84 = load i64, i64* %7
  %85 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %84, i64 2)
  %86 = extractvalue {i64, i1} %85, 1
  br i1 %86, label %94, label %88
87:
  store i64 1537, i64* %38
  br label %44
88:
  %89 = extractvalue {i64, i1} %85, 0
  store i64 %89, i64* %8
  %90 = load i64, i64* %8
  %91 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %90)
  call void @_Bio__println(i8 addrspace(1)* %91)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %92 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 4, i64 2)
  %93 = extractvalue {i64, i1} %92, 1
  br i1 %93, label %100, label %95
94:
  store i64 1537, i64* %38
  br label %44
95:
  %96 = extractvalue {i64, i1} %92, 0
  store i64 %96, i64* %10
  %97 = load i64, i64* %10
  %98 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 8, i64 %97)
  %99 = extractvalue {i64, i1} %98, 1
  br i1 %99, label %106, label %101
100:
  store i64 1793, i64* %38
  br label %44
101:
  %102 = extractvalue {i64, i1} %98, 0
  store i64 %102, i64* %11
  %103 = load i64, i64* %11
  %104 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %103)
  call void @_Bio__println(i8 addrspace(1)* %104)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %105 = icmp eq i64 3, 0
  br i1 %105, label %107, label %108
106:
  store i64 1793, i64* %38
  br label %44
107:
  store i64 2050, i64* %38
  br label %44
108:
  %109 = icmp eq i64 4, -9223372036854775808
  %110 = icmp eq i64 3, -1
  %111 = and i1 %109, %110
  br i1 %111, label %114, label %112
112:
  %113 = srem i64 4, 3
  store i64 %113, i64* %13
  br label %115
114:
  store i64 0, i64* %13
  br label %115
115:
  %116 = load i64, i64* %13
  %117 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 9, i64 %116)
  %118 = extractvalue {i64, i1} %117, 1
  br i1 %118, label %124, label %119
119:
  %120 = extractvalue {i64, i1} %117, 0
  store i64 %120, i64* %14
  %121 = load i64, i64* %14
  %122 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %121)
  call void @_Bio__println(i8 addrspace(1)* %122)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %123 = icmp eq i64 3, 0
  br i1 %123, label %125, label %126
124:
  store i64 2049, i64* %38
  br label %44
125:
  store i64 2306, i64* %38
  br label %44
126:
  %127 = icmp eq i64 4, -9223372036854775808
  %128 = icmp eq i64 3, -1
  %129 = and i1 %127, %128
  br i1 %129, label %132, label %130
130:
  %131 = srem i64 4, 3
  store i64 %131, i64* %16
  br label %133
132:
  store i64 0, i64* %16
  br label %133
133:
  %134 = load i64, i64* %16
  %135 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %134, i64 9)
  %136 = extractvalue {i64, i1} %135, 1
  br i1 %136, label %142, label %137
137:
  %138 = extractvalue {i64, i1} %135, 0
  store i64 %138, i64* %17
  %139 = load i64, i64* %17
  %140 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %139)
  call void @_Bio__println(i8 addrspace(1)* %140)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %141 = icmp eq i64 11, 0
  br i1 %141, label %143, label %144
142:
  store i64 2305, i64* %38
  br label %44
143:
  store i64 2562, i64* %38
  br label %44
144:
  %145 = icmp eq i64 18, -9223372036854775808
  %146 = icmp eq i64 11, -1
  %147 = and i1 %145, %146
  br i1 %147, label %150, label %148
148:
  %149 = srem i64 18, 11
  store i64 %149, i64* %19
  br label %151
150:
  store i64 0, i64* %19
  br label %151
151:
  %152 = load i64, i64* %19
  %153 = icmp eq i64 3, 0
  br i1 %153, label %154, label %155
154:
  store i64 2562, i64* %38
  br label %44
155:
  %156 = icmp eq i64 %152, -9223372036854775808
  %157 = icmp eq i64 3, -1
  %158 = and i1 %156, %157
  br i1 %158, label %161, label %159
159:
  %160 = srem i64 %152, 3
  store i64 %160, i64* %20
  br label %162
161:
  store i64 0, i64* %20
  br label %162
162:
  %163 = load i64, i64* %20
  %164 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %163)
  call void @_Bio__println(i8 addrspace(1)* %164)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %165 = icmp eq i64 18, 0
  br i1 %165, label %166, label %167
166:
  store i64 2818, i64* %38
  br label %44
167:
  %168 = icmp eq i64 30, -9223372036854775808
  %169 = icmp eq i64 18, -1
  %170 = and i1 %168, %169
  br i1 %170, label %173, label %171
171:
  %172 = srem i64 30, 18
  store i64 %172, i64* %22
  br label %174
173:
  store i64 0, i64* %22
  br label %174
174:
  %175 = load i64, i64* %22
  %176 = icmp eq i64 11, 0
  br i1 %176, label %177, label %178
177:
  store i64 2818, i64* %38
  br label %44
178:
  %179 = icmp eq i64 %175, -9223372036854775808
  %180 = icmp eq i64 11, -1
  %181 = and i1 %179, %180
  br i1 %181, label %184, label %182
182:
  %183 = srem i64 %175, 11
  store i64 %183, i64* %23
  br label %185
184:
  store i64 0, i64* %23
  br label %185
185:
  %186 = load i64, i64* %23
  %187 = icmp eq i64 5, 0
  br i1 %187, label %188, label %189
188:
  store i64 2818, i64* %38
  br label %44
189:
  %190 = icmp eq i64 %186, -9223372036854775808
  %191 = icmp eq i64 5, -1
  %192 = and i1 %190, %191
  br i1 %192, label %195, label %193
193:
  %194 = srem i64 %186, 5
  store i64 %194, i64* %24
  br label %196
195:
  store i64 0, i64* %24
  br label %196
196:
  %197 = load i64, i64* %24
  %198 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %197)
  call void @_Bio__println(i8 addrspace(1)* %198)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %199 = icmp eq i64 12, 0
  br i1 %199, label %200, label %201
200:
  store i64 3074, i64* %38
  br label %44
201:
  %202 = icmp eq i64 18, -9223372036854775808
  %203 = icmp eq i64 12, -1
  %204 = and i1 %202, %203
  br i1 %204, label %207, label %205
205:
  %206 = srem i64 18, 12
  store i64 %206, i64* %26
  br label %208
207:
  store i64 0, i64* %26
  br label %208
208:
  %209 = load i64, i64* %26
  %210 = icmp eq i64 3, 0
  br i1 %210, label %211, label %212
211:
  store i64 3074, i64* %38
  br label %44
212:
  %213 = icmp eq i64 %209, -9223372036854775808
  %214 = icmp eq i64 3, -1
  %215 = and i1 %213, %214
  br i1 %215, label %221, label %216
216:
  %217 = sdiv i64 %209, 3
  store i64 %217, i64* %27
  %218 = load i64, i64* %27
  %219 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %218)
  call void @_Bio__println(i8 addrspace(1)* %219)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %220 = icmp eq i64 8, 0
  br i1 %220, label %222, label %223
221:
  store i64 3073, i64* %38
  br label %44
222:
  store i64 3330, i64* %38
  br label %44
223:
  %224 = icmp eq i64 16, -9223372036854775808
  %225 = icmp eq i64 8, -1
  %226 = and i1 %224, %225
  br i1 %226, label %231, label %227
227:
  %228 = sdiv i64 16, 8
  store i64 %228, i64* %29
  %229 = load i64, i64* %29
  %230 = icmp eq i64 6, 0
  br i1 %230, label %232, label %233
231:
  store i64 3329, i64* %38
  br label %44
232:
  store i64 3330, i64* %38
  br label %44
233:
  %234 = icmp eq i64 %229, -9223372036854775808
  %235 = icmp eq i64 6, -1
  %236 = and i1 %234, %235
  br i1 %236, label %239, label %237
237:
  %238 = srem i64 %229, 6
  store i64 %238, i64* %30
  br label %240
239:
  store i64 0, i64* %30
  br label %240
240:
  %241 = load i64, i64* %30
  %242 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %241)
  call void @_Bio__println(i8 addrspace(1)* %242)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  %243 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %244 = extractvalue {i64, i1} %243, 1
  br i1 %244, label %250, label %245
245:
  %246 = extractvalue {i64, i1} %243, 0
  store i64 %246, i64* %32
  %247 = load i64, i64* %32
  %248 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 4, i64 %247)
  %249 = extractvalue {i64, i1} %248, 1
  br i1 %249, label %257, label %251
250:
  store i64 3585, i64* %38
  br label %44
251:
  %252 = extractvalue {i64, i1} %248, 0
  store i64 %252, i64* %33
  %253 = load i64, i64* %33
  %254 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %253)
  call void @_Bio__println(i8 addrspace(1)* %254)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %255 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 3)
  %256 = extractvalue {i64, i1} %255, 1
  br i1 %256, label %263, label %258
257:
  store i64 3585, i64* %38
  br label %44
258:
  %259 = extractvalue {i64, i1} %255, 0
  store i64 %259, i64* %35
  %260 = load i64, i64* %35
  %261 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %260, i64 4)
  %262 = extractvalue {i64, i1} %261, 1
  br i1 %262, label %268, label %264
263:
  store i64 3841, i64* %38
  br label %44
264:
  %265 = extractvalue {i64, i1} %261, 0
  store i64 %265, i64* %36
  %266 = load i64, i64* %36
  %267 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %266)
  call void @_Bio__println(i8 addrspace(1)* %267)
  store i8 addrspace(1)* null, i8 addrspace(1)** %37
  ret void
268:
  store i64 3841, i64* %38
  br label %44
}
