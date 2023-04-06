@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %v1 = alloca ptr addrspace(1)
  %a.1 = alloca ptr addrspace(1)
  %a.2 = alloca i64
  %b.1 = alloca ptr addrspace(1)
  %b.2 = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %a.3 = alloca ptr addrspace(1)
  %a.4 = alloca i64
  %b.3 = alloca ptr addrspace(1)
  %b.4 = alloca i64
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %c.1 = alloca ptr addrspace(1)
  %c.2 = alloca i64
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %d = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %a.5 = alloca ptr addrspace(1)
  %a.6 = alloca i64
  %d.1 = alloca ptr addrspace(1)
  %d.2 = alloca i64
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %a.7 = alloca ptr addrspace(1)
  %a.8 = alloca i64
  %b.5 = alloca ptr addrspace(1)
  %b.6 = alloca i64
  %17 = alloca i64
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca i64
  %c.3 = alloca ptr addrspace(1)
  %c.4 = alloca i64
  %21 = alloca i64
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i64
  %d.3 = alloca ptr addrspace(1)
  %d.4 = alloca i64
  %25 = alloca i64
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %v3 = alloca ptr addrspace(1)
  %c.5 = alloca ptr addrspace(1)
  %c.6 = alloca i64
  %b.7 = alloca ptr addrspace(1)
  %b.8 = alloca i64
  %29 = alloca i64
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i8
  %34 = load ptr, ptr @_bal_stack_guard
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %300, label %36
36:
  %37 = and i64 72057594037927935, 4
  %38 = or i64 2449958197289549824, %37
  %39 = getelementptr i8, ptr addrspace(1) null, i64 %38
  store ptr addrspace(1) %39, ptr %a
  %40 = and i64 72057594037927935, 2
  %41 = or i64 2449958197289549824, %40
  %42 = getelementptr i8, ptr addrspace(1) null, i64 %41
  store ptr addrspace(1) %42, ptr %b
  %43 = and i64 72057594037927935, 1
  %44 = or i64 2449958197289549824, %43
  %45 = getelementptr i8, ptr addrspace(1) null, i64 %44
  store ptr addrspace(1) %45, ptr %c
  %46 = load ptr addrspace(1), ptr %a
  %47 = addrspacecast ptr addrspace(1) %46 to ptr
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 2233785415175766016
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %59, label %51
51:
  %52 = load ptr addrspace(1), ptr %a
  %53 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %52), !dbg !9
  store i64 %53, ptr %a.2
  %54 = load ptr addrspace(1), ptr %b
  %55 = addrspacecast ptr addrspace(1) %54 to ptr
  %56 = ptrtoint ptr %55 to i64
  %57 = and i64 %56, 2233785415175766016
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62
59:
  %60 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %60, ptr %a.1
  %61 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %61, ptr %b.1
  store ptr addrspace(1) null, ptr %2
  br label %70
62:
  %63 = load ptr addrspace(1), ptr %b
  %64 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %63), !dbg !10
  store i64 %64, ptr %b.2
  %65 = load i64, ptr %a.2
  %66 = load i64, ptr %b.2
  %67 = or i64 %65, %66
  store i64 %67, ptr %1
  %68 = load i64, ptr %1
  %69 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %68), !dbg !11
  store ptr addrspace(1) %69, ptr %2
  br label %70
70:
  %71 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %71, ptr %v1
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load ptr addrspace(1), ptr %v1
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %76, ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %3
  %81 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %81), !dbg !13
  store ptr addrspace(1) null, ptr %4
  %82 = load ptr addrspace(1), ptr %a
  %83 = addrspacecast ptr addrspace(1) %82 to ptr
  %84 = ptrtoint ptr %83 to i64
  %85 = and i64 %84, 2233785415175766016
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %95, label %87
87:
  %88 = load ptr addrspace(1), ptr %a
  %89 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %88), !dbg !14
  store i64 %89, ptr %a.4
  %90 = load ptr addrspace(1), ptr %b
  %91 = addrspacecast ptr addrspace(1) %90 to ptr
  %92 = ptrtoint ptr %91 to i64
  %93 = and i64 %92, 2233785415175766016
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98
95:
  %96 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %96, ptr %a.3
  %97 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %97, ptr %b.3
  store ptr addrspace(1) null, ptr %6
  br label %106
98:
  %99 = load ptr addrspace(1), ptr %b
  %100 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %99), !dbg !15
  store i64 %100, ptr %b.4
  %101 = load i64, ptr %a.4
  %102 = load i64, ptr %b.4
  %103 = or i64 %101, %102
  store i64 %103, ptr %5
  %104 = load i64, ptr %5
  %105 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %104), !dbg !16
  store ptr addrspace(1) %105, ptr %6
  br label %106
106:
  %107 = load ptr addrspace(1), ptr %6
  %108 = addrspacecast ptr addrspace(1) %107 to ptr
  %109 = ptrtoint ptr %108 to i64
  %110 = and i64 %109, 2233785415175766016
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %120, label %112
112:
  %113 = load ptr addrspace(1), ptr %6
  %114 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %113), !dbg !17
  store i64 %114, ptr %8
  %115 = load ptr addrspace(1), ptr %c
  %116 = addrspacecast ptr addrspace(1) %115 to ptr
  %117 = ptrtoint ptr %116 to i64
  %118 = and i64 %117, 2233785415175766016
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123
120:
  %121 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %121, ptr %7
  %122 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %122, ptr %c.1
  store ptr addrspace(1) null, ptr %10
  br label %131
123:
  %124 = load ptr addrspace(1), ptr %c
  %125 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %124), !dbg !18
  store i64 %125, ptr %c.2
  %126 = load i64, ptr %8
  %127 = load i64, ptr %c.2
  %128 = or i64 %126, %127
  store i64 %128, ptr %9
  %129 = load i64, ptr %9
  %130 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %129), !dbg !19
  store ptr addrspace(1) %130, ptr %10
  br label %131
131:
  %132 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %133 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %132, i64 0, i32 3
  %134 = load ptr addrspace(1), ptr addrspace(1) %133, align 8
  %135 = bitcast ptr addrspace(1) %134 to ptr addrspace(1)
  %136 = load ptr addrspace(1), ptr %10
  %137 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %135, i64 0, i64 0
  store ptr addrspace(1) %136, ptr addrspace(1) %137
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %132, i64 0, i32 1
  store i64 1, ptr addrspace(1) %138
  %139 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %140 = getelementptr i8, ptr addrspace(1) %139, i64 864691128455135236
  store ptr addrspace(1) %140, ptr %11
  %141 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %141), !dbg !21
  store ptr addrspace(1) null, ptr %12
  store ptr addrspace(1) null, ptr %d
  %142 = load ptr addrspace(1), ptr %a
  %143 = addrspacecast ptr addrspace(1) %142 to ptr
  %144 = ptrtoint ptr %143 to i64
  %145 = and i64 %144, 2233785415175766016
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %155, label %147
147:
  %148 = load ptr addrspace(1), ptr %a
  %149 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %148), !dbg !22
  store i64 %149, ptr %a.6
  %150 = load ptr addrspace(1), ptr %d
  %151 = addrspacecast ptr addrspace(1) %150 to ptr
  %152 = ptrtoint ptr %151 to i64
  %153 = and i64 %152, 2233785415175766016
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %158
155:
  %156 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %156, ptr %a.5
  %157 = load ptr addrspace(1), ptr %d
  store ptr addrspace(1) %157, ptr %d.1
  store ptr addrspace(1) null, ptr %14
  br label %166
158:
  %159 = load ptr addrspace(1), ptr %d
  %160 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %159), !dbg !23
  store i64 %160, ptr %d.2
  %161 = load i64, ptr %a.6
  %162 = load i64, ptr %d.2
  %163 = or i64 %161, %162
  store i64 %163, ptr %13
  %164 = load i64, ptr %13
  %165 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %164), !dbg !24
  store ptr addrspace(1) %165, ptr %14
  br label %166
166:
  %167 = load ptr addrspace(1), ptr %14
  store ptr addrspace(1) %167, ptr %v2
  %168 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 3
  %170 = load ptr addrspace(1), ptr addrspace(1) %169, align 8
  %171 = bitcast ptr addrspace(1) %170 to ptr addrspace(1)
  %172 = load ptr addrspace(1), ptr %v2
  %173 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %171, i64 0, i64 0
  store ptr addrspace(1) %172, ptr addrspace(1) %173
  %174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 1
  store i64 1, ptr addrspace(1) %174
  %175 = bitcast ptr addrspace(1) %168 to ptr addrspace(1)
  %176 = getelementptr i8, ptr addrspace(1) %175, i64 864691128455135236
  store ptr addrspace(1) %176, ptr %15
  %177 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %177), !dbg !26
  store ptr addrspace(1) null, ptr %16
  %178 = load ptr addrspace(1), ptr %a
  %179 = addrspacecast ptr addrspace(1) %178 to ptr
  %180 = ptrtoint ptr %179 to i64
  %181 = and i64 %180, 2233785415175766016
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %191, label %183
183:
  %184 = load ptr addrspace(1), ptr %a
  %185 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %184), !dbg !27
  store i64 %185, ptr %a.8
  %186 = load ptr addrspace(1), ptr %b
  %187 = addrspacecast ptr addrspace(1) %186 to ptr
  %188 = ptrtoint ptr %187 to i64
  %189 = and i64 %188, 2233785415175766016
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %194
191:
  %192 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %192, ptr %a.7
  %193 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %193, ptr %b.5
  store ptr addrspace(1) null, ptr %18
  br label %202
194:
  %195 = load ptr addrspace(1), ptr %b
  %196 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %195), !dbg !28
  store i64 %196, ptr %b.6
  %197 = load i64, ptr %a.8
  %198 = load i64, ptr %b.6
  %199 = or i64 %197, %198
  store i64 %199, ptr %17
  %200 = load i64, ptr %17
  %201 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %200), !dbg !29
  store ptr addrspace(1) %201, ptr %18
  br label %202
202:
  %203 = load ptr addrspace(1), ptr %18
  %204 = addrspacecast ptr addrspace(1) %203 to ptr
  %205 = ptrtoint ptr %204 to i64
  %206 = and i64 %205, 2233785415175766016
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %216, label %208
208:
  %209 = load ptr addrspace(1), ptr %18
  %210 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %209), !dbg !30
  store i64 %210, ptr %20
  %211 = load ptr addrspace(1), ptr %c
  %212 = addrspacecast ptr addrspace(1) %211 to ptr
  %213 = ptrtoint ptr %212 to i64
  %214 = and i64 %213, 2233785415175766016
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %219
216:
  %217 = load ptr addrspace(1), ptr %18
  store ptr addrspace(1) %217, ptr %19
  %218 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %218, ptr %c.3
  store ptr addrspace(1) null, ptr %22
  br label %227
219:
  %220 = load ptr addrspace(1), ptr %c
  %221 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %220), !dbg !31
  store i64 %221, ptr %c.4
  %222 = load i64, ptr %20
  %223 = load i64, ptr %c.4
  %224 = or i64 %222, %223
  store i64 %224, ptr %21
  %225 = load i64, ptr %21
  %226 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %225), !dbg !32
  store ptr addrspace(1) %226, ptr %22
  br label %227
227:
  %228 = load ptr addrspace(1), ptr %22
  %229 = addrspacecast ptr addrspace(1) %228 to ptr
  %230 = ptrtoint ptr %229 to i64
  %231 = and i64 %230, 2233785415175766016
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %241, label %233
233:
  %234 = load ptr addrspace(1), ptr %22
  %235 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %234), !dbg !33
  store i64 %235, ptr %24
  %236 = load ptr addrspace(1), ptr %d
  %237 = addrspacecast ptr addrspace(1) %236 to ptr
  %238 = ptrtoint ptr %237 to i64
  %239 = and i64 %238, 2233785415175766016
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %244
241:
  %242 = load ptr addrspace(1), ptr %22
  store ptr addrspace(1) %242, ptr %23
  %243 = load ptr addrspace(1), ptr %d
  store ptr addrspace(1) %243, ptr %d.3
  store ptr addrspace(1) null, ptr %26
  br label %252
244:
  %245 = load ptr addrspace(1), ptr %d
  %246 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %245), !dbg !34
  store i64 %246, ptr %d.4
  %247 = load i64, ptr %24
  %248 = load i64, ptr %d.4
  %249 = or i64 %247, %248
  store i64 %249, ptr %25
  %250 = load i64, ptr %25
  %251 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %250), !dbg !35
  store ptr addrspace(1) %251, ptr %26
  br label %252
252:
  %253 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %254 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %253, i64 0, i32 3
  %255 = load ptr addrspace(1), ptr addrspace(1) %254, align 8
  %256 = bitcast ptr addrspace(1) %255 to ptr addrspace(1)
  %257 = load ptr addrspace(1), ptr %26
  %258 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %256, i64 0, i64 0
  store ptr addrspace(1) %257, ptr addrspace(1) %258
  %259 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %253, i64 0, i32 1
  store i64 1, ptr addrspace(1) %259
  %260 = bitcast ptr addrspace(1) %253 to ptr addrspace(1)
  %261 = getelementptr i8, ptr addrspace(1) %260, i64 864691128455135236
  store ptr addrspace(1) %261, ptr %27
  %262 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %262), !dbg !37
  store ptr addrspace(1) null, ptr %28
  %263 = load ptr addrspace(1), ptr %c
  %264 = addrspacecast ptr addrspace(1) %263 to ptr
  %265 = ptrtoint ptr %264 to i64
  %266 = and i64 %265, 2233785415175766016
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %276, label %268
268:
  %269 = load ptr addrspace(1), ptr %c
  %270 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %269), !dbg !38
  store i64 %270, ptr %c.6
  %271 = load ptr addrspace(1), ptr %b
  %272 = addrspacecast ptr addrspace(1) %271 to ptr
  %273 = ptrtoint ptr %272 to i64
  %274 = and i64 %273, 2233785415175766016
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %279
276:
  %277 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %277, ptr %c.5
  %278 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %278, ptr %b.7
  store ptr addrspace(1) null, ptr %30
  br label %288
279:
  %280 = load ptr addrspace(1), ptr %b
  %281 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %280), !dbg !39
  store i64 %281, ptr %b.8
  %282 = load i64, ptr %c.6
  %283 = load i64, ptr %b.8
  %284 = and i64 63, %283
  %285 = shl i64 %282, %284
  store i64 %285, ptr %29
  %286 = load i64, ptr %29
  %287 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %286), !dbg !40
  store ptr addrspace(1) %287, ptr %30
  br label %288
288:
  %289 = load ptr addrspace(1), ptr %30
  store ptr addrspace(1) %289, ptr %v3
  %290 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !41
  %291 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 3
  %292 = load ptr addrspace(1), ptr addrspace(1) %291, align 8
  %293 = bitcast ptr addrspace(1) %292 to ptr addrspace(1)
  %294 = load ptr addrspace(1), ptr %v3
  %295 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %293, i64 0, i64 0
  store ptr addrspace(1) %294, ptr addrspace(1) %295
  %296 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 1
  store i64 1, ptr addrspace(1) %296
  %297 = bitcast ptr addrspace(1) %290 to ptr addrspace(1)
  %298 = getelementptr i8, ptr addrspace(1) %297, i64 864691128455135236
  store ptr addrspace(1) %298, ptr %31
  %299 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %299), !dbg !42
  store ptr addrspace(1) null, ptr %32
  ret void
300:
  %301 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %301), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 16, scope: !5)
!10 = !DILocation(line: 7, column: 16, scope: !5)
!11 = !DILocation(line: 7, column: 16, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 9, column: 17, scope: !5)
!15 = !DILocation(line: 9, column: 17, scope: !5)
!16 = !DILocation(line: 9, column: 17, scope: !5)
!17 = !DILocation(line: 9, column: 21, scope: !5)
!18 = !DILocation(line: 9, column: 21, scope: !5)
!19 = !DILocation(line: 9, column: 21, scope: !5)
!20 = !DILocation(line: 9, column: 15, scope: !5)
!21 = !DILocation(line: 9, column: 4, scope: !5)
!22 = !DILocation(line: 12, column: 16, scope: !5)
!23 = !DILocation(line: 12, column: 16, scope: !5)
!24 = !DILocation(line: 12, column: 16, scope: !5)
!25 = !DILocation(line: 13, column: 15, scope: !5)
!26 = !DILocation(line: 13, column: 4, scope: !5)
!27 = !DILocation(line: 14, column: 17, scope: !5)
!28 = !DILocation(line: 14, column: 17, scope: !5)
!29 = !DILocation(line: 14, column: 17, scope: !5)
!30 = !DILocation(line: 14, column: 21, scope: !5)
!31 = !DILocation(line: 14, column: 21, scope: !5)
!32 = !DILocation(line: 14, column: 21, scope: !5)
!33 = !DILocation(line: 14, column: 25, scope: !5)
!34 = !DILocation(line: 14, column: 25, scope: !5)
!35 = !DILocation(line: 14, column: 25, scope: !5)
!36 = !DILocation(line: 14, column: 15, scope: !5)
!37 = !DILocation(line: 14, column: 4, scope: !5)
!38 = !DILocation(line: 16, column: 16, scope: !5)
!39 = !DILocation(line: 16, column: 16, scope: !5)
!40 = !DILocation(line: 16, column: 16, scope: !5)
!41 = !DILocation(line: 17, column: 15, scope: !5)
!42 = !DILocation(line: 17, column: 4, scope: !5)
