@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_array_exact_int_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_array_int_compare(ptr addrspace(1), ptr addrspace(1)) readonly
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
  %f = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i1
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i1
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i1
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca i1
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i1
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i1
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca i1
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca i1
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca i1
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca i1
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca i1
  %53 = alloca ptr addrspace(1)
  %54 = alloca ptr addrspace(1)
  %55 = alloca i1
  %56 = alloca ptr addrspace(1)
  %57 = alloca ptr addrspace(1)
  %58 = alloca i1
  %59 = alloca ptr addrspace(1)
  %60 = alloca ptr addrspace(1)
  %61 = alloca i1
  %62 = alloca ptr addrspace(1)
  %63 = alloca ptr addrspace(1)
  %64 = alloca i1
  %65 = alloca ptr addrspace(1)
  %66 = alloca ptr addrspace(1)
  %67 = alloca i1
  %68 = alloca ptr addrspace(1)
  %69 = alloca ptr addrspace(1)
  %70 = alloca i1
  %71 = alloca ptr addrspace(1)
  %72 = alloca ptr addrspace(1)
  %73 = alloca i1
  %74 = alloca ptr addrspace(1)
  %75 = alloca ptr addrspace(1)
  %76 = alloca i1
  %77 = alloca ptr addrspace(1)
  %78 = alloca ptr addrspace(1)
  %79 = alloca i1
  %80 = alloca ptr addrspace(1)
  %81 = alloca ptr addrspace(1)
  %82 = alloca i1
  %83 = alloca ptr addrspace(1)
  %84 = alloca ptr addrspace(1)
  %85 = alloca i1
  %86 = alloca ptr addrspace(1)
  %87 = alloca ptr addrspace(1)
  %88 = alloca i1
  %89 = alloca ptr addrspace(1)
  %90 = alloca ptr addrspace(1)
  %91 = alloca i1
  %92 = alloca ptr addrspace(1)
  %93 = alloca ptr addrspace(1)
  %94 = alloca i1
  %95 = alloca ptr addrspace(1)
  %96 = alloca ptr addrspace(1)
  %97 = alloca i1
  %98 = alloca ptr addrspace(1)
  %99 = alloca ptr addrspace(1)
  %100 = alloca i1
  %101 = alloca ptr addrspace(1)
  %102 = alloca ptr addrspace(1)
  %103 = alloca i1
  %104 = alloca ptr addrspace(1)
  %105 = alloca ptr addrspace(1)
  %106 = alloca i1
  %107 = alloca ptr addrspace(1)
  %108 = alloca ptr addrspace(1)
  %109 = alloca i1
  %110 = alloca ptr addrspace(1)
  %111 = alloca ptr addrspace(1)
  %112 = alloca i1
  %113 = alloca ptr addrspace(1)
  %114 = alloca ptr addrspace(1)
  %115 = alloca i1
  %116 = alloca ptr addrspace(1)
  %117 = alloca ptr addrspace(1)
  %118 = alloca i1
  %119 = alloca ptr addrspace(1)
  %120 = alloca ptr addrspace(1)
  %121 = alloca i1
  %122 = alloca ptr addrspace(1)
  %123 = alloca ptr addrspace(1)
  %124 = alloca i1
  %125 = alloca ptr addrspace(1)
  %126 = alloca ptr addrspace(1)
  %127 = alloca i1
  %128 = alloca ptr addrspace(1)
  %129 = alloca ptr addrspace(1)
  %130 = alloca i1
  %131 = alloca ptr addrspace(1)
  %132 = alloca ptr addrspace(1)
  %133 = alloca i1
  %134 = alloca ptr addrspace(1)
  %135 = alloca ptr addrspace(1)
  %136 = alloca i1
  %137 = alloca ptr addrspace(1)
  %138 = alloca ptr addrspace(1)
  %139 = alloca i8
  %140 = load ptr, ptr @_bal_stack_guard
  %141 = icmp ult ptr %139, %140
  br i1 %141, label %211, label %142
142:
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = getelementptr inbounds [0 x i64], ptr addrspace(1) %146, i64 0, i64 0
  store i64 1, ptr addrspace(1) %147
  %148 = getelementptr inbounds [0 x i64], ptr addrspace(1) %146, i64 0, i64 1
  store i64 2, ptr addrspace(1) %148
  %149 = getelementptr inbounds [0 x i64], ptr addrspace(1) %146, i64 0, i64 2
  store i64 3, ptr addrspace(1) %149
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 3, ptr addrspace(1) %150
  %151 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %152 = getelementptr i8, ptr addrspace(1) %151, i64 864691128455135236
  store ptr addrspace(1) %152, ptr %1
  %153 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %153, ptr %a
  %154 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !10
  %155 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 3
  %156 = load ptr addrspace(1), ptr addrspace(1) %155, align 8
  %157 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %158 = getelementptr inbounds [0 x i64], ptr addrspace(1) %157, i64 0, i64 0
  store i64 4, ptr addrspace(1) %158
  %159 = getelementptr inbounds [0 x i64], ptr addrspace(1) %157, i64 0, i64 1
  store i64 5, ptr addrspace(1) %159
  %160 = getelementptr inbounds [0 x i64], ptr addrspace(1) %157, i64 0, i64 2
  store i64 6, ptr addrspace(1) %160
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 1
  store i64 3, ptr addrspace(1) %161
  %162 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %163 = getelementptr i8, ptr addrspace(1) %162, i64 864691128455135236
  store ptr addrspace(1) %163, ptr %2
  %164 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %164, ptr %b
  %165 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !11
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 3
  %167 = load ptr addrspace(1), ptr addrspace(1) %166, align 8
  %168 = bitcast ptr addrspace(1) %167 to ptr addrspace(1)
  %169 = getelementptr inbounds [0 x i64], ptr addrspace(1) %168, i64 0, i64 0
  store i64 1, ptr addrspace(1) %169
  %170 = getelementptr inbounds [0 x i64], ptr addrspace(1) %168, i64 0, i64 1
  store i64 2, ptr addrspace(1) %170
  %171 = getelementptr inbounds [0 x i64], ptr addrspace(1) %168, i64 0, i64 2
  store i64 4, ptr addrspace(1) %171
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 1
  store i64 3, ptr addrspace(1) %172
  %173 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %174 = getelementptr i8, ptr addrspace(1) %173, i64 864691128455135236
  store ptr addrspace(1) %174, ptr %3
  %175 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %175, ptr %c
  %176 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 4), !dbg !12
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 3
  %178 = load ptr addrspace(1), ptr addrspace(1) %177, align 8
  %179 = bitcast ptr addrspace(1) %178 to ptr addrspace(1)
  %180 = getelementptr inbounds [0 x i64], ptr addrspace(1) %179, i64 0, i64 0
  store i64 1, ptr addrspace(1) %180
  %181 = getelementptr inbounds [0 x i64], ptr addrspace(1) %179, i64 0, i64 1
  store i64 2, ptr addrspace(1) %181
  %182 = getelementptr inbounds [0 x i64], ptr addrspace(1) %179, i64 0, i64 2
  store i64 3, ptr addrspace(1) %182
  %183 = getelementptr inbounds [0 x i64], ptr addrspace(1) %179, i64 0, i64 3
  store i64 -1, ptr addrspace(1) %183
  %184 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 1
  store i64 4, ptr addrspace(1) %184
  %185 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %186 = getelementptr i8, ptr addrspace(1) %185, i64 864691128455135236
  store ptr addrspace(1) %186, ptr %4
  %187 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %187, ptr %d
  %188 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 4), !dbg !13
  %189 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %188, i64 0, i32 3
  %190 = load ptr addrspace(1), ptr addrspace(1) %189, align 8
  %191 = bitcast ptr addrspace(1) %190 to ptr addrspace(1)
  %192 = getelementptr inbounds [0 x i64], ptr addrspace(1) %191, i64 0, i64 0
  store i64 1, ptr addrspace(1) %192
  %193 = getelementptr inbounds [0 x i64], ptr addrspace(1) %191, i64 0, i64 1
  store i64 2, ptr addrspace(1) %193
  %194 = getelementptr inbounds [0 x i64], ptr addrspace(1) %191, i64 0, i64 2
  store i64 3, ptr addrspace(1) %194
  %195 = getelementptr inbounds [0 x i64], ptr addrspace(1) %191, i64 0, i64 3
  store i64 5, ptr addrspace(1) %195
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %188, i64 0, i32 1
  store i64 4, ptr addrspace(1) %196
  %197 = bitcast ptr addrspace(1) %188 to ptr addrspace(1)
  %198 = getelementptr i8, ptr addrspace(1) %197, i64 864691128455135236
  store ptr addrspace(1) %198, ptr %5
  %199 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %199, ptr %e
  %200 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !14
  %201 = bitcast ptr addrspace(1) %200 to ptr addrspace(1)
  %202 = getelementptr i8, ptr addrspace(1) %201, i64 864691128455135236
  store ptr addrspace(1) %202, ptr %6
  %203 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %203, ptr %f
  %204 = load ptr addrspace(1), ptr %a
  %205 = load ptr addrspace(1), ptr %a
  %206 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %204, i64 4)
  %207 = icmp ne ptr addrspace(1) %206, null
  %208 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %205, i64 4)
  %209 = icmp ne ptr addrspace(1) %208, null
  %210 = and i1 %207, %209
  br i1 %210, label %213, label %216
211:
  %212 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %212), !dbg !8
  unreachable
213:
  %214 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %204, ptr addrspace(1) %205), !dbg !15
  %215 = icmp eq i64 %214, 0
  store i1 %215, ptr %7
  br label %219
216:
  %217 = call i64 @_bal_array_int_compare(ptr addrspace(1) %204, ptr addrspace(1) %205), !dbg !16
  %218 = icmp eq i64 %217, 0
  store i1 %218, ptr %7
  br label %219
219:
  %220 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %221 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %220, i64 0, i32 3
  %222 = load ptr addrspace(1), ptr addrspace(1) %221, align 8
  %223 = bitcast ptr addrspace(1) %222 to ptr addrspace(1)
  %224 = load i1, ptr %7
  %225 = zext i1 %224 to i64
  %226 = or i64 %225, 72057594037927936
  %227 = getelementptr i8, ptr addrspace(1) null, i64 %226
  %228 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %223, i64 0, i64 0
  store ptr addrspace(1) %227, ptr addrspace(1) %228
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %220, i64 0, i32 1
  store i64 1, ptr addrspace(1) %229
  %230 = bitcast ptr addrspace(1) %220 to ptr addrspace(1)
  %231 = getelementptr i8, ptr addrspace(1) %230, i64 864691128455135236
  store ptr addrspace(1) %231, ptr %8
  %232 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %232), !dbg !18
  store ptr addrspace(1) null, ptr %9
  %233 = load ptr addrspace(1), ptr %a
  %234 = load ptr addrspace(1), ptr %a
  %235 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %233, i64 4)
  %236 = icmp ne ptr addrspace(1) %235, null
  %237 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %234, i64 4)
  %238 = icmp ne ptr addrspace(1) %237, null
  %239 = and i1 %236, %238
  br i1 %239, label %240, label %243
240:
  %241 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %233, ptr addrspace(1) %234), !dbg !19
  %242 = icmp ule i64 %241, 1
  store i1 %242, ptr %10
  br label %246
243:
  %244 = call i64 @_bal_array_int_compare(ptr addrspace(1) %233, ptr addrspace(1) %234), !dbg !20
  %245 = icmp ule i64 %244, 1
  store i1 %245, ptr %10
  br label %246
246:
  %247 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %248 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %247, i64 0, i32 3
  %249 = load ptr addrspace(1), ptr addrspace(1) %248, align 8
  %250 = bitcast ptr addrspace(1) %249 to ptr addrspace(1)
  %251 = load i1, ptr %10
  %252 = zext i1 %251 to i64
  %253 = or i64 %252, 72057594037927936
  %254 = getelementptr i8, ptr addrspace(1) null, i64 %253
  %255 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %250, i64 0, i64 0
  store ptr addrspace(1) %254, ptr addrspace(1) %255
  %256 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %247, i64 0, i32 1
  store i64 1, ptr addrspace(1) %256
  %257 = bitcast ptr addrspace(1) %247 to ptr addrspace(1)
  %258 = getelementptr i8, ptr addrspace(1) %257, i64 864691128455135236
  store ptr addrspace(1) %258, ptr %11
  %259 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %259), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %260 = load ptr addrspace(1), ptr %a
  %261 = load ptr addrspace(1), ptr %a
  %262 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %260, i64 4)
  %263 = icmp ne ptr addrspace(1) %262, null
  %264 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %261, i64 4)
  %265 = icmp ne ptr addrspace(1) %264, null
  %266 = and i1 %263, %265
  br i1 %266, label %267, label %270
267:
  %268 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %260, ptr addrspace(1) %261), !dbg !23
  %269 = icmp eq i64 %268, 2
  store i1 %269, ptr %13
  br label %273
270:
  %271 = call i64 @_bal_array_int_compare(ptr addrspace(1) %260, ptr addrspace(1) %261), !dbg !24
  %272 = icmp eq i64 %271, 2
  store i1 %272, ptr %13
  br label %273
273:
  %274 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %275 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %274, i64 0, i32 3
  %276 = load ptr addrspace(1), ptr addrspace(1) %275, align 8
  %277 = bitcast ptr addrspace(1) %276 to ptr addrspace(1)
  %278 = load i1, ptr %13
  %279 = zext i1 %278 to i64
  %280 = or i64 %279, 72057594037927936
  %281 = getelementptr i8, ptr addrspace(1) null, i64 %280
  %282 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %277, i64 0, i64 0
  store ptr addrspace(1) %281, ptr addrspace(1) %282
  %283 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %274, i64 0, i32 1
  store i64 1, ptr addrspace(1) %283
  %284 = bitcast ptr addrspace(1) %274 to ptr addrspace(1)
  %285 = getelementptr i8, ptr addrspace(1) %284, i64 864691128455135236
  store ptr addrspace(1) %285, ptr %14
  %286 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %286), !dbg !26
  store ptr addrspace(1) null, ptr %15
  %287 = load ptr addrspace(1), ptr %a
  %288 = load ptr addrspace(1), ptr %a
  %289 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %287, i64 4)
  %290 = icmp ne ptr addrspace(1) %289, null
  %291 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %288, i64 4)
  %292 = icmp ne ptr addrspace(1) %291, null
  %293 = and i1 %290, %292
  br i1 %293, label %294, label %297
294:
  %295 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %287, ptr addrspace(1) %288), !dbg !27
  %296 = icmp sge i64 %295, 1
  store i1 %296, ptr %16
  br label %300
297:
  %298 = call i64 @_bal_array_int_compare(ptr addrspace(1) %287, ptr addrspace(1) %288), !dbg !28
  %299 = icmp sge i64 %298, 1
  store i1 %299, ptr %16
  br label %300
300:
  %301 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !29
  %302 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %301, i64 0, i32 3
  %303 = load ptr addrspace(1), ptr addrspace(1) %302, align 8
  %304 = bitcast ptr addrspace(1) %303 to ptr addrspace(1)
  %305 = load i1, ptr %16
  %306 = zext i1 %305 to i64
  %307 = or i64 %306, 72057594037927936
  %308 = getelementptr i8, ptr addrspace(1) null, i64 %307
  %309 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %304, i64 0, i64 0
  store ptr addrspace(1) %308, ptr addrspace(1) %309
  %310 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %301, i64 0, i32 1
  store i64 1, ptr addrspace(1) %310
  %311 = bitcast ptr addrspace(1) %301 to ptr addrspace(1)
  %312 = getelementptr i8, ptr addrspace(1) %311, i64 864691128455135236
  store ptr addrspace(1) %312, ptr %17
  %313 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %313), !dbg !30
  store ptr addrspace(1) null, ptr %18
  %314 = load ptr addrspace(1), ptr %a
  %315 = load ptr addrspace(1), ptr %b
  %316 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %314, i64 4)
  %317 = icmp ne ptr addrspace(1) %316, null
  %318 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %315, i64 4)
  %319 = icmp ne ptr addrspace(1) %318, null
  %320 = and i1 %317, %319
  br i1 %320, label %321, label %324
321:
  %322 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %314, ptr addrspace(1) %315), !dbg !31
  %323 = icmp eq i64 %322, 0
  store i1 %323, ptr %19
  br label %327
324:
  %325 = call i64 @_bal_array_int_compare(ptr addrspace(1) %314, ptr addrspace(1) %315), !dbg !32
  %326 = icmp eq i64 %325, 0
  store i1 %326, ptr %19
  br label %327
327:
  %328 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !33
  %329 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %328, i64 0, i32 3
  %330 = load ptr addrspace(1), ptr addrspace(1) %329, align 8
  %331 = bitcast ptr addrspace(1) %330 to ptr addrspace(1)
  %332 = load i1, ptr %19
  %333 = zext i1 %332 to i64
  %334 = or i64 %333, 72057594037927936
  %335 = getelementptr i8, ptr addrspace(1) null, i64 %334
  %336 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %331, i64 0, i64 0
  store ptr addrspace(1) %335, ptr addrspace(1) %336
  %337 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %328, i64 0, i32 1
  store i64 1, ptr addrspace(1) %337
  %338 = bitcast ptr addrspace(1) %328 to ptr addrspace(1)
  %339 = getelementptr i8, ptr addrspace(1) %338, i64 864691128455135236
  store ptr addrspace(1) %339, ptr %20
  %340 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %340), !dbg !34
  store ptr addrspace(1) null, ptr %21
  %341 = load ptr addrspace(1), ptr %a
  %342 = load ptr addrspace(1), ptr %b
  %343 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %341, i64 4)
  %344 = icmp ne ptr addrspace(1) %343, null
  %345 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %342, i64 4)
  %346 = icmp ne ptr addrspace(1) %345, null
  %347 = and i1 %344, %346
  br i1 %347, label %348, label %351
348:
  %349 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %341, ptr addrspace(1) %342), !dbg !35
  %350 = icmp ule i64 %349, 1
  store i1 %350, ptr %22
  br label %354
351:
  %352 = call i64 @_bal_array_int_compare(ptr addrspace(1) %341, ptr addrspace(1) %342), !dbg !36
  %353 = icmp ule i64 %352, 1
  store i1 %353, ptr %22
  br label %354
354:
  %355 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !37
  %356 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %355, i64 0, i32 3
  %357 = load ptr addrspace(1), ptr addrspace(1) %356, align 8
  %358 = bitcast ptr addrspace(1) %357 to ptr addrspace(1)
  %359 = load i1, ptr %22
  %360 = zext i1 %359 to i64
  %361 = or i64 %360, 72057594037927936
  %362 = getelementptr i8, ptr addrspace(1) null, i64 %361
  %363 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %358, i64 0, i64 0
  store ptr addrspace(1) %362, ptr addrspace(1) %363
  %364 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %355, i64 0, i32 1
  store i64 1, ptr addrspace(1) %364
  %365 = bitcast ptr addrspace(1) %355 to ptr addrspace(1)
  %366 = getelementptr i8, ptr addrspace(1) %365, i64 864691128455135236
  store ptr addrspace(1) %366, ptr %23
  %367 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %367), !dbg !38
  store ptr addrspace(1) null, ptr %24
  %368 = load ptr addrspace(1), ptr %a
  %369 = load ptr addrspace(1), ptr %b
  %370 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %368, i64 4)
  %371 = icmp ne ptr addrspace(1) %370, null
  %372 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %369, i64 4)
  %373 = icmp ne ptr addrspace(1) %372, null
  %374 = and i1 %371, %373
  br i1 %374, label %375, label %378
375:
  %376 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %368, ptr addrspace(1) %369), !dbg !39
  %377 = icmp eq i64 %376, 2
  store i1 %377, ptr %25
  br label %381
378:
  %379 = call i64 @_bal_array_int_compare(ptr addrspace(1) %368, ptr addrspace(1) %369), !dbg !40
  %380 = icmp eq i64 %379, 2
  store i1 %380, ptr %25
  br label %381
381:
  %382 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !41
  %383 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %382, i64 0, i32 3
  %384 = load ptr addrspace(1), ptr addrspace(1) %383, align 8
  %385 = bitcast ptr addrspace(1) %384 to ptr addrspace(1)
  %386 = load i1, ptr %25
  %387 = zext i1 %386 to i64
  %388 = or i64 %387, 72057594037927936
  %389 = getelementptr i8, ptr addrspace(1) null, i64 %388
  %390 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %385, i64 0, i64 0
  store ptr addrspace(1) %389, ptr addrspace(1) %390
  %391 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %382, i64 0, i32 1
  store i64 1, ptr addrspace(1) %391
  %392 = bitcast ptr addrspace(1) %382 to ptr addrspace(1)
  %393 = getelementptr i8, ptr addrspace(1) %392, i64 864691128455135236
  store ptr addrspace(1) %393, ptr %26
  %394 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %394), !dbg !42
  store ptr addrspace(1) null, ptr %27
  %395 = load ptr addrspace(1), ptr %a
  %396 = load ptr addrspace(1), ptr %b
  %397 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %395, i64 4)
  %398 = icmp ne ptr addrspace(1) %397, null
  %399 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %396, i64 4)
  %400 = icmp ne ptr addrspace(1) %399, null
  %401 = and i1 %398, %400
  br i1 %401, label %402, label %405
402:
  %403 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %395, ptr addrspace(1) %396), !dbg !43
  %404 = icmp sge i64 %403, 1
  store i1 %404, ptr %28
  br label %408
405:
  %406 = call i64 @_bal_array_int_compare(ptr addrspace(1) %395, ptr addrspace(1) %396), !dbg !44
  %407 = icmp sge i64 %406, 1
  store i1 %407, ptr %28
  br label %408
408:
  %409 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !45
  %410 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %409, i64 0, i32 3
  %411 = load ptr addrspace(1), ptr addrspace(1) %410, align 8
  %412 = bitcast ptr addrspace(1) %411 to ptr addrspace(1)
  %413 = load i1, ptr %28
  %414 = zext i1 %413 to i64
  %415 = or i64 %414, 72057594037927936
  %416 = getelementptr i8, ptr addrspace(1) null, i64 %415
  %417 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %412, i64 0, i64 0
  store ptr addrspace(1) %416, ptr addrspace(1) %417
  %418 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %409, i64 0, i32 1
  store i64 1, ptr addrspace(1) %418
  %419 = bitcast ptr addrspace(1) %409 to ptr addrspace(1)
  %420 = getelementptr i8, ptr addrspace(1) %419, i64 864691128455135236
  store ptr addrspace(1) %420, ptr %29
  %421 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %421), !dbg !46
  store ptr addrspace(1) null, ptr %30
  %422 = load ptr addrspace(1), ptr %b
  %423 = load ptr addrspace(1), ptr %a
  %424 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %422, i64 4)
  %425 = icmp ne ptr addrspace(1) %424, null
  %426 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %423, i64 4)
  %427 = icmp ne ptr addrspace(1) %426, null
  %428 = and i1 %425, %427
  br i1 %428, label %429, label %432
429:
  %430 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %422, ptr addrspace(1) %423), !dbg !47
  %431 = icmp eq i64 %430, 0
  store i1 %431, ptr %31
  br label %435
432:
  %433 = call i64 @_bal_array_int_compare(ptr addrspace(1) %422, ptr addrspace(1) %423), !dbg !48
  %434 = icmp eq i64 %433, 0
  store i1 %434, ptr %31
  br label %435
435:
  %436 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !49
  %437 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %436, i64 0, i32 3
  %438 = load ptr addrspace(1), ptr addrspace(1) %437, align 8
  %439 = bitcast ptr addrspace(1) %438 to ptr addrspace(1)
  %440 = load i1, ptr %31
  %441 = zext i1 %440 to i64
  %442 = or i64 %441, 72057594037927936
  %443 = getelementptr i8, ptr addrspace(1) null, i64 %442
  %444 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %439, i64 0, i64 0
  store ptr addrspace(1) %443, ptr addrspace(1) %444
  %445 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %436, i64 0, i32 1
  store i64 1, ptr addrspace(1) %445
  %446 = bitcast ptr addrspace(1) %436 to ptr addrspace(1)
  %447 = getelementptr i8, ptr addrspace(1) %446, i64 864691128455135236
  store ptr addrspace(1) %447, ptr %32
  %448 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %448), !dbg !50
  store ptr addrspace(1) null, ptr %33
  %449 = load ptr addrspace(1), ptr %b
  %450 = load ptr addrspace(1), ptr %a
  %451 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %449, i64 4)
  %452 = icmp ne ptr addrspace(1) %451, null
  %453 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %450, i64 4)
  %454 = icmp ne ptr addrspace(1) %453, null
  %455 = and i1 %452, %454
  br i1 %455, label %456, label %459
456:
  %457 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %449, ptr addrspace(1) %450), !dbg !51
  %458 = icmp ule i64 %457, 1
  store i1 %458, ptr %34
  br label %462
459:
  %460 = call i64 @_bal_array_int_compare(ptr addrspace(1) %449, ptr addrspace(1) %450), !dbg !52
  %461 = icmp ule i64 %460, 1
  store i1 %461, ptr %34
  br label %462
462:
  %463 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !53
  %464 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %463, i64 0, i32 3
  %465 = load ptr addrspace(1), ptr addrspace(1) %464, align 8
  %466 = bitcast ptr addrspace(1) %465 to ptr addrspace(1)
  %467 = load i1, ptr %34
  %468 = zext i1 %467 to i64
  %469 = or i64 %468, 72057594037927936
  %470 = getelementptr i8, ptr addrspace(1) null, i64 %469
  %471 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %466, i64 0, i64 0
  store ptr addrspace(1) %470, ptr addrspace(1) %471
  %472 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %463, i64 0, i32 1
  store i64 1, ptr addrspace(1) %472
  %473 = bitcast ptr addrspace(1) %463 to ptr addrspace(1)
  %474 = getelementptr i8, ptr addrspace(1) %473, i64 864691128455135236
  store ptr addrspace(1) %474, ptr %35
  %475 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %475), !dbg !54
  store ptr addrspace(1) null, ptr %36
  %476 = load ptr addrspace(1), ptr %b
  %477 = load ptr addrspace(1), ptr %a
  %478 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %476, i64 4)
  %479 = icmp ne ptr addrspace(1) %478, null
  %480 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %477, i64 4)
  %481 = icmp ne ptr addrspace(1) %480, null
  %482 = and i1 %479, %481
  br i1 %482, label %483, label %486
483:
  %484 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %476, ptr addrspace(1) %477), !dbg !55
  %485 = icmp eq i64 %484, 2
  store i1 %485, ptr %37
  br label %489
486:
  %487 = call i64 @_bal_array_int_compare(ptr addrspace(1) %476, ptr addrspace(1) %477), !dbg !56
  %488 = icmp eq i64 %487, 2
  store i1 %488, ptr %37
  br label %489
489:
  %490 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !57
  %491 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %490, i64 0, i32 3
  %492 = load ptr addrspace(1), ptr addrspace(1) %491, align 8
  %493 = bitcast ptr addrspace(1) %492 to ptr addrspace(1)
  %494 = load i1, ptr %37
  %495 = zext i1 %494 to i64
  %496 = or i64 %495, 72057594037927936
  %497 = getelementptr i8, ptr addrspace(1) null, i64 %496
  %498 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %493, i64 0, i64 0
  store ptr addrspace(1) %497, ptr addrspace(1) %498
  %499 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %490, i64 0, i32 1
  store i64 1, ptr addrspace(1) %499
  %500 = bitcast ptr addrspace(1) %490 to ptr addrspace(1)
  %501 = getelementptr i8, ptr addrspace(1) %500, i64 864691128455135236
  store ptr addrspace(1) %501, ptr %38
  %502 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %502), !dbg !58
  store ptr addrspace(1) null, ptr %39
  %503 = load ptr addrspace(1), ptr %b
  %504 = load ptr addrspace(1), ptr %a
  %505 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %503, i64 4)
  %506 = icmp ne ptr addrspace(1) %505, null
  %507 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %504, i64 4)
  %508 = icmp ne ptr addrspace(1) %507, null
  %509 = and i1 %506, %508
  br i1 %509, label %510, label %513
510:
  %511 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %503, ptr addrspace(1) %504), !dbg !59
  %512 = icmp sge i64 %511, 1
  store i1 %512, ptr %40
  br label %516
513:
  %514 = call i64 @_bal_array_int_compare(ptr addrspace(1) %503, ptr addrspace(1) %504), !dbg !60
  %515 = icmp sge i64 %514, 1
  store i1 %515, ptr %40
  br label %516
516:
  %517 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !61
  %518 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %517, i64 0, i32 3
  %519 = load ptr addrspace(1), ptr addrspace(1) %518, align 8
  %520 = bitcast ptr addrspace(1) %519 to ptr addrspace(1)
  %521 = load i1, ptr %40
  %522 = zext i1 %521 to i64
  %523 = or i64 %522, 72057594037927936
  %524 = getelementptr i8, ptr addrspace(1) null, i64 %523
  %525 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %520, i64 0, i64 0
  store ptr addrspace(1) %524, ptr addrspace(1) %525
  %526 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %517, i64 0, i32 1
  store i64 1, ptr addrspace(1) %526
  %527 = bitcast ptr addrspace(1) %517 to ptr addrspace(1)
  %528 = getelementptr i8, ptr addrspace(1) %527, i64 864691128455135236
  store ptr addrspace(1) %528, ptr %41
  %529 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %529), !dbg !62
  store ptr addrspace(1) null, ptr %42
  %530 = load ptr addrspace(1), ptr %a
  %531 = load ptr addrspace(1), ptr %c
  %532 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %530, i64 4)
  %533 = icmp ne ptr addrspace(1) %532, null
  %534 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %531, i64 4)
  %535 = icmp ne ptr addrspace(1) %534, null
  %536 = and i1 %533, %535
  br i1 %536, label %537, label %540
537:
  %538 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %530, ptr addrspace(1) %531), !dbg !63
  %539 = icmp eq i64 %538, 0
  store i1 %539, ptr %43
  br label %543
540:
  %541 = call i64 @_bal_array_int_compare(ptr addrspace(1) %530, ptr addrspace(1) %531), !dbg !64
  %542 = icmp eq i64 %541, 0
  store i1 %542, ptr %43
  br label %543
543:
  %544 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !65
  %545 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %544, i64 0, i32 3
  %546 = load ptr addrspace(1), ptr addrspace(1) %545, align 8
  %547 = bitcast ptr addrspace(1) %546 to ptr addrspace(1)
  %548 = load i1, ptr %43
  %549 = zext i1 %548 to i64
  %550 = or i64 %549, 72057594037927936
  %551 = getelementptr i8, ptr addrspace(1) null, i64 %550
  %552 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %547, i64 0, i64 0
  store ptr addrspace(1) %551, ptr addrspace(1) %552
  %553 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %544, i64 0, i32 1
  store i64 1, ptr addrspace(1) %553
  %554 = bitcast ptr addrspace(1) %544 to ptr addrspace(1)
  %555 = getelementptr i8, ptr addrspace(1) %554, i64 864691128455135236
  store ptr addrspace(1) %555, ptr %44
  %556 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %556), !dbg !66
  store ptr addrspace(1) null, ptr %45
  %557 = load ptr addrspace(1), ptr %a
  %558 = load ptr addrspace(1), ptr %c
  %559 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %557, i64 4)
  %560 = icmp ne ptr addrspace(1) %559, null
  %561 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %558, i64 4)
  %562 = icmp ne ptr addrspace(1) %561, null
  %563 = and i1 %560, %562
  br i1 %563, label %564, label %567
564:
  %565 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %557, ptr addrspace(1) %558), !dbg !67
  %566 = icmp ule i64 %565, 1
  store i1 %566, ptr %46
  br label %570
567:
  %568 = call i64 @_bal_array_int_compare(ptr addrspace(1) %557, ptr addrspace(1) %558), !dbg !68
  %569 = icmp ule i64 %568, 1
  store i1 %569, ptr %46
  br label %570
570:
  %571 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !69
  %572 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %571, i64 0, i32 3
  %573 = load ptr addrspace(1), ptr addrspace(1) %572, align 8
  %574 = bitcast ptr addrspace(1) %573 to ptr addrspace(1)
  %575 = load i1, ptr %46
  %576 = zext i1 %575 to i64
  %577 = or i64 %576, 72057594037927936
  %578 = getelementptr i8, ptr addrspace(1) null, i64 %577
  %579 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %574, i64 0, i64 0
  store ptr addrspace(1) %578, ptr addrspace(1) %579
  %580 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %571, i64 0, i32 1
  store i64 1, ptr addrspace(1) %580
  %581 = bitcast ptr addrspace(1) %571 to ptr addrspace(1)
  %582 = getelementptr i8, ptr addrspace(1) %581, i64 864691128455135236
  store ptr addrspace(1) %582, ptr %47
  %583 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %583), !dbg !70
  store ptr addrspace(1) null, ptr %48
  %584 = load ptr addrspace(1), ptr %a
  %585 = load ptr addrspace(1), ptr %c
  %586 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %584, i64 4)
  %587 = icmp ne ptr addrspace(1) %586, null
  %588 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %585, i64 4)
  %589 = icmp ne ptr addrspace(1) %588, null
  %590 = and i1 %587, %589
  br i1 %590, label %591, label %594
591:
  %592 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %584, ptr addrspace(1) %585), !dbg !71
  %593 = icmp eq i64 %592, 2
  store i1 %593, ptr %49
  br label %597
594:
  %595 = call i64 @_bal_array_int_compare(ptr addrspace(1) %584, ptr addrspace(1) %585), !dbg !72
  %596 = icmp eq i64 %595, 2
  store i1 %596, ptr %49
  br label %597
597:
  %598 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !73
  %599 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %598, i64 0, i32 3
  %600 = load ptr addrspace(1), ptr addrspace(1) %599, align 8
  %601 = bitcast ptr addrspace(1) %600 to ptr addrspace(1)
  %602 = load i1, ptr %49
  %603 = zext i1 %602 to i64
  %604 = or i64 %603, 72057594037927936
  %605 = getelementptr i8, ptr addrspace(1) null, i64 %604
  %606 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %601, i64 0, i64 0
  store ptr addrspace(1) %605, ptr addrspace(1) %606
  %607 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %598, i64 0, i32 1
  store i64 1, ptr addrspace(1) %607
  %608 = bitcast ptr addrspace(1) %598 to ptr addrspace(1)
  %609 = getelementptr i8, ptr addrspace(1) %608, i64 864691128455135236
  store ptr addrspace(1) %609, ptr %50
  %610 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %610), !dbg !74
  store ptr addrspace(1) null, ptr %51
  %611 = load ptr addrspace(1), ptr %a
  %612 = load ptr addrspace(1), ptr %c
  %613 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %611, i64 4)
  %614 = icmp ne ptr addrspace(1) %613, null
  %615 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %612, i64 4)
  %616 = icmp ne ptr addrspace(1) %615, null
  %617 = and i1 %614, %616
  br i1 %617, label %618, label %621
618:
  %619 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %611, ptr addrspace(1) %612), !dbg !75
  %620 = icmp sge i64 %619, 1
  store i1 %620, ptr %52
  br label %624
621:
  %622 = call i64 @_bal_array_int_compare(ptr addrspace(1) %611, ptr addrspace(1) %612), !dbg !76
  %623 = icmp sge i64 %622, 1
  store i1 %623, ptr %52
  br label %624
624:
  %625 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !77
  %626 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %625, i64 0, i32 3
  %627 = load ptr addrspace(1), ptr addrspace(1) %626, align 8
  %628 = bitcast ptr addrspace(1) %627 to ptr addrspace(1)
  %629 = load i1, ptr %52
  %630 = zext i1 %629 to i64
  %631 = or i64 %630, 72057594037927936
  %632 = getelementptr i8, ptr addrspace(1) null, i64 %631
  %633 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %628, i64 0, i64 0
  store ptr addrspace(1) %632, ptr addrspace(1) %633
  %634 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %625, i64 0, i32 1
  store i64 1, ptr addrspace(1) %634
  %635 = bitcast ptr addrspace(1) %625 to ptr addrspace(1)
  %636 = getelementptr i8, ptr addrspace(1) %635, i64 864691128455135236
  store ptr addrspace(1) %636, ptr %53
  %637 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %637), !dbg !78
  store ptr addrspace(1) null, ptr %54
  %638 = load ptr addrspace(1), ptr %c
  %639 = load ptr addrspace(1), ptr %a
  %640 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %638, i64 4)
  %641 = icmp ne ptr addrspace(1) %640, null
  %642 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %639, i64 4)
  %643 = icmp ne ptr addrspace(1) %642, null
  %644 = and i1 %641, %643
  br i1 %644, label %645, label %648
645:
  %646 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %638, ptr addrspace(1) %639), !dbg !79
  %647 = icmp eq i64 %646, 0
  store i1 %647, ptr %55
  br label %651
648:
  %649 = call i64 @_bal_array_int_compare(ptr addrspace(1) %638, ptr addrspace(1) %639), !dbg !80
  %650 = icmp eq i64 %649, 0
  store i1 %650, ptr %55
  br label %651
651:
  %652 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !81
  %653 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %652, i64 0, i32 3
  %654 = load ptr addrspace(1), ptr addrspace(1) %653, align 8
  %655 = bitcast ptr addrspace(1) %654 to ptr addrspace(1)
  %656 = load i1, ptr %55
  %657 = zext i1 %656 to i64
  %658 = or i64 %657, 72057594037927936
  %659 = getelementptr i8, ptr addrspace(1) null, i64 %658
  %660 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %655, i64 0, i64 0
  store ptr addrspace(1) %659, ptr addrspace(1) %660
  %661 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %652, i64 0, i32 1
  store i64 1, ptr addrspace(1) %661
  %662 = bitcast ptr addrspace(1) %652 to ptr addrspace(1)
  %663 = getelementptr i8, ptr addrspace(1) %662, i64 864691128455135236
  store ptr addrspace(1) %663, ptr %56
  %664 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %664), !dbg !82
  store ptr addrspace(1) null, ptr %57
  %665 = load ptr addrspace(1), ptr %c
  %666 = load ptr addrspace(1), ptr %a
  %667 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %665, i64 4)
  %668 = icmp ne ptr addrspace(1) %667, null
  %669 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %666, i64 4)
  %670 = icmp ne ptr addrspace(1) %669, null
  %671 = and i1 %668, %670
  br i1 %671, label %672, label %675
672:
  %673 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %665, ptr addrspace(1) %666), !dbg !83
  %674 = icmp ule i64 %673, 1
  store i1 %674, ptr %58
  br label %678
675:
  %676 = call i64 @_bal_array_int_compare(ptr addrspace(1) %665, ptr addrspace(1) %666), !dbg !84
  %677 = icmp ule i64 %676, 1
  store i1 %677, ptr %58
  br label %678
678:
  %679 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !85
  %680 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %679, i64 0, i32 3
  %681 = load ptr addrspace(1), ptr addrspace(1) %680, align 8
  %682 = bitcast ptr addrspace(1) %681 to ptr addrspace(1)
  %683 = load i1, ptr %58
  %684 = zext i1 %683 to i64
  %685 = or i64 %684, 72057594037927936
  %686 = getelementptr i8, ptr addrspace(1) null, i64 %685
  %687 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %682, i64 0, i64 0
  store ptr addrspace(1) %686, ptr addrspace(1) %687
  %688 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %679, i64 0, i32 1
  store i64 1, ptr addrspace(1) %688
  %689 = bitcast ptr addrspace(1) %679 to ptr addrspace(1)
  %690 = getelementptr i8, ptr addrspace(1) %689, i64 864691128455135236
  store ptr addrspace(1) %690, ptr %59
  %691 = load ptr addrspace(1), ptr %59
  call void @_Bb02ioprintln(ptr addrspace(1) %691), !dbg !86
  store ptr addrspace(1) null, ptr %60
  %692 = load ptr addrspace(1), ptr %c
  %693 = load ptr addrspace(1), ptr %a
  %694 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %692, i64 4)
  %695 = icmp ne ptr addrspace(1) %694, null
  %696 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %693, i64 4)
  %697 = icmp ne ptr addrspace(1) %696, null
  %698 = and i1 %695, %697
  br i1 %698, label %699, label %702
699:
  %700 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %692, ptr addrspace(1) %693), !dbg !87
  %701 = icmp eq i64 %700, 2
  store i1 %701, ptr %61
  br label %705
702:
  %703 = call i64 @_bal_array_int_compare(ptr addrspace(1) %692, ptr addrspace(1) %693), !dbg !88
  %704 = icmp eq i64 %703, 2
  store i1 %704, ptr %61
  br label %705
705:
  %706 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !89
  %707 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %706, i64 0, i32 3
  %708 = load ptr addrspace(1), ptr addrspace(1) %707, align 8
  %709 = bitcast ptr addrspace(1) %708 to ptr addrspace(1)
  %710 = load i1, ptr %61
  %711 = zext i1 %710 to i64
  %712 = or i64 %711, 72057594037927936
  %713 = getelementptr i8, ptr addrspace(1) null, i64 %712
  %714 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %709, i64 0, i64 0
  store ptr addrspace(1) %713, ptr addrspace(1) %714
  %715 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %706, i64 0, i32 1
  store i64 1, ptr addrspace(1) %715
  %716 = bitcast ptr addrspace(1) %706 to ptr addrspace(1)
  %717 = getelementptr i8, ptr addrspace(1) %716, i64 864691128455135236
  store ptr addrspace(1) %717, ptr %62
  %718 = load ptr addrspace(1), ptr %62
  call void @_Bb02ioprintln(ptr addrspace(1) %718), !dbg !90
  store ptr addrspace(1) null, ptr %63
  %719 = load ptr addrspace(1), ptr %c
  %720 = load ptr addrspace(1), ptr %a
  %721 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %719, i64 4)
  %722 = icmp ne ptr addrspace(1) %721, null
  %723 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %720, i64 4)
  %724 = icmp ne ptr addrspace(1) %723, null
  %725 = and i1 %722, %724
  br i1 %725, label %726, label %729
726:
  %727 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %719, ptr addrspace(1) %720), !dbg !91
  %728 = icmp sge i64 %727, 1
  store i1 %728, ptr %64
  br label %732
729:
  %730 = call i64 @_bal_array_int_compare(ptr addrspace(1) %719, ptr addrspace(1) %720), !dbg !92
  %731 = icmp sge i64 %730, 1
  store i1 %731, ptr %64
  br label %732
732:
  %733 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !93
  %734 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %733, i64 0, i32 3
  %735 = load ptr addrspace(1), ptr addrspace(1) %734, align 8
  %736 = bitcast ptr addrspace(1) %735 to ptr addrspace(1)
  %737 = load i1, ptr %64
  %738 = zext i1 %737 to i64
  %739 = or i64 %738, 72057594037927936
  %740 = getelementptr i8, ptr addrspace(1) null, i64 %739
  %741 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %736, i64 0, i64 0
  store ptr addrspace(1) %740, ptr addrspace(1) %741
  %742 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %733, i64 0, i32 1
  store i64 1, ptr addrspace(1) %742
  %743 = bitcast ptr addrspace(1) %733 to ptr addrspace(1)
  %744 = getelementptr i8, ptr addrspace(1) %743, i64 864691128455135236
  store ptr addrspace(1) %744, ptr %65
  %745 = load ptr addrspace(1), ptr %65
  call void @_Bb02ioprintln(ptr addrspace(1) %745), !dbg !94
  store ptr addrspace(1) null, ptr %66
  %746 = load ptr addrspace(1), ptr %a
  %747 = load ptr addrspace(1), ptr %d
  %748 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %746, i64 4)
  %749 = icmp ne ptr addrspace(1) %748, null
  %750 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %747, i64 4)
  %751 = icmp ne ptr addrspace(1) %750, null
  %752 = and i1 %749, %751
  br i1 %752, label %753, label %756
753:
  %754 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %746, ptr addrspace(1) %747), !dbg !95
  %755 = icmp eq i64 %754, 0
  store i1 %755, ptr %67
  br label %759
756:
  %757 = call i64 @_bal_array_int_compare(ptr addrspace(1) %746, ptr addrspace(1) %747), !dbg !96
  %758 = icmp eq i64 %757, 0
  store i1 %758, ptr %67
  br label %759
759:
  %760 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !97
  %761 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %760, i64 0, i32 3
  %762 = load ptr addrspace(1), ptr addrspace(1) %761, align 8
  %763 = bitcast ptr addrspace(1) %762 to ptr addrspace(1)
  %764 = load i1, ptr %67
  %765 = zext i1 %764 to i64
  %766 = or i64 %765, 72057594037927936
  %767 = getelementptr i8, ptr addrspace(1) null, i64 %766
  %768 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %763, i64 0, i64 0
  store ptr addrspace(1) %767, ptr addrspace(1) %768
  %769 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %760, i64 0, i32 1
  store i64 1, ptr addrspace(1) %769
  %770 = bitcast ptr addrspace(1) %760 to ptr addrspace(1)
  %771 = getelementptr i8, ptr addrspace(1) %770, i64 864691128455135236
  store ptr addrspace(1) %771, ptr %68
  %772 = load ptr addrspace(1), ptr %68
  call void @_Bb02ioprintln(ptr addrspace(1) %772), !dbg !98
  store ptr addrspace(1) null, ptr %69
  %773 = load ptr addrspace(1), ptr %a
  %774 = load ptr addrspace(1), ptr %d
  %775 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %773, i64 4)
  %776 = icmp ne ptr addrspace(1) %775, null
  %777 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %774, i64 4)
  %778 = icmp ne ptr addrspace(1) %777, null
  %779 = and i1 %776, %778
  br i1 %779, label %780, label %783
780:
  %781 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %773, ptr addrspace(1) %774), !dbg !99
  %782 = icmp ule i64 %781, 1
  store i1 %782, ptr %70
  br label %786
783:
  %784 = call i64 @_bal_array_int_compare(ptr addrspace(1) %773, ptr addrspace(1) %774), !dbg !100
  %785 = icmp ule i64 %784, 1
  store i1 %785, ptr %70
  br label %786
786:
  %787 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !101
  %788 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %787, i64 0, i32 3
  %789 = load ptr addrspace(1), ptr addrspace(1) %788, align 8
  %790 = bitcast ptr addrspace(1) %789 to ptr addrspace(1)
  %791 = load i1, ptr %70
  %792 = zext i1 %791 to i64
  %793 = or i64 %792, 72057594037927936
  %794 = getelementptr i8, ptr addrspace(1) null, i64 %793
  %795 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %790, i64 0, i64 0
  store ptr addrspace(1) %794, ptr addrspace(1) %795
  %796 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %787, i64 0, i32 1
  store i64 1, ptr addrspace(1) %796
  %797 = bitcast ptr addrspace(1) %787 to ptr addrspace(1)
  %798 = getelementptr i8, ptr addrspace(1) %797, i64 864691128455135236
  store ptr addrspace(1) %798, ptr %71
  %799 = load ptr addrspace(1), ptr %71
  call void @_Bb02ioprintln(ptr addrspace(1) %799), !dbg !102
  store ptr addrspace(1) null, ptr %72
  %800 = load ptr addrspace(1), ptr %a
  %801 = load ptr addrspace(1), ptr %d
  %802 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %800, i64 4)
  %803 = icmp ne ptr addrspace(1) %802, null
  %804 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %801, i64 4)
  %805 = icmp ne ptr addrspace(1) %804, null
  %806 = and i1 %803, %805
  br i1 %806, label %807, label %810
807:
  %808 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %800, ptr addrspace(1) %801), !dbg !103
  %809 = icmp eq i64 %808, 2
  store i1 %809, ptr %73
  br label %813
810:
  %811 = call i64 @_bal_array_int_compare(ptr addrspace(1) %800, ptr addrspace(1) %801), !dbg !104
  %812 = icmp eq i64 %811, 2
  store i1 %812, ptr %73
  br label %813
813:
  %814 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !105
  %815 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %814, i64 0, i32 3
  %816 = load ptr addrspace(1), ptr addrspace(1) %815, align 8
  %817 = bitcast ptr addrspace(1) %816 to ptr addrspace(1)
  %818 = load i1, ptr %73
  %819 = zext i1 %818 to i64
  %820 = or i64 %819, 72057594037927936
  %821 = getelementptr i8, ptr addrspace(1) null, i64 %820
  %822 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %817, i64 0, i64 0
  store ptr addrspace(1) %821, ptr addrspace(1) %822
  %823 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %814, i64 0, i32 1
  store i64 1, ptr addrspace(1) %823
  %824 = bitcast ptr addrspace(1) %814 to ptr addrspace(1)
  %825 = getelementptr i8, ptr addrspace(1) %824, i64 864691128455135236
  store ptr addrspace(1) %825, ptr %74
  %826 = load ptr addrspace(1), ptr %74
  call void @_Bb02ioprintln(ptr addrspace(1) %826), !dbg !106
  store ptr addrspace(1) null, ptr %75
  %827 = load ptr addrspace(1), ptr %a
  %828 = load ptr addrspace(1), ptr %d
  %829 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %827, i64 4)
  %830 = icmp ne ptr addrspace(1) %829, null
  %831 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %828, i64 4)
  %832 = icmp ne ptr addrspace(1) %831, null
  %833 = and i1 %830, %832
  br i1 %833, label %834, label %837
834:
  %835 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %827, ptr addrspace(1) %828), !dbg !107
  %836 = icmp sge i64 %835, 1
  store i1 %836, ptr %76
  br label %840
837:
  %838 = call i64 @_bal_array_int_compare(ptr addrspace(1) %827, ptr addrspace(1) %828), !dbg !108
  %839 = icmp sge i64 %838, 1
  store i1 %839, ptr %76
  br label %840
840:
  %841 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !109
  %842 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %841, i64 0, i32 3
  %843 = load ptr addrspace(1), ptr addrspace(1) %842, align 8
  %844 = bitcast ptr addrspace(1) %843 to ptr addrspace(1)
  %845 = load i1, ptr %76
  %846 = zext i1 %845 to i64
  %847 = or i64 %846, 72057594037927936
  %848 = getelementptr i8, ptr addrspace(1) null, i64 %847
  %849 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %844, i64 0, i64 0
  store ptr addrspace(1) %848, ptr addrspace(1) %849
  %850 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %841, i64 0, i32 1
  store i64 1, ptr addrspace(1) %850
  %851 = bitcast ptr addrspace(1) %841 to ptr addrspace(1)
  %852 = getelementptr i8, ptr addrspace(1) %851, i64 864691128455135236
  store ptr addrspace(1) %852, ptr %77
  %853 = load ptr addrspace(1), ptr %77
  call void @_Bb02ioprintln(ptr addrspace(1) %853), !dbg !110
  store ptr addrspace(1) null, ptr %78
  %854 = load ptr addrspace(1), ptr %d
  %855 = load ptr addrspace(1), ptr %a
  %856 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %854, i64 4)
  %857 = icmp ne ptr addrspace(1) %856, null
  %858 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %855, i64 4)
  %859 = icmp ne ptr addrspace(1) %858, null
  %860 = and i1 %857, %859
  br i1 %860, label %861, label %864
861:
  %862 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %854, ptr addrspace(1) %855), !dbg !111
  %863 = icmp eq i64 %862, 0
  store i1 %863, ptr %79
  br label %867
864:
  %865 = call i64 @_bal_array_int_compare(ptr addrspace(1) %854, ptr addrspace(1) %855), !dbg !112
  %866 = icmp eq i64 %865, 0
  store i1 %866, ptr %79
  br label %867
867:
  %868 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !113
  %869 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %868, i64 0, i32 3
  %870 = load ptr addrspace(1), ptr addrspace(1) %869, align 8
  %871 = bitcast ptr addrspace(1) %870 to ptr addrspace(1)
  %872 = load i1, ptr %79
  %873 = zext i1 %872 to i64
  %874 = or i64 %873, 72057594037927936
  %875 = getelementptr i8, ptr addrspace(1) null, i64 %874
  %876 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %871, i64 0, i64 0
  store ptr addrspace(1) %875, ptr addrspace(1) %876
  %877 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %868, i64 0, i32 1
  store i64 1, ptr addrspace(1) %877
  %878 = bitcast ptr addrspace(1) %868 to ptr addrspace(1)
  %879 = getelementptr i8, ptr addrspace(1) %878, i64 864691128455135236
  store ptr addrspace(1) %879, ptr %80
  %880 = load ptr addrspace(1), ptr %80
  call void @_Bb02ioprintln(ptr addrspace(1) %880), !dbg !114
  store ptr addrspace(1) null, ptr %81
  %881 = load ptr addrspace(1), ptr %d
  %882 = load ptr addrspace(1), ptr %a
  %883 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %881, i64 4)
  %884 = icmp ne ptr addrspace(1) %883, null
  %885 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %882, i64 4)
  %886 = icmp ne ptr addrspace(1) %885, null
  %887 = and i1 %884, %886
  br i1 %887, label %888, label %891
888:
  %889 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %881, ptr addrspace(1) %882), !dbg !115
  %890 = icmp ule i64 %889, 1
  store i1 %890, ptr %82
  br label %894
891:
  %892 = call i64 @_bal_array_int_compare(ptr addrspace(1) %881, ptr addrspace(1) %882), !dbg !116
  %893 = icmp ule i64 %892, 1
  store i1 %893, ptr %82
  br label %894
894:
  %895 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !117
  %896 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %895, i64 0, i32 3
  %897 = load ptr addrspace(1), ptr addrspace(1) %896, align 8
  %898 = bitcast ptr addrspace(1) %897 to ptr addrspace(1)
  %899 = load i1, ptr %82
  %900 = zext i1 %899 to i64
  %901 = or i64 %900, 72057594037927936
  %902 = getelementptr i8, ptr addrspace(1) null, i64 %901
  %903 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %898, i64 0, i64 0
  store ptr addrspace(1) %902, ptr addrspace(1) %903
  %904 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %895, i64 0, i32 1
  store i64 1, ptr addrspace(1) %904
  %905 = bitcast ptr addrspace(1) %895 to ptr addrspace(1)
  %906 = getelementptr i8, ptr addrspace(1) %905, i64 864691128455135236
  store ptr addrspace(1) %906, ptr %83
  %907 = load ptr addrspace(1), ptr %83
  call void @_Bb02ioprintln(ptr addrspace(1) %907), !dbg !118
  store ptr addrspace(1) null, ptr %84
  %908 = load ptr addrspace(1), ptr %d
  %909 = load ptr addrspace(1), ptr %a
  %910 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %908, i64 4)
  %911 = icmp ne ptr addrspace(1) %910, null
  %912 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %909, i64 4)
  %913 = icmp ne ptr addrspace(1) %912, null
  %914 = and i1 %911, %913
  br i1 %914, label %915, label %918
915:
  %916 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %908, ptr addrspace(1) %909), !dbg !119
  %917 = icmp eq i64 %916, 2
  store i1 %917, ptr %85
  br label %921
918:
  %919 = call i64 @_bal_array_int_compare(ptr addrspace(1) %908, ptr addrspace(1) %909), !dbg !120
  %920 = icmp eq i64 %919, 2
  store i1 %920, ptr %85
  br label %921
921:
  %922 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !121
  %923 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %922, i64 0, i32 3
  %924 = load ptr addrspace(1), ptr addrspace(1) %923, align 8
  %925 = bitcast ptr addrspace(1) %924 to ptr addrspace(1)
  %926 = load i1, ptr %85
  %927 = zext i1 %926 to i64
  %928 = or i64 %927, 72057594037927936
  %929 = getelementptr i8, ptr addrspace(1) null, i64 %928
  %930 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %925, i64 0, i64 0
  store ptr addrspace(1) %929, ptr addrspace(1) %930
  %931 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %922, i64 0, i32 1
  store i64 1, ptr addrspace(1) %931
  %932 = bitcast ptr addrspace(1) %922 to ptr addrspace(1)
  %933 = getelementptr i8, ptr addrspace(1) %932, i64 864691128455135236
  store ptr addrspace(1) %933, ptr %86
  %934 = load ptr addrspace(1), ptr %86
  call void @_Bb02ioprintln(ptr addrspace(1) %934), !dbg !122
  store ptr addrspace(1) null, ptr %87
  %935 = load ptr addrspace(1), ptr %d
  %936 = load ptr addrspace(1), ptr %a
  %937 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %935, i64 4)
  %938 = icmp ne ptr addrspace(1) %937, null
  %939 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %936, i64 4)
  %940 = icmp ne ptr addrspace(1) %939, null
  %941 = and i1 %938, %940
  br i1 %941, label %942, label %945
942:
  %943 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %935, ptr addrspace(1) %936), !dbg !123
  %944 = icmp sge i64 %943, 1
  store i1 %944, ptr %88
  br label %948
945:
  %946 = call i64 @_bal_array_int_compare(ptr addrspace(1) %935, ptr addrspace(1) %936), !dbg !124
  %947 = icmp sge i64 %946, 1
  store i1 %947, ptr %88
  br label %948
948:
  %949 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !125
  %950 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %949, i64 0, i32 3
  %951 = load ptr addrspace(1), ptr addrspace(1) %950, align 8
  %952 = bitcast ptr addrspace(1) %951 to ptr addrspace(1)
  %953 = load i1, ptr %88
  %954 = zext i1 %953 to i64
  %955 = or i64 %954, 72057594037927936
  %956 = getelementptr i8, ptr addrspace(1) null, i64 %955
  %957 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %952, i64 0, i64 0
  store ptr addrspace(1) %956, ptr addrspace(1) %957
  %958 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %949, i64 0, i32 1
  store i64 1, ptr addrspace(1) %958
  %959 = bitcast ptr addrspace(1) %949 to ptr addrspace(1)
  %960 = getelementptr i8, ptr addrspace(1) %959, i64 864691128455135236
  store ptr addrspace(1) %960, ptr %89
  %961 = load ptr addrspace(1), ptr %89
  call void @_Bb02ioprintln(ptr addrspace(1) %961), !dbg !126
  store ptr addrspace(1) null, ptr %90
  %962 = load ptr addrspace(1), ptr %a
  %963 = load ptr addrspace(1), ptr %e
  %964 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %962, i64 4)
  %965 = icmp ne ptr addrspace(1) %964, null
  %966 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %963, i64 4)
  %967 = icmp ne ptr addrspace(1) %966, null
  %968 = and i1 %965, %967
  br i1 %968, label %969, label %972
969:
  %970 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %962, ptr addrspace(1) %963), !dbg !127
  %971 = icmp eq i64 %970, 0
  store i1 %971, ptr %91
  br label %975
972:
  %973 = call i64 @_bal_array_int_compare(ptr addrspace(1) %962, ptr addrspace(1) %963), !dbg !128
  %974 = icmp eq i64 %973, 0
  store i1 %974, ptr %91
  br label %975
975:
  %976 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !129
  %977 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %976, i64 0, i32 3
  %978 = load ptr addrspace(1), ptr addrspace(1) %977, align 8
  %979 = bitcast ptr addrspace(1) %978 to ptr addrspace(1)
  %980 = load i1, ptr %91
  %981 = zext i1 %980 to i64
  %982 = or i64 %981, 72057594037927936
  %983 = getelementptr i8, ptr addrspace(1) null, i64 %982
  %984 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %979, i64 0, i64 0
  store ptr addrspace(1) %983, ptr addrspace(1) %984
  %985 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %976, i64 0, i32 1
  store i64 1, ptr addrspace(1) %985
  %986 = bitcast ptr addrspace(1) %976 to ptr addrspace(1)
  %987 = getelementptr i8, ptr addrspace(1) %986, i64 864691128455135236
  store ptr addrspace(1) %987, ptr %92
  %988 = load ptr addrspace(1), ptr %92
  call void @_Bb02ioprintln(ptr addrspace(1) %988), !dbg !130
  store ptr addrspace(1) null, ptr %93
  %989 = load ptr addrspace(1), ptr %a
  %990 = load ptr addrspace(1), ptr %e
  %991 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %989, i64 4)
  %992 = icmp ne ptr addrspace(1) %991, null
  %993 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %990, i64 4)
  %994 = icmp ne ptr addrspace(1) %993, null
  %995 = and i1 %992, %994
  br i1 %995, label %996, label %999
996:
  %997 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %989, ptr addrspace(1) %990), !dbg !131
  %998 = icmp ule i64 %997, 1
  store i1 %998, ptr %94
  br label %1002
999:
  %1000 = call i64 @_bal_array_int_compare(ptr addrspace(1) %989, ptr addrspace(1) %990), !dbg !132
  %1001 = icmp ule i64 %1000, 1
  store i1 %1001, ptr %94
  br label %1002
1002:
  %1003 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !133
  %1004 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1003, i64 0, i32 3
  %1005 = load ptr addrspace(1), ptr addrspace(1) %1004, align 8
  %1006 = bitcast ptr addrspace(1) %1005 to ptr addrspace(1)
  %1007 = load i1, ptr %94
  %1008 = zext i1 %1007 to i64
  %1009 = or i64 %1008, 72057594037927936
  %1010 = getelementptr i8, ptr addrspace(1) null, i64 %1009
  %1011 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1006, i64 0, i64 0
  store ptr addrspace(1) %1010, ptr addrspace(1) %1011
  %1012 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1003, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1012
  %1013 = bitcast ptr addrspace(1) %1003 to ptr addrspace(1)
  %1014 = getelementptr i8, ptr addrspace(1) %1013, i64 864691128455135236
  store ptr addrspace(1) %1014, ptr %95
  %1015 = load ptr addrspace(1), ptr %95
  call void @_Bb02ioprintln(ptr addrspace(1) %1015), !dbg !134
  store ptr addrspace(1) null, ptr %96
  %1016 = load ptr addrspace(1), ptr %a
  %1017 = load ptr addrspace(1), ptr %e
  %1018 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1016, i64 4)
  %1019 = icmp ne ptr addrspace(1) %1018, null
  %1020 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1017, i64 4)
  %1021 = icmp ne ptr addrspace(1) %1020, null
  %1022 = and i1 %1019, %1021
  br i1 %1022, label %1023, label %1026
1023:
  %1024 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1016, ptr addrspace(1) %1017), !dbg !135
  %1025 = icmp eq i64 %1024, 2
  store i1 %1025, ptr %97
  br label %1029
1026:
  %1027 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1016, ptr addrspace(1) %1017), !dbg !136
  %1028 = icmp eq i64 %1027, 2
  store i1 %1028, ptr %97
  br label %1029
1029:
  %1030 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !137
  %1031 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1030, i64 0, i32 3
  %1032 = load ptr addrspace(1), ptr addrspace(1) %1031, align 8
  %1033 = bitcast ptr addrspace(1) %1032 to ptr addrspace(1)
  %1034 = load i1, ptr %97
  %1035 = zext i1 %1034 to i64
  %1036 = or i64 %1035, 72057594037927936
  %1037 = getelementptr i8, ptr addrspace(1) null, i64 %1036
  %1038 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1033, i64 0, i64 0
  store ptr addrspace(1) %1037, ptr addrspace(1) %1038
  %1039 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1030, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1039
  %1040 = bitcast ptr addrspace(1) %1030 to ptr addrspace(1)
  %1041 = getelementptr i8, ptr addrspace(1) %1040, i64 864691128455135236
  store ptr addrspace(1) %1041, ptr %98
  %1042 = load ptr addrspace(1), ptr %98
  call void @_Bb02ioprintln(ptr addrspace(1) %1042), !dbg !138
  store ptr addrspace(1) null, ptr %99
  %1043 = load ptr addrspace(1), ptr %a
  %1044 = load ptr addrspace(1), ptr %e
  %1045 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1043, i64 4)
  %1046 = icmp ne ptr addrspace(1) %1045, null
  %1047 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1044, i64 4)
  %1048 = icmp ne ptr addrspace(1) %1047, null
  %1049 = and i1 %1046, %1048
  br i1 %1049, label %1050, label %1053
1050:
  %1051 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1043, ptr addrspace(1) %1044), !dbg !139
  %1052 = icmp sge i64 %1051, 1
  store i1 %1052, ptr %100
  br label %1056
1053:
  %1054 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1043, ptr addrspace(1) %1044), !dbg !140
  %1055 = icmp sge i64 %1054, 1
  store i1 %1055, ptr %100
  br label %1056
1056:
  %1057 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !141
  %1058 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1057, i64 0, i32 3
  %1059 = load ptr addrspace(1), ptr addrspace(1) %1058, align 8
  %1060 = bitcast ptr addrspace(1) %1059 to ptr addrspace(1)
  %1061 = load i1, ptr %100
  %1062 = zext i1 %1061 to i64
  %1063 = or i64 %1062, 72057594037927936
  %1064 = getelementptr i8, ptr addrspace(1) null, i64 %1063
  %1065 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1060, i64 0, i64 0
  store ptr addrspace(1) %1064, ptr addrspace(1) %1065
  %1066 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1057, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1066
  %1067 = bitcast ptr addrspace(1) %1057 to ptr addrspace(1)
  %1068 = getelementptr i8, ptr addrspace(1) %1067, i64 864691128455135236
  store ptr addrspace(1) %1068, ptr %101
  %1069 = load ptr addrspace(1), ptr %101
  call void @_Bb02ioprintln(ptr addrspace(1) %1069), !dbg !142
  store ptr addrspace(1) null, ptr %102
  %1070 = load ptr addrspace(1), ptr %e
  %1071 = load ptr addrspace(1), ptr %a
  %1072 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1070, i64 4)
  %1073 = icmp ne ptr addrspace(1) %1072, null
  %1074 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1071, i64 4)
  %1075 = icmp ne ptr addrspace(1) %1074, null
  %1076 = and i1 %1073, %1075
  br i1 %1076, label %1077, label %1080
1077:
  %1078 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1070, ptr addrspace(1) %1071), !dbg !143
  %1079 = icmp eq i64 %1078, 0
  store i1 %1079, ptr %103
  br label %1083
1080:
  %1081 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1070, ptr addrspace(1) %1071), !dbg !144
  %1082 = icmp eq i64 %1081, 0
  store i1 %1082, ptr %103
  br label %1083
1083:
  %1084 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !145
  %1085 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1084, i64 0, i32 3
  %1086 = load ptr addrspace(1), ptr addrspace(1) %1085, align 8
  %1087 = bitcast ptr addrspace(1) %1086 to ptr addrspace(1)
  %1088 = load i1, ptr %103
  %1089 = zext i1 %1088 to i64
  %1090 = or i64 %1089, 72057594037927936
  %1091 = getelementptr i8, ptr addrspace(1) null, i64 %1090
  %1092 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1087, i64 0, i64 0
  store ptr addrspace(1) %1091, ptr addrspace(1) %1092
  %1093 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1084, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1093
  %1094 = bitcast ptr addrspace(1) %1084 to ptr addrspace(1)
  %1095 = getelementptr i8, ptr addrspace(1) %1094, i64 864691128455135236
  store ptr addrspace(1) %1095, ptr %104
  %1096 = load ptr addrspace(1), ptr %104
  call void @_Bb02ioprintln(ptr addrspace(1) %1096), !dbg !146
  store ptr addrspace(1) null, ptr %105
  %1097 = load ptr addrspace(1), ptr %e
  %1098 = load ptr addrspace(1), ptr %a
  %1099 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1097, i64 4)
  %1100 = icmp ne ptr addrspace(1) %1099, null
  %1101 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1098, i64 4)
  %1102 = icmp ne ptr addrspace(1) %1101, null
  %1103 = and i1 %1100, %1102
  br i1 %1103, label %1104, label %1107
1104:
  %1105 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1097, ptr addrspace(1) %1098), !dbg !147
  %1106 = icmp ule i64 %1105, 1
  store i1 %1106, ptr %106
  br label %1110
1107:
  %1108 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1097, ptr addrspace(1) %1098), !dbg !148
  %1109 = icmp ule i64 %1108, 1
  store i1 %1109, ptr %106
  br label %1110
1110:
  %1111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !149
  %1112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1111, i64 0, i32 3
  %1113 = load ptr addrspace(1), ptr addrspace(1) %1112, align 8
  %1114 = bitcast ptr addrspace(1) %1113 to ptr addrspace(1)
  %1115 = load i1, ptr %106
  %1116 = zext i1 %1115 to i64
  %1117 = or i64 %1116, 72057594037927936
  %1118 = getelementptr i8, ptr addrspace(1) null, i64 %1117
  %1119 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1114, i64 0, i64 0
  store ptr addrspace(1) %1118, ptr addrspace(1) %1119
  %1120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1120
  %1121 = bitcast ptr addrspace(1) %1111 to ptr addrspace(1)
  %1122 = getelementptr i8, ptr addrspace(1) %1121, i64 864691128455135236
  store ptr addrspace(1) %1122, ptr %107
  %1123 = load ptr addrspace(1), ptr %107
  call void @_Bb02ioprintln(ptr addrspace(1) %1123), !dbg !150
  store ptr addrspace(1) null, ptr %108
  %1124 = load ptr addrspace(1), ptr %e
  %1125 = load ptr addrspace(1), ptr %a
  %1126 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1124, i64 4)
  %1127 = icmp ne ptr addrspace(1) %1126, null
  %1128 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1125, i64 4)
  %1129 = icmp ne ptr addrspace(1) %1128, null
  %1130 = and i1 %1127, %1129
  br i1 %1130, label %1131, label %1134
1131:
  %1132 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1124, ptr addrspace(1) %1125), !dbg !151
  %1133 = icmp eq i64 %1132, 2
  store i1 %1133, ptr %109
  br label %1137
1134:
  %1135 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1124, ptr addrspace(1) %1125), !dbg !152
  %1136 = icmp eq i64 %1135, 2
  store i1 %1136, ptr %109
  br label %1137
1137:
  %1138 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !153
  %1139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1138, i64 0, i32 3
  %1140 = load ptr addrspace(1), ptr addrspace(1) %1139, align 8
  %1141 = bitcast ptr addrspace(1) %1140 to ptr addrspace(1)
  %1142 = load i1, ptr %109
  %1143 = zext i1 %1142 to i64
  %1144 = or i64 %1143, 72057594037927936
  %1145 = getelementptr i8, ptr addrspace(1) null, i64 %1144
  %1146 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1141, i64 0, i64 0
  store ptr addrspace(1) %1145, ptr addrspace(1) %1146
  %1147 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1138, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1147
  %1148 = bitcast ptr addrspace(1) %1138 to ptr addrspace(1)
  %1149 = getelementptr i8, ptr addrspace(1) %1148, i64 864691128455135236
  store ptr addrspace(1) %1149, ptr %110
  %1150 = load ptr addrspace(1), ptr %110
  call void @_Bb02ioprintln(ptr addrspace(1) %1150), !dbg !154
  store ptr addrspace(1) null, ptr %111
  %1151 = load ptr addrspace(1), ptr %e
  %1152 = load ptr addrspace(1), ptr %a
  %1153 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1151, i64 4)
  %1154 = icmp ne ptr addrspace(1) %1153, null
  %1155 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1152, i64 4)
  %1156 = icmp ne ptr addrspace(1) %1155, null
  %1157 = and i1 %1154, %1156
  br i1 %1157, label %1158, label %1161
1158:
  %1159 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1151, ptr addrspace(1) %1152), !dbg !155
  %1160 = icmp sge i64 %1159, 1
  store i1 %1160, ptr %112
  br label %1164
1161:
  %1162 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1151, ptr addrspace(1) %1152), !dbg !156
  %1163 = icmp sge i64 %1162, 1
  store i1 %1163, ptr %112
  br label %1164
1164:
  %1165 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !157
  %1166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1165, i64 0, i32 3
  %1167 = load ptr addrspace(1), ptr addrspace(1) %1166, align 8
  %1168 = bitcast ptr addrspace(1) %1167 to ptr addrspace(1)
  %1169 = load i1, ptr %112
  %1170 = zext i1 %1169 to i64
  %1171 = or i64 %1170, 72057594037927936
  %1172 = getelementptr i8, ptr addrspace(1) null, i64 %1171
  %1173 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1168, i64 0, i64 0
  store ptr addrspace(1) %1172, ptr addrspace(1) %1173
  %1174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1165, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1174
  %1175 = bitcast ptr addrspace(1) %1165 to ptr addrspace(1)
  %1176 = getelementptr i8, ptr addrspace(1) %1175, i64 864691128455135236
  store ptr addrspace(1) %1176, ptr %113
  %1177 = load ptr addrspace(1), ptr %113
  call void @_Bb02ioprintln(ptr addrspace(1) %1177), !dbg !158
  store ptr addrspace(1) null, ptr %114
  %1178 = load ptr addrspace(1), ptr %a
  %1179 = load ptr addrspace(1), ptr %f
  %1180 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1178, i64 4)
  %1181 = icmp ne ptr addrspace(1) %1180, null
  %1182 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1179, i64 4)
  %1183 = icmp ne ptr addrspace(1) %1182, null
  %1184 = and i1 %1181, %1183
  br i1 %1184, label %1185, label %1188
1185:
  %1186 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1178, ptr addrspace(1) %1179), !dbg !159
  %1187 = icmp eq i64 %1186, 0
  store i1 %1187, ptr %115
  br label %1191
1188:
  %1189 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1178, ptr addrspace(1) %1179), !dbg !160
  %1190 = icmp eq i64 %1189, 0
  store i1 %1190, ptr %115
  br label %1191
1191:
  %1192 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !161
  %1193 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1192, i64 0, i32 3
  %1194 = load ptr addrspace(1), ptr addrspace(1) %1193, align 8
  %1195 = bitcast ptr addrspace(1) %1194 to ptr addrspace(1)
  %1196 = load i1, ptr %115
  %1197 = zext i1 %1196 to i64
  %1198 = or i64 %1197, 72057594037927936
  %1199 = getelementptr i8, ptr addrspace(1) null, i64 %1198
  %1200 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1195, i64 0, i64 0
  store ptr addrspace(1) %1199, ptr addrspace(1) %1200
  %1201 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1192, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1201
  %1202 = bitcast ptr addrspace(1) %1192 to ptr addrspace(1)
  %1203 = getelementptr i8, ptr addrspace(1) %1202, i64 864691128455135236
  store ptr addrspace(1) %1203, ptr %116
  %1204 = load ptr addrspace(1), ptr %116
  call void @_Bb02ioprintln(ptr addrspace(1) %1204), !dbg !162
  store ptr addrspace(1) null, ptr %117
  %1205 = load ptr addrspace(1), ptr %a
  %1206 = load ptr addrspace(1), ptr %f
  %1207 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1205, i64 4)
  %1208 = icmp ne ptr addrspace(1) %1207, null
  %1209 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1206, i64 4)
  %1210 = icmp ne ptr addrspace(1) %1209, null
  %1211 = and i1 %1208, %1210
  br i1 %1211, label %1212, label %1215
1212:
  %1213 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1205, ptr addrspace(1) %1206), !dbg !163
  %1214 = icmp ule i64 %1213, 1
  store i1 %1214, ptr %118
  br label %1218
1215:
  %1216 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1205, ptr addrspace(1) %1206), !dbg !164
  %1217 = icmp ule i64 %1216, 1
  store i1 %1217, ptr %118
  br label %1218
1218:
  %1219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !165
  %1220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1219, i64 0, i32 3
  %1221 = load ptr addrspace(1), ptr addrspace(1) %1220, align 8
  %1222 = bitcast ptr addrspace(1) %1221 to ptr addrspace(1)
  %1223 = load i1, ptr %118
  %1224 = zext i1 %1223 to i64
  %1225 = or i64 %1224, 72057594037927936
  %1226 = getelementptr i8, ptr addrspace(1) null, i64 %1225
  %1227 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1222, i64 0, i64 0
  store ptr addrspace(1) %1226, ptr addrspace(1) %1227
  %1228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1228
  %1229 = bitcast ptr addrspace(1) %1219 to ptr addrspace(1)
  %1230 = getelementptr i8, ptr addrspace(1) %1229, i64 864691128455135236
  store ptr addrspace(1) %1230, ptr %119
  %1231 = load ptr addrspace(1), ptr %119
  call void @_Bb02ioprintln(ptr addrspace(1) %1231), !dbg !166
  store ptr addrspace(1) null, ptr %120
  %1232 = load ptr addrspace(1), ptr %a
  %1233 = load ptr addrspace(1), ptr %f
  %1234 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1232, i64 4)
  %1235 = icmp ne ptr addrspace(1) %1234, null
  %1236 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1233, i64 4)
  %1237 = icmp ne ptr addrspace(1) %1236, null
  %1238 = and i1 %1235, %1237
  br i1 %1238, label %1239, label %1242
1239:
  %1240 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1232, ptr addrspace(1) %1233), !dbg !167
  %1241 = icmp eq i64 %1240, 2
  store i1 %1241, ptr %121
  br label %1245
1242:
  %1243 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1232, ptr addrspace(1) %1233), !dbg !168
  %1244 = icmp eq i64 %1243, 2
  store i1 %1244, ptr %121
  br label %1245
1245:
  %1246 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !169
  %1247 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1246, i64 0, i32 3
  %1248 = load ptr addrspace(1), ptr addrspace(1) %1247, align 8
  %1249 = bitcast ptr addrspace(1) %1248 to ptr addrspace(1)
  %1250 = load i1, ptr %121
  %1251 = zext i1 %1250 to i64
  %1252 = or i64 %1251, 72057594037927936
  %1253 = getelementptr i8, ptr addrspace(1) null, i64 %1252
  %1254 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1249, i64 0, i64 0
  store ptr addrspace(1) %1253, ptr addrspace(1) %1254
  %1255 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1246, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1255
  %1256 = bitcast ptr addrspace(1) %1246 to ptr addrspace(1)
  %1257 = getelementptr i8, ptr addrspace(1) %1256, i64 864691128455135236
  store ptr addrspace(1) %1257, ptr %122
  %1258 = load ptr addrspace(1), ptr %122
  call void @_Bb02ioprintln(ptr addrspace(1) %1258), !dbg !170
  store ptr addrspace(1) null, ptr %123
  %1259 = load ptr addrspace(1), ptr %a
  %1260 = load ptr addrspace(1), ptr %f
  %1261 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1259, i64 4)
  %1262 = icmp ne ptr addrspace(1) %1261, null
  %1263 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1260, i64 4)
  %1264 = icmp ne ptr addrspace(1) %1263, null
  %1265 = and i1 %1262, %1264
  br i1 %1265, label %1266, label %1269
1266:
  %1267 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1259, ptr addrspace(1) %1260), !dbg !171
  %1268 = icmp sge i64 %1267, 1
  store i1 %1268, ptr %124
  br label %1272
1269:
  %1270 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1259, ptr addrspace(1) %1260), !dbg !172
  %1271 = icmp sge i64 %1270, 1
  store i1 %1271, ptr %124
  br label %1272
1272:
  %1273 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !173
  %1274 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1273, i64 0, i32 3
  %1275 = load ptr addrspace(1), ptr addrspace(1) %1274, align 8
  %1276 = bitcast ptr addrspace(1) %1275 to ptr addrspace(1)
  %1277 = load i1, ptr %124
  %1278 = zext i1 %1277 to i64
  %1279 = or i64 %1278, 72057594037927936
  %1280 = getelementptr i8, ptr addrspace(1) null, i64 %1279
  %1281 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1276, i64 0, i64 0
  store ptr addrspace(1) %1280, ptr addrspace(1) %1281
  %1282 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1273, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1282
  %1283 = bitcast ptr addrspace(1) %1273 to ptr addrspace(1)
  %1284 = getelementptr i8, ptr addrspace(1) %1283, i64 864691128455135236
  store ptr addrspace(1) %1284, ptr %125
  %1285 = load ptr addrspace(1), ptr %125
  call void @_Bb02ioprintln(ptr addrspace(1) %1285), !dbg !174
  store ptr addrspace(1) null, ptr %126
  %1286 = load ptr addrspace(1), ptr %f
  %1287 = load ptr addrspace(1), ptr %a
  %1288 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1286, i64 4)
  %1289 = icmp ne ptr addrspace(1) %1288, null
  %1290 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1287, i64 4)
  %1291 = icmp ne ptr addrspace(1) %1290, null
  %1292 = and i1 %1289, %1291
  br i1 %1292, label %1293, label %1296
1293:
  %1294 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1286, ptr addrspace(1) %1287), !dbg !175
  %1295 = icmp eq i64 %1294, 0
  store i1 %1295, ptr %127
  br label %1299
1296:
  %1297 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1286, ptr addrspace(1) %1287), !dbg !176
  %1298 = icmp eq i64 %1297, 0
  store i1 %1298, ptr %127
  br label %1299
1299:
  %1300 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !177
  %1301 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1300, i64 0, i32 3
  %1302 = load ptr addrspace(1), ptr addrspace(1) %1301, align 8
  %1303 = bitcast ptr addrspace(1) %1302 to ptr addrspace(1)
  %1304 = load i1, ptr %127
  %1305 = zext i1 %1304 to i64
  %1306 = or i64 %1305, 72057594037927936
  %1307 = getelementptr i8, ptr addrspace(1) null, i64 %1306
  %1308 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1303, i64 0, i64 0
  store ptr addrspace(1) %1307, ptr addrspace(1) %1308
  %1309 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1300, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1309
  %1310 = bitcast ptr addrspace(1) %1300 to ptr addrspace(1)
  %1311 = getelementptr i8, ptr addrspace(1) %1310, i64 864691128455135236
  store ptr addrspace(1) %1311, ptr %128
  %1312 = load ptr addrspace(1), ptr %128
  call void @_Bb02ioprintln(ptr addrspace(1) %1312), !dbg !178
  store ptr addrspace(1) null, ptr %129
  %1313 = load ptr addrspace(1), ptr %f
  %1314 = load ptr addrspace(1), ptr %a
  %1315 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1313, i64 4)
  %1316 = icmp ne ptr addrspace(1) %1315, null
  %1317 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1314, i64 4)
  %1318 = icmp ne ptr addrspace(1) %1317, null
  %1319 = and i1 %1316, %1318
  br i1 %1319, label %1320, label %1323
1320:
  %1321 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1313, ptr addrspace(1) %1314), !dbg !179
  %1322 = icmp ule i64 %1321, 1
  store i1 %1322, ptr %130
  br label %1326
1323:
  %1324 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1313, ptr addrspace(1) %1314), !dbg !180
  %1325 = icmp ule i64 %1324, 1
  store i1 %1325, ptr %130
  br label %1326
1326:
  %1327 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !181
  %1328 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1327, i64 0, i32 3
  %1329 = load ptr addrspace(1), ptr addrspace(1) %1328, align 8
  %1330 = bitcast ptr addrspace(1) %1329 to ptr addrspace(1)
  %1331 = load i1, ptr %130
  %1332 = zext i1 %1331 to i64
  %1333 = or i64 %1332, 72057594037927936
  %1334 = getelementptr i8, ptr addrspace(1) null, i64 %1333
  %1335 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1330, i64 0, i64 0
  store ptr addrspace(1) %1334, ptr addrspace(1) %1335
  %1336 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1327, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1336
  %1337 = bitcast ptr addrspace(1) %1327 to ptr addrspace(1)
  %1338 = getelementptr i8, ptr addrspace(1) %1337, i64 864691128455135236
  store ptr addrspace(1) %1338, ptr %131
  %1339 = load ptr addrspace(1), ptr %131
  call void @_Bb02ioprintln(ptr addrspace(1) %1339), !dbg !182
  store ptr addrspace(1) null, ptr %132
  %1340 = load ptr addrspace(1), ptr %f
  %1341 = load ptr addrspace(1), ptr %a
  %1342 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1340, i64 4)
  %1343 = icmp ne ptr addrspace(1) %1342, null
  %1344 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1341, i64 4)
  %1345 = icmp ne ptr addrspace(1) %1344, null
  %1346 = and i1 %1343, %1345
  br i1 %1346, label %1347, label %1350
1347:
  %1348 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1340, ptr addrspace(1) %1341), !dbg !183
  %1349 = icmp eq i64 %1348, 2
  store i1 %1349, ptr %133
  br label %1353
1350:
  %1351 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1340, ptr addrspace(1) %1341), !dbg !184
  %1352 = icmp eq i64 %1351, 2
  store i1 %1352, ptr %133
  br label %1353
1353:
  %1354 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !185
  %1355 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1354, i64 0, i32 3
  %1356 = load ptr addrspace(1), ptr addrspace(1) %1355, align 8
  %1357 = bitcast ptr addrspace(1) %1356 to ptr addrspace(1)
  %1358 = load i1, ptr %133
  %1359 = zext i1 %1358 to i64
  %1360 = or i64 %1359, 72057594037927936
  %1361 = getelementptr i8, ptr addrspace(1) null, i64 %1360
  %1362 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1357, i64 0, i64 0
  store ptr addrspace(1) %1361, ptr addrspace(1) %1362
  %1363 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1354, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1363
  %1364 = bitcast ptr addrspace(1) %1354 to ptr addrspace(1)
  %1365 = getelementptr i8, ptr addrspace(1) %1364, i64 864691128455135236
  store ptr addrspace(1) %1365, ptr %134
  %1366 = load ptr addrspace(1), ptr %134
  call void @_Bb02ioprintln(ptr addrspace(1) %1366), !dbg !186
  store ptr addrspace(1) null, ptr %135
  %1367 = load ptr addrspace(1), ptr %f
  %1368 = load ptr addrspace(1), ptr %a
  %1369 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1367, i64 4)
  %1370 = icmp ne ptr addrspace(1) %1369, null
  %1371 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %1368, i64 4)
  %1372 = icmp ne ptr addrspace(1) %1371, null
  %1373 = and i1 %1370, %1372
  br i1 %1373, label %1374, label %1377
1374:
  %1375 = call i64 @_bal_array_exact_int_compare(ptr addrspace(1) %1367, ptr addrspace(1) %1368), !dbg !187
  %1376 = icmp sge i64 %1375, 1
  store i1 %1376, ptr %136
  br label %1380
1377:
  %1378 = call i64 @_bal_array_int_compare(ptr addrspace(1) %1367, ptr addrspace(1) %1368), !dbg !188
  %1379 = icmp sge i64 %1378, 1
  store i1 %1379, ptr %136
  br label %1380
1380:
  %1381 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !189
  %1382 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1381, i64 0, i32 3
  %1383 = load ptr addrspace(1), ptr addrspace(1) %1382, align 8
  %1384 = bitcast ptr addrspace(1) %1383 to ptr addrspace(1)
  %1385 = load i1, ptr %136
  %1386 = zext i1 %1385 to i64
  %1387 = or i64 %1386, 72057594037927936
  %1388 = getelementptr i8, ptr addrspace(1) null, i64 %1387
  %1389 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %1384, i64 0, i64 0
  store ptr addrspace(1) %1388, ptr addrspace(1) %1389
  %1390 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %1381, i64 0, i32 1
  store i64 1, ptr addrspace(1) %1390
  %1391 = bitcast ptr addrspace(1) %1381 to ptr addrspace(1)
  %1392 = getelementptr i8, ptr addrspace(1) %1391, i64 864691128455135236
  store ptr addrspace(1) %1392, ptr %137
  %1393 = load ptr addrspace(1), ptr %137
  call void @_Bb02ioprintln(ptr addrspace(1) %1393), !dbg !190
  store ptr addrspace(1) null, ptr %138
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/order1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 11, scope: !5)
!10 = !DILocation(line: 5, column: 11, scope: !5)
!11 = !DILocation(line: 6, column: 11, scope: !5)
!12 = !DILocation(line: 7, column: 11, scope: !5)
!13 = !DILocation(line: 8, column: 11, scope: !5)
!14 = !DILocation(line: 9, column: 11, scope: !5)
!15 = !DILocation(line: 11, column: 14, scope: !5)
!16 = !DILocation(line: 11, column: 14, scope: !5)
!17 = !DILocation(line: 11, column: 12, scope: !5)
!18 = !DILocation(line: 11, column: 1, scope: !5)
!19 = !DILocation(line: 12, column: 14, scope: !5)
!20 = !DILocation(line: 12, column: 14, scope: !5)
!21 = !DILocation(line: 12, column: 12, scope: !5)
!22 = !DILocation(line: 12, column: 1, scope: !5)
!23 = !DILocation(line: 13, column: 14, scope: !5)
!24 = !DILocation(line: 13, column: 14, scope: !5)
!25 = !DILocation(line: 13, column: 12, scope: !5)
!26 = !DILocation(line: 13, column: 1, scope: !5)
!27 = !DILocation(line: 14, column: 14, scope: !5)
!28 = !DILocation(line: 14, column: 14, scope: !5)
!29 = !DILocation(line: 14, column: 12, scope: !5)
!30 = !DILocation(line: 14, column: 1, scope: !5)
!31 = !DILocation(line: 16, column: 14, scope: !5)
!32 = !DILocation(line: 16, column: 14, scope: !5)
!33 = !DILocation(line: 16, column: 12, scope: !5)
!34 = !DILocation(line: 16, column: 1, scope: !5)
!35 = !DILocation(line: 17, column: 14, scope: !5)
!36 = !DILocation(line: 17, column: 14, scope: !5)
!37 = !DILocation(line: 17, column: 12, scope: !5)
!38 = !DILocation(line: 17, column: 1, scope: !5)
!39 = !DILocation(line: 18, column: 14, scope: !5)
!40 = !DILocation(line: 18, column: 14, scope: !5)
!41 = !DILocation(line: 18, column: 12, scope: !5)
!42 = !DILocation(line: 18, column: 1, scope: !5)
!43 = !DILocation(line: 19, column: 14, scope: !5)
!44 = !DILocation(line: 19, column: 14, scope: !5)
!45 = !DILocation(line: 19, column: 12, scope: !5)
!46 = !DILocation(line: 19, column: 1, scope: !5)
!47 = !DILocation(line: 21, column: 14, scope: !5)
!48 = !DILocation(line: 21, column: 14, scope: !5)
!49 = !DILocation(line: 21, column: 12, scope: !5)
!50 = !DILocation(line: 21, column: 1, scope: !5)
!51 = !DILocation(line: 22, column: 14, scope: !5)
!52 = !DILocation(line: 22, column: 14, scope: !5)
!53 = !DILocation(line: 22, column: 12, scope: !5)
!54 = !DILocation(line: 22, column: 1, scope: !5)
!55 = !DILocation(line: 23, column: 14, scope: !5)
!56 = !DILocation(line: 23, column: 14, scope: !5)
!57 = !DILocation(line: 23, column: 12, scope: !5)
!58 = !DILocation(line: 23, column: 1, scope: !5)
!59 = !DILocation(line: 24, column: 14, scope: !5)
!60 = !DILocation(line: 24, column: 14, scope: !5)
!61 = !DILocation(line: 24, column: 12, scope: !5)
!62 = !DILocation(line: 24, column: 1, scope: !5)
!63 = !DILocation(line: 26, column: 14, scope: !5)
!64 = !DILocation(line: 26, column: 14, scope: !5)
!65 = !DILocation(line: 26, column: 12, scope: !5)
!66 = !DILocation(line: 26, column: 1, scope: !5)
!67 = !DILocation(line: 27, column: 14, scope: !5)
!68 = !DILocation(line: 27, column: 14, scope: !5)
!69 = !DILocation(line: 27, column: 12, scope: !5)
!70 = !DILocation(line: 27, column: 1, scope: !5)
!71 = !DILocation(line: 28, column: 14, scope: !5)
!72 = !DILocation(line: 28, column: 14, scope: !5)
!73 = !DILocation(line: 28, column: 12, scope: !5)
!74 = !DILocation(line: 28, column: 1, scope: !5)
!75 = !DILocation(line: 29, column: 14, scope: !5)
!76 = !DILocation(line: 29, column: 14, scope: !5)
!77 = !DILocation(line: 29, column: 12, scope: !5)
!78 = !DILocation(line: 29, column: 1, scope: !5)
!79 = !DILocation(line: 31, column: 14, scope: !5)
!80 = !DILocation(line: 31, column: 14, scope: !5)
!81 = !DILocation(line: 31, column: 12, scope: !5)
!82 = !DILocation(line: 31, column: 1, scope: !5)
!83 = !DILocation(line: 32, column: 14, scope: !5)
!84 = !DILocation(line: 32, column: 14, scope: !5)
!85 = !DILocation(line: 32, column: 12, scope: !5)
!86 = !DILocation(line: 32, column: 1, scope: !5)
!87 = !DILocation(line: 33, column: 14, scope: !5)
!88 = !DILocation(line: 33, column: 14, scope: !5)
!89 = !DILocation(line: 33, column: 12, scope: !5)
!90 = !DILocation(line: 33, column: 1, scope: !5)
!91 = !DILocation(line: 34, column: 14, scope: !5)
!92 = !DILocation(line: 34, column: 14, scope: !5)
!93 = !DILocation(line: 34, column: 12, scope: !5)
!94 = !DILocation(line: 34, column: 1, scope: !5)
!95 = !DILocation(line: 36, column: 14, scope: !5)
!96 = !DILocation(line: 36, column: 14, scope: !5)
!97 = !DILocation(line: 36, column: 12, scope: !5)
!98 = !DILocation(line: 36, column: 1, scope: !5)
!99 = !DILocation(line: 37, column: 14, scope: !5)
!100 = !DILocation(line: 37, column: 14, scope: !5)
!101 = !DILocation(line: 37, column: 12, scope: !5)
!102 = !DILocation(line: 37, column: 1, scope: !5)
!103 = !DILocation(line: 38, column: 14, scope: !5)
!104 = !DILocation(line: 38, column: 14, scope: !5)
!105 = !DILocation(line: 38, column: 12, scope: !5)
!106 = !DILocation(line: 38, column: 1, scope: !5)
!107 = !DILocation(line: 39, column: 14, scope: !5)
!108 = !DILocation(line: 39, column: 14, scope: !5)
!109 = !DILocation(line: 39, column: 12, scope: !5)
!110 = !DILocation(line: 39, column: 1, scope: !5)
!111 = !DILocation(line: 41, column: 14, scope: !5)
!112 = !DILocation(line: 41, column: 14, scope: !5)
!113 = !DILocation(line: 41, column: 12, scope: !5)
!114 = !DILocation(line: 41, column: 1, scope: !5)
!115 = !DILocation(line: 42, column: 14, scope: !5)
!116 = !DILocation(line: 42, column: 14, scope: !5)
!117 = !DILocation(line: 42, column: 12, scope: !5)
!118 = !DILocation(line: 42, column: 1, scope: !5)
!119 = !DILocation(line: 43, column: 14, scope: !5)
!120 = !DILocation(line: 43, column: 14, scope: !5)
!121 = !DILocation(line: 43, column: 12, scope: !5)
!122 = !DILocation(line: 43, column: 1, scope: !5)
!123 = !DILocation(line: 44, column: 14, scope: !5)
!124 = !DILocation(line: 44, column: 14, scope: !5)
!125 = !DILocation(line: 44, column: 12, scope: !5)
!126 = !DILocation(line: 44, column: 1, scope: !5)
!127 = !DILocation(line: 46, column: 14, scope: !5)
!128 = !DILocation(line: 46, column: 14, scope: !5)
!129 = !DILocation(line: 46, column: 12, scope: !5)
!130 = !DILocation(line: 46, column: 1, scope: !5)
!131 = !DILocation(line: 47, column: 14, scope: !5)
!132 = !DILocation(line: 47, column: 14, scope: !5)
!133 = !DILocation(line: 47, column: 12, scope: !5)
!134 = !DILocation(line: 47, column: 1, scope: !5)
!135 = !DILocation(line: 48, column: 14, scope: !5)
!136 = !DILocation(line: 48, column: 14, scope: !5)
!137 = !DILocation(line: 48, column: 12, scope: !5)
!138 = !DILocation(line: 48, column: 1, scope: !5)
!139 = !DILocation(line: 49, column: 14, scope: !5)
!140 = !DILocation(line: 49, column: 14, scope: !5)
!141 = !DILocation(line: 49, column: 12, scope: !5)
!142 = !DILocation(line: 49, column: 1, scope: !5)
!143 = !DILocation(line: 51, column: 14, scope: !5)
!144 = !DILocation(line: 51, column: 14, scope: !5)
!145 = !DILocation(line: 51, column: 12, scope: !5)
!146 = !DILocation(line: 51, column: 1, scope: !5)
!147 = !DILocation(line: 52, column: 14, scope: !5)
!148 = !DILocation(line: 52, column: 14, scope: !5)
!149 = !DILocation(line: 52, column: 12, scope: !5)
!150 = !DILocation(line: 52, column: 1, scope: !5)
!151 = !DILocation(line: 53, column: 14, scope: !5)
!152 = !DILocation(line: 53, column: 14, scope: !5)
!153 = !DILocation(line: 53, column: 12, scope: !5)
!154 = !DILocation(line: 53, column: 1, scope: !5)
!155 = !DILocation(line: 54, column: 14, scope: !5)
!156 = !DILocation(line: 54, column: 14, scope: !5)
!157 = !DILocation(line: 54, column: 12, scope: !5)
!158 = !DILocation(line: 54, column: 1, scope: !5)
!159 = !DILocation(line: 56, column: 14, scope: !5)
!160 = !DILocation(line: 56, column: 14, scope: !5)
!161 = !DILocation(line: 56, column: 12, scope: !5)
!162 = !DILocation(line: 56, column: 1, scope: !5)
!163 = !DILocation(line: 57, column: 14, scope: !5)
!164 = !DILocation(line: 57, column: 14, scope: !5)
!165 = !DILocation(line: 57, column: 12, scope: !5)
!166 = !DILocation(line: 57, column: 1, scope: !5)
!167 = !DILocation(line: 58, column: 14, scope: !5)
!168 = !DILocation(line: 58, column: 14, scope: !5)
!169 = !DILocation(line: 58, column: 12, scope: !5)
!170 = !DILocation(line: 58, column: 1, scope: !5)
!171 = !DILocation(line: 59, column: 14, scope: !5)
!172 = !DILocation(line: 59, column: 14, scope: !5)
!173 = !DILocation(line: 59, column: 12, scope: !5)
!174 = !DILocation(line: 59, column: 1, scope: !5)
!175 = !DILocation(line: 61, column: 14, scope: !5)
!176 = !DILocation(line: 61, column: 14, scope: !5)
!177 = !DILocation(line: 61, column: 12, scope: !5)
!178 = !DILocation(line: 61, column: 1, scope: !5)
!179 = !DILocation(line: 62, column: 14, scope: !5)
!180 = !DILocation(line: 62, column: 14, scope: !5)
!181 = !DILocation(line: 62, column: 12, scope: !5)
!182 = !DILocation(line: 62, column: 1, scope: !5)
!183 = !DILocation(line: 63, column: 14, scope: !5)
!184 = !DILocation(line: 63, column: 14, scope: !5)
!185 = !DILocation(line: 63, column: 12, scope: !5)
!186 = !DILocation(line: 63, column: 1, scope: !5)
!187 = !DILocation(line: 64, column: 14, scope: !5)
!188 = !DILocation(line: 64, column: 14, scope: !5)
!189 = !DILocation(line: 64, column: 12, scope: !5)
!190 = !DILocation(line: 64, column: 1, scope: !5)
