@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_boolean_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %d = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %e = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i1
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i1
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca i1
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca i1
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i1
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca i1
  %37 = alloca ptr addrspace(1)
  %38 = alloca ptr addrspace(1)
  %39 = alloca i1
  %40 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %42 = alloca i1
  %43 = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %45 = alloca i1
  %46 = alloca ptr addrspace(1)
  %47 = alloca ptr addrspace(1)
  %48 = alloca i1
  %49 = alloca ptr addrspace(1)
  %50 = alloca ptr addrspace(1)
  %51 = alloca i1
  %52 = alloca ptr addrspace(1)
  %53 = alloca ptr addrspace(1)
  %54 = alloca i1
  %55 = alloca ptr addrspace(1)
  %56 = alloca ptr addrspace(1)
  %57 = alloca i1
  %58 = alloca ptr addrspace(1)
  %59 = alloca ptr addrspace(1)
  %60 = alloca i1
  %61 = alloca ptr addrspace(1)
  %62 = alloca ptr addrspace(1)
  %63 = alloca i1
  %64 = alloca ptr addrspace(1)
  %65 = alloca ptr addrspace(1)
  %66 = alloca i1
  %67 = alloca ptr addrspace(1)
  %68 = alloca ptr addrspace(1)
  %69 = alloca i1
  %70 = alloca ptr addrspace(1)
  %71 = alloca ptr addrspace(1)
  %72 = alloca i1
  %73 = alloca ptr addrspace(1)
  %74 = alloca ptr addrspace(1)
  %75 = alloca i1
  %76 = alloca ptr addrspace(1)
  %77 = alloca ptr addrspace(1)
  %78 = alloca i1
  %79 = alloca ptr addrspace(1)
  %80 = alloca ptr addrspace(1)
  %81 = alloca i1
  %82 = alloca ptr addrspace(1)
  %83 = alloca ptr addrspace(1)
  %84 = alloca i1
  %85 = alloca ptr addrspace(1)
  %86 = alloca ptr addrspace(1)
  %87 = alloca i1
  %88 = alloca ptr addrspace(1)
  %89 = alloca ptr addrspace(1)
  %90 = alloca i1
  %91 = alloca ptr addrspace(1)
  %92 = alloca ptr addrspace(1)
  %93 = alloca i1
  %94 = alloca ptr addrspace(1)
  %95 = alloca ptr addrspace(1)
  %96 = alloca i1
  %97 = alloca ptr addrspace(1)
  %98 = alloca ptr addrspace(1)
  %99 = alloca i1
  %100 = alloca ptr addrspace(1)
  %101 = alloca ptr addrspace(1)
  %102 = alloca i1
  %103 = alloca ptr addrspace(1)
  %104 = alloca ptr addrspace(1)
  %105 = alloca i1
  %106 = alloca ptr addrspace(1)
  %107 = alloca ptr addrspace(1)
  %108 = alloca i1
  %109 = alloca ptr addrspace(1)
  %110 = alloca ptr addrspace(1)
  %111 = alloca i1
  %112 = alloca ptr addrspace(1)
  %113 = alloca ptr addrspace(1)
  %114 = alloca i8
  %115 = load ptr, ptr @_bal_stack_guard
  %116 = icmp ult ptr %114, %115
  br i1 %116, label %806, label %117
117:
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = zext i1 0 to i64
  %123 = or i64 %122, 72057594037927936
  %124 = getelementptr i8, ptr addrspace(1) null, i64 %123
  %125 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %124, ptr addrspace(1) %125
  %126 = zext i1 1 to i64
  %127 = or i64 %126, 72057594037927936
  %128 = getelementptr i8, ptr addrspace(1) null, i64 %127
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 1
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 2, ptr addrspace(1) %130
  %131 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 864691128455135236
  store ptr addrspace(1) %132, ptr %1
  %133 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %133, ptr %a
  %134 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !10
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %134, i64 0, i32 3
  %136 = load ptr addrspace(1), ptr addrspace(1) %135, align 8
  %137 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %138 = zext i1 1 to i64
  %139 = or i64 %138, 72057594037927936
  %140 = getelementptr i8, ptr addrspace(1) null, i64 %139
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %137, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = zext i1 0 to i64
  %143 = or i64 %142, 72057594037927936
  %144 = getelementptr i8, ptr addrspace(1) null, i64 %143
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %137, i64 0, i64 1
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %134, i64 0, i32 1
  store i64 2, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %134 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %2
  %149 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %149, ptr %b
  %150 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !11
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 3
  %152 = load ptr addrspace(1), ptr addrspace(1) %151, align 8
  %153 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %154 = zext i1 0 to i64
  %155 = or i64 %154, 72057594037927936
  %156 = getelementptr i8, ptr addrspace(1) null, i64 %155
  %157 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 0
  store ptr addrspace(1) %156, ptr addrspace(1) %157
  %158 = zext i1 1 to i64
  %159 = or i64 %158, 72057594037927936
  %160 = getelementptr i8, ptr addrspace(1) null, i64 %159
  %161 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 1
  store ptr addrspace(1) %160, ptr addrspace(1) %161
  %162 = zext i1 1 to i64
  %163 = or i64 %162, 72057594037927936
  %164 = getelementptr i8, ptr addrspace(1) null, i64 %163
  %165 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 2
  store ptr addrspace(1) %164, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 1
  store i64 3, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %150 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %3
  %169 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %169, ptr %c
  %170 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !12
  %171 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %170, i64 0, i32 3
  %172 = load ptr addrspace(1), ptr addrspace(1) %171, align 8
  %173 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %174 = zext i1 0 to i64
  %175 = or i64 %174, 72057594037927936
  %176 = getelementptr i8, ptr addrspace(1) null, i64 %175
  %177 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %173, i64 0, i64 0
  store ptr addrspace(1) %176, ptr addrspace(1) %177
  %178 = zext i1 1 to i64
  %179 = or i64 %178, 72057594037927936
  %180 = getelementptr i8, ptr addrspace(1) null, i64 %179
  %181 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %173, i64 0, i64 1
  store ptr addrspace(1) %180, ptr addrspace(1) %181
  %182 = zext i1 0 to i64
  %183 = or i64 %182, 72057594037927936
  %184 = getelementptr i8, ptr addrspace(1) null, i64 %183
  %185 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %173, i64 0, i64 2
  store ptr addrspace(1) %184, ptr addrspace(1) %185
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %170, i64 0, i32 1
  store i64 3, ptr addrspace(1) %186
  %187 = bitcast ptr addrspace(1) %170 to ptr addrspace(1)
  %188 = getelementptr i8, ptr addrspace(1) %187, i64 864691128455135236
  store ptr addrspace(1) %188, ptr %4
  %189 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %189, ptr %d
  %190 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !13
  %191 = bitcast ptr addrspace(1) %190 to ptr addrspace(1)
  %192 = getelementptr i8, ptr addrspace(1) %191, i64 864691128455135236
  store ptr addrspace(1) %192, ptr %5
  %193 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %193, ptr %e
  %194 = load ptr addrspace(1), ptr %a
  %195 = load ptr addrspace(1), ptr %a
  %196 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %194, ptr addrspace(1) %195), !dbg !14
  %197 = icmp eq i64 %196, 0
  store i1 %197, ptr %6
  %198 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %199 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %198, i64 0, i32 3
  %200 = load ptr addrspace(1), ptr addrspace(1) %199, align 8
  %201 = bitcast ptr addrspace(1) %200 to ptr addrspace(1)
  %202 = load i1, ptr %6
  %203 = zext i1 %202 to i64
  %204 = or i64 %203, 72057594037927936
  %205 = getelementptr i8, ptr addrspace(1) null, i64 %204
  %206 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %201, i64 0, i64 0
  store ptr addrspace(1) %205, ptr addrspace(1) %206
  %207 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %198, i64 0, i32 1
  store i64 1, ptr addrspace(1) %207
  %208 = bitcast ptr addrspace(1) %198 to ptr addrspace(1)
  %209 = getelementptr i8, ptr addrspace(1) %208, i64 864691128455135236
  store ptr addrspace(1) %209, ptr %7
  %210 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %210), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %211 = load ptr addrspace(1), ptr %a
  %212 = load ptr addrspace(1), ptr %a
  %213 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %211, ptr addrspace(1) %212), !dbg !17
  %214 = icmp ule i64 %213, 1
  store i1 %214, ptr %9
  %215 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %216 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %215, i64 0, i32 3
  %217 = load ptr addrspace(1), ptr addrspace(1) %216, align 8
  %218 = bitcast ptr addrspace(1) %217 to ptr addrspace(1)
  %219 = load i1, ptr %9
  %220 = zext i1 %219 to i64
  %221 = or i64 %220, 72057594037927936
  %222 = getelementptr i8, ptr addrspace(1) null, i64 %221
  %223 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %218, i64 0, i64 0
  store ptr addrspace(1) %222, ptr addrspace(1) %223
  %224 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %215, i64 0, i32 1
  store i64 1, ptr addrspace(1) %224
  %225 = bitcast ptr addrspace(1) %215 to ptr addrspace(1)
  %226 = getelementptr i8, ptr addrspace(1) %225, i64 864691128455135236
  store ptr addrspace(1) %226, ptr %10
  %227 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %227), !dbg !19
  store ptr addrspace(1) null, ptr %11
  %228 = load ptr addrspace(1), ptr %a
  %229 = load ptr addrspace(1), ptr %a
  %230 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %228, ptr addrspace(1) %229), !dbg !20
  %231 = icmp eq i64 %230, 2
  store i1 %231, ptr %12
  %232 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %233 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %232, i64 0, i32 3
  %234 = load ptr addrspace(1), ptr addrspace(1) %233, align 8
  %235 = bitcast ptr addrspace(1) %234 to ptr addrspace(1)
  %236 = load i1, ptr %12
  %237 = zext i1 %236 to i64
  %238 = or i64 %237, 72057594037927936
  %239 = getelementptr i8, ptr addrspace(1) null, i64 %238
  %240 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %235, i64 0, i64 0
  store ptr addrspace(1) %239, ptr addrspace(1) %240
  %241 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %232, i64 0, i32 1
  store i64 1, ptr addrspace(1) %241
  %242 = bitcast ptr addrspace(1) %232 to ptr addrspace(1)
  %243 = getelementptr i8, ptr addrspace(1) %242, i64 864691128455135236
  store ptr addrspace(1) %243, ptr %13
  %244 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %244), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %245 = load ptr addrspace(1), ptr %a
  %246 = load ptr addrspace(1), ptr %a
  %247 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %245, ptr addrspace(1) %246), !dbg !23
  %248 = icmp sge i64 %247, 1
  store i1 %248, ptr %15
  %249 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !24
  %250 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %249, i64 0, i32 3
  %251 = load ptr addrspace(1), ptr addrspace(1) %250, align 8
  %252 = bitcast ptr addrspace(1) %251 to ptr addrspace(1)
  %253 = load i1, ptr %15
  %254 = zext i1 %253 to i64
  %255 = or i64 %254, 72057594037927936
  %256 = getelementptr i8, ptr addrspace(1) null, i64 %255
  %257 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %252, i64 0, i64 0
  store ptr addrspace(1) %256, ptr addrspace(1) %257
  %258 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %249, i64 0, i32 1
  store i64 1, ptr addrspace(1) %258
  %259 = bitcast ptr addrspace(1) %249 to ptr addrspace(1)
  %260 = getelementptr i8, ptr addrspace(1) %259, i64 864691128455135236
  store ptr addrspace(1) %260, ptr %16
  %261 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %261), !dbg !25
  store ptr addrspace(1) null, ptr %17
  %262 = load ptr addrspace(1), ptr %a
  %263 = load ptr addrspace(1), ptr %b
  %264 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %262, ptr addrspace(1) %263), !dbg !26
  %265 = icmp eq i64 %264, 0
  store i1 %265, ptr %18
  %266 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %267 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %266, i64 0, i32 3
  %268 = load ptr addrspace(1), ptr addrspace(1) %267, align 8
  %269 = bitcast ptr addrspace(1) %268 to ptr addrspace(1)
  %270 = load i1, ptr %18
  %271 = zext i1 %270 to i64
  %272 = or i64 %271, 72057594037927936
  %273 = getelementptr i8, ptr addrspace(1) null, i64 %272
  %274 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %269, i64 0, i64 0
  store ptr addrspace(1) %273, ptr addrspace(1) %274
  %275 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %266, i64 0, i32 1
  store i64 1, ptr addrspace(1) %275
  %276 = bitcast ptr addrspace(1) %266 to ptr addrspace(1)
  %277 = getelementptr i8, ptr addrspace(1) %276, i64 864691128455135236
  store ptr addrspace(1) %277, ptr %19
  %278 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %278), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %279 = load ptr addrspace(1), ptr %a
  %280 = load ptr addrspace(1), ptr %b
  %281 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %279, ptr addrspace(1) %280), !dbg !29
  %282 = icmp ule i64 %281, 1
  store i1 %282, ptr %21
  %283 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !30
  %284 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %283, i64 0, i32 3
  %285 = load ptr addrspace(1), ptr addrspace(1) %284, align 8
  %286 = bitcast ptr addrspace(1) %285 to ptr addrspace(1)
  %287 = load i1, ptr %21
  %288 = zext i1 %287 to i64
  %289 = or i64 %288, 72057594037927936
  %290 = getelementptr i8, ptr addrspace(1) null, i64 %289
  %291 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %286, i64 0, i64 0
  store ptr addrspace(1) %290, ptr addrspace(1) %291
  %292 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %283, i64 0, i32 1
  store i64 1, ptr addrspace(1) %292
  %293 = bitcast ptr addrspace(1) %283 to ptr addrspace(1)
  %294 = getelementptr i8, ptr addrspace(1) %293, i64 864691128455135236
  store ptr addrspace(1) %294, ptr %22
  %295 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %295), !dbg !31
  store ptr addrspace(1) null, ptr %23
  %296 = load ptr addrspace(1), ptr %a
  %297 = load ptr addrspace(1), ptr %b
  %298 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %296, ptr addrspace(1) %297), !dbg !32
  %299 = icmp eq i64 %298, 2
  store i1 %299, ptr %24
  %300 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !33
  %301 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %300, i64 0, i32 3
  %302 = load ptr addrspace(1), ptr addrspace(1) %301, align 8
  %303 = bitcast ptr addrspace(1) %302 to ptr addrspace(1)
  %304 = load i1, ptr %24
  %305 = zext i1 %304 to i64
  %306 = or i64 %305, 72057594037927936
  %307 = getelementptr i8, ptr addrspace(1) null, i64 %306
  %308 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %303, i64 0, i64 0
  store ptr addrspace(1) %307, ptr addrspace(1) %308
  %309 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %300, i64 0, i32 1
  store i64 1, ptr addrspace(1) %309
  %310 = bitcast ptr addrspace(1) %300 to ptr addrspace(1)
  %311 = getelementptr i8, ptr addrspace(1) %310, i64 864691128455135236
  store ptr addrspace(1) %311, ptr %25
  %312 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %312), !dbg !34
  store ptr addrspace(1) null, ptr %26
  %313 = load ptr addrspace(1), ptr %a
  %314 = load ptr addrspace(1), ptr %b
  %315 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %313, ptr addrspace(1) %314), !dbg !35
  %316 = icmp sge i64 %315, 1
  store i1 %316, ptr %27
  %317 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !36
  %318 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %317, i64 0, i32 3
  %319 = load ptr addrspace(1), ptr addrspace(1) %318, align 8
  %320 = bitcast ptr addrspace(1) %319 to ptr addrspace(1)
  %321 = load i1, ptr %27
  %322 = zext i1 %321 to i64
  %323 = or i64 %322, 72057594037927936
  %324 = getelementptr i8, ptr addrspace(1) null, i64 %323
  %325 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %320, i64 0, i64 0
  store ptr addrspace(1) %324, ptr addrspace(1) %325
  %326 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %317, i64 0, i32 1
  store i64 1, ptr addrspace(1) %326
  %327 = bitcast ptr addrspace(1) %317 to ptr addrspace(1)
  %328 = getelementptr i8, ptr addrspace(1) %327, i64 864691128455135236
  store ptr addrspace(1) %328, ptr %28
  %329 = load ptr addrspace(1), ptr %28
  call void @_Bb02ioprintln(ptr addrspace(1) %329), !dbg !37
  store ptr addrspace(1) null, ptr %29
  %330 = load ptr addrspace(1), ptr %b
  %331 = load ptr addrspace(1), ptr %a
  %332 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %330, ptr addrspace(1) %331), !dbg !38
  %333 = icmp eq i64 %332, 0
  store i1 %333, ptr %30
  %334 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !39
  %335 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %334, i64 0, i32 3
  %336 = load ptr addrspace(1), ptr addrspace(1) %335, align 8
  %337 = bitcast ptr addrspace(1) %336 to ptr addrspace(1)
  %338 = load i1, ptr %30
  %339 = zext i1 %338 to i64
  %340 = or i64 %339, 72057594037927936
  %341 = getelementptr i8, ptr addrspace(1) null, i64 %340
  %342 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %337, i64 0, i64 0
  store ptr addrspace(1) %341, ptr addrspace(1) %342
  %343 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %334, i64 0, i32 1
  store i64 1, ptr addrspace(1) %343
  %344 = bitcast ptr addrspace(1) %334 to ptr addrspace(1)
  %345 = getelementptr i8, ptr addrspace(1) %344, i64 864691128455135236
  store ptr addrspace(1) %345, ptr %31
  %346 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %346), !dbg !40
  store ptr addrspace(1) null, ptr %32
  %347 = load ptr addrspace(1), ptr %b
  %348 = load ptr addrspace(1), ptr %a
  %349 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %347, ptr addrspace(1) %348), !dbg !41
  %350 = icmp ule i64 %349, 1
  store i1 %350, ptr %33
  %351 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !42
  %352 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %351, i64 0, i32 3
  %353 = load ptr addrspace(1), ptr addrspace(1) %352, align 8
  %354 = bitcast ptr addrspace(1) %353 to ptr addrspace(1)
  %355 = load i1, ptr %33
  %356 = zext i1 %355 to i64
  %357 = or i64 %356, 72057594037927936
  %358 = getelementptr i8, ptr addrspace(1) null, i64 %357
  %359 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %354, i64 0, i64 0
  store ptr addrspace(1) %358, ptr addrspace(1) %359
  %360 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %351, i64 0, i32 1
  store i64 1, ptr addrspace(1) %360
  %361 = bitcast ptr addrspace(1) %351 to ptr addrspace(1)
  %362 = getelementptr i8, ptr addrspace(1) %361, i64 864691128455135236
  store ptr addrspace(1) %362, ptr %34
  %363 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %363), !dbg !43
  store ptr addrspace(1) null, ptr %35
  %364 = load ptr addrspace(1), ptr %b
  %365 = load ptr addrspace(1), ptr %a
  %366 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %364, ptr addrspace(1) %365), !dbg !44
  %367 = icmp eq i64 %366, 2
  store i1 %367, ptr %36
  %368 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !45
  %369 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %368, i64 0, i32 3
  %370 = load ptr addrspace(1), ptr addrspace(1) %369, align 8
  %371 = bitcast ptr addrspace(1) %370 to ptr addrspace(1)
  %372 = load i1, ptr %36
  %373 = zext i1 %372 to i64
  %374 = or i64 %373, 72057594037927936
  %375 = getelementptr i8, ptr addrspace(1) null, i64 %374
  %376 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %371, i64 0, i64 0
  store ptr addrspace(1) %375, ptr addrspace(1) %376
  %377 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %368, i64 0, i32 1
  store i64 1, ptr addrspace(1) %377
  %378 = bitcast ptr addrspace(1) %368 to ptr addrspace(1)
  %379 = getelementptr i8, ptr addrspace(1) %378, i64 864691128455135236
  store ptr addrspace(1) %379, ptr %37
  %380 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %380), !dbg !46
  store ptr addrspace(1) null, ptr %38
  %381 = load ptr addrspace(1), ptr %b
  %382 = load ptr addrspace(1), ptr %a
  %383 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %381, ptr addrspace(1) %382), !dbg !47
  %384 = icmp sge i64 %383, 1
  store i1 %384, ptr %39
  %385 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !48
  %386 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %385, i64 0, i32 3
  %387 = load ptr addrspace(1), ptr addrspace(1) %386, align 8
  %388 = bitcast ptr addrspace(1) %387 to ptr addrspace(1)
  %389 = load i1, ptr %39
  %390 = zext i1 %389 to i64
  %391 = or i64 %390, 72057594037927936
  %392 = getelementptr i8, ptr addrspace(1) null, i64 %391
  %393 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %388, i64 0, i64 0
  store ptr addrspace(1) %392, ptr addrspace(1) %393
  %394 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %385, i64 0, i32 1
  store i64 1, ptr addrspace(1) %394
  %395 = bitcast ptr addrspace(1) %385 to ptr addrspace(1)
  %396 = getelementptr i8, ptr addrspace(1) %395, i64 864691128455135236
  store ptr addrspace(1) %396, ptr %40
  %397 = load ptr addrspace(1), ptr %40
  call void @_Bb02ioprintln(ptr addrspace(1) %397), !dbg !49
  store ptr addrspace(1) null, ptr %41
  %398 = load ptr addrspace(1), ptr %a
  %399 = load ptr addrspace(1), ptr %c
  %400 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %398, ptr addrspace(1) %399), !dbg !50
  %401 = icmp eq i64 %400, 0
  store i1 %401, ptr %42
  %402 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !51
  %403 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %402, i64 0, i32 3
  %404 = load ptr addrspace(1), ptr addrspace(1) %403, align 8
  %405 = bitcast ptr addrspace(1) %404 to ptr addrspace(1)
  %406 = load i1, ptr %42
  %407 = zext i1 %406 to i64
  %408 = or i64 %407, 72057594037927936
  %409 = getelementptr i8, ptr addrspace(1) null, i64 %408
  %410 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %405, i64 0, i64 0
  store ptr addrspace(1) %409, ptr addrspace(1) %410
  %411 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %402, i64 0, i32 1
  store i64 1, ptr addrspace(1) %411
  %412 = bitcast ptr addrspace(1) %402 to ptr addrspace(1)
  %413 = getelementptr i8, ptr addrspace(1) %412, i64 864691128455135236
  store ptr addrspace(1) %413, ptr %43
  %414 = load ptr addrspace(1), ptr %43
  call void @_Bb02ioprintln(ptr addrspace(1) %414), !dbg !52
  store ptr addrspace(1) null, ptr %44
  %415 = load ptr addrspace(1), ptr %a
  %416 = load ptr addrspace(1), ptr %c
  %417 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %415, ptr addrspace(1) %416), !dbg !53
  %418 = icmp ule i64 %417, 1
  store i1 %418, ptr %45
  %419 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !54
  %420 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %419, i64 0, i32 3
  %421 = load ptr addrspace(1), ptr addrspace(1) %420, align 8
  %422 = bitcast ptr addrspace(1) %421 to ptr addrspace(1)
  %423 = load i1, ptr %45
  %424 = zext i1 %423 to i64
  %425 = or i64 %424, 72057594037927936
  %426 = getelementptr i8, ptr addrspace(1) null, i64 %425
  %427 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %422, i64 0, i64 0
  store ptr addrspace(1) %426, ptr addrspace(1) %427
  %428 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %419, i64 0, i32 1
  store i64 1, ptr addrspace(1) %428
  %429 = bitcast ptr addrspace(1) %419 to ptr addrspace(1)
  %430 = getelementptr i8, ptr addrspace(1) %429, i64 864691128455135236
  store ptr addrspace(1) %430, ptr %46
  %431 = load ptr addrspace(1), ptr %46
  call void @_Bb02ioprintln(ptr addrspace(1) %431), !dbg !55
  store ptr addrspace(1) null, ptr %47
  %432 = load ptr addrspace(1), ptr %a
  %433 = load ptr addrspace(1), ptr %c
  %434 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %432, ptr addrspace(1) %433), !dbg !56
  %435 = icmp eq i64 %434, 2
  store i1 %435, ptr %48
  %436 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !57
  %437 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %436, i64 0, i32 3
  %438 = load ptr addrspace(1), ptr addrspace(1) %437, align 8
  %439 = bitcast ptr addrspace(1) %438 to ptr addrspace(1)
  %440 = load i1, ptr %48
  %441 = zext i1 %440 to i64
  %442 = or i64 %441, 72057594037927936
  %443 = getelementptr i8, ptr addrspace(1) null, i64 %442
  %444 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %439, i64 0, i64 0
  store ptr addrspace(1) %443, ptr addrspace(1) %444
  %445 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %436, i64 0, i32 1
  store i64 1, ptr addrspace(1) %445
  %446 = bitcast ptr addrspace(1) %436 to ptr addrspace(1)
  %447 = getelementptr i8, ptr addrspace(1) %446, i64 864691128455135236
  store ptr addrspace(1) %447, ptr %49
  %448 = load ptr addrspace(1), ptr %49
  call void @_Bb02ioprintln(ptr addrspace(1) %448), !dbg !58
  store ptr addrspace(1) null, ptr %50
  %449 = load ptr addrspace(1), ptr %a
  %450 = load ptr addrspace(1), ptr %c
  %451 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %449, ptr addrspace(1) %450), !dbg !59
  %452 = icmp sge i64 %451, 1
  store i1 %452, ptr %51
  %453 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !60
  %454 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %453, i64 0, i32 3
  %455 = load ptr addrspace(1), ptr addrspace(1) %454, align 8
  %456 = bitcast ptr addrspace(1) %455 to ptr addrspace(1)
  %457 = load i1, ptr %51
  %458 = zext i1 %457 to i64
  %459 = or i64 %458, 72057594037927936
  %460 = getelementptr i8, ptr addrspace(1) null, i64 %459
  %461 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %456, i64 0, i64 0
  store ptr addrspace(1) %460, ptr addrspace(1) %461
  %462 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %453, i64 0, i32 1
  store i64 1, ptr addrspace(1) %462
  %463 = bitcast ptr addrspace(1) %453 to ptr addrspace(1)
  %464 = getelementptr i8, ptr addrspace(1) %463, i64 864691128455135236
  store ptr addrspace(1) %464, ptr %52
  %465 = load ptr addrspace(1), ptr %52
  call void @_Bb02ioprintln(ptr addrspace(1) %465), !dbg !61
  store ptr addrspace(1) null, ptr %53
  %466 = load ptr addrspace(1), ptr %c
  %467 = load ptr addrspace(1), ptr %a
  %468 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %466, ptr addrspace(1) %467), !dbg !62
  %469 = icmp eq i64 %468, 0
  store i1 %469, ptr %54
  %470 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !63
  %471 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %470, i64 0, i32 3
  %472 = load ptr addrspace(1), ptr addrspace(1) %471, align 8
  %473 = bitcast ptr addrspace(1) %472 to ptr addrspace(1)
  %474 = load i1, ptr %54
  %475 = zext i1 %474 to i64
  %476 = or i64 %475, 72057594037927936
  %477 = getelementptr i8, ptr addrspace(1) null, i64 %476
  %478 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %473, i64 0, i64 0
  store ptr addrspace(1) %477, ptr addrspace(1) %478
  %479 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %470, i64 0, i32 1
  store i64 1, ptr addrspace(1) %479
  %480 = bitcast ptr addrspace(1) %470 to ptr addrspace(1)
  %481 = getelementptr i8, ptr addrspace(1) %480, i64 864691128455135236
  store ptr addrspace(1) %481, ptr %55
  %482 = load ptr addrspace(1), ptr %55
  call void @_Bb02ioprintln(ptr addrspace(1) %482), !dbg !64
  store ptr addrspace(1) null, ptr %56
  %483 = load ptr addrspace(1), ptr %c
  %484 = load ptr addrspace(1), ptr %a
  %485 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %483, ptr addrspace(1) %484), !dbg !65
  %486 = icmp ule i64 %485, 1
  store i1 %486, ptr %57
  %487 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !66
  %488 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %487, i64 0, i32 3
  %489 = load ptr addrspace(1), ptr addrspace(1) %488, align 8
  %490 = bitcast ptr addrspace(1) %489 to ptr addrspace(1)
  %491 = load i1, ptr %57
  %492 = zext i1 %491 to i64
  %493 = or i64 %492, 72057594037927936
  %494 = getelementptr i8, ptr addrspace(1) null, i64 %493
  %495 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %490, i64 0, i64 0
  store ptr addrspace(1) %494, ptr addrspace(1) %495
  %496 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %487, i64 0, i32 1
  store i64 1, ptr addrspace(1) %496
  %497 = bitcast ptr addrspace(1) %487 to ptr addrspace(1)
  %498 = getelementptr i8, ptr addrspace(1) %497, i64 864691128455135236
  store ptr addrspace(1) %498, ptr %58
  %499 = load ptr addrspace(1), ptr %58
  call void @_Bb02ioprintln(ptr addrspace(1) %499), !dbg !67
  store ptr addrspace(1) null, ptr %59
  %500 = load ptr addrspace(1), ptr %c
  %501 = load ptr addrspace(1), ptr %a
  %502 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %500, ptr addrspace(1) %501), !dbg !68
  %503 = icmp eq i64 %502, 2
  store i1 %503, ptr %60
  %504 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !69
  %505 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %504, i64 0, i32 3
  %506 = load ptr addrspace(1), ptr addrspace(1) %505, align 8
  %507 = bitcast ptr addrspace(1) %506 to ptr addrspace(1)
  %508 = load i1, ptr %60
  %509 = zext i1 %508 to i64
  %510 = or i64 %509, 72057594037927936
  %511 = getelementptr i8, ptr addrspace(1) null, i64 %510
  %512 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %507, i64 0, i64 0
  store ptr addrspace(1) %511, ptr addrspace(1) %512
  %513 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %504, i64 0, i32 1
  store i64 1, ptr addrspace(1) %513
  %514 = bitcast ptr addrspace(1) %504 to ptr addrspace(1)
  %515 = getelementptr i8, ptr addrspace(1) %514, i64 864691128455135236
  store ptr addrspace(1) %515, ptr %61
  %516 = load ptr addrspace(1), ptr %61
  call void @_Bb02ioprintln(ptr addrspace(1) %516), !dbg !70
  store ptr addrspace(1) null, ptr %62
  %517 = load ptr addrspace(1), ptr %c
  %518 = load ptr addrspace(1), ptr %a
  %519 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %517, ptr addrspace(1) %518), !dbg !71
  %520 = icmp sge i64 %519, 1
  store i1 %520, ptr %63
  %521 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !72
  %522 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %521, i64 0, i32 3
  %523 = load ptr addrspace(1), ptr addrspace(1) %522, align 8
  %524 = bitcast ptr addrspace(1) %523 to ptr addrspace(1)
  %525 = load i1, ptr %63
  %526 = zext i1 %525 to i64
  %527 = or i64 %526, 72057594037927936
  %528 = getelementptr i8, ptr addrspace(1) null, i64 %527
  %529 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %524, i64 0, i64 0
  store ptr addrspace(1) %528, ptr addrspace(1) %529
  %530 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %521, i64 0, i32 1
  store i64 1, ptr addrspace(1) %530
  %531 = bitcast ptr addrspace(1) %521 to ptr addrspace(1)
  %532 = getelementptr i8, ptr addrspace(1) %531, i64 864691128455135236
  store ptr addrspace(1) %532, ptr %64
  %533 = load ptr addrspace(1), ptr %64
  call void @_Bb02ioprintln(ptr addrspace(1) %533), !dbg !73
  store ptr addrspace(1) null, ptr %65
  %534 = load ptr addrspace(1), ptr %a
  %535 = load ptr addrspace(1), ptr %d
  %536 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %534, ptr addrspace(1) %535), !dbg !74
  %537 = icmp eq i64 %536, 0
  store i1 %537, ptr %66
  %538 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !75
  %539 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %538, i64 0, i32 3
  %540 = load ptr addrspace(1), ptr addrspace(1) %539, align 8
  %541 = bitcast ptr addrspace(1) %540 to ptr addrspace(1)
  %542 = load i1, ptr %66
  %543 = zext i1 %542 to i64
  %544 = or i64 %543, 72057594037927936
  %545 = getelementptr i8, ptr addrspace(1) null, i64 %544
  %546 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %541, i64 0, i64 0
  store ptr addrspace(1) %545, ptr addrspace(1) %546
  %547 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %538, i64 0, i32 1
  store i64 1, ptr addrspace(1) %547
  %548 = bitcast ptr addrspace(1) %538 to ptr addrspace(1)
  %549 = getelementptr i8, ptr addrspace(1) %548, i64 864691128455135236
  store ptr addrspace(1) %549, ptr %67
  %550 = load ptr addrspace(1), ptr %67
  call void @_Bb02ioprintln(ptr addrspace(1) %550), !dbg !76
  store ptr addrspace(1) null, ptr %68
  %551 = load ptr addrspace(1), ptr %a
  %552 = load ptr addrspace(1), ptr %d
  %553 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %551, ptr addrspace(1) %552), !dbg !77
  %554 = icmp ule i64 %553, 1
  store i1 %554, ptr %69
  %555 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !78
  %556 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %555, i64 0, i32 3
  %557 = load ptr addrspace(1), ptr addrspace(1) %556, align 8
  %558 = bitcast ptr addrspace(1) %557 to ptr addrspace(1)
  %559 = load i1, ptr %69
  %560 = zext i1 %559 to i64
  %561 = or i64 %560, 72057594037927936
  %562 = getelementptr i8, ptr addrspace(1) null, i64 %561
  %563 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %558, i64 0, i64 0
  store ptr addrspace(1) %562, ptr addrspace(1) %563
  %564 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %555, i64 0, i32 1
  store i64 1, ptr addrspace(1) %564
  %565 = bitcast ptr addrspace(1) %555 to ptr addrspace(1)
  %566 = getelementptr i8, ptr addrspace(1) %565, i64 864691128455135236
  store ptr addrspace(1) %566, ptr %70
  %567 = load ptr addrspace(1), ptr %70
  call void @_Bb02ioprintln(ptr addrspace(1) %567), !dbg !79
  store ptr addrspace(1) null, ptr %71
  %568 = load ptr addrspace(1), ptr %a
  %569 = load ptr addrspace(1), ptr %d
  %570 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %568, ptr addrspace(1) %569), !dbg !80
  %571 = icmp eq i64 %570, 2
  store i1 %571, ptr %72
  %572 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !81
  %573 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %572, i64 0, i32 3
  %574 = load ptr addrspace(1), ptr addrspace(1) %573, align 8
  %575 = bitcast ptr addrspace(1) %574 to ptr addrspace(1)
  %576 = load i1, ptr %72
  %577 = zext i1 %576 to i64
  %578 = or i64 %577, 72057594037927936
  %579 = getelementptr i8, ptr addrspace(1) null, i64 %578
  %580 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %575, i64 0, i64 0
  store ptr addrspace(1) %579, ptr addrspace(1) %580
  %581 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %572, i64 0, i32 1
  store i64 1, ptr addrspace(1) %581
  %582 = bitcast ptr addrspace(1) %572 to ptr addrspace(1)
  %583 = getelementptr i8, ptr addrspace(1) %582, i64 864691128455135236
  store ptr addrspace(1) %583, ptr %73
  %584 = load ptr addrspace(1), ptr %73
  call void @_Bb02ioprintln(ptr addrspace(1) %584), !dbg !82
  store ptr addrspace(1) null, ptr %74
  %585 = load ptr addrspace(1), ptr %a
  %586 = load ptr addrspace(1), ptr %d
  %587 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %585, ptr addrspace(1) %586), !dbg !83
  %588 = icmp sge i64 %587, 1
  store i1 %588, ptr %75
  %589 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !84
  %590 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %589, i64 0, i32 3
  %591 = load ptr addrspace(1), ptr addrspace(1) %590, align 8
  %592 = bitcast ptr addrspace(1) %591 to ptr addrspace(1)
  %593 = load i1, ptr %75
  %594 = zext i1 %593 to i64
  %595 = or i64 %594, 72057594037927936
  %596 = getelementptr i8, ptr addrspace(1) null, i64 %595
  %597 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %592, i64 0, i64 0
  store ptr addrspace(1) %596, ptr addrspace(1) %597
  %598 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %589, i64 0, i32 1
  store i64 1, ptr addrspace(1) %598
  %599 = bitcast ptr addrspace(1) %589 to ptr addrspace(1)
  %600 = getelementptr i8, ptr addrspace(1) %599, i64 864691128455135236
  store ptr addrspace(1) %600, ptr %76
  %601 = load ptr addrspace(1), ptr %76
  call void @_Bb02ioprintln(ptr addrspace(1) %601), !dbg !85
  store ptr addrspace(1) null, ptr %77
  %602 = load ptr addrspace(1), ptr %d
  %603 = load ptr addrspace(1), ptr %a
  %604 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %602, ptr addrspace(1) %603), !dbg !86
  %605 = icmp eq i64 %604, 0
  store i1 %605, ptr %78
  %606 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !87
  %607 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %606, i64 0, i32 3
  %608 = load ptr addrspace(1), ptr addrspace(1) %607, align 8
  %609 = bitcast ptr addrspace(1) %608 to ptr addrspace(1)
  %610 = load i1, ptr %78
  %611 = zext i1 %610 to i64
  %612 = or i64 %611, 72057594037927936
  %613 = getelementptr i8, ptr addrspace(1) null, i64 %612
  %614 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %609, i64 0, i64 0
  store ptr addrspace(1) %613, ptr addrspace(1) %614
  %615 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %606, i64 0, i32 1
  store i64 1, ptr addrspace(1) %615
  %616 = bitcast ptr addrspace(1) %606 to ptr addrspace(1)
  %617 = getelementptr i8, ptr addrspace(1) %616, i64 864691128455135236
  store ptr addrspace(1) %617, ptr %79
  %618 = load ptr addrspace(1), ptr %79
  call void @_Bb02ioprintln(ptr addrspace(1) %618), !dbg !88
  store ptr addrspace(1) null, ptr %80
  %619 = load ptr addrspace(1), ptr %d
  %620 = load ptr addrspace(1), ptr %a
  %621 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %619, ptr addrspace(1) %620), !dbg !89
  %622 = icmp ule i64 %621, 1
  store i1 %622, ptr %81
  %623 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !90
  %624 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %623, i64 0, i32 3
  %625 = load ptr addrspace(1), ptr addrspace(1) %624, align 8
  %626 = bitcast ptr addrspace(1) %625 to ptr addrspace(1)
  %627 = load i1, ptr %81
  %628 = zext i1 %627 to i64
  %629 = or i64 %628, 72057594037927936
  %630 = getelementptr i8, ptr addrspace(1) null, i64 %629
  %631 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %626, i64 0, i64 0
  store ptr addrspace(1) %630, ptr addrspace(1) %631
  %632 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %623, i64 0, i32 1
  store i64 1, ptr addrspace(1) %632
  %633 = bitcast ptr addrspace(1) %623 to ptr addrspace(1)
  %634 = getelementptr i8, ptr addrspace(1) %633, i64 864691128455135236
  store ptr addrspace(1) %634, ptr %82
  %635 = load ptr addrspace(1), ptr %82
  call void @_Bb02ioprintln(ptr addrspace(1) %635), !dbg !91
  store ptr addrspace(1) null, ptr %83
  %636 = load ptr addrspace(1), ptr %d
  %637 = load ptr addrspace(1), ptr %a
  %638 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %636, ptr addrspace(1) %637), !dbg !92
  %639 = icmp eq i64 %638, 2
  store i1 %639, ptr %84
  %640 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !93
  %641 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %640, i64 0, i32 3
  %642 = load ptr addrspace(1), ptr addrspace(1) %641, align 8
  %643 = bitcast ptr addrspace(1) %642 to ptr addrspace(1)
  %644 = load i1, ptr %84
  %645 = zext i1 %644 to i64
  %646 = or i64 %645, 72057594037927936
  %647 = getelementptr i8, ptr addrspace(1) null, i64 %646
  %648 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %643, i64 0, i64 0
  store ptr addrspace(1) %647, ptr addrspace(1) %648
  %649 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %640, i64 0, i32 1
  store i64 1, ptr addrspace(1) %649
  %650 = bitcast ptr addrspace(1) %640 to ptr addrspace(1)
  %651 = getelementptr i8, ptr addrspace(1) %650, i64 864691128455135236
  store ptr addrspace(1) %651, ptr %85
  %652 = load ptr addrspace(1), ptr %85
  call void @_Bb02ioprintln(ptr addrspace(1) %652), !dbg !94
  store ptr addrspace(1) null, ptr %86
  %653 = load ptr addrspace(1), ptr %d
  %654 = load ptr addrspace(1), ptr %a
  %655 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %653, ptr addrspace(1) %654), !dbg !95
  %656 = icmp sge i64 %655, 1
  store i1 %656, ptr %87
  %657 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !96
  %658 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %657, i64 0, i32 3
  %659 = load ptr addrspace(1), ptr addrspace(1) %658, align 8
  %660 = bitcast ptr addrspace(1) %659 to ptr addrspace(1)
  %661 = load i1, ptr %87
  %662 = zext i1 %661 to i64
  %663 = or i64 %662, 72057594037927936
  %664 = getelementptr i8, ptr addrspace(1) null, i64 %663
  %665 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %660, i64 0, i64 0
  store ptr addrspace(1) %664, ptr addrspace(1) %665
  %666 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %657, i64 0, i32 1
  store i64 1, ptr addrspace(1) %666
  %667 = bitcast ptr addrspace(1) %657 to ptr addrspace(1)
  %668 = getelementptr i8, ptr addrspace(1) %667, i64 864691128455135236
  store ptr addrspace(1) %668, ptr %88
  %669 = load ptr addrspace(1), ptr %88
  call void @_Bb02ioprintln(ptr addrspace(1) %669), !dbg !97
  store ptr addrspace(1) null, ptr %89
  %670 = load ptr addrspace(1), ptr %a
  %671 = load ptr addrspace(1), ptr %e
  %672 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %670, ptr addrspace(1) %671), !dbg !98
  %673 = icmp eq i64 %672, 0
  store i1 %673, ptr %90
  %674 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !99
  %675 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %674, i64 0, i32 3
  %676 = load ptr addrspace(1), ptr addrspace(1) %675, align 8
  %677 = bitcast ptr addrspace(1) %676 to ptr addrspace(1)
  %678 = load i1, ptr %90
  %679 = zext i1 %678 to i64
  %680 = or i64 %679, 72057594037927936
  %681 = getelementptr i8, ptr addrspace(1) null, i64 %680
  %682 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %677, i64 0, i64 0
  store ptr addrspace(1) %681, ptr addrspace(1) %682
  %683 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %674, i64 0, i32 1
  store i64 1, ptr addrspace(1) %683
  %684 = bitcast ptr addrspace(1) %674 to ptr addrspace(1)
  %685 = getelementptr i8, ptr addrspace(1) %684, i64 864691128455135236
  store ptr addrspace(1) %685, ptr %91
  %686 = load ptr addrspace(1), ptr %91
  call void @_Bb02ioprintln(ptr addrspace(1) %686), !dbg !100
  store ptr addrspace(1) null, ptr %92
  %687 = load ptr addrspace(1), ptr %a
  %688 = load ptr addrspace(1), ptr %e
  %689 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %687, ptr addrspace(1) %688), !dbg !101
  %690 = icmp ule i64 %689, 1
  store i1 %690, ptr %93
  %691 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !102
  %692 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %691, i64 0, i32 3
  %693 = load ptr addrspace(1), ptr addrspace(1) %692, align 8
  %694 = bitcast ptr addrspace(1) %693 to ptr addrspace(1)
  %695 = load i1, ptr %93
  %696 = zext i1 %695 to i64
  %697 = or i64 %696, 72057594037927936
  %698 = getelementptr i8, ptr addrspace(1) null, i64 %697
  %699 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %694, i64 0, i64 0
  store ptr addrspace(1) %698, ptr addrspace(1) %699
  %700 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %691, i64 0, i32 1
  store i64 1, ptr addrspace(1) %700
  %701 = bitcast ptr addrspace(1) %691 to ptr addrspace(1)
  %702 = getelementptr i8, ptr addrspace(1) %701, i64 864691128455135236
  store ptr addrspace(1) %702, ptr %94
  %703 = load ptr addrspace(1), ptr %94
  call void @_Bb02ioprintln(ptr addrspace(1) %703), !dbg !103
  store ptr addrspace(1) null, ptr %95
  %704 = load ptr addrspace(1), ptr %a
  %705 = load ptr addrspace(1), ptr %e
  %706 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %704, ptr addrspace(1) %705), !dbg !104
  %707 = icmp eq i64 %706, 2
  store i1 %707, ptr %96
  %708 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !105
  %709 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %708, i64 0, i32 3
  %710 = load ptr addrspace(1), ptr addrspace(1) %709, align 8
  %711 = bitcast ptr addrspace(1) %710 to ptr addrspace(1)
  %712 = load i1, ptr %96
  %713 = zext i1 %712 to i64
  %714 = or i64 %713, 72057594037927936
  %715 = getelementptr i8, ptr addrspace(1) null, i64 %714
  %716 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %711, i64 0, i64 0
  store ptr addrspace(1) %715, ptr addrspace(1) %716
  %717 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %708, i64 0, i32 1
  store i64 1, ptr addrspace(1) %717
  %718 = bitcast ptr addrspace(1) %708 to ptr addrspace(1)
  %719 = getelementptr i8, ptr addrspace(1) %718, i64 864691128455135236
  store ptr addrspace(1) %719, ptr %97
  %720 = load ptr addrspace(1), ptr %97
  call void @_Bb02ioprintln(ptr addrspace(1) %720), !dbg !106
  store ptr addrspace(1) null, ptr %98
  %721 = load ptr addrspace(1), ptr %a
  %722 = load ptr addrspace(1), ptr %e
  %723 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %721, ptr addrspace(1) %722), !dbg !107
  %724 = icmp sge i64 %723, 1
  store i1 %724, ptr %99
  %725 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !108
  %726 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %725, i64 0, i32 3
  %727 = load ptr addrspace(1), ptr addrspace(1) %726, align 8
  %728 = bitcast ptr addrspace(1) %727 to ptr addrspace(1)
  %729 = load i1, ptr %99
  %730 = zext i1 %729 to i64
  %731 = or i64 %730, 72057594037927936
  %732 = getelementptr i8, ptr addrspace(1) null, i64 %731
  %733 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %728, i64 0, i64 0
  store ptr addrspace(1) %732, ptr addrspace(1) %733
  %734 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %725, i64 0, i32 1
  store i64 1, ptr addrspace(1) %734
  %735 = bitcast ptr addrspace(1) %725 to ptr addrspace(1)
  %736 = getelementptr i8, ptr addrspace(1) %735, i64 864691128455135236
  store ptr addrspace(1) %736, ptr %100
  %737 = load ptr addrspace(1), ptr %100
  call void @_Bb02ioprintln(ptr addrspace(1) %737), !dbg !109
  store ptr addrspace(1) null, ptr %101
  %738 = load ptr addrspace(1), ptr %e
  %739 = load ptr addrspace(1), ptr %a
  %740 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %738, ptr addrspace(1) %739), !dbg !110
  %741 = icmp eq i64 %740, 0
  store i1 %741, ptr %102
  %742 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !111
  %743 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %742, i64 0, i32 3
  %744 = load ptr addrspace(1), ptr addrspace(1) %743, align 8
  %745 = bitcast ptr addrspace(1) %744 to ptr addrspace(1)
  %746 = load i1, ptr %102
  %747 = zext i1 %746 to i64
  %748 = or i64 %747, 72057594037927936
  %749 = getelementptr i8, ptr addrspace(1) null, i64 %748
  %750 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %745, i64 0, i64 0
  store ptr addrspace(1) %749, ptr addrspace(1) %750
  %751 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %742, i64 0, i32 1
  store i64 1, ptr addrspace(1) %751
  %752 = bitcast ptr addrspace(1) %742 to ptr addrspace(1)
  %753 = getelementptr i8, ptr addrspace(1) %752, i64 864691128455135236
  store ptr addrspace(1) %753, ptr %103
  %754 = load ptr addrspace(1), ptr %103
  call void @_Bb02ioprintln(ptr addrspace(1) %754), !dbg !112
  store ptr addrspace(1) null, ptr %104
  %755 = load ptr addrspace(1), ptr %e
  %756 = load ptr addrspace(1), ptr %a
  %757 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %755, ptr addrspace(1) %756), !dbg !113
  %758 = icmp ule i64 %757, 1
  store i1 %758, ptr %105
  %759 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !114
  %760 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %759, i64 0, i32 3
  %761 = load ptr addrspace(1), ptr addrspace(1) %760, align 8
  %762 = bitcast ptr addrspace(1) %761 to ptr addrspace(1)
  %763 = load i1, ptr %105
  %764 = zext i1 %763 to i64
  %765 = or i64 %764, 72057594037927936
  %766 = getelementptr i8, ptr addrspace(1) null, i64 %765
  %767 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %762, i64 0, i64 0
  store ptr addrspace(1) %766, ptr addrspace(1) %767
  %768 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %759, i64 0, i32 1
  store i64 1, ptr addrspace(1) %768
  %769 = bitcast ptr addrspace(1) %759 to ptr addrspace(1)
  %770 = getelementptr i8, ptr addrspace(1) %769, i64 864691128455135236
  store ptr addrspace(1) %770, ptr %106
  %771 = load ptr addrspace(1), ptr %106
  call void @_Bb02ioprintln(ptr addrspace(1) %771), !dbg !115
  store ptr addrspace(1) null, ptr %107
  %772 = load ptr addrspace(1), ptr %e
  %773 = load ptr addrspace(1), ptr %a
  %774 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %772, ptr addrspace(1) %773), !dbg !116
  %775 = icmp eq i64 %774, 2
  store i1 %775, ptr %108
  %776 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !117
  %777 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %776, i64 0, i32 3
  %778 = load ptr addrspace(1), ptr addrspace(1) %777, align 8
  %779 = bitcast ptr addrspace(1) %778 to ptr addrspace(1)
  %780 = load i1, ptr %108
  %781 = zext i1 %780 to i64
  %782 = or i64 %781, 72057594037927936
  %783 = getelementptr i8, ptr addrspace(1) null, i64 %782
  %784 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %779, i64 0, i64 0
  store ptr addrspace(1) %783, ptr addrspace(1) %784
  %785 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %776, i64 0, i32 1
  store i64 1, ptr addrspace(1) %785
  %786 = bitcast ptr addrspace(1) %776 to ptr addrspace(1)
  %787 = getelementptr i8, ptr addrspace(1) %786, i64 864691128455135236
  store ptr addrspace(1) %787, ptr %109
  %788 = load ptr addrspace(1), ptr %109
  call void @_Bb02ioprintln(ptr addrspace(1) %788), !dbg !118
  store ptr addrspace(1) null, ptr %110
  %789 = load ptr addrspace(1), ptr %e
  %790 = load ptr addrspace(1), ptr %a
  %791 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %789, ptr addrspace(1) %790), !dbg !119
  %792 = icmp sge i64 %791, 1
  store i1 %792, ptr %111
  %793 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !120
  %794 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %793, i64 0, i32 3
  %795 = load ptr addrspace(1), ptr addrspace(1) %794, align 8
  %796 = bitcast ptr addrspace(1) %795 to ptr addrspace(1)
  %797 = load i1, ptr %111
  %798 = zext i1 %797 to i64
  %799 = or i64 %798, 72057594037927936
  %800 = getelementptr i8, ptr addrspace(1) null, i64 %799
  %801 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %796, i64 0, i64 0
  store ptr addrspace(1) %800, ptr addrspace(1) %801
  %802 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %793, i64 0, i32 1
  store i64 1, ptr addrspace(1) %802
  %803 = bitcast ptr addrspace(1) %793 to ptr addrspace(1)
  %804 = getelementptr i8, ptr addrspace(1) %803, i64 864691128455135236
  store ptr addrspace(1) %804, ptr %112
  %805 = load ptr addrspace(1), ptr %112
  call void @_Bb02ioprintln(ptr addrspace(1) %805), !dbg !121
  store ptr addrspace(1) null, ptr %113
  ret void
806:
  %807 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %807), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/order4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 10, column: 14, scope: !5)
!15 = !DILocation(line: 10, column: 12, scope: !5)
!16 = !DILocation(line: 10, column: 1, scope: !5)
!17 = !DILocation(line: 11, column: 14, scope: !5)
!18 = !DILocation(line: 11, column: 12, scope: !5)
!19 = !DILocation(line: 11, column: 1, scope: !5)
!20 = !DILocation(line: 12, column: 14, scope: !5)
!21 = !DILocation(line: 12, column: 12, scope: !5)
!22 = !DILocation(line: 12, column: 1, scope: !5)
!23 = !DILocation(line: 13, column: 14, scope: !5)
!24 = !DILocation(line: 13, column: 12, scope: !5)
!25 = !DILocation(line: 13, column: 1, scope: !5)
!26 = !DILocation(line: 15, column: 14, scope: !5)
!27 = !DILocation(line: 15, column: 12, scope: !5)
!28 = !DILocation(line: 15, column: 1, scope: !5)
!29 = !DILocation(line: 16, column: 14, scope: !5)
!30 = !DILocation(line: 16, column: 12, scope: !5)
!31 = !DILocation(line: 16, column: 1, scope: !5)
!32 = !DILocation(line: 17, column: 14, scope: !5)
!33 = !DILocation(line: 17, column: 12, scope: !5)
!34 = !DILocation(line: 17, column: 1, scope: !5)
!35 = !DILocation(line: 18, column: 14, scope: !5)
!36 = !DILocation(line: 18, column: 12, scope: !5)
!37 = !DILocation(line: 18, column: 1, scope: !5)
!38 = !DILocation(line: 20, column: 14, scope: !5)
!39 = !DILocation(line: 20, column: 12, scope: !5)
!40 = !DILocation(line: 20, column: 1, scope: !5)
!41 = !DILocation(line: 21, column: 14, scope: !5)
!42 = !DILocation(line: 21, column: 12, scope: !5)
!43 = !DILocation(line: 21, column: 1, scope: !5)
!44 = !DILocation(line: 22, column: 14, scope: !5)
!45 = !DILocation(line: 22, column: 12, scope: !5)
!46 = !DILocation(line: 22, column: 1, scope: !5)
!47 = !DILocation(line: 23, column: 14, scope: !5)
!48 = !DILocation(line: 23, column: 12, scope: !5)
!49 = !DILocation(line: 23, column: 1, scope: !5)
!50 = !DILocation(line: 25, column: 14, scope: !5)
!51 = !DILocation(line: 25, column: 12, scope: !5)
!52 = !DILocation(line: 25, column: 1, scope: !5)
!53 = !DILocation(line: 26, column: 14, scope: !5)
!54 = !DILocation(line: 26, column: 12, scope: !5)
!55 = !DILocation(line: 26, column: 1, scope: !5)
!56 = !DILocation(line: 27, column: 14, scope: !5)
!57 = !DILocation(line: 27, column: 12, scope: !5)
!58 = !DILocation(line: 27, column: 1, scope: !5)
!59 = !DILocation(line: 28, column: 14, scope: !5)
!60 = !DILocation(line: 28, column: 12, scope: !5)
!61 = !DILocation(line: 28, column: 1, scope: !5)
!62 = !DILocation(line: 30, column: 14, scope: !5)
!63 = !DILocation(line: 30, column: 12, scope: !5)
!64 = !DILocation(line: 30, column: 1, scope: !5)
!65 = !DILocation(line: 31, column: 14, scope: !5)
!66 = !DILocation(line: 31, column: 12, scope: !5)
!67 = !DILocation(line: 31, column: 1, scope: !5)
!68 = !DILocation(line: 32, column: 14, scope: !5)
!69 = !DILocation(line: 32, column: 12, scope: !5)
!70 = !DILocation(line: 32, column: 1, scope: !5)
!71 = !DILocation(line: 33, column: 14, scope: !5)
!72 = !DILocation(line: 33, column: 12, scope: !5)
!73 = !DILocation(line: 33, column: 1, scope: !5)
!74 = !DILocation(line: 35, column: 14, scope: !5)
!75 = !DILocation(line: 35, column: 12, scope: !5)
!76 = !DILocation(line: 35, column: 1, scope: !5)
!77 = !DILocation(line: 36, column: 14, scope: !5)
!78 = !DILocation(line: 36, column: 12, scope: !5)
!79 = !DILocation(line: 36, column: 1, scope: !5)
!80 = !DILocation(line: 37, column: 14, scope: !5)
!81 = !DILocation(line: 37, column: 12, scope: !5)
!82 = !DILocation(line: 37, column: 1, scope: !5)
!83 = !DILocation(line: 38, column: 14, scope: !5)
!84 = !DILocation(line: 38, column: 12, scope: !5)
!85 = !DILocation(line: 38, column: 1, scope: !5)
!86 = !DILocation(line: 40, column: 14, scope: !5)
!87 = !DILocation(line: 40, column: 12, scope: !5)
!88 = !DILocation(line: 40, column: 1, scope: !5)
!89 = !DILocation(line: 41, column: 14, scope: !5)
!90 = !DILocation(line: 41, column: 12, scope: !5)
!91 = !DILocation(line: 41, column: 1, scope: !5)
!92 = !DILocation(line: 42, column: 14, scope: !5)
!93 = !DILocation(line: 42, column: 12, scope: !5)
!94 = !DILocation(line: 42, column: 1, scope: !5)
!95 = !DILocation(line: 43, column: 14, scope: !5)
!96 = !DILocation(line: 43, column: 12, scope: !5)
!97 = !DILocation(line: 43, column: 1, scope: !5)
!98 = !DILocation(line: 45, column: 14, scope: !5)
!99 = !DILocation(line: 45, column: 12, scope: !5)
!100 = !DILocation(line: 45, column: 1, scope: !5)
!101 = !DILocation(line: 46, column: 14, scope: !5)
!102 = !DILocation(line: 46, column: 12, scope: !5)
!103 = !DILocation(line: 46, column: 1, scope: !5)
!104 = !DILocation(line: 47, column: 14, scope: !5)
!105 = !DILocation(line: 47, column: 12, scope: !5)
!106 = !DILocation(line: 47, column: 1, scope: !5)
!107 = !DILocation(line: 48, column: 14, scope: !5)
!108 = !DILocation(line: 48, column: 12, scope: !5)
!109 = !DILocation(line: 48, column: 1, scope: !5)
!110 = !DILocation(line: 50, column: 14, scope: !5)
!111 = !DILocation(line: 50, column: 12, scope: !5)
!112 = !DILocation(line: 50, column: 1, scope: !5)
!113 = !DILocation(line: 51, column: 14, scope: !5)
!114 = !DILocation(line: 51, column: 12, scope: !5)
!115 = !DILocation(line: 51, column: 1, scope: !5)
!116 = !DILocation(line: 52, column: 14, scope: !5)
!117 = !DILocation(line: 52, column: 12, scope: !5)
!118 = !DILocation(line: 52, column: 1, scope: !5)
!119 = !DILocation(line: 53, column: 14, scope: !5)
!120 = !DILocation(line: 53, column: 12, scope: !5)
!121 = !DILocation(line: 53, column: 1, scope: !5)
