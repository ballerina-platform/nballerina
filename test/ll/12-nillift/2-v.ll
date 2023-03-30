@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %v1 = alloca ptr addrspace(1)
  %a.1 = alloca ptr addrspace(1)
  %a.2 = alloca double
  %b.1 = alloca ptr addrspace(1)
  %b.2 = alloca double
  %1 = alloca double
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %a.3 = alloca ptr addrspace(1)
  %a.4 = alloca double
  %b.3 = alloca ptr addrspace(1)
  %b.4 = alloca double
  %5 = alloca double
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %a.5 = alloca ptr addrspace(1)
  %a.6 = alloca double
  %b.5 = alloca ptr addrspace(1)
  %b.6 = alloca double
  %9 = alloca double
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca double
  %c.1 = alloca ptr addrspace(1)
  %c.2 = alloca double
  %13 = alloca double
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %a.7 = alloca ptr addrspace(1)
  %a.8 = alloca double
  %b.7 = alloca ptr addrspace(1)
  %b.8 = alloca double
  %17 = alloca double
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca double
  %c.3 = alloca ptr addrspace(1)
  %c.4 = alloca double
  %21 = alloca double
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %v3 = alloca ptr addrspace(1)
  %a.9 = alloca ptr addrspace(1)
  %a.10 = alloca double
  %b.9 = alloca ptr addrspace(1)
  %b.10 = alloca double
  %25 = alloca double
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %v4 = alloca ptr addrspace(1)
  %a.11 = alloca ptr addrspace(1)
  %a.12 = alloca double
  %b.11 = alloca ptr addrspace(1)
  %b.12 = alloca double
  %29 = alloca double
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca double
  %c.5 = alloca ptr addrspace(1)
  %c.6 = alloca double
  %33 = alloca double
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %b.13 = alloca ptr addrspace(1)
  %b.14 = alloca double
  %c.7 = alloca ptr addrspace(1)
  %c.8 = alloca double
  %37 = alloca double
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca ptr addrspace(1)
  %v5 = alloca ptr addrspace(1)
  %b.15 = alloca ptr addrspace(1)
  %b.16 = alloca double
  %41 = alloca double
  %42 = alloca ptr addrspace(1)
  %43 = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %v6 = alloca ptr addrspace(1)
  %a.13 = alloca ptr addrspace(1)
  %a.14 = alloca double
  %45 = alloca double
  %46 = alloca ptr addrspace(1)
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %c.9 = alloca ptr addrspace(1)
  %c.10 = alloca double
  %49 = alloca double
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca ptr addrspace(1)
  %d = alloca double
  %v7 = alloca ptr addrspace(1)
  %a.15 = alloca ptr addrspace(1)
  %a.16 = alloca double
  %53 = alloca double
  %54 = alloca ptr addrspace(1)
  %55 = alloca ptr addrspace(1)
  %56 = alloca ptr addrspace(1)
  %a.17 = alloca ptr addrspace(1)
  %a.18 = alloca double
  %b.17 = alloca ptr addrspace(1)
  %b.18 = alloca double
  %57 = alloca double
  %58 = alloca ptr addrspace(1)
  %59 = alloca ptr addrspace(1)
  %60 = alloca double
  %c.11 = alloca ptr addrspace(1)
  %c.12 = alloca double
  %61 = alloca double
  %62 = alloca ptr addrspace(1)
  %63 = alloca ptr addrspace(1)
  %64 = alloca double
  %65 = alloca double
  %66 = alloca ptr addrspace(1)
  %67 = alloca ptr addrspace(1)
  %68 = alloca ptr addrspace(1)
  %e = alloca ptr addrspace(1)
  %v8 = alloca ptr addrspace(1)
  %a.19 = alloca ptr addrspace(1)
  %a.20 = alloca double
  %e.1 = alloca ptr addrspace(1)
  %e.2 = alloca double
  %69 = alloca double
  %70 = alloca ptr addrspace(1)
  %71 = alloca ptr addrspace(1)
  %72 = alloca ptr addrspace(1)
  %a.21 = alloca ptr addrspace(1)
  %a.22 = alloca double
  %b.19 = alloca ptr addrspace(1)
  %b.20 = alloca double
  %73 = alloca double
  %74 = alloca ptr addrspace(1)
  %75 = alloca ptr addrspace(1)
  %76 = alloca double
  %c.13 = alloca ptr addrspace(1)
  %c.14 = alloca double
  %77 = alloca double
  %78 = alloca ptr addrspace(1)
  %79 = alloca ptr addrspace(1)
  %80 = alloca double
  %81 = alloca double
  %82 = alloca ptr addrspace(1)
  %83 = alloca ptr addrspace(1)
  %84 = alloca double
  %e.3 = alloca ptr addrspace(1)
  %e.4 = alloca double
  %85 = alloca double
  %86 = alloca ptr addrspace(1)
  %87 = alloca ptr addrspace(1)
  %88 = alloca ptr addrspace(1)
  %a.23 = alloca ptr addrspace(1)
  %a.24 = alloca double
  %89 = alloca double
  %90 = alloca ptr addrspace(1)
  %91 = alloca ptr addrspace(1)
  %92 = alloca ptr addrspace(1)
  %93 = alloca i8
  %94 = load ptr, ptr @_bal_stack_guard
  %95 = icmp ult ptr %93, %94
  br i1 %95, label %766, label %96
96:
  %97 = call ptr addrspace(1) @_bal_float_to_tagged(double 5.0), !dbg !9
  store ptr addrspace(1) %97, ptr %a
  %98 = call ptr addrspace(1) @_bal_float_to_tagged(double 6.0), !dbg !10
  store ptr addrspace(1) %98, ptr %b
  %99 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.0), !dbg !11
  store ptr addrspace(1) %99, ptr %c
  %100 = load ptr addrspace(1), ptr %a
  %101 = addrspacecast ptr addrspace(1) %100 to ptr
  %102 = ptrtoint ptr %101 to i64
  %103 = and i64 %102, 2233785415175766016
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %113, label %105
105:
  %106 = load ptr addrspace(1), ptr %a
  %107 = call double @_bal_tagged_to_float(ptr addrspace(1) %106), !dbg !12
  store double %107, ptr %a.2
  %108 = load ptr addrspace(1), ptr %b
  %109 = addrspacecast ptr addrspace(1) %108 to ptr
  %110 = ptrtoint ptr %109 to i64
  %111 = and i64 %110, 2233785415175766016
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %116
113:
  %114 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %114, ptr %a.1
  %115 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %115, ptr %b.1
  store ptr addrspace(1) null, ptr %2
  br label %124
116:
  %117 = load ptr addrspace(1), ptr %b
  %118 = call double @_bal_tagged_to_float(ptr addrspace(1) %117), !dbg !13
  store double %118, ptr %b.2
  %119 = load double, ptr %a.2
  %120 = load double, ptr %b.2
  %121 = fadd double %119, %120
  store double %121, ptr %1
  %122 = load double, ptr %1
  %123 = call ptr addrspace(1) @_bal_float_to_tagged(double %122), !dbg !14
  store ptr addrspace(1) %123, ptr %2
  br label %124
124:
  %125 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %125, ptr %v1
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = load ptr addrspace(1), ptr %v1
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %3
  %135 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %135), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %136 = load ptr addrspace(1), ptr %a
  %137 = addrspacecast ptr addrspace(1) %136 to ptr
  %138 = ptrtoint ptr %137 to i64
  %139 = and i64 %138, 2233785415175766016
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %149, label %141
141:
  %142 = load ptr addrspace(1), ptr %a
  %143 = call double @_bal_tagged_to_float(ptr addrspace(1) %142), !dbg !17
  store double %143, ptr %a.4
  %144 = load ptr addrspace(1), ptr %b
  %145 = addrspacecast ptr addrspace(1) %144 to ptr
  %146 = ptrtoint ptr %145 to i64
  %147 = and i64 %146, 2233785415175766016
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %152
149:
  %150 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %150, ptr %a.3
  %151 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %151, ptr %b.3
  store ptr addrspace(1) null, ptr %6
  br label %160
152:
  %153 = load ptr addrspace(1), ptr %b
  %154 = call double @_bal_tagged_to_float(ptr addrspace(1) %153), !dbg !18
  store double %154, ptr %b.4
  %155 = load double, ptr %a.4
  %156 = load double, ptr %b.4
  %157 = fadd double %155, %156
  store double %157, ptr %5
  %158 = load double, ptr %5
  %159 = call ptr addrspace(1) @_bal_float_to_tagged(double %158), !dbg !19
  store ptr addrspace(1) %159, ptr %6
  br label %160
160:
  %161 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %162 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 3
  %163 = load ptr addrspace(1), ptr addrspace(1) %162, align 8
  %164 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %165 = load ptr addrspace(1), ptr %6
  %166 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %164, i64 0, i64 0
  store ptr addrspace(1) %165, ptr addrspace(1) %166
  %167 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 1
  store i64 1, ptr addrspace(1) %167
  %168 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %169 = getelementptr i8, ptr addrspace(1) %168, i64 864691128455135236
  store ptr addrspace(1) %169, ptr %7
  %170 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %170), !dbg !21
  store ptr addrspace(1) null, ptr %8
  %171 = load ptr addrspace(1), ptr %a
  %172 = addrspacecast ptr addrspace(1) %171 to ptr
  %173 = ptrtoint ptr %172 to i64
  %174 = and i64 %173, 2233785415175766016
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %184, label %176
176:
  %177 = load ptr addrspace(1), ptr %a
  %178 = call double @_bal_tagged_to_float(ptr addrspace(1) %177), !dbg !22
  store double %178, ptr %a.6
  %179 = load ptr addrspace(1), ptr %b
  %180 = addrspacecast ptr addrspace(1) %179 to ptr
  %181 = ptrtoint ptr %180 to i64
  %182 = and i64 %181, 2233785415175766016
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %187
184:
  %185 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %185, ptr %a.5
  %186 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %186, ptr %b.5
  store ptr addrspace(1) null, ptr %10
  br label %195
187:
  %188 = load ptr addrspace(1), ptr %b
  %189 = call double @_bal_tagged_to_float(ptr addrspace(1) %188), !dbg !23
  store double %189, ptr %b.6
  %190 = load double, ptr %a.6
  %191 = load double, ptr %b.6
  %192 = fadd double %190, %191
  store double %192, ptr %9
  %193 = load double, ptr %9
  %194 = call ptr addrspace(1) @_bal_float_to_tagged(double %193), !dbg !24
  store ptr addrspace(1) %194, ptr %10
  br label %195
195:
  %196 = load ptr addrspace(1), ptr %10
  %197 = addrspacecast ptr addrspace(1) %196 to ptr
  %198 = ptrtoint ptr %197 to i64
  %199 = and i64 %198, 2233785415175766016
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %209, label %201
201:
  %202 = load ptr addrspace(1), ptr %10
  %203 = call double @_bal_tagged_to_float(ptr addrspace(1) %202), !dbg !25
  store double %203, ptr %12
  %204 = load ptr addrspace(1), ptr %c
  %205 = addrspacecast ptr addrspace(1) %204 to ptr
  %206 = ptrtoint ptr %205 to i64
  %207 = and i64 %206, 2233785415175766016
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %212
209:
  %210 = load ptr addrspace(1), ptr %10
  store ptr addrspace(1) %210, ptr %11
  %211 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %211, ptr %c.1
  store ptr addrspace(1) null, ptr %14
  br label %220
212:
  %213 = load ptr addrspace(1), ptr %c
  %214 = call double @_bal_tagged_to_float(ptr addrspace(1) %213), !dbg !26
  store double %214, ptr %c.2
  %215 = load double, ptr %12
  %216 = load double, ptr %c.2
  %217 = fadd double %215, %216
  store double %217, ptr %13
  %218 = load double, ptr %13
  %219 = call ptr addrspace(1) @_bal_float_to_tagged(double %218), !dbg !27
  store ptr addrspace(1) %219, ptr %14
  br label %220
220:
  %221 = load ptr addrspace(1), ptr %14
  store ptr addrspace(1) %221, ptr %v2
  %222 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %223 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %222, i64 0, i32 3
  %224 = load ptr addrspace(1), ptr addrspace(1) %223, align 8
  %225 = bitcast ptr addrspace(1) %224 to ptr addrspace(1)
  %226 = load ptr addrspace(1), ptr %v2
  %227 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %225, i64 0, i64 0
  store ptr addrspace(1) %226, ptr addrspace(1) %227
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %222, i64 0, i32 1
  store i64 1, ptr addrspace(1) %228
  %229 = bitcast ptr addrspace(1) %222 to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 864691128455135236
  store ptr addrspace(1) %230, ptr %15
  %231 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %231), !dbg !29
  store ptr addrspace(1) null, ptr %16
  %232 = load ptr addrspace(1), ptr %a
  %233 = addrspacecast ptr addrspace(1) %232 to ptr
  %234 = ptrtoint ptr %233 to i64
  %235 = and i64 %234, 2233785415175766016
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %245, label %237
237:
  %238 = load ptr addrspace(1), ptr %a
  %239 = call double @_bal_tagged_to_float(ptr addrspace(1) %238), !dbg !30
  store double %239, ptr %a.8
  %240 = load ptr addrspace(1), ptr %b
  %241 = addrspacecast ptr addrspace(1) %240 to ptr
  %242 = ptrtoint ptr %241 to i64
  %243 = and i64 %242, 2233785415175766016
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %248
245:
  %246 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %246, ptr %a.7
  %247 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %247, ptr %b.7
  store ptr addrspace(1) null, ptr %18
  br label %256
248:
  %249 = load ptr addrspace(1), ptr %b
  %250 = call double @_bal_tagged_to_float(ptr addrspace(1) %249), !dbg !31
  store double %250, ptr %b.8
  %251 = load double, ptr %a.8
  %252 = load double, ptr %b.8
  %253 = fadd double %251, %252
  store double %253, ptr %17
  %254 = load double, ptr %17
  %255 = call ptr addrspace(1) @_bal_float_to_tagged(double %254), !dbg !32
  store ptr addrspace(1) %255, ptr %18
  br label %256
256:
  %257 = load ptr addrspace(1), ptr %18
  %258 = addrspacecast ptr addrspace(1) %257 to ptr
  %259 = ptrtoint ptr %258 to i64
  %260 = and i64 %259, 2233785415175766016
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %270, label %262
262:
  %263 = load ptr addrspace(1), ptr %18
  %264 = call double @_bal_tagged_to_float(ptr addrspace(1) %263), !dbg !33
  store double %264, ptr %20
  %265 = load ptr addrspace(1), ptr %c
  %266 = addrspacecast ptr addrspace(1) %265 to ptr
  %267 = ptrtoint ptr %266 to i64
  %268 = and i64 %267, 2233785415175766016
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %273
270:
  %271 = load ptr addrspace(1), ptr %18
  store ptr addrspace(1) %271, ptr %19
  %272 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %272, ptr %c.3
  store ptr addrspace(1) null, ptr %22
  br label %281
273:
  %274 = load ptr addrspace(1), ptr %c
  %275 = call double @_bal_tagged_to_float(ptr addrspace(1) %274), !dbg !34
  store double %275, ptr %c.4
  %276 = load double, ptr %20
  %277 = load double, ptr %c.4
  %278 = fadd double %276, %277
  store double %278, ptr %21
  %279 = load double, ptr %21
  %280 = call ptr addrspace(1) @_bal_float_to_tagged(double %279), !dbg !35
  store ptr addrspace(1) %280, ptr %22
  br label %281
281:
  %282 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %283 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %282, i64 0, i32 3
  %284 = load ptr addrspace(1), ptr addrspace(1) %283, align 8
  %285 = bitcast ptr addrspace(1) %284 to ptr addrspace(1)
  %286 = load ptr addrspace(1), ptr %22
  %287 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %285, i64 0, i64 0
  store ptr addrspace(1) %286, ptr addrspace(1) %287
  %288 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %282, i64 0, i32 1
  store i64 1, ptr addrspace(1) %288
  %289 = bitcast ptr addrspace(1) %282 to ptr addrspace(1)
  %290 = getelementptr i8, ptr addrspace(1) %289, i64 864691128455135236
  store ptr addrspace(1) %290, ptr %23
  %291 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %291), !dbg !37
  store ptr addrspace(1) null, ptr %24
  %292 = load ptr addrspace(1), ptr %a
  %293 = addrspacecast ptr addrspace(1) %292 to ptr
  %294 = ptrtoint ptr %293 to i64
  %295 = and i64 %294, 2233785415175766016
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %305, label %297
297:
  %298 = load ptr addrspace(1), ptr %a
  %299 = call double @_bal_tagged_to_float(ptr addrspace(1) %298), !dbg !38
  store double %299, ptr %a.10
  %300 = load ptr addrspace(1), ptr %b
  %301 = addrspacecast ptr addrspace(1) %300 to ptr
  %302 = ptrtoint ptr %301 to i64
  %303 = and i64 %302, 2233785415175766016
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %308
305:
  %306 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %306, ptr %a.9
  %307 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %307, ptr %b.9
  store ptr addrspace(1) null, ptr %26
  br label %316
308:
  %309 = load ptr addrspace(1), ptr %b
  %310 = call double @_bal_tagged_to_float(ptr addrspace(1) %309), !dbg !39
  store double %310, ptr %b.10
  %311 = load double, ptr %a.10
  %312 = load double, ptr %b.10
  %313 = fsub double %311, %312
  store double %313, ptr %25
  %314 = load double, ptr %25
  %315 = call ptr addrspace(1) @_bal_float_to_tagged(double %314), !dbg !40
  store ptr addrspace(1) %315, ptr %26
  br label %316
316:
  %317 = load ptr addrspace(1), ptr %26
  store ptr addrspace(1) %317, ptr %v3
  %318 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !41
  %319 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %318, i64 0, i32 3
  %320 = load ptr addrspace(1), ptr addrspace(1) %319, align 8
  %321 = bitcast ptr addrspace(1) %320 to ptr addrspace(1)
  %322 = load ptr addrspace(1), ptr %v3
  %323 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %321, i64 0, i64 0
  store ptr addrspace(1) %322, ptr addrspace(1) %323
  %324 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %318, i64 0, i32 1
  store i64 1, ptr addrspace(1) %324
  %325 = bitcast ptr addrspace(1) %318 to ptr addrspace(1)
  %326 = getelementptr i8, ptr addrspace(1) %325, i64 864691128455135236
  store ptr addrspace(1) %326, ptr %27
  %327 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %327), !dbg !42
  store ptr addrspace(1) null, ptr %28
  %328 = load ptr addrspace(1), ptr %a
  %329 = addrspacecast ptr addrspace(1) %328 to ptr
  %330 = ptrtoint ptr %329 to i64
  %331 = and i64 %330, 2233785415175766016
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %341, label %333
333:
  %334 = load ptr addrspace(1), ptr %a
  %335 = call double @_bal_tagged_to_float(ptr addrspace(1) %334), !dbg !43
  store double %335, ptr %a.12
  %336 = load ptr addrspace(1), ptr %b
  %337 = addrspacecast ptr addrspace(1) %336 to ptr
  %338 = ptrtoint ptr %337 to i64
  %339 = and i64 %338, 2233785415175766016
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %344
341:
  %342 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %342, ptr %a.11
  %343 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %343, ptr %b.11
  store ptr addrspace(1) null, ptr %30
  br label %352
344:
  %345 = load ptr addrspace(1), ptr %b
  %346 = call double @_bal_tagged_to_float(ptr addrspace(1) %345), !dbg !44
  store double %346, ptr %b.12
  %347 = load double, ptr %a.12
  %348 = load double, ptr %b.12
  %349 = fadd double %347, %348
  store double %349, ptr %29
  %350 = load double, ptr %29
  %351 = call ptr addrspace(1) @_bal_float_to_tagged(double %350), !dbg !45
  store ptr addrspace(1) %351, ptr %30
  br label %352
352:
  %353 = load ptr addrspace(1), ptr %30
  %354 = addrspacecast ptr addrspace(1) %353 to ptr
  %355 = ptrtoint ptr %354 to i64
  %356 = and i64 %355, 2233785415175766016
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %366, label %358
358:
  %359 = load ptr addrspace(1), ptr %30
  %360 = call double @_bal_tagged_to_float(ptr addrspace(1) %359), !dbg !46
  store double %360, ptr %32
  %361 = load ptr addrspace(1), ptr %c
  %362 = addrspacecast ptr addrspace(1) %361 to ptr
  %363 = ptrtoint ptr %362 to i64
  %364 = and i64 %363, 2233785415175766016
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %369
366:
  %367 = load ptr addrspace(1), ptr %30
  store ptr addrspace(1) %367, ptr %31
  %368 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %368, ptr %c.5
  store ptr addrspace(1) null, ptr %34
  br label %377
369:
  %370 = load ptr addrspace(1), ptr %c
  %371 = call double @_bal_tagged_to_float(ptr addrspace(1) %370), !dbg !47
  store double %371, ptr %c.6
  %372 = load double, ptr %32
  %373 = load double, ptr %c.6
  %374 = fsub double %372, %373
  store double %374, ptr %33
  %375 = load double, ptr %33
  %376 = call ptr addrspace(1) @_bal_float_to_tagged(double %375), !dbg !48
  store ptr addrspace(1) %376, ptr %34
  br label %377
377:
  %378 = load ptr addrspace(1), ptr %34
  store ptr addrspace(1) %378, ptr %v4
  %379 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !49
  %380 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %379, i64 0, i32 3
  %381 = load ptr addrspace(1), ptr addrspace(1) %380, align 8
  %382 = bitcast ptr addrspace(1) %381 to ptr addrspace(1)
  %383 = load ptr addrspace(1), ptr %v4
  %384 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %382, i64 0, i64 0
  store ptr addrspace(1) %383, ptr addrspace(1) %384
  %385 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %379, i64 0, i32 1
  store i64 1, ptr addrspace(1) %385
  %386 = bitcast ptr addrspace(1) %379 to ptr addrspace(1)
  %387 = getelementptr i8, ptr addrspace(1) %386, i64 864691128455135236
  store ptr addrspace(1) %387, ptr %35
  %388 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %388), !dbg !50
  store ptr addrspace(1) null, ptr %36
  %389 = load ptr addrspace(1), ptr %b
  %390 = addrspacecast ptr addrspace(1) %389 to ptr
  %391 = ptrtoint ptr %390 to i64
  %392 = and i64 %391, 2233785415175766016
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %402, label %394
394:
  %395 = load ptr addrspace(1), ptr %b
  %396 = call double @_bal_tagged_to_float(ptr addrspace(1) %395), !dbg !51
  store double %396, ptr %b.14
  %397 = load ptr addrspace(1), ptr %c
  %398 = addrspacecast ptr addrspace(1) %397 to ptr
  %399 = ptrtoint ptr %398 to i64
  %400 = and i64 %399, 2233785415175766016
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %405
402:
  %403 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %403, ptr %b.13
  %404 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %404, ptr %c.7
  store ptr addrspace(1) null, ptr %38
  br label %413
405:
  %406 = load ptr addrspace(1), ptr %c
  %407 = call double @_bal_tagged_to_float(ptr addrspace(1) %406), !dbg !52
  store double %407, ptr %c.8
  %408 = load double, ptr %b.14
  %409 = load double, ptr %c.8
  %410 = fdiv double %408, %409
  store double %410, ptr %37
  %411 = load double, ptr %37
  %412 = call ptr addrspace(1) @_bal_float_to_tagged(double %411), !dbg !53
  store ptr addrspace(1) %412, ptr %38
  br label %413
413:
  %414 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !54
  %415 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %414, i64 0, i32 3
  %416 = load ptr addrspace(1), ptr addrspace(1) %415, align 8
  %417 = bitcast ptr addrspace(1) %416 to ptr addrspace(1)
  %418 = load ptr addrspace(1), ptr %38
  %419 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %417, i64 0, i64 0
  store ptr addrspace(1) %418, ptr addrspace(1) %419
  %420 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %414, i64 0, i32 1
  store i64 1, ptr addrspace(1) %420
  %421 = bitcast ptr addrspace(1) %414 to ptr addrspace(1)
  %422 = getelementptr i8, ptr addrspace(1) %421, i64 864691128455135236
  store ptr addrspace(1) %422, ptr %39
  %423 = load ptr addrspace(1), ptr %39
  call void @_Bb02ioprintln(ptr addrspace(1) %423), !dbg !55
  store ptr addrspace(1) null, ptr %40
  %424 = load ptr addrspace(1), ptr %b
  %425 = addrspacecast ptr addrspace(1) %424 to ptr
  %426 = ptrtoint ptr %425 to i64
  %427 = and i64 %426, 2233785415175766016
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %436, label %429
429:
  %430 = load ptr addrspace(1), ptr %b
  %431 = call double @_bal_tagged_to_float(ptr addrspace(1) %430), !dbg !56
  store double %431, ptr %b.16
  %432 = load double, ptr %b.16
  %433 = fdiv double %432, 3.0
  store double %433, ptr %41
  %434 = load double, ptr %41
  %435 = call ptr addrspace(1) @_bal_float_to_tagged(double %434), !dbg !57
  store ptr addrspace(1) %435, ptr %42
  br label %438
436:
  %437 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %437, ptr %b.15
  store ptr addrspace(1) null, ptr %42
  br label %438
438:
  %439 = load ptr addrspace(1), ptr %42
  store ptr addrspace(1) %439, ptr %v5
  %440 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !58
  %441 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %440, i64 0, i32 3
  %442 = load ptr addrspace(1), ptr addrspace(1) %441, align 8
  %443 = bitcast ptr addrspace(1) %442 to ptr addrspace(1)
  %444 = load ptr addrspace(1), ptr %v5
  %445 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %443, i64 0, i64 0
  store ptr addrspace(1) %444, ptr addrspace(1) %445
  %446 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %440, i64 0, i32 1
  store i64 1, ptr addrspace(1) %446
  %447 = bitcast ptr addrspace(1) %440 to ptr addrspace(1)
  %448 = getelementptr i8, ptr addrspace(1) %447, i64 864691128455135236
  store ptr addrspace(1) %448, ptr %43
  %449 = load ptr addrspace(1), ptr %43
  call void @_Bb02ioprintln(ptr addrspace(1) %449), !dbg !59
  store ptr addrspace(1) null, ptr %44
  %450 = load ptr addrspace(1), ptr %a
  %451 = addrspacecast ptr addrspace(1) %450 to ptr
  %452 = ptrtoint ptr %451 to i64
  %453 = and i64 %452, 2233785415175766016
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %462, label %455
455:
  %456 = load ptr addrspace(1), ptr %a
  %457 = call double @_bal_tagged_to_float(ptr addrspace(1) %456), !dbg !60
  store double %457, ptr %a.14
  %458 = load double, ptr %a.14
  %459 = fneg double %458
  store double %459, ptr %45
  %460 = load double, ptr %45
  %461 = call ptr addrspace(1) @_bal_float_to_tagged(double %460), !dbg !61
  store ptr addrspace(1) %461, ptr %46
  br label %464
462:
  %463 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %463, ptr %a.13
  store ptr addrspace(1) null, ptr %46
  br label %464
464:
  %465 = load ptr addrspace(1), ptr %46
  store ptr addrspace(1) %465, ptr %v6
  %466 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !62
  %467 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %466, i64 0, i32 3
  %468 = load ptr addrspace(1), ptr addrspace(1) %467, align 8
  %469 = bitcast ptr addrspace(1) %468 to ptr addrspace(1)
  %470 = load ptr addrspace(1), ptr %v6
  %471 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %469, i64 0, i64 0
  store ptr addrspace(1) %470, ptr addrspace(1) %471
  %472 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %466, i64 0, i32 1
  store i64 1, ptr addrspace(1) %472
  %473 = bitcast ptr addrspace(1) %466 to ptr addrspace(1)
  %474 = getelementptr i8, ptr addrspace(1) %473, i64 864691128455135236
  store ptr addrspace(1) %474, ptr %47
  %475 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %475), !dbg !63
  store ptr addrspace(1) null, ptr %48
  %476 = load ptr addrspace(1), ptr %c
  %477 = addrspacecast ptr addrspace(1) %476 to ptr
  %478 = ptrtoint ptr %477 to i64
  %479 = and i64 %478, 2233785415175766016
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %488, label %481
481:
  %482 = load ptr addrspace(1), ptr %c
  %483 = call double @_bal_tagged_to_float(ptr addrspace(1) %482), !dbg !64
  store double %483, ptr %c.10
  %484 = load double, ptr %c.10
  %485 = fneg double %484
  store double %485, ptr %49
  %486 = load double, ptr %49
  %487 = call ptr addrspace(1) @_bal_float_to_tagged(double %486), !dbg !65
  store ptr addrspace(1) %487, ptr %50
  br label %490
488:
  %489 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %489, ptr %c.9
  store ptr addrspace(1) null, ptr %50
  br label %490
490:
  %491 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !66
  %492 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %491, i64 0, i32 3
  %493 = load ptr addrspace(1), ptr addrspace(1) %492, align 8
  %494 = bitcast ptr addrspace(1) %493 to ptr addrspace(1)
  %495 = load ptr addrspace(1), ptr %50
  %496 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %494, i64 0, i64 0
  store ptr addrspace(1) %495, ptr addrspace(1) %496
  %497 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %491, i64 0, i32 1
  store i64 1, ptr addrspace(1) %497
  %498 = bitcast ptr addrspace(1) %491 to ptr addrspace(1)
  %499 = getelementptr i8, ptr addrspace(1) %498, i64 864691128455135236
  store ptr addrspace(1) %499, ptr %51
  %500 = load ptr addrspace(1), ptr %51
  call void @_Bb02ioprintln(ptr addrspace(1) %500), !dbg !67
  store ptr addrspace(1) null, ptr %52
  store double 13.0, ptr %d
  %501 = load ptr addrspace(1), ptr %a
  %502 = addrspacecast ptr addrspace(1) %501 to ptr
  %503 = ptrtoint ptr %502 to i64
  %504 = and i64 %503, 2233785415175766016
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %514, label %506
506:
  %507 = load ptr addrspace(1), ptr %a
  %508 = call double @_bal_tagged_to_float(ptr addrspace(1) %507), !dbg !68
  store double %508, ptr %a.16
  %509 = load double, ptr %a.16
  %510 = load double, ptr %d
  %511 = fadd double %509, %510
  store double %511, ptr %53
  %512 = load double, ptr %53
  %513 = call ptr addrspace(1) @_bal_float_to_tagged(double %512), !dbg !69
  store ptr addrspace(1) %513, ptr %54
  br label %516
514:
  %515 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %515, ptr %a.15
  store ptr addrspace(1) null, ptr %54
  br label %516
516:
  %517 = load ptr addrspace(1), ptr %54
  store ptr addrspace(1) %517, ptr %v7
  %518 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !70
  %519 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %518, i64 0, i32 3
  %520 = load ptr addrspace(1), ptr addrspace(1) %519, align 8
  %521 = bitcast ptr addrspace(1) %520 to ptr addrspace(1)
  %522 = load ptr addrspace(1), ptr %v7
  %523 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %521, i64 0, i64 0
  store ptr addrspace(1) %522, ptr addrspace(1) %523
  %524 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %518, i64 0, i32 1
  store i64 1, ptr addrspace(1) %524
  %525 = bitcast ptr addrspace(1) %518 to ptr addrspace(1)
  %526 = getelementptr i8, ptr addrspace(1) %525, i64 864691128455135236
  store ptr addrspace(1) %526, ptr %55
  %527 = load ptr addrspace(1), ptr %55
  call void @_Bb02ioprintln(ptr addrspace(1) %527), !dbg !71
  store ptr addrspace(1) null, ptr %56
  %528 = load ptr addrspace(1), ptr %a
  %529 = addrspacecast ptr addrspace(1) %528 to ptr
  %530 = ptrtoint ptr %529 to i64
  %531 = and i64 %530, 2233785415175766016
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %541, label %533
533:
  %534 = load ptr addrspace(1), ptr %a
  %535 = call double @_bal_tagged_to_float(ptr addrspace(1) %534), !dbg !72
  store double %535, ptr %a.18
  %536 = load ptr addrspace(1), ptr %b
  %537 = addrspacecast ptr addrspace(1) %536 to ptr
  %538 = ptrtoint ptr %537 to i64
  %539 = and i64 %538, 2233785415175766016
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %544
541:
  %542 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %542, ptr %a.17
  %543 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %543, ptr %b.17
  store ptr addrspace(1) null, ptr %58
  br label %552
544:
  %545 = load ptr addrspace(1), ptr %b
  %546 = call double @_bal_tagged_to_float(ptr addrspace(1) %545), !dbg !73
  store double %546, ptr %b.18
  %547 = load double, ptr %a.18
  %548 = load double, ptr %b.18
  %549 = fadd double %547, %548
  store double %549, ptr %57
  %550 = load double, ptr %57
  %551 = call ptr addrspace(1) @_bal_float_to_tagged(double %550), !dbg !74
  store ptr addrspace(1) %551, ptr %58
  br label %552
552:
  %553 = load ptr addrspace(1), ptr %58
  %554 = addrspacecast ptr addrspace(1) %553 to ptr
  %555 = ptrtoint ptr %554 to i64
  %556 = and i64 %555, 2233785415175766016
  %557 = icmp eq i64 %556, 0
  br i1 %557, label %566, label %558
558:
  %559 = load ptr addrspace(1), ptr %58
  %560 = call double @_bal_tagged_to_float(ptr addrspace(1) %559), !dbg !75
  store double %560, ptr %60
  %561 = load ptr addrspace(1), ptr %c
  %562 = addrspacecast ptr addrspace(1) %561 to ptr
  %563 = ptrtoint ptr %562 to i64
  %564 = and i64 %563, 2233785415175766016
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %566, label %569
566:
  %567 = load ptr addrspace(1), ptr %58
  store ptr addrspace(1) %567, ptr %59
  %568 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %568, ptr %c.11
  store ptr addrspace(1) null, ptr %62
  br label %577
569:
  %570 = load ptr addrspace(1), ptr %c
  %571 = call double @_bal_tagged_to_float(ptr addrspace(1) %570), !dbg !76
  store double %571, ptr %c.12
  %572 = load double, ptr %60
  %573 = load double, ptr %c.12
  %574 = fadd double %572, %573
  store double %574, ptr %61
  %575 = load double, ptr %61
  %576 = call ptr addrspace(1) @_bal_float_to_tagged(double %575), !dbg !77
  store ptr addrspace(1) %576, ptr %62
  br label %577
577:
  %578 = load ptr addrspace(1), ptr %62
  %579 = addrspacecast ptr addrspace(1) %578 to ptr
  %580 = ptrtoint ptr %579 to i64
  %581 = and i64 %580, 2233785415175766016
  %582 = icmp eq i64 %581, 0
  br i1 %582, label %591, label %583
583:
  %584 = load ptr addrspace(1), ptr %62
  %585 = call double @_bal_tagged_to_float(ptr addrspace(1) %584), !dbg !78
  store double %585, ptr %64
  %586 = load double, ptr %64
  %587 = load double, ptr %d
  %588 = fadd double %586, %587
  store double %588, ptr %65
  %589 = load double, ptr %65
  %590 = call ptr addrspace(1) @_bal_float_to_tagged(double %589), !dbg !79
  store ptr addrspace(1) %590, ptr %66
  br label %593
591:
  %592 = load ptr addrspace(1), ptr %62
  store ptr addrspace(1) %592, ptr %63
  store ptr addrspace(1) null, ptr %66
  br label %593
593:
  %594 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !80
  %595 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %594, i64 0, i32 3
  %596 = load ptr addrspace(1), ptr addrspace(1) %595, align 8
  %597 = bitcast ptr addrspace(1) %596 to ptr addrspace(1)
  %598 = load ptr addrspace(1), ptr %66
  %599 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %597, i64 0, i64 0
  store ptr addrspace(1) %598, ptr addrspace(1) %599
  %600 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %594, i64 0, i32 1
  store i64 1, ptr addrspace(1) %600
  %601 = bitcast ptr addrspace(1) %594 to ptr addrspace(1)
  %602 = getelementptr i8, ptr addrspace(1) %601, i64 864691128455135236
  store ptr addrspace(1) %602, ptr %67
  %603 = load ptr addrspace(1), ptr %67
  call void @_Bb02ioprintln(ptr addrspace(1) %603), !dbg !81
  store ptr addrspace(1) null, ptr %68
  store ptr addrspace(1) null, ptr %e
  %604 = load ptr addrspace(1), ptr %a
  %605 = addrspacecast ptr addrspace(1) %604 to ptr
  %606 = ptrtoint ptr %605 to i64
  %607 = and i64 %606, 2233785415175766016
  %608 = icmp eq i64 %607, 0
  br i1 %608, label %617, label %609
609:
  %610 = load ptr addrspace(1), ptr %a
  %611 = call double @_bal_tagged_to_float(ptr addrspace(1) %610), !dbg !82
  store double %611, ptr %a.20
  %612 = load ptr addrspace(1), ptr %e
  %613 = addrspacecast ptr addrspace(1) %612 to ptr
  %614 = ptrtoint ptr %613 to i64
  %615 = and i64 %614, 2233785415175766016
  %616 = icmp eq i64 %615, 0
  br i1 %616, label %617, label %620
617:
  %618 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %618, ptr %a.19
  %619 = load ptr addrspace(1), ptr %e
  store ptr addrspace(1) %619, ptr %e.1
  store ptr addrspace(1) null, ptr %70
  br label %628
620:
  %621 = load ptr addrspace(1), ptr %e
  %622 = call double @_bal_tagged_to_float(ptr addrspace(1) %621), !dbg !83
  store double %622, ptr %e.2
  %623 = load double, ptr %a.20
  %624 = load double, ptr %e.2
  %625 = fadd double %623, %624
  store double %625, ptr %69
  %626 = load double, ptr %69
  %627 = call ptr addrspace(1) @_bal_float_to_tagged(double %626), !dbg !84
  store ptr addrspace(1) %627, ptr %70
  br label %628
628:
  %629 = load ptr addrspace(1), ptr %70
  store ptr addrspace(1) %629, ptr %v8
  %630 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !85
  %631 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %630, i64 0, i32 3
  %632 = load ptr addrspace(1), ptr addrspace(1) %631, align 8
  %633 = bitcast ptr addrspace(1) %632 to ptr addrspace(1)
  %634 = load ptr addrspace(1), ptr %v8
  %635 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %633, i64 0, i64 0
  store ptr addrspace(1) %634, ptr addrspace(1) %635
  %636 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %630, i64 0, i32 1
  store i64 1, ptr addrspace(1) %636
  %637 = bitcast ptr addrspace(1) %630 to ptr addrspace(1)
  %638 = getelementptr i8, ptr addrspace(1) %637, i64 864691128455135236
  store ptr addrspace(1) %638, ptr %71
  %639 = load ptr addrspace(1), ptr %71
  call void @_Bb02ioprintln(ptr addrspace(1) %639), !dbg !86
  store ptr addrspace(1) null, ptr %72
  %640 = load ptr addrspace(1), ptr %a
  %641 = addrspacecast ptr addrspace(1) %640 to ptr
  %642 = ptrtoint ptr %641 to i64
  %643 = and i64 %642, 2233785415175766016
  %644 = icmp eq i64 %643, 0
  br i1 %644, label %653, label %645
645:
  %646 = load ptr addrspace(1), ptr %a
  %647 = call double @_bal_tagged_to_float(ptr addrspace(1) %646), !dbg !87
  store double %647, ptr %a.22
  %648 = load ptr addrspace(1), ptr %b
  %649 = addrspacecast ptr addrspace(1) %648 to ptr
  %650 = ptrtoint ptr %649 to i64
  %651 = and i64 %650, 2233785415175766016
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %653, label %656
653:
  %654 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %654, ptr %a.21
  %655 = load ptr addrspace(1), ptr %b
  store ptr addrspace(1) %655, ptr %b.19
  store ptr addrspace(1) null, ptr %74
  br label %664
656:
  %657 = load ptr addrspace(1), ptr %b
  %658 = call double @_bal_tagged_to_float(ptr addrspace(1) %657), !dbg !88
  store double %658, ptr %b.20
  %659 = load double, ptr %a.22
  %660 = load double, ptr %b.20
  %661 = fadd double %659, %660
  store double %661, ptr %73
  %662 = load double, ptr %73
  %663 = call ptr addrspace(1) @_bal_float_to_tagged(double %662), !dbg !89
  store ptr addrspace(1) %663, ptr %74
  br label %664
664:
  %665 = load ptr addrspace(1), ptr %74
  %666 = addrspacecast ptr addrspace(1) %665 to ptr
  %667 = ptrtoint ptr %666 to i64
  %668 = and i64 %667, 2233785415175766016
  %669 = icmp eq i64 %668, 0
  br i1 %669, label %678, label %670
670:
  %671 = load ptr addrspace(1), ptr %74
  %672 = call double @_bal_tagged_to_float(ptr addrspace(1) %671), !dbg !90
  store double %672, ptr %76
  %673 = load ptr addrspace(1), ptr %c
  %674 = addrspacecast ptr addrspace(1) %673 to ptr
  %675 = ptrtoint ptr %674 to i64
  %676 = and i64 %675, 2233785415175766016
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %681
678:
  %679 = load ptr addrspace(1), ptr %74
  store ptr addrspace(1) %679, ptr %75
  %680 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %680, ptr %c.13
  store ptr addrspace(1) null, ptr %78
  br label %689
681:
  %682 = load ptr addrspace(1), ptr %c
  %683 = call double @_bal_tagged_to_float(ptr addrspace(1) %682), !dbg !91
  store double %683, ptr %c.14
  %684 = load double, ptr %76
  %685 = load double, ptr %c.14
  %686 = fadd double %684, %685
  store double %686, ptr %77
  %687 = load double, ptr %77
  %688 = call ptr addrspace(1) @_bal_float_to_tagged(double %687), !dbg !92
  store ptr addrspace(1) %688, ptr %78
  br label %689
689:
  %690 = load ptr addrspace(1), ptr %78
  %691 = addrspacecast ptr addrspace(1) %690 to ptr
  %692 = ptrtoint ptr %691 to i64
  %693 = and i64 %692, 2233785415175766016
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %703, label %695
695:
  %696 = load ptr addrspace(1), ptr %78
  %697 = call double @_bal_tagged_to_float(ptr addrspace(1) %696), !dbg !93
  store double %697, ptr %80
  %698 = load double, ptr %80
  %699 = load double, ptr %d
  %700 = fadd double %698, %699
  store double %700, ptr %81
  %701 = load double, ptr %81
  %702 = call ptr addrspace(1) @_bal_float_to_tagged(double %701), !dbg !94
  store ptr addrspace(1) %702, ptr %82
  br label %705
703:
  %704 = load ptr addrspace(1), ptr %78
  store ptr addrspace(1) %704, ptr %79
  store ptr addrspace(1) null, ptr %82
  br label %705
705:
  %706 = load ptr addrspace(1), ptr %82
  %707 = addrspacecast ptr addrspace(1) %706 to ptr
  %708 = ptrtoint ptr %707 to i64
  %709 = and i64 %708, 2233785415175766016
  %710 = icmp eq i64 %709, 0
  br i1 %710, label %719, label %711
711:
  %712 = load ptr addrspace(1), ptr %82
  %713 = call double @_bal_tagged_to_float(ptr addrspace(1) %712), !dbg !95
  store double %713, ptr %84
  %714 = load ptr addrspace(1), ptr %e
  %715 = addrspacecast ptr addrspace(1) %714 to ptr
  %716 = ptrtoint ptr %715 to i64
  %717 = and i64 %716, 2233785415175766016
  %718 = icmp eq i64 %717, 0
  br i1 %718, label %719, label %722
719:
  %720 = load ptr addrspace(1), ptr %82
  store ptr addrspace(1) %720, ptr %83
  %721 = load ptr addrspace(1), ptr %e
  store ptr addrspace(1) %721, ptr %e.3
  store ptr addrspace(1) null, ptr %86
  br label %730
722:
  %723 = load ptr addrspace(1), ptr %e
  %724 = call double @_bal_tagged_to_float(ptr addrspace(1) %723), !dbg !96
  store double %724, ptr %e.4
  %725 = load double, ptr %84
  %726 = load double, ptr %e.4
  %727 = fadd double %725, %726
  store double %727, ptr %85
  %728 = load double, ptr %85
  %729 = call ptr addrspace(1) @_bal_float_to_tagged(double %728), !dbg !97
  store ptr addrspace(1) %729, ptr %86
  br label %730
730:
  %731 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !98
  %732 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %731, i64 0, i32 3
  %733 = load ptr addrspace(1), ptr addrspace(1) %732, align 8
  %734 = bitcast ptr addrspace(1) %733 to ptr addrspace(1)
  %735 = load ptr addrspace(1), ptr %86
  %736 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %734, i64 0, i64 0
  store ptr addrspace(1) %735, ptr addrspace(1) %736
  %737 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %731, i64 0, i32 1
  store i64 1, ptr addrspace(1) %737
  %738 = bitcast ptr addrspace(1) %731 to ptr addrspace(1)
  %739 = getelementptr i8, ptr addrspace(1) %738, i64 864691128455135236
  store ptr addrspace(1) %739, ptr %87
  %740 = load ptr addrspace(1), ptr %87
  call void @_Bb02ioprintln(ptr addrspace(1) %740), !dbg !99
  store ptr addrspace(1) null, ptr %88
  %741 = load ptr addrspace(1), ptr %a
  %742 = addrspacecast ptr addrspace(1) %741 to ptr
  %743 = ptrtoint ptr %742 to i64
  %744 = and i64 %743, 2233785415175766016
  %745 = icmp eq i64 %744, 0
  br i1 %745, label %753, label %746
746:
  %747 = load ptr addrspace(1), ptr %a
  %748 = call double @_bal_tagged_to_float(ptr addrspace(1) %747), !dbg !100
  store double %748, ptr %a.24
  %749 = load double, ptr %a.24
  %750 = fneg double %749
  store double %750, ptr %89
  %751 = load double, ptr %89
  %752 = call ptr addrspace(1) @_bal_float_to_tagged(double %751), !dbg !101
  store ptr addrspace(1) %752, ptr %90
  br label %755
753:
  %754 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %754, ptr %a.23
  store ptr addrspace(1) null, ptr %90
  br label %755
755:
  %756 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !102
  %757 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %756, i64 0, i32 3
  %758 = load ptr addrspace(1), ptr addrspace(1) %757, align 8
  %759 = bitcast ptr addrspace(1) %758 to ptr addrspace(1)
  %760 = load ptr addrspace(1), ptr %90
  %761 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %759, i64 0, i64 0
  store ptr addrspace(1) %760, ptr addrspace(1) %761
  %762 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %756, i64 0, i32 1
  store i64 1, ptr addrspace(1) %762
  %763 = bitcast ptr addrspace(1) %756 to ptr addrspace(1)
  %764 = getelementptr i8, ptr addrspace(1) %763, i64 864691128455135236
  store ptr addrspace(1) %764, ptr %91
  %765 = load ptr addrspace(1), ptr %91
  call void @_Bb02ioprintln(ptr addrspace(1) %765), !dbg !103
  store ptr addrspace(1) null, ptr %92
  ret void
766:
  %767 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %767), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 13, scope: !5)
!10 = !DILocation(line: 4, column: 13, scope: !5)
!11 = !DILocation(line: 5, column: 13, scope: !5)
!12 = !DILocation(line: 7, column: 18, scope: !5)
!13 = !DILocation(line: 7, column: 18, scope: !5)
!14 = !DILocation(line: 7, column: 18, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 17, scope: !5)
!18 = !DILocation(line: 9, column: 17, scope: !5)
!19 = !DILocation(line: 9, column: 17, scope: !5)
!20 = !DILocation(line: 9, column: 15, scope: !5)
!21 = !DILocation(line: 9, column: 4, scope: !5)
!22 = !DILocation(line: 11, column: 18, scope: !5)
!23 = !DILocation(line: 11, column: 18, scope: !5)
!24 = !DILocation(line: 11, column: 18, scope: !5)
!25 = !DILocation(line: 11, column: 22, scope: !5)
!26 = !DILocation(line: 11, column: 22, scope: !5)
!27 = !DILocation(line: 11, column: 22, scope: !5)
!28 = !DILocation(line: 12, column: 15, scope: !5)
!29 = !DILocation(line: 12, column: 4, scope: !5)
!30 = !DILocation(line: 13, column: 17, scope: !5)
!31 = !DILocation(line: 13, column: 17, scope: !5)
!32 = !DILocation(line: 13, column: 17, scope: !5)
!33 = !DILocation(line: 13, column: 21, scope: !5)
!34 = !DILocation(line: 13, column: 21, scope: !5)
!35 = !DILocation(line: 13, column: 21, scope: !5)
!36 = !DILocation(line: 13, column: 15, scope: !5)
!37 = !DILocation(line: 13, column: 4, scope: !5)
!38 = !DILocation(line: 15, column: 18, scope: !5)
!39 = !DILocation(line: 15, column: 18, scope: !5)
!40 = !DILocation(line: 15, column: 18, scope: !5)
!41 = !DILocation(line: 16, column: 15, scope: !5)
!42 = !DILocation(line: 16, column: 4, scope: !5)
!43 = !DILocation(line: 18, column: 18, scope: !5)
!44 = !DILocation(line: 18, column: 18, scope: !5)
!45 = !DILocation(line: 18, column: 18, scope: !5)
!46 = !DILocation(line: 18, column: 22, scope: !5)
!47 = !DILocation(line: 18, column: 22, scope: !5)
!48 = !DILocation(line: 18, column: 22, scope: !5)
!49 = !DILocation(line: 19, column: 15, scope: !5)
!50 = !DILocation(line: 19, column: 4, scope: !5)
!51 = !DILocation(line: 21, column: 17, scope: !5)
!52 = !DILocation(line: 21, column: 17, scope: !5)
!53 = !DILocation(line: 21, column: 17, scope: !5)
!54 = !DILocation(line: 21, column: 15, scope: !5)
!55 = !DILocation(line: 21, column: 4, scope: !5)
!56 = !DILocation(line: 23, column: 18, scope: !5)
!57 = !DILocation(line: 23, column: 18, scope: !5)
!58 = !DILocation(line: 24, column: 15, scope: !5)
!59 = !DILocation(line: 24, column: 4, scope: !5)
!60 = !DILocation(line: 26, column: 16, scope: !5)
!61 = !DILocation(line: 26, column: 16, scope: !5)
!62 = !DILocation(line: 27, column: 15, scope: !5)
!63 = !DILocation(line: 27, column: 4, scope: !5)
!64 = !DILocation(line: 28, column: 15, scope: !5)
!65 = !DILocation(line: 28, column: 15, scope: !5)
!66 = !DILocation(line: 28, column: 15, scope: !5)
!67 = !DILocation(line: 28, column: 4, scope: !5)
!68 = !DILocation(line: 31, column: 18, scope: !5)
!69 = !DILocation(line: 31, column: 18, scope: !5)
!70 = !DILocation(line: 32, column: 15, scope: !5)
!71 = !DILocation(line: 32, column: 4, scope: !5)
!72 = !DILocation(line: 33, column: 17, scope: !5)
!73 = !DILocation(line: 33, column: 17, scope: !5)
!74 = !DILocation(line: 33, column: 17, scope: !5)
!75 = !DILocation(line: 33, column: 21, scope: !5)
!76 = !DILocation(line: 33, column: 21, scope: !5)
!77 = !DILocation(line: 33, column: 21, scope: !5)
!78 = !DILocation(line: 33, column: 25, scope: !5)
!79 = !DILocation(line: 33, column: 25, scope: !5)
!80 = !DILocation(line: 33, column: 15, scope: !5)
!81 = !DILocation(line: 33, column: 4, scope: !5)
!82 = !DILocation(line: 36, column: 18, scope: !5)
!83 = !DILocation(line: 36, column: 18, scope: !5)
!84 = !DILocation(line: 36, column: 18, scope: !5)
!85 = !DILocation(line: 37, column: 15, scope: !5)
!86 = !DILocation(line: 37, column: 4, scope: !5)
!87 = !DILocation(line: 38, column: 17, scope: !5)
!88 = !DILocation(line: 38, column: 17, scope: !5)
!89 = !DILocation(line: 38, column: 17, scope: !5)
!90 = !DILocation(line: 38, column: 21, scope: !5)
!91 = !DILocation(line: 38, column: 21, scope: !5)
!92 = !DILocation(line: 38, column: 21, scope: !5)
!93 = !DILocation(line: 38, column: 25, scope: !5)
!94 = !DILocation(line: 38, column: 25, scope: !5)
!95 = !DILocation(line: 38, column: 29, scope: !5)
!96 = !DILocation(line: 38, column: 29, scope: !5)
!97 = !DILocation(line: 38, column: 29, scope: !5)
!98 = !DILocation(line: 38, column: 15, scope: !5)
!99 = !DILocation(line: 38, column: 4, scope: !5)
!100 = !DILocation(line: 40, column: 15, scope: !5)
!101 = !DILocation(line: 40, column: 15, scope: !5)
!102 = !DILocation(line: 40, column: 15, scope: !5)
!103 = !DILocation(line: 40, column: 4, scope: !5)
