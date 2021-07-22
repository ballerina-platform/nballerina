@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i64
  %41 = alloca i64
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i64
  %44 = alloca i64
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i64
  %47 = alloca i64
  %48 = alloca i64
  %49 = alloca i8 addrspace(1)*
  %50 = alloca i64
  %51 = alloca i64
  %52 = alloca i64
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i64
  %55 = alloca i64
  %56 = alloca i8 addrspace(1)*
  %57 = alloca i64
  %58 = alloca i64
  %59 = alloca i8 addrspace(1)*
  %60 = alloca i64
  %61 = alloca i64
  %62 = alloca i8 addrspace(1)*
  %63 = alloca i64
  %64 = alloca i64
  %65 = alloca i64
  %66 = alloca i8 addrspace(1)*
  %67 = alloca i64
  %68 = alloca i64
  %69 = alloca i64
  %70 = alloca i8 addrspace(1)*
  %71 = alloca i64
  %72 = alloca i64
  %73 = alloca i8 addrspace(1)*
  %74 = alloca i64
  %75 = alloca i64
  %76 = alloca i8 addrspace(1)*
  %77 = alloca i64
  %78 = alloca i64
  %79 = alloca i8 addrspace(1)*
  %80 = alloca i64
  %81 = alloca i64
  %82 = alloca i64
  %83 = alloca i8 addrspace(1)*
  %84 = alloca i64
  %85 = alloca i64
  %86 = alloca i64
  %87 = alloca i8 addrspace(1)*
  %88 = alloca i64
  %89 = alloca i8
  %90 = load i8*, i8** @_bal_stack_guard
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %106, label %92
92:
  %93 = call i64 @_B_rem(i64 9223372036854775806, i64 9223372036854775806)
  store i64 %93, i64* %1
  %94 = load i64, i64* %1
  %95 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %94)
  call void @_Bio__println(i8 addrspace(1)* %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %96 = call i64 @_B_rem(i64 1, i64 9223372036854775806)
  store i64 %96, i64* %3
  %97 = load i64, i64* %3
  %98 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %97)
  call void @_Bio__println(i8 addrspace(1)* %98)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %99 = call i64 @_B_rem(i64 0, i64 9223372036854775806)
  store i64 %99, i64* %5
  %100 = load i64, i64* %5
  %101 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %100)
  call void @_Bio__println(i8 addrspace(1)* %101)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %102 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %103 = extractvalue {i64, i1} %102, 1
  br i1 %103, label %115, label %107
104:
  %105 = load i64, i64* %88
  call void @_bal_panic(i64 %105)
  unreachable
106:
  call void @_bal_panic(i64 772)
  unreachable
107:
  %108 = extractvalue {i64, i1} %102, 0
  store i64 %108, i64* %7
  %109 = load i64, i64* %7
  %110 = call i64 @_B_rem(i64 %109, i64 9223372036854775806)
  store i64 %110, i64* %8
  %111 = load i64, i64* %8
  %112 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %111)
  call void @_Bio__println(i8 addrspace(1)* %112)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %113 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %114 = extractvalue {i64, i1} %113, 1
  br i1 %114, label %133, label %116
115:
  store i64 1793, i64* %88
  br label %104
116:
  %117 = extractvalue {i64, i1} %113, 0
  store i64 %117, i64* %10
  %118 = load i64, i64* %10
  %119 = call i64 @_B_rem(i64 %118, i64 9223372036854775806)
  store i64 %119, i64* %11
  %120 = load i64, i64* %11
  %121 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %120)
  call void @_Bio__println(i8 addrspace(1)* %121)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %122 = call i64 @_B_rem(i64 9223372036854775806, i64 10)
  store i64 %122, i64* %13
  %123 = load i64, i64* %13
  %124 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %123)
  call void @_Bio__println(i8 addrspace(1)* %124)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %125 = call i64 @_B_rem(i64 1, i64 10)
  store i64 %125, i64* %15
  %126 = load i64, i64* %15
  %127 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %126)
  call void @_Bio__println(i8 addrspace(1)* %127)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %128 = call i64 @_B_rem(i64 0, i64 10)
  store i64 %128, i64* %17
  %129 = load i64, i64* %17
  %130 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %129)
  call void @_Bio__println(i8 addrspace(1)* %130)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %131 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %132 = extractvalue {i64, i1} %131, 1
  br i1 %132, label %142, label %134
133:
  store i64 2049, i64* %88
  br label %104
134:
  %135 = extractvalue {i64, i1} %131, 0
  store i64 %135, i64* %19
  %136 = load i64, i64* %19
  %137 = call i64 @_B_rem(i64 %136, i64 10)
  store i64 %137, i64* %20
  %138 = load i64, i64* %20
  %139 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %138)
  call void @_Bio__println(i8 addrspace(1)* %139)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %140 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %141 = extractvalue {i64, i1} %140, 1
  br i1 %141, label %160, label %143
142:
  store i64 3329, i64* %88
  br label %104
143:
  %144 = extractvalue {i64, i1} %140, 0
  store i64 %144, i64* %22
  %145 = load i64, i64* %22
  %146 = call i64 @_B_rem(i64 %145, i64 10)
  store i64 %146, i64* %23
  %147 = load i64, i64* %23
  %148 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %147)
  call void @_Bio__println(i8 addrspace(1)* %148)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %149 = call i64 @_B_rem(i64 9223372036854775806, i64 1)
  store i64 %149, i64* %25
  %150 = load i64, i64* %25
  %151 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %150)
  call void @_Bio__println(i8 addrspace(1)* %151)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %152 = call i64 @_B_rem(i64 1, i64 1)
  store i64 %152, i64* %27
  %153 = load i64, i64* %27
  %154 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %153)
  call void @_Bio__println(i8 addrspace(1)* %154)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %155 = call i64 @_B_rem(i64 0, i64 1)
  store i64 %155, i64* %29
  %156 = load i64, i64* %29
  %157 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %156)
  call void @_Bio__println(i8 addrspace(1)* %157)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %158 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %159 = extractvalue {i64, i1} %158, 1
  br i1 %159, label %169, label %161
160:
  store i64 3585, i64* %88
  br label %104
161:
  %162 = extractvalue {i64, i1} %158, 0
  store i64 %162, i64* %31
  %163 = load i64, i64* %31
  %164 = call i64 @_B_rem(i64 %163, i64 1)
  store i64 %164, i64* %32
  %165 = load i64, i64* %32
  %166 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %165)
  call void @_Bio__println(i8 addrspace(1)* %166)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  %167 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %168 = extractvalue {i64, i1} %167, 1
  br i1 %168, label %178, label %170
169:
  store i64 4865, i64* %88
  br label %104
170:
  %171 = extractvalue {i64, i1} %167, 0
  store i64 %171, i64* %34
  %172 = load i64, i64* %34
  %173 = call i64 @_B_rem(i64 %172, i64 1)
  store i64 %173, i64* %35
  %174 = load i64, i64* %35
  %175 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %174)
  call void @_Bio__println(i8 addrspace(1)* %175)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  %176 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %177 = extractvalue {i64, i1} %176, 1
  br i1 %177, label %187, label %179
178:
  store i64 5121, i64* %88
  br label %104
179:
  %180 = extractvalue {i64, i1} %176, 0
  store i64 %180, i64* %37
  %181 = load i64, i64* %37
  %182 = call i64 @_B_rem(i64 9223372036854775806, i64 %181)
  store i64 %182, i64* %38
  %183 = load i64, i64* %38
  %184 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %183)
  call void @_Bio__println(i8 addrspace(1)* %184)
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  %185 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %186 = extractvalue {i64, i1} %185, 1
  br i1 %186, label %196, label %188
187:
  store i64 5633, i64* %88
  br label %104
188:
  %189 = extractvalue {i64, i1} %185, 0
  store i64 %189, i64* %40
  %190 = load i64, i64* %40
  %191 = call i64 @_B_rem(i64 1, i64 %190)
  store i64 %191, i64* %41
  %192 = load i64, i64* %41
  %193 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %192)
  call void @_Bio__println(i8 addrspace(1)* %193)
  store i8 addrspace(1)* null, i8 addrspace(1)** %42
  %194 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %195 = extractvalue {i64, i1} %194, 1
  br i1 %195, label %205, label %197
196:
  store i64 5889, i64* %88
  br label %104
197:
  %198 = extractvalue {i64, i1} %194, 0
  store i64 %198, i64* %43
  %199 = load i64, i64* %43
  %200 = call i64 @_B_rem(i64 0, i64 %199)
  store i64 %200, i64* %44
  %201 = load i64, i64* %44
  %202 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %201)
  call void @_Bio__println(i8 addrspace(1)* %202)
  store i8 addrspace(1)* null, i8 addrspace(1)** %45
  %203 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %204 = extractvalue {i64, i1} %203, 1
  br i1 %204, label %210, label %206
205:
  store i64 6145, i64* %88
  br label %104
206:
  %207 = extractvalue {i64, i1} %203, 0
  store i64 %207, i64* %46
  %208 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %209 = extractvalue {i64, i1} %208, 1
  br i1 %209, label %220, label %211
210:
  store i64 6401, i64* %88
  br label %104
211:
  %212 = extractvalue {i64, i1} %208, 0
  store i64 %212, i64* %47
  %213 = load i64, i64* %46
  %214 = load i64, i64* %47
  %215 = call i64 @_B_rem(i64 %213, i64 %214)
  store i64 %215, i64* %48
  %216 = load i64, i64* %48
  %217 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %216)
  call void @_Bio__println(i8 addrspace(1)* %217)
  store i8 addrspace(1)* null, i8 addrspace(1)** %49
  %218 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %219 = extractvalue {i64, i1} %218, 1
  br i1 %219, label %225, label %221
220:
  store i64 6401, i64* %88
  br label %104
221:
  %222 = extractvalue {i64, i1} %218, 0
  store i64 %222, i64* %50
  %223 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %224 = extractvalue {i64, i1} %223, 1
  br i1 %224, label %235, label %226
225:
  store i64 6657, i64* %88
  br label %104
226:
  %227 = extractvalue {i64, i1} %223, 0
  store i64 %227, i64* %51
  %228 = load i64, i64* %50
  %229 = load i64, i64* %51
  %230 = call i64 @_B_rem(i64 %228, i64 %229)
  store i64 %230, i64* %52
  %231 = load i64, i64* %52
  %232 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %231)
  call void @_Bio__println(i8 addrspace(1)* %232)
  store i8 addrspace(1)* null, i8 addrspace(1)** %53
  %233 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 10)
  %234 = extractvalue {i64, i1} %233, 1
  br i1 %234, label %244, label %236
235:
  store i64 6657, i64* %88
  br label %104
236:
  %237 = extractvalue {i64, i1} %233, 0
  store i64 %237, i64* %54
  %238 = load i64, i64* %54
  %239 = call i64 @_B_rem(i64 9223372036854775806, i64 %238)
  store i64 %239, i64* %55
  %240 = load i64, i64* %55
  %241 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %240)
  call void @_Bio__println(i8 addrspace(1)* %241)
  store i8 addrspace(1)* null, i8 addrspace(1)** %56
  %242 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 10)
  %243 = extractvalue {i64, i1} %242, 1
  br i1 %243, label %253, label %245
244:
  store i64 7169, i64* %88
  br label %104
245:
  %246 = extractvalue {i64, i1} %242, 0
  store i64 %246, i64* %57
  %247 = load i64, i64* %57
  %248 = call i64 @_B_rem(i64 1, i64 %247)
  store i64 %248, i64* %58
  %249 = load i64, i64* %58
  %250 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %249)
  call void @_Bio__println(i8 addrspace(1)* %250)
  store i8 addrspace(1)* null, i8 addrspace(1)** %59
  %251 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 10)
  %252 = extractvalue {i64, i1} %251, 1
  br i1 %252, label %262, label %254
253:
  store i64 7425, i64* %88
  br label %104
254:
  %255 = extractvalue {i64, i1} %251, 0
  store i64 %255, i64* %60
  %256 = load i64, i64* %60
  %257 = call i64 @_B_rem(i64 0, i64 %256)
  store i64 %257, i64* %61
  %258 = load i64, i64* %61
  %259 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %258)
  call void @_Bio__println(i8 addrspace(1)* %259)
  store i8 addrspace(1)* null, i8 addrspace(1)** %62
  %260 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %261 = extractvalue {i64, i1} %260, 1
  br i1 %261, label %267, label %263
262:
  store i64 7681, i64* %88
  br label %104
263:
  %264 = extractvalue {i64, i1} %260, 0
  store i64 %264, i64* %63
  %265 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 10)
  %266 = extractvalue {i64, i1} %265, 1
  br i1 %266, label %277, label %268
267:
  store i64 7937, i64* %88
  br label %104
268:
  %269 = extractvalue {i64, i1} %265, 0
  store i64 %269, i64* %64
  %270 = load i64, i64* %63
  %271 = load i64, i64* %64
  %272 = call i64 @_B_rem(i64 %270, i64 %271)
  store i64 %272, i64* %65
  %273 = load i64, i64* %65
  %274 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %273)
  call void @_Bio__println(i8 addrspace(1)* %274)
  store i8 addrspace(1)* null, i8 addrspace(1)** %66
  %275 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %276 = extractvalue {i64, i1} %275, 1
  br i1 %276, label %282, label %278
277:
  store i64 7937, i64* %88
  br label %104
278:
  %279 = extractvalue {i64, i1} %275, 0
  store i64 %279, i64* %67
  %280 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 10)
  %281 = extractvalue {i64, i1} %280, 1
  br i1 %281, label %292, label %283
282:
  store i64 8193, i64* %88
  br label %104
283:
  %284 = extractvalue {i64, i1} %280, 0
  store i64 %284, i64* %68
  %285 = load i64, i64* %67
  %286 = load i64, i64* %68
  %287 = call i64 @_B_rem(i64 %285, i64 %286)
  store i64 %287, i64* %69
  %288 = load i64, i64* %69
  %289 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %288)
  call void @_Bio__println(i8 addrspace(1)* %289)
  store i8 addrspace(1)* null, i8 addrspace(1)** %70
  %290 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %291 = extractvalue {i64, i1} %290, 1
  br i1 %291, label %301, label %293
292:
  store i64 8193, i64* %88
  br label %104
293:
  %294 = extractvalue {i64, i1} %290, 0
  store i64 %294, i64* %71
  %295 = load i64, i64* %71
  %296 = call i64 @_B_rem(i64 9223372036854775806, i64 %295)
  store i64 %296, i64* %72
  %297 = load i64, i64* %72
  %298 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %297)
  call void @_Bio__println(i8 addrspace(1)* %298)
  store i8 addrspace(1)* null, i8 addrspace(1)** %73
  %299 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %300 = extractvalue {i64, i1} %299, 1
  br i1 %300, label %310, label %302
301:
  store i64 8705, i64* %88
  br label %104
302:
  %303 = extractvalue {i64, i1} %299, 0
  store i64 %303, i64* %74
  %304 = load i64, i64* %74
  %305 = call i64 @_B_rem(i64 1, i64 %304)
  store i64 %305, i64* %75
  %306 = load i64, i64* %75
  %307 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %306)
  call void @_Bio__println(i8 addrspace(1)* %307)
  store i8 addrspace(1)* null, i8 addrspace(1)** %76
  %308 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %309 = extractvalue {i64, i1} %308, 1
  br i1 %309, label %319, label %311
310:
  store i64 8961, i64* %88
  br label %104
311:
  %312 = extractvalue {i64, i1} %308, 0
  store i64 %312, i64* %77
  %313 = load i64, i64* %77
  %314 = call i64 @_B_rem(i64 0, i64 %313)
  store i64 %314, i64* %78
  %315 = load i64, i64* %78
  %316 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %315)
  call void @_Bio__println(i8 addrspace(1)* %316)
  store i8 addrspace(1)* null, i8 addrspace(1)** %79
  %317 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %318 = extractvalue {i64, i1} %317, 1
  br i1 %318, label %324, label %320
319:
  store i64 9217, i64* %88
  br label %104
320:
  %321 = extractvalue {i64, i1} %317, 0
  store i64 %321, i64* %80
  %322 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %323 = extractvalue {i64, i1} %322, 1
  br i1 %323, label %334, label %325
324:
  store i64 9473, i64* %88
  br label %104
325:
  %326 = extractvalue {i64, i1} %322, 0
  store i64 %326, i64* %81
  %327 = load i64, i64* %80
  %328 = load i64, i64* %81
  %329 = call i64 @_B_rem(i64 %327, i64 %328)
  store i64 %329, i64* %82
  %330 = load i64, i64* %82
  %331 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %330)
  call void @_Bio__println(i8 addrspace(1)* %331)
  store i8 addrspace(1)* null, i8 addrspace(1)** %83
  %332 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %333 = extractvalue {i64, i1} %332, 1
  br i1 %333, label %339, label %335
334:
  store i64 9473, i64* %88
  br label %104
335:
  %336 = extractvalue {i64, i1} %332, 0
  store i64 %336, i64* %84
  %337 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %338 = extractvalue {i64, i1} %337, 1
  br i1 %338, label %347, label %340
339:
  store i64 9729, i64* %88
  br label %104
340:
  %341 = extractvalue {i64, i1} %337, 0
  store i64 %341, i64* %85
  %342 = load i64, i64* %84
  %343 = load i64, i64* %85
  %344 = call i64 @_B_rem(i64 %342, i64 %343)
  store i64 %344, i64* %86
  %345 = load i64, i64* %86
  %346 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %345)
  call void @_Bio__println(i8 addrspace(1)* %346)
  store i8 addrspace(1)* null, i8 addrspace(1)** %87
  ret void
347:
  store i64 9729, i64* %88
  br label %104
}
define internal i64 @_B_rem(i64 %0, i64 %1) {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %9 = load i64, i64* %a
  %10 = load i64, i64* %b
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %16
12:
  %13 = load i64, i64* %4
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 10500)
  unreachable
15:
  store i64 10754, i64* %4
  br label %12
16:
  %17 = icmp eq i64 %9, -9223372036854775808
  %18 = icmp eq i64 %10, -1
  %19 = and i1 %17, %18
  br i1 %19, label %22, label %20
20:
  %21 = srem i64 %9, %10
  store i64 %21, i64* %3
  br label %23
22:
  store i64 0, i64* %3
  br label %23
23:
  %24 = load i64, i64* %3
  ret i64 %24
}
