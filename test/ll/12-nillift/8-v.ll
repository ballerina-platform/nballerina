@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %m = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i64
  %15 = alloca i1
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i64
  %22 = alloca i1
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i64
  %31 = alloca i1
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i1
  %39 = alloca i64
  %40 = alloca i1
  %41 = alloca i64
  %42 = alloca i64
  %43 = alloca i8 addrspace(1)*
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca i64
  %47 = alloca i1
  %48 = alloca i64
  %49 = alloca i64
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i8 addrspace(1)*
  %52 = alloca i8 addrspace(1)*
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i1
  %55 = alloca i64
  %56 = alloca i1
  %57 = alloca i64
  %58 = alloca i64
  %59 = alloca i8 addrspace(1)*
  %60 = alloca i8 addrspace(1)*
  %v5 = alloca i8 addrspace(1)*
  %61 = alloca i8 addrspace(1)*
  %62 = alloca i1
  %63 = alloca i64
  %64 = alloca i64
  %65 = alloca i8 addrspace(1)*
  %66 = alloca i8 addrspace(1)*
  %v6 = alloca i8 addrspace(1)*
  %67 = alloca i8 addrspace(1)*
  %68 = alloca i1
  %69 = alloca i64
  %70 = alloca i64
  %71 = alloca i8 addrspace(1)*
  %72 = alloca i8 addrspace(1)*
  %73 = alloca i8 addrspace(1)*
  %74 = alloca i1
  %75 = alloca i64
  %76 = alloca i64
  %77 = alloca i8 addrspace(1)*
  %78 = alloca i8 addrspace(1)*
  %d = alloca i64
  %v7 = alloca i8 addrspace(1)*
  %79 = alloca i8 addrspace(1)*
  %80 = alloca i1
  %81 = alloca i64
  %82 = alloca i64
  %83 = alloca i8 addrspace(1)*
  %84 = alloca i8 addrspace(1)*
  %85 = alloca i8 addrspace(1)*
  %86 = alloca i8 addrspace(1)*
  %87 = alloca i1
  %88 = alloca i64
  %89 = alloca i1
  %90 = alloca i64
  %91 = alloca i64
  %92 = alloca i8 addrspace(1)*
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
  %105 = alloca i8 addrspace(1)*
  %106 = alloca i1
  %107 = alloca i64
  %108 = alloca i1
  %109 = alloca i64
  %110 = alloca i64
  %111 = alloca i8 addrspace(1)*
  %112 = alloca i8 addrspace(1)*
  %113 = alloca i8 addrspace(1)*
  %114 = alloca i8 addrspace(1)*
  %115 = alloca i1
  %116 = alloca i64
  %117 = alloca i1
  %118 = alloca i64
  %119 = alloca i64
  %120 = alloca i8 addrspace(1)*
  %121 = alloca i8 addrspace(1)*
  %122 = alloca i1
  %123 = alloca i64
  %124 = alloca i1
  %125 = alloca i64
  %126 = alloca i64
  %127 = alloca i8 addrspace(1)*
  %128 = alloca i1
  %129 = alloca i64
  %130 = alloca i64
  %131 = alloca i8 addrspace(1)*
  %132 = alloca i1
  %133 = alloca i64
  %134 = alloca i1
  %135 = alloca i64
  %136 = alloca i64
  %137 = alloca i8 addrspace(1)*
  %138 = alloca i8 addrspace(1)*
  %139 = alloca i8 addrspace(1)*
  %140 = alloca i1
  %141 = alloca i64
  %142 = alloca i64
  %143 = alloca i8 addrspace(1)*
  %144 = alloca i8 addrspace(1)*
  %145 = alloca i8 addrspace(1)*
  %146 = alloca i8
  %147 = load i8*, i8** @_bal_stack_guard
  %148 = icmp ult i8* %146, %147
  br i1 %148, label %624, label %149
149:
  %150 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %150, i8 addrspace(1)** %1
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %151, i8 addrspace(1)** %m
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %153 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  %154 = call i64 @_bal_mapping_set(i8 addrspace(1)* %152, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %626, label %631
156:
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %158 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %157)
  store i64 %158, i64* %5
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
  br label %173
166:
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %168 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %167)
  store i64 %168, i64* %7
  %169 = load i64, i64* %5
  %170 = load i64, i64* %7
  %171 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %169, i64 %170)
  %172 = extractvalue {i64, i1} %171, 1
  br i1 %172, label %660, label %656
173:
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %174), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !8
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %176 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %175, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %176, i8 addrspace(1)** %11
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %178 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %177, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %178, i8 addrspace(1)** %12
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %180 = addrspacecast i8 addrspace(1)* %179 to i8*
  %181 = ptrtoint i8* %180 to i64
  %182 = and i64 %181, 2233785415175766016
  %183 = icmp eq i64 %182, 0
  store i1 %183, i1* %13
  %184 = load i1, i1* %13
  br i1 %184, label %194, label %185
185:
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %187 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %186)
  store i64 %187, i64* %14
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %189 = addrspacecast i8 addrspace(1)* %188 to i8*
  %190 = ptrtoint i8* %189 to i64
  %191 = and i64 %190, 2233785415175766016
  %192 = icmp eq i64 %191, 0
  store i1 %192, i1* %15
  %193 = load i1, i1* %15
  br i1 %193, label %194, label %195
194:
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  br label %202
195:
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %197 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %196)
  store i64 %197, i64* %16
  %198 = load i64, i64* %14
  %199 = load i64, i64* %16
  %200 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %198, i64 %199)
  %201 = extractvalue {i64, i1} %200, 1
  br i1 %201, label %666, label %662
202:
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %204 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %203, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %204, i8 addrspace(1)** %19
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %206 = addrspacecast i8 addrspace(1)* %205 to i8*
  %207 = ptrtoint i8* %206 to i64
  %208 = and i64 %207, 2233785415175766016
  %209 = icmp eq i64 %208, 0
  store i1 %209, i1* %20
  %210 = load i1, i1* %20
  br i1 %210, label %220, label %211
211:
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %213 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %212)
  store i64 %213, i64* %21
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %215 = addrspacecast i8 addrspace(1)* %214 to i8*
  %216 = ptrtoint i8* %215 to i64
  %217 = and i64 %216, 2233785415175766016
  %218 = icmp eq i64 %217, 0
  store i1 %218, i1* %22
  %219 = load i1, i1* %22
  br i1 %219, label %220, label %221
220:
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  br label %228
221:
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  %223 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %222)
  store i64 %223, i64* %23
  %224 = load i64, i64* %21
  %225 = load i64, i64* %23
  %226 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %224, i64 %225)
  %227 = extractvalue {i64, i1} %226, 1
  br i1 %227, label %672, label %668
228:
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %229), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !9
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %231 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %230, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %231, i8 addrspace(1)** %27
  %232 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %233 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %232, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %233, i8 addrspace(1)** %28
  %234 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %235 = addrspacecast i8 addrspace(1)* %234 to i8*
  %236 = ptrtoint i8* %235 to i64
  %237 = and i64 %236, 2233785415175766016
  %238 = icmp eq i64 %237, 0
  store i1 %238, i1* %29
  %239 = load i1, i1* %29
  br i1 %239, label %249, label %240
240:
  %241 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  %242 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %241)
  store i64 %242, i64* %30
  %243 = load i8 addrspace(1)*, i8 addrspace(1)** %28
  %244 = addrspacecast i8 addrspace(1)* %243 to i8*
  %245 = ptrtoint i8* %244 to i64
  %246 = and i64 %245, 2233785415175766016
  %247 = icmp eq i64 %246, 0
  store i1 %247, i1* %31
  %248 = load i1, i1* %31
  br i1 %248, label %249, label %250
249:
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  br label %257
250:
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %28
  %252 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %251)
  store i64 %252, i64* %32
  %253 = load i64, i64* %30
  %254 = load i64, i64* %32
  %255 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %253, i64 %254)
  %256 = extractvalue {i64, i1} %255, 1
  br i1 %256, label %678, label %674
257:
  %258 = load i8 addrspace(1)*, i8 addrspace(1)** %34, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %258), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !10
  %259 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %260 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %259, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %260, i8 addrspace(1)** %36
  %261 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %262 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %261, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %262, i8 addrspace(1)** %37
  %263 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  %264 = addrspacecast i8 addrspace(1)* %263 to i8*
  %265 = ptrtoint i8* %264 to i64
  %266 = and i64 %265, 2233785415175766016
  %267 = icmp eq i64 %266, 0
  store i1 %267, i1* %38
  %268 = load i1, i1* %38
  br i1 %268, label %278, label %269
269:
  %270 = load i8 addrspace(1)*, i8 addrspace(1)** %36
  %271 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %270)
  store i64 %271, i64* %39
  %272 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  %273 = addrspacecast i8 addrspace(1)* %272 to i8*
  %274 = ptrtoint i8* %273 to i64
  %275 = and i64 %274, 2233785415175766016
  %276 = icmp eq i64 %275, 0
  store i1 %276, i1* %40
  %277 = load i1, i1* %40
  br i1 %277, label %278, label %279
278:
  store i8 addrspace(1)* null, i8 addrspace(1)** %43
  br label %286
279:
  %280 = load i8 addrspace(1)*, i8 addrspace(1)** %37
  %281 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %280)
  store i64 %281, i64* %41
  %282 = load i64, i64* %39
  %283 = load i64, i64* %41
  %284 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %282, i64 %283)
  %285 = extractvalue {i64, i1} %284, 1
  br i1 %285, label %684, label %680
286:
  %287 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %288 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %287, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %288, i8 addrspace(1)** %44
  %289 = load i8 addrspace(1)*, i8 addrspace(1)** %43
  %290 = addrspacecast i8 addrspace(1)* %289 to i8*
  %291 = ptrtoint i8* %290 to i64
  %292 = and i64 %291, 2233785415175766016
  %293 = icmp eq i64 %292, 0
  store i1 %293, i1* %45
  %294 = load i1, i1* %45
  br i1 %294, label %304, label %295
295:
  %296 = load i8 addrspace(1)*, i8 addrspace(1)** %43
  %297 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %296)
  store i64 %297, i64* %46
  %298 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  %299 = addrspacecast i8 addrspace(1)* %298 to i8*
  %300 = ptrtoint i8* %299 to i64
  %301 = and i64 %300, 2233785415175766016
  %302 = icmp eq i64 %301, 0
  store i1 %302, i1* %47
  %303 = load i1, i1* %47
  br i1 %303, label %304, label %305
304:
  store i8 addrspace(1)* null, i8 addrspace(1)** %50
  br label %312
305:
  %306 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  %307 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %306)
  store i64 %307, i64* %48
  %308 = load i64, i64* %46
  %309 = load i64, i64* %48
  %310 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %308, i64 %309)
  %311 = extractvalue {i64, i1} %310, 1
  br i1 %311, label %690, label %686
312:
  %313 = load i8 addrspace(1)*, i8 addrspace(1)** %50, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %313), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %51, !dbg !11
  %314 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %315 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %314, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %315, i8 addrspace(1)** %52
  %316 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %317 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %316, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %317, i8 addrspace(1)** %53
  %318 = load i8 addrspace(1)*, i8 addrspace(1)** %52
  %319 = addrspacecast i8 addrspace(1)* %318 to i8*
  %320 = ptrtoint i8* %319 to i64
  %321 = and i64 %320, 2233785415175766016
  %322 = icmp eq i64 %321, 0
  store i1 %322, i1* %54
  %323 = load i1, i1* %54
  br i1 %323, label %333, label %324
324:
  %325 = load i8 addrspace(1)*, i8 addrspace(1)** %52
  %326 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %325)
  store i64 %326, i64* %55
  %327 = load i8 addrspace(1)*, i8 addrspace(1)** %53
  %328 = addrspacecast i8 addrspace(1)* %327 to i8*
  %329 = ptrtoint i8* %328 to i64
  %330 = and i64 %329, 2233785415175766016
  %331 = icmp eq i64 %330, 0
  store i1 %331, i1* %56
  %332 = load i1, i1* %56
  br i1 %332, label %333, label %334
333:
  store i8 addrspace(1)* null, i8 addrspace(1)** %59
  br label %340
334:
  %335 = load i8 addrspace(1)*, i8 addrspace(1)** %53
  %336 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %335)
  store i64 %336, i64* %57
  %337 = load i64, i64* %55
  %338 = load i64, i64* %57
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %692, label %694
340:
  %341 = load i8 addrspace(1)*, i8 addrspace(1)** %59, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %341), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !12
  %342 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %343 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %342, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %343, i8 addrspace(1)** %61
  %344 = load i8 addrspace(1)*, i8 addrspace(1)** %61
  %345 = addrspacecast i8 addrspace(1)* %344 to i8*
  %346 = ptrtoint i8* %345 to i64
  %347 = and i64 %346, 2233785415175766016
  %348 = icmp eq i64 %347, 0
  store i1 %348, i1* %62
  %349 = load i1, i1* %62
  br i1 %349, label %355, label %350
350:
  %351 = load i8 addrspace(1)*, i8 addrspace(1)** %61
  %352 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %351)
  store i64 %352, i64* %63
  %353 = load i64, i64* %63
  %354 = icmp eq i64 3, 0
  br i1 %354, label %704, label %706
355:
  store i8 addrspace(1)* null, i8 addrspace(1)** %65
  br label %356
356:
  %357 = load i8 addrspace(1)*, i8 addrspace(1)** %65
  store i8 addrspace(1)* %357, i8 addrspace(1)** %v5
  %358 = load i8 addrspace(1)*, i8 addrspace(1)** %v5, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %358), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %66, !dbg !13
  %359 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %360 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %359, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %360, i8 addrspace(1)** %67
  %361 = load i8 addrspace(1)*, i8 addrspace(1)** %67
  %362 = addrspacecast i8 addrspace(1)* %361 to i8*
  %363 = ptrtoint i8* %362 to i64
  %364 = and i64 %363, 2233785415175766016
  %365 = icmp eq i64 %364, 0
  store i1 %365, i1* %68
  %366 = load i1, i1* %68
  br i1 %366, label %373, label %367
367:
  %368 = load i8 addrspace(1)*, i8 addrspace(1)** %67
  %369 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %368)
  store i64 %369, i64* %69
  %370 = load i64, i64* %69
  %371 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %370)
  %372 = extractvalue {i64, i1} %371, 1
  br i1 %372, label %720, label %716
373:
  store i8 addrspace(1)* null, i8 addrspace(1)** %71
  br label %374
374:
  %375 = load i8 addrspace(1)*, i8 addrspace(1)** %71
  store i8 addrspace(1)* %375, i8 addrspace(1)** %v6
  %376 = load i8 addrspace(1)*, i8 addrspace(1)** %v6, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %376), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %72, !dbg !14
  %377 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %378 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %377, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %378, i8 addrspace(1)** %73
  %379 = load i8 addrspace(1)*, i8 addrspace(1)** %73
  %380 = addrspacecast i8 addrspace(1)* %379 to i8*
  %381 = ptrtoint i8* %380 to i64
  %382 = and i64 %381, 2233785415175766016
  %383 = icmp eq i64 %382, 0
  store i1 %383, i1* %74
  %384 = load i1, i1* %74
  br i1 %384, label %391, label %385
385:
  %386 = load i8 addrspace(1)*, i8 addrspace(1)** %73
  %387 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %386)
  store i64 %387, i64* %75
  %388 = load i64, i64* %75
  %389 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %388)
  %390 = extractvalue {i64, i1} %389, 1
  br i1 %390, label %726, label %722
391:
  store i8 addrspace(1)* null, i8 addrspace(1)** %77
  br label %392
392:
  %393 = load i8 addrspace(1)*, i8 addrspace(1)** %77, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %393), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %78, !dbg !15
  store i64 13, i64* %d
  %394 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %395 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %394, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %395, i8 addrspace(1)** %79
  %396 = load i8 addrspace(1)*, i8 addrspace(1)** %79
  %397 = addrspacecast i8 addrspace(1)* %396 to i8*
  %398 = ptrtoint i8* %397 to i64
  %399 = and i64 %398, 2233785415175766016
  %400 = icmp eq i64 %399, 0
  store i1 %400, i1* %80
  %401 = load i1, i1* %80
  br i1 %401, label %409, label %402
402:
  %403 = load i8 addrspace(1)*, i8 addrspace(1)** %79
  %404 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %403)
  store i64 %404, i64* %81
  %405 = load i64, i64* %81
  %406 = load i64, i64* %d
  %407 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %405, i64 %406)
  %408 = extractvalue {i64, i1} %407, 1
  br i1 %408, label %732, label %728
409:
  store i8 addrspace(1)* null, i8 addrspace(1)** %83
  br label %410
410:
  %411 = load i8 addrspace(1)*, i8 addrspace(1)** %83
  store i8 addrspace(1)* %411, i8 addrspace(1)** %v7
  %412 = load i8 addrspace(1)*, i8 addrspace(1)** %v7, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %412), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %84, !dbg !16
  %413 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %414 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %413, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %414, i8 addrspace(1)** %85
  %415 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %416 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %415, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %416, i8 addrspace(1)** %86
  %417 = load i8 addrspace(1)*, i8 addrspace(1)** %85
  %418 = addrspacecast i8 addrspace(1)* %417 to i8*
  %419 = ptrtoint i8* %418 to i64
  %420 = and i64 %419, 2233785415175766016
  %421 = icmp eq i64 %420, 0
  store i1 %421, i1* %87
  %422 = load i1, i1* %87
  br i1 %422, label %432, label %423
423:
  %424 = load i8 addrspace(1)*, i8 addrspace(1)** %85
  %425 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %424)
  store i64 %425, i64* %88
  %426 = load i8 addrspace(1)*, i8 addrspace(1)** %86
  %427 = addrspacecast i8 addrspace(1)* %426 to i8*
  %428 = ptrtoint i8* %427 to i64
  %429 = and i64 %428, 2233785415175766016
  %430 = icmp eq i64 %429, 0
  store i1 %430, i1* %89
  %431 = load i1, i1* %89
  br i1 %431, label %432, label %433
432:
  store i8 addrspace(1)* null, i8 addrspace(1)** %92
  br label %440
433:
  %434 = load i8 addrspace(1)*, i8 addrspace(1)** %86
  %435 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %434)
  store i64 %435, i64* %90
  %436 = load i64, i64* %88
  %437 = load i64, i64* %90
  %438 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %436, i64 %437)
  %439 = extractvalue {i64, i1} %438, 1
  br i1 %439, label %738, label %734
440:
  %441 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %442 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %441, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %442, i8 addrspace(1)** %93
  %443 = load i8 addrspace(1)*, i8 addrspace(1)** %92
  %444 = addrspacecast i8 addrspace(1)* %443 to i8*
  %445 = ptrtoint i8* %444 to i64
  %446 = and i64 %445, 2233785415175766016
  %447 = icmp eq i64 %446, 0
  store i1 %447, i1* %94
  %448 = load i1, i1* %94
  br i1 %448, label %458, label %449
449:
  %450 = load i8 addrspace(1)*, i8 addrspace(1)** %92
  %451 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %450)
  store i64 %451, i64* %95
  %452 = load i8 addrspace(1)*, i8 addrspace(1)** %93
  %453 = addrspacecast i8 addrspace(1)* %452 to i8*
  %454 = ptrtoint i8* %453 to i64
  %455 = and i64 %454, 2233785415175766016
  %456 = icmp eq i64 %455, 0
  store i1 %456, i1* %96
  %457 = load i1, i1* %96
  br i1 %457, label %458, label %459
458:
  store i8 addrspace(1)* null, i8 addrspace(1)** %99
  br label %466
459:
  %460 = load i8 addrspace(1)*, i8 addrspace(1)** %93
  %461 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %460)
  store i64 %461, i64* %97
  %462 = load i64, i64* %95
  %463 = load i64, i64* %97
  %464 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %462, i64 %463)
  %465 = extractvalue {i64, i1} %464, 1
  br i1 %465, label %744, label %740
466:
  %467 = load i8 addrspace(1)*, i8 addrspace(1)** %99
  %468 = addrspacecast i8 addrspace(1)* %467 to i8*
  %469 = ptrtoint i8* %468 to i64
  %470 = and i64 %469, 2233785415175766016
  %471 = icmp eq i64 %470, 0
  store i1 %471, i1* %100
  %472 = load i1, i1* %100
  br i1 %472, label %480, label %473
473:
  %474 = load i8 addrspace(1)*, i8 addrspace(1)** %99
  %475 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %474)
  store i64 %475, i64* %101
  %476 = load i64, i64* %101
  %477 = load i64, i64* %d
  %478 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %476, i64 %477)
  %479 = extractvalue {i64, i1} %478, 1
  br i1 %479, label %750, label %746
480:
  store i8 addrspace(1)* null, i8 addrspace(1)** %103
  br label %481
481:
  %482 = load i8 addrspace(1)*, i8 addrspace(1)** %103, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %482), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %104, !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %e
  %483 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %484 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %483, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %484, i8 addrspace(1)** %105
  %485 = load i8 addrspace(1)*, i8 addrspace(1)** %105
  %486 = addrspacecast i8 addrspace(1)* %485 to i8*
  %487 = ptrtoint i8* %486 to i64
  %488 = and i64 %487, 2233785415175766016
  %489 = icmp eq i64 %488, 0
  store i1 %489, i1* %106
  %490 = load i1, i1* %106
  br i1 %490, label %500, label %491
491:
  %492 = load i8 addrspace(1)*, i8 addrspace(1)** %105
  %493 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %492)
  store i64 %493, i64* %107
  %494 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %495 = addrspacecast i8 addrspace(1)* %494 to i8*
  %496 = ptrtoint i8* %495 to i64
  %497 = and i64 %496, 2233785415175766016
  %498 = icmp eq i64 %497, 0
  store i1 %498, i1* %108
  %499 = load i1, i1* %108
  br i1 %499, label %500, label %501
500:
  store i8 addrspace(1)* null, i8 addrspace(1)** %111
  br label %508
501:
  %502 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %503 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %502)
  store i64 %503, i64* %109
  %504 = load i64, i64* %107
  %505 = load i64, i64* %109
  %506 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %504, i64 %505)
  %507 = extractvalue {i64, i1} %506, 1
  br i1 %507, label %756, label %752
508:
  %509 = load i8 addrspace(1)*, i8 addrspace(1)** %111
  store i8 addrspace(1)* %509, i8 addrspace(1)** %v8
  %510 = load i8 addrspace(1)*, i8 addrspace(1)** %v8, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %510), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %112, !dbg !18
  %511 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %512 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %511, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %512, i8 addrspace(1)** %113
  %513 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %514 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %513, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %514, i8 addrspace(1)** %114
  %515 = load i8 addrspace(1)*, i8 addrspace(1)** %113
  %516 = addrspacecast i8 addrspace(1)* %515 to i8*
  %517 = ptrtoint i8* %516 to i64
  %518 = and i64 %517, 2233785415175766016
  %519 = icmp eq i64 %518, 0
  store i1 %519, i1* %115
  %520 = load i1, i1* %115
  br i1 %520, label %530, label %521
521:
  %522 = load i8 addrspace(1)*, i8 addrspace(1)** %113
  %523 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %522)
  store i64 %523, i64* %116
  %524 = load i8 addrspace(1)*, i8 addrspace(1)** %114
  %525 = addrspacecast i8 addrspace(1)* %524 to i8*
  %526 = ptrtoint i8* %525 to i64
  %527 = and i64 %526, 2233785415175766016
  %528 = icmp eq i64 %527, 0
  store i1 %528, i1* %117
  %529 = load i1, i1* %117
  br i1 %529, label %530, label %531
530:
  store i8 addrspace(1)* null, i8 addrspace(1)** %120
  br label %538
531:
  %532 = load i8 addrspace(1)*, i8 addrspace(1)** %114
  %533 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %532)
  store i64 %533, i64* %118
  %534 = load i64, i64* %116
  %535 = load i64, i64* %118
  %536 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %534, i64 %535)
  %537 = extractvalue {i64, i1} %536, 1
  br i1 %537, label %762, label %758
538:
  %539 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %540 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %539, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091))
  store i8 addrspace(1)* %540, i8 addrspace(1)** %121
  %541 = load i8 addrspace(1)*, i8 addrspace(1)** %120
  %542 = addrspacecast i8 addrspace(1)* %541 to i8*
  %543 = ptrtoint i8* %542 to i64
  %544 = and i64 %543, 2233785415175766016
  %545 = icmp eq i64 %544, 0
  store i1 %545, i1* %122
  %546 = load i1, i1* %122
  br i1 %546, label %556, label %547
547:
  %548 = load i8 addrspace(1)*, i8 addrspace(1)** %120
  %549 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %548)
  store i64 %549, i64* %123
  %550 = load i8 addrspace(1)*, i8 addrspace(1)** %121
  %551 = addrspacecast i8 addrspace(1)* %550 to i8*
  %552 = ptrtoint i8* %551 to i64
  %553 = and i64 %552, 2233785415175766016
  %554 = icmp eq i64 %553, 0
  store i1 %554, i1* %124
  %555 = load i1, i1* %124
  br i1 %555, label %556, label %557
556:
  store i8 addrspace(1)* null, i8 addrspace(1)** %127
  br label %564
557:
  %558 = load i8 addrspace(1)*, i8 addrspace(1)** %121
  %559 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %558)
  store i64 %559, i64* %125
  %560 = load i64, i64* %123
  %561 = load i64, i64* %125
  %562 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %560, i64 %561)
  %563 = extractvalue {i64, i1} %562, 1
  br i1 %563, label %768, label %764
564:
  %565 = load i8 addrspace(1)*, i8 addrspace(1)** %127
  %566 = addrspacecast i8 addrspace(1)* %565 to i8*
  %567 = ptrtoint i8* %566 to i64
  %568 = and i64 %567, 2233785415175766016
  %569 = icmp eq i64 %568, 0
  store i1 %569, i1* %128
  %570 = load i1, i1* %128
  br i1 %570, label %578, label %571
571:
  %572 = load i8 addrspace(1)*, i8 addrspace(1)** %127
  %573 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %572)
  store i64 %573, i64* %129
  %574 = load i64, i64* %129
  %575 = load i64, i64* %d
  %576 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %574, i64 %575)
  %577 = extractvalue {i64, i1} %576, 1
  br i1 %577, label %774, label %770
578:
  store i8 addrspace(1)* null, i8 addrspace(1)** %131
  br label %579
579:
  %580 = load i8 addrspace(1)*, i8 addrspace(1)** %131
  %581 = addrspacecast i8 addrspace(1)* %580 to i8*
  %582 = ptrtoint i8* %581 to i64
  %583 = and i64 %582, 2233785415175766016
  %584 = icmp eq i64 %583, 0
  store i1 %584, i1* %132
  %585 = load i1, i1* %132
  br i1 %585, label %595, label %586
586:
  %587 = load i8 addrspace(1)*, i8 addrspace(1)** %131
  %588 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %587)
  store i64 %588, i64* %133
  %589 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %590 = addrspacecast i8 addrspace(1)* %589 to i8*
  %591 = ptrtoint i8* %590 to i64
  %592 = and i64 %591, 2233785415175766016
  %593 = icmp eq i64 %592, 0
  store i1 %593, i1* %134
  %594 = load i1, i1* %134
  br i1 %594, label %595, label %596
595:
  store i8 addrspace(1)* null, i8 addrspace(1)** %137
  br label %603
596:
  %597 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  %598 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %597)
  store i64 %598, i64* %135
  %599 = load i64, i64* %133
  %600 = load i64, i64* %135
  %601 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %599, i64 %600)
  %602 = extractvalue {i64, i1} %601, 1
  br i1 %602, label %780, label %776
603:
  %604 = load i8 addrspace(1)*, i8 addrspace(1)** %137, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %604), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %138, !dbg !19
  %605 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %606 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %605, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %606, i8 addrspace(1)** %139
  %607 = load i8 addrspace(1)*, i8 addrspace(1)** %139
  %608 = addrspacecast i8 addrspace(1)* %607 to i8*
  %609 = ptrtoint i8* %608 to i64
  %610 = and i64 %609, 2233785415175766016
  %611 = icmp eq i64 %610, 0
  store i1 %611, i1* %140
  %612 = load i1, i1* %140
  br i1 %612, label %619, label %613
613:
  %614 = load i8 addrspace(1)*, i8 addrspace(1)** %139
  %615 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %614)
  store i64 %615, i64* %141
  %616 = load i64, i64* %141
  %617 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %616)
  %618 = extractvalue {i64, i1} %617, 1
  br i1 %618, label %786, label %782
619:
  store i8 addrspace(1)* null, i8 addrspace(1)** %143
  br label %620
620:
  %621 = load i8 addrspace(1)*, i8 addrspace(1)** %143, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %621), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %144, !dbg !20
  ret void
622:
  %623 = load i8 addrspace(1)*, i8 addrspace(1)** %145
  call void @_bal_panic(i8 addrspace(1)* %623)
  unreachable
624:
  %625 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %625)
  unreachable
626:
  %627 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %628 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6)
  %629 = call i64 @_bal_mapping_set(i8 addrspace(1)* %627, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)* %628)
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %634, label %639
631:
  %632 = or i64 %154, 1024
  %633 = call i8 addrspace(1)* @_bal_panic_construct(i64 %632), !dbg !7
  store i8 addrspace(1)* %633, i8 addrspace(1)** %145
  br label %622
634:
  %635 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %636 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %637 = call i64 @_bal_mapping_set(i8 addrspace(1)* %635, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091), i8 addrspace(1)* %636)
  %638 = icmp eq i64 %637, 0
  br i1 %638, label %642, label %653
639:
  %640 = or i64 %629, 1280
  %641 = call i8 addrspace(1)* @_bal_panic_construct(i64 %640), !dbg !7
  store i8 addrspace(1)* %641, i8 addrspace(1)** %145
  br label %622
642:
  %643 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %644 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %643, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089))
  store i8 addrspace(1)* %644, i8 addrspace(1)** %2
  %645 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %646 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %645, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %646, i8 addrspace(1)** %3
  %647 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %648 = addrspacecast i8 addrspace(1)* %647 to i8*
  %649 = ptrtoint i8* %648 to i64
  %650 = and i64 %649, 2233785415175766016
  %651 = icmp eq i64 %650, 0
  store i1 %651, i1* %4
  %652 = load i1, i1* %4
  br i1 %652, label %165, label %156
653:
  %654 = or i64 %637, 1536
  %655 = call i8 addrspace(1)* @_bal_panic_construct(i64 %654), !dbg !7
  store i8 addrspace(1)* %655, i8 addrspace(1)** %145
  br label %622
656:
  %657 = extractvalue {i64, i1} %171, 0
  store i64 %657, i64* %8
  %658 = load i64, i64* %8
  %659 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %658)
  store i8 addrspace(1)* %659, i8 addrspace(1)** %9
  br label %173
660:
  %661 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !7
  store i8 addrspace(1)* %661, i8 addrspace(1)** %145
  br label %622
662:
  %663 = extractvalue {i64, i1} %200, 0
  store i64 %663, i64* %17
  %664 = load i64, i64* %17
  %665 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %664)
  store i8 addrspace(1)* %665, i8 addrspace(1)** %18
  br label %202
666:
  %667 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %667, i8 addrspace(1)** %145
  br label %622
668:
  %669 = extractvalue {i64, i1} %226, 0
  store i64 %669, i64* %24
  %670 = load i64, i64* %24
  %671 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %670)
  store i8 addrspace(1)* %671, i8 addrspace(1)** %25
  br label %228
672:
  %673 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %673, i8 addrspace(1)** %145
  br label %622
674:
  %675 = extractvalue {i64, i1} %255, 0
  store i64 %675, i64* %33
  %676 = load i64, i64* %33
  %677 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %676)
  store i8 addrspace(1)* %677, i8 addrspace(1)** %34
  br label %257
678:
  %679 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !7
  store i8 addrspace(1)* %679, i8 addrspace(1)** %145
  br label %622
680:
  %681 = extractvalue {i64, i1} %284, 0
  store i64 %681, i64* %42
  %682 = load i64, i64* %42
  %683 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %682)
  store i8 addrspace(1)* %683, i8 addrspace(1)** %43
  br label %286
684:
  %685 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !7
  store i8 addrspace(1)* %685, i8 addrspace(1)** %145
  br label %622
686:
  %687 = extractvalue {i64, i1} %310, 0
  store i64 %687, i64* %49
  %688 = load i64, i64* %49
  %689 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %688)
  store i8 addrspace(1)* %689, i8 addrspace(1)** %50
  br label %312
690:
  %691 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !7
  store i8 addrspace(1)* %691, i8 addrspace(1)** %145
  br label %622
692:
  %693 = call i8 addrspace(1)* @_bal_panic_construct(i64 4098), !dbg !7
  store i8 addrspace(1)* %693, i8 addrspace(1)** %145
  br label %622
694:
  %695 = icmp eq i64 %337, -9223372036854775808
  %696 = icmp eq i64 %338, -1
  %697 = and i1 %695, %696
  br i1 %697, label %702, label %698
698:
  %699 = sdiv i64 %337, %338
  store i64 %699, i64* %58
  %700 = load i64, i64* %58
  %701 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %700)
  store i8 addrspace(1)* %701, i8 addrspace(1)** %59
  br label %340
702:
  %703 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !7
  store i8 addrspace(1)* %703, i8 addrspace(1)** %145
  br label %622
704:
  %705 = call i8 addrspace(1)* @_bal_panic_construct(i64 4610), !dbg !7
  store i8 addrspace(1)* %705, i8 addrspace(1)** %145
  br label %622
706:
  %707 = icmp eq i64 %353, -9223372036854775808
  %708 = icmp eq i64 3, -1
  %709 = and i1 %707, %708
  br i1 %709, label %714, label %710
710:
  %711 = sdiv i64 %353, 3
  store i64 %711, i64* %64
  %712 = load i64, i64* %64
  %713 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %712)
  store i8 addrspace(1)* %713, i8 addrspace(1)** %65
  br label %356
714:
  %715 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609), !dbg !7
  store i8 addrspace(1)* %715, i8 addrspace(1)** %145
  br label %622
716:
  %717 = extractvalue {i64, i1} %371, 0
  store i64 %717, i64* %70
  %718 = load i64, i64* %70
  %719 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %718)
  store i8 addrspace(1)* %719, i8 addrspace(1)** %71
  br label %374
720:
  %721 = call i8 addrspace(1)* @_bal_panic_construct(i64 5377), !dbg !7
  store i8 addrspace(1)* %721, i8 addrspace(1)** %145
  br label %622
722:
  %723 = extractvalue {i64, i1} %389, 0
  store i64 %723, i64* %76
  %724 = load i64, i64* %76
  %725 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %724)
  store i8 addrspace(1)* %725, i8 addrspace(1)** %77
  br label %392
726:
  %727 = call i8 addrspace(1)* @_bal_panic_construct(i64 5889), !dbg !7
  store i8 addrspace(1)* %727, i8 addrspace(1)** %145
  br label %622
728:
  %729 = extractvalue {i64, i1} %407, 0
  store i64 %729, i64* %82
  %730 = load i64, i64* %82
  %731 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %730)
  store i8 addrspace(1)* %731, i8 addrspace(1)** %83
  br label %410
732:
  %733 = call i8 addrspace(1)* @_bal_panic_construct(i64 6657), !dbg !7
  store i8 addrspace(1)* %733, i8 addrspace(1)** %145
  br label %622
734:
  %735 = extractvalue {i64, i1} %438, 0
  store i64 %735, i64* %91
  %736 = load i64, i64* %91
  %737 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %736)
  store i8 addrspace(1)* %737, i8 addrspace(1)** %92
  br label %440
738:
  %739 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !7
  store i8 addrspace(1)* %739, i8 addrspace(1)** %145
  br label %622
740:
  %741 = extractvalue {i64, i1} %464, 0
  store i64 %741, i64* %98
  %742 = load i64, i64* %98
  %743 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %742)
  store i8 addrspace(1)* %743, i8 addrspace(1)** %99
  br label %466
744:
  %745 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !7
  store i8 addrspace(1)* %745, i8 addrspace(1)** %145
  br label %622
746:
  %747 = extractvalue {i64, i1} %478, 0
  store i64 %747, i64* %102
  %748 = load i64, i64* %102
  %749 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %748)
  store i8 addrspace(1)* %749, i8 addrspace(1)** %103
  br label %481
750:
  %751 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !7
  store i8 addrspace(1)* %751, i8 addrspace(1)** %145
  br label %622
752:
  %753 = extractvalue {i64, i1} %506, 0
  store i64 %753, i64* %110
  %754 = load i64, i64* %110
  %755 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %754)
  store i8 addrspace(1)* %755, i8 addrspace(1)** %111
  br label %508
756:
  %757 = call i8 addrspace(1)* @_bal_panic_construct(i64 7937), !dbg !7
  store i8 addrspace(1)* %757, i8 addrspace(1)** %145
  br label %622
758:
  %759 = extractvalue {i64, i1} %536, 0
  store i64 %759, i64* %119
  %760 = load i64, i64* %119
  %761 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %760)
  store i8 addrspace(1)* %761, i8 addrspace(1)** %120
  br label %538
762:
  %763 = call i8 addrspace(1)* @_bal_panic_construct(i64 8449), !dbg !7
  store i8 addrspace(1)* %763, i8 addrspace(1)** %145
  br label %622
764:
  %765 = extractvalue {i64, i1} %562, 0
  store i64 %765, i64* %126
  %766 = load i64, i64* %126
  %767 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %766)
  store i8 addrspace(1)* %767, i8 addrspace(1)** %127
  br label %564
768:
  %769 = call i8 addrspace(1)* @_bal_panic_construct(i64 8449), !dbg !7
  store i8 addrspace(1)* %769, i8 addrspace(1)** %145
  br label %622
770:
  %771 = extractvalue {i64, i1} %576, 0
  store i64 %771, i64* %130
  %772 = load i64, i64* %130
  %773 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %772)
  store i8 addrspace(1)* %773, i8 addrspace(1)** %131
  br label %579
774:
  %775 = call i8 addrspace(1)* @_bal_panic_construct(i64 8449), !dbg !7
  store i8 addrspace(1)* %775, i8 addrspace(1)** %145
  br label %622
776:
  %777 = extractvalue {i64, i1} %601, 0
  store i64 %777, i64* %136
  %778 = load i64, i64* %136
  %779 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %778)
  store i8 addrspace(1)* %779, i8 addrspace(1)** %137
  br label %603
780:
  %781 = call i8 addrspace(1)* @_bal_panic_construct(i64 8449), !dbg !7
  store i8 addrspace(1)* %781, i8 addrspace(1)** %145
  br label %622
782:
  %783 = extractvalue {i64, i1} %617, 0
  store i64 %783, i64* %142
  %784 = load i64, i64* %142
  %785 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %784)
  store i8 addrspace(1)* %785, i8 addrspace(1)** %143
  br label %620
786:
  %787 = call i8 addrspace(1)* @_bal_panic_construct(i64 8961), !dbg !7
  store i8 addrspace(1)* %787, i8 addrspace(1)** %145
  br label %622
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/8-v.bal", directory:"")
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
