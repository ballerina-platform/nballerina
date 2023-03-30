@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %s = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca ptr addrspace(1)
  %38 = alloca ptr addrspace(1)
  %39 = alloca i64
  %40 = alloca i64
  %41 = alloca i64
  %42 = alloca i64
  %43 = alloca i64
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca ptr addrspace(1)
  %47 = alloca i8
  %48 = load ptr, ptr @_bal_stack_guard
  %49 = icmp ult ptr %47, %48
  br i1 %49, label %69, label %50
50:
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !13
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = getelementptr inbounds [0 x i64], ptr addrspace(1) %54, i64 0, i64 0
  store i64 2, ptr addrspace(1) %55
  %56 = getelementptr inbounds [0 x i64], ptr addrspace(1) %54, i64 0, i64 1
  store i64 100, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 2, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %1
  %60 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %60, ptr %x
  %61 = load ptr addrspace(1), ptr %x
  %62 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %61, i64 72057594037927928)
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  %65 = load i64, ptr addrspace(1) %64, align 8
  %66 = icmp ult i64 1, %65
  br i1 %66, label %71, label %74
67:
  %68 = load ptr addrspace(1), ptr %46
  call void @_bal_panic(ptr addrspace(1) %68), !dbg !47
  unreachable
69:
  %70 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %70), !dbg !12
  unreachable
71:
  %72 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %61, i64 4)
  %73 = icmp ne ptr addrspace(1) %72, null
  br i1 %73, label %76, label %82
74:
  %75 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !11
  store ptr addrspace(1) %75, ptr %46
  br label %67
76:
  %77 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = getelementptr inbounds [0 x i64], ptr addrspace(1) %79, i64 0, i64 1
  %81 = load i64, ptr addrspace(1) %80, align 8
  store i64 %81, ptr %2
  br label %88
82:
  %83 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 0
  %84 = load ptr, ptr addrspace(1) %83, align 8
  %85 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %84, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8
  %87 = call i64 %86(ptr addrspace(1) %61, i64 1)
  store i64 %87, ptr %2
  br label %88
88:
  %89 = load ptr addrspace(1), ptr %x
  %90 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %89, i64 72057594037927928)
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 1
  %93 = load i64, ptr addrspace(1) %92, align 8
  %94 = icmp ult i64 1, %93
  br i1 %94, label %95, label %98
95:
  %96 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %89, i64 4)
  %97 = icmp ne ptr addrspace(1) %96, null
  br i1 %97, label %100, label %106
98:
  %99 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !11
  store ptr addrspace(1) %99, ptr %46
  br label %67
100:
  %101 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 3
  %102 = load ptr addrspace(1), ptr addrspace(1) %101, align 8
  %103 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %104 = getelementptr inbounds [0 x i64], ptr addrspace(1) %103, i64 0, i64 1
  %105 = load i64, ptr addrspace(1) %104, align 8
  store i64 %105, ptr %3
  br label %112
106:
  %107 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 0
  %108 = load ptr, ptr addrspace(1) %107, align 8
  %109 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %108, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8
  %111 = call i64 %110(ptr addrspace(1) %89, i64 1)
  store i64 %111, ptr %3
  br label %112
112:
  %113 = load i64, ptr %3
  %114 = and i64 63, 4
  %115 = ashr i64 %113, %114
  store i64 %115, ptr %4
  %116 = load i64, ptr %2
  %117 = load i64, ptr %4
  %118 = and i64 63, %117
  %119 = ashr i64 %116, %118
  store i64 %119, ptr %5
  %120 = load ptr addrspace(1), ptr %x
  %121 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %120, i64 72057594037927928), !dbg !14
  %122 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %123 = load i64, ptr %5
  %124 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %120, i64 4)
  %125 = icmp ne ptr addrspace(1) %124, null
  br i1 %125, label %126, label %130
126:
  %127 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 1
  %128 = load i64, ptr addrspace(1) %127, align 8
  %129 = icmp ult i64 1, %128
  br i1 %129, label %144, label %130
130:
  %131 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 0
  %132 = load ptr, ptr addrspace(1) %131, align 8
  %133 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %132, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8
  %135 = call i64 %134(ptr addrspace(1) %120, i64 1, i64 %123)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %149, label %150
137:
  %138 = load ptr addrspace(1), ptr %x
  %139 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %138, i64 72057594037927928)
  %140 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %141 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 1
  %142 = load i64, ptr addrspace(1) %141, align 8
  %143 = icmp ult i64 1, %142
  br i1 %143, label %153, label %156
144:
  %145 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 3
  %146 = load ptr addrspace(1), ptr addrspace(1) %145, align 8
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = getelementptr inbounds [0 x i64], ptr addrspace(1) %147, i64 0, i64 1
  store i64 %123, ptr addrspace(1) %148
  br label %137
149:
  br label %137
150:
  %151 = or i64 %135, 1280
  %152 = call ptr addrspace(1) @_bal_panic_construct(i64 %151), !dbg !11
  store ptr addrspace(1) %152, ptr %46
  br label %67
153:
  %154 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %138, i64 4)
  %155 = icmp ne ptr addrspace(1) %154, null
  br i1 %155, label %158, label %164
156:
  %157 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !11
  store ptr addrspace(1) %157, ptr %46
  br label %67
158:
  %159 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 3
  %160 = load ptr addrspace(1), ptr addrspace(1) %159, align 8
  %161 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %162 = getelementptr inbounds [0 x i64], ptr addrspace(1) %161, i64 0, i64 1
  %163 = load i64, ptr addrspace(1) %162, align 8
  store i64 %163, ptr %6
  br label %170
164:
  %165 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 0
  %166 = load ptr, ptr addrspace(1) %165, align 8
  %167 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %166, i64 0, i32 6
  %168 = load ptr, ptr %167, align 8
  %169 = call i64 %168(ptr addrspace(1) %138, i64 1)
  store i64 %169, ptr %6
  br label %170
170:
  %171 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 3
  %173 = load ptr addrspace(1), ptr addrspace(1) %172, align 8
  %174 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %175 = load i64, ptr %6
  %176 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %175), !dbg !16
  %177 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %174, i64 0, i64 0
  store ptr addrspace(1) %176, ptr addrspace(1) %177
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 1
  store i64 1, ptr addrspace(1) %178
  %179 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %180 = getelementptr i8, ptr addrspace(1) %179, i64 864691128455135236
  store ptr addrspace(1) %180, ptr %7
  %181 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %181), !dbg !17
  store ptr addrspace(1) null, ptr %8
  %182 = load ptr addrspace(1), ptr %x
  %183 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %182, i64 72057594037927928)
  %184 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %185 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 1
  %186 = load i64, ptr addrspace(1) %185, align 8
  %187 = icmp ult i64 1, %186
  br i1 %187, label %188, label %191
188:
  %189 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %182, i64 4)
  %190 = icmp ne ptr addrspace(1) %189, null
  br i1 %190, label %193, label %199
191:
  %192 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !11
  store ptr addrspace(1) %192, ptr %46
  br label %67
193:
  %194 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 3
  %195 = load ptr addrspace(1), ptr addrspace(1) %194, align 8
  %196 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %197 = getelementptr inbounds [0 x i64], ptr addrspace(1) %196, i64 0, i64 1
  %198 = load i64, ptr addrspace(1) %197, align 8
  store i64 %198, ptr %9
  br label %205
199:
  %200 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 0
  %201 = load ptr, ptr addrspace(1) %200, align 8
  %202 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %201, i64 0, i32 6
  %203 = load ptr, ptr %202, align 8
  %204 = call i64 %203(ptr addrspace(1) %182, i64 1)
  store i64 %204, ptr %9
  br label %205
205:
  %206 = load i64, ptr %9
  %207 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %206, i64 99)
  %208 = extractvalue {i64, i1} %207, 1
  br i1 %208, label %217, label %209
209:
  %210 = extractvalue {i64, i1} %207, 0
  store i64 %210, ptr %10
  %211 = load ptr addrspace(1), ptr %x
  %212 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %211, i64 72057594037927928), !dbg !18
  %213 = bitcast ptr addrspace(1) %212 to ptr addrspace(1)
  %214 = load i64, ptr %10
  %215 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %211, i64 4)
  %216 = icmp ne ptr addrspace(1) %215, null
  br i1 %216, label %219, label %223
217:
  %218 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !11
  store ptr addrspace(1) %218, ptr %46
  br label %67
219:
  %220 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %213, i64 0, i32 1
  %221 = load i64, ptr addrspace(1) %220, align 8
  %222 = icmp ult i64 1, %221
  br i1 %222, label %237, label %223
223:
  %224 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %213, i64 0, i32 0
  %225 = load ptr, ptr addrspace(1) %224, align 8
  %226 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %225, i64 0, i32 7
  %227 = load ptr, ptr %226, align 8
  %228 = call i64 %227(ptr addrspace(1) %211, i64 1, i64 %214)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %242, label %243
230:
  %231 = load ptr addrspace(1), ptr %x
  %232 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %231, i64 72057594037927928)
  %233 = bitcast ptr addrspace(1) %232 to ptr addrspace(1)
  %234 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %233, i64 0, i32 1
  %235 = load i64, ptr addrspace(1) %234, align 8
  %236 = icmp ult i64 1, %235
  br i1 %236, label %246, label %249
237:
  %238 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %213, i64 0, i32 3
  %239 = load ptr addrspace(1), ptr addrspace(1) %238, align 8
  %240 = bitcast ptr addrspace(1) %239 to ptr addrspace(1)
  %241 = getelementptr inbounds [0 x i64], ptr addrspace(1) %240, i64 0, i64 1
  store i64 %214, ptr addrspace(1) %241
  br label %230
242:
  br label %230
243:
  %244 = or i64 %228, 1792
  %245 = call ptr addrspace(1) @_bal_panic_construct(i64 %244), !dbg !11
  store ptr addrspace(1) %245, ptr %46
  br label %67
246:
  %247 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %231, i64 4)
  %248 = icmp ne ptr addrspace(1) %247, null
  br i1 %248, label %251, label %257
249:
  %250 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !11
  store ptr addrspace(1) %250, ptr %46
  br label %67
251:
  %252 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %233, i64 0, i32 3
  %253 = load ptr addrspace(1), ptr addrspace(1) %252, align 8
  %254 = bitcast ptr addrspace(1) %253 to ptr addrspace(1)
  %255 = getelementptr inbounds [0 x i64], ptr addrspace(1) %254, i64 0, i64 1
  %256 = load i64, ptr addrspace(1) %255, align 8
  store i64 %256, ptr %11
  br label %263
257:
  %258 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %233, i64 0, i32 0
  %259 = load ptr, ptr addrspace(1) %258, align 8
  %260 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %259, i64 0, i32 6
  %261 = load ptr, ptr %260, align 8
  %262 = call i64 %261(ptr addrspace(1) %231, i64 1)
  store i64 %262, ptr %11
  br label %263
263:
  %264 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %265 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %264, i64 0, i32 3
  %266 = load ptr addrspace(1), ptr addrspace(1) %265, align 8
  %267 = bitcast ptr addrspace(1) %266 to ptr addrspace(1)
  %268 = load i64, ptr %11
  %269 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %268), !dbg !20
  %270 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %267, i64 0, i64 0
  store ptr addrspace(1) %269, ptr addrspace(1) %270
  %271 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %264, i64 0, i32 1
  store i64 1, ptr addrspace(1) %271
  %272 = bitcast ptr addrspace(1) %264 to ptr addrspace(1)
  %273 = getelementptr i8, ptr addrspace(1) %272, i64 864691128455135236
  store ptr addrspace(1) %273, ptr %12
  %274 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %274), !dbg !21
  store ptr addrspace(1) null, ptr %13
  %275 = load ptr addrspace(1), ptr %x
  %276 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %275, i64 72057594037927928)
  %277 = bitcast ptr addrspace(1) %276 to ptr addrspace(1)
  %278 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %277, i64 0, i32 1
  %279 = load i64, ptr addrspace(1) %278, align 8
  %280 = icmp ult i64 1, %279
  br i1 %280, label %281, label %284
281:
  %282 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %275, i64 4)
  %283 = icmp ne ptr addrspace(1) %282, null
  br i1 %283, label %286, label %292
284:
  %285 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !11
  store ptr addrspace(1) %285, ptr %46
  br label %67
286:
  %287 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %277, i64 0, i32 3
  %288 = load ptr addrspace(1), ptr addrspace(1) %287, align 8
  %289 = bitcast ptr addrspace(1) %288 to ptr addrspace(1)
  %290 = getelementptr inbounds [0 x i64], ptr addrspace(1) %289, i64 0, i64 1
  %291 = load i64, ptr addrspace(1) %290, align 8
  store i64 %291, ptr %14
  br label %298
292:
  %293 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %277, i64 0, i32 0
  %294 = load ptr, ptr addrspace(1) %293, align 8
  %295 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %294, i64 0, i32 6
  %296 = load ptr, ptr %295, align 8
  %297 = call i64 %296(ptr addrspace(1) %275, i64 1)
  store i64 %297, ptr %14
  br label %298
298:
  %299 = load ptr addrspace(1), ptr %x
  %300 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %299, i64 72057594037927928)
  %301 = bitcast ptr addrspace(1) %300 to ptr addrspace(1)
  %302 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %301, i64 0, i32 1
  %303 = load i64, ptr addrspace(1) %302, align 8
  %304 = icmp ult i64 1, %303
  br i1 %304, label %305, label %308
305:
  %306 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %299, i64 4)
  %307 = icmp ne ptr addrspace(1) %306, null
  br i1 %307, label %310, label %316
308:
  %309 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !11
  store ptr addrspace(1) %309, ptr %46
  br label %67
310:
  %311 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %301, i64 0, i32 3
  %312 = load ptr addrspace(1), ptr addrspace(1) %311, align 8
  %313 = bitcast ptr addrspace(1) %312 to ptr addrspace(1)
  %314 = getelementptr inbounds [0 x i64], ptr addrspace(1) %313, i64 0, i64 1
  %315 = load i64, ptr addrspace(1) %314, align 8
  store i64 %315, ptr %15
  br label %322
316:
  %317 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %301, i64 0, i32 0
  %318 = load ptr, ptr addrspace(1) %317, align 8
  %319 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %318, i64 0, i32 6
  %320 = load ptr, ptr %319, align 8
  %321 = call i64 %320(ptr addrspace(1) %299, i64 1)
  store i64 %321, ptr %15
  br label %322
322:
  %323 = load ptr addrspace(1), ptr %x
  %324 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %323, i64 72057594037927928)
  %325 = bitcast ptr addrspace(1) %324 to ptr addrspace(1)
  %326 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %325, i64 0, i32 1
  %327 = load i64, ptr addrspace(1) %326, align 8
  %328 = icmp ult i64 1, %327
  br i1 %328, label %329, label %332
329:
  %330 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %323, i64 4)
  %331 = icmp ne ptr addrspace(1) %330, null
  br i1 %331, label %334, label %340
332:
  %333 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !11
  store ptr addrspace(1) %333, ptr %46
  br label %67
334:
  %335 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %325, i64 0, i32 3
  %336 = load ptr addrspace(1), ptr addrspace(1) %335, align 8
  %337 = bitcast ptr addrspace(1) %336 to ptr addrspace(1)
  %338 = getelementptr inbounds [0 x i64], ptr addrspace(1) %337, i64 0, i64 1
  %339 = load i64, ptr addrspace(1) %338, align 8
  store i64 %339, ptr %16
  br label %346
340:
  %341 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %325, i64 0, i32 0
  %342 = load ptr, ptr addrspace(1) %341, align 8
  %343 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %342, i64 0, i32 6
  %344 = load ptr, ptr %343, align 8
  %345 = call i64 %344(ptr addrspace(1) %323, i64 1)
  store i64 %345, ptr %16
  br label %346
346:
  %347 = load i64, ptr %15
  %348 = load i64, ptr %16
  %349 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %347, i64 %348)
  %350 = extractvalue {i64, i1} %349, 1
  br i1 %350, label %357, label %351
351:
  %352 = extractvalue {i64, i1} %349, 0
  store i64 %352, ptr %17
  %353 = load i64, ptr %14
  %354 = load i64, ptr %17
  %355 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %353, i64 %354)
  %356 = extractvalue {i64, i1} %355, 1
  br i1 %356, label %367, label %359
357:
  %358 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !11
  store ptr addrspace(1) %358, ptr %46
  br label %67
359:
  %360 = extractvalue {i64, i1} %355, 0
  store i64 %360, ptr %18
  %361 = load ptr addrspace(1), ptr %x
  %362 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %361, i64 72057594037927928), !dbg !22
  %363 = bitcast ptr addrspace(1) %362 to ptr addrspace(1)
  %364 = load i64, ptr %18
  %365 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %361, i64 4)
  %366 = icmp ne ptr addrspace(1) %365, null
  br i1 %366, label %369, label %373
367:
  %368 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !11
  store ptr addrspace(1) %368, ptr %46
  br label %67
369:
  %370 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %363, i64 0, i32 1
  %371 = load i64, ptr addrspace(1) %370, align 8
  %372 = icmp ult i64 1, %371
  br i1 %372, label %387, label %373
373:
  %374 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %363, i64 0, i32 0
  %375 = load ptr, ptr addrspace(1) %374, align 8
  %376 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %375, i64 0, i32 7
  %377 = load ptr, ptr %376, align 8
  %378 = call i64 %377(ptr addrspace(1) %361, i64 1, i64 %364)
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %392, label %393
380:
  %381 = load ptr addrspace(1), ptr %x
  %382 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %381, i64 72057594037927928)
  %383 = bitcast ptr addrspace(1) %382 to ptr addrspace(1)
  %384 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %383, i64 0, i32 1
  %385 = load i64, ptr addrspace(1) %384, align 8
  %386 = icmp ult i64 1, %385
  br i1 %386, label %396, label %399
387:
  %388 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %363, i64 0, i32 3
  %389 = load ptr addrspace(1), ptr addrspace(1) %388, align 8
  %390 = bitcast ptr addrspace(1) %389 to ptr addrspace(1)
  %391 = getelementptr inbounds [0 x i64], ptr addrspace(1) %390, i64 0, i64 1
  store i64 %364, ptr addrspace(1) %391
  br label %380
392:
  br label %380
393:
  %394 = or i64 %378, 2304
  %395 = call ptr addrspace(1) @_bal_panic_construct(i64 %394), !dbg !11
  store ptr addrspace(1) %395, ptr %46
  br label %67
396:
  %397 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %381, i64 4)
  %398 = icmp ne ptr addrspace(1) %397, null
  br i1 %398, label %401, label %407
399:
  %400 = call ptr addrspace(1) @_bal_panic_construct(i64 2565), !dbg !11
  store ptr addrspace(1) %400, ptr %46
  br label %67
401:
  %402 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %383, i64 0, i32 3
  %403 = load ptr addrspace(1), ptr addrspace(1) %402, align 8
  %404 = bitcast ptr addrspace(1) %403 to ptr addrspace(1)
  %405 = getelementptr inbounds [0 x i64], ptr addrspace(1) %404, i64 0, i64 1
  %406 = load i64, ptr addrspace(1) %405, align 8
  store i64 %406, ptr %19
  br label %413
407:
  %408 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %383, i64 0, i32 0
  %409 = load ptr, ptr addrspace(1) %408, align 8
  %410 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %409, i64 0, i32 6
  %411 = load ptr, ptr %410, align 8
  %412 = call i64 %411(ptr addrspace(1) %381, i64 1)
  store i64 %412, ptr %19
  br label %413
413:
  %414 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %415 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %414, i64 0, i32 3
  %416 = load ptr addrspace(1), ptr addrspace(1) %415, align 8
  %417 = bitcast ptr addrspace(1) %416 to ptr addrspace(1)
  %418 = load i64, ptr %19
  %419 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %418), !dbg !24
  %420 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %417, i64 0, i64 0
  store ptr addrspace(1) %419, ptr addrspace(1) %420
  %421 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %414, i64 0, i32 1
  store i64 1, ptr addrspace(1) %421
  %422 = bitcast ptr addrspace(1) %414 to ptr addrspace(1)
  %423 = getelementptr i8, ptr addrspace(1) %422, i64 864691128455135236
  store ptr addrspace(1) %423, ptr %20
  %424 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %424), !dbg !25
  store ptr addrspace(1) null, ptr %21
  %425 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !26
  %426 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %425, i64 0, i32 3
  %427 = load ptr addrspace(1), ptr addrspace(1) %426, align 8
  %428 = bitcast ptr addrspace(1) %427 to ptr addrspace(1)
  %429 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %428, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824), ptr addrspace(1) %429
  %430 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %425, i64 0, i32 1
  store i64 1, ptr addrspace(1) %430
  %431 = bitcast ptr addrspace(1) %425 to ptr addrspace(1)
  %432 = getelementptr i8, ptr addrspace(1) %431, i64 864691128455135236
  store ptr addrspace(1) %432, ptr %22
  %433 = load ptr addrspace(1), ptr %22
  store ptr addrspace(1) %433, ptr %s
  %434 = load ptr addrspace(1), ptr %s
  %435 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %434, i64 72057594037927928)
  %436 = bitcast ptr addrspace(1) %435 to ptr addrspace(1)
  %437 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %436, i64 0, i32 1
  %438 = load i64, ptr addrspace(1) %437, align 8
  %439 = icmp ult i64 0, %438
  br i1 %439, label %440, label %458
440:
  %441 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %436, i64 0, i32 0
  %442 = load ptr, ptr addrspace(1) %441, align 8
  %443 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %442, i64 0, i32 3
  %444 = load ptr, ptr %443, align 8
  %445 = call ptr addrspace(1) %444(ptr addrspace(1) %434, i64 0)
  store ptr addrspace(1) %445, ptr %23
  %446 = load ptr addrspace(1), ptr %23
  %447 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %446, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738017515403704096)), !dbg !27
  store ptr addrspace(1) %447, ptr %24
  %448 = load ptr addrspace(1), ptr %s
  %449 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %448, i64 72057594037927928), !dbg !28
  %450 = bitcast ptr addrspace(1) %449 to ptr addrspace(1)
  %451 = load ptr addrspace(1), ptr %24
  %452 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %450, i64 0, i32 0
  %453 = load ptr, ptr addrspace(1) %452, align 8
  %454 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %453, i64 0, i32 4
  %455 = load ptr, ptr %454, align 8
  %456 = call i64 %455(ptr addrspace(1) %448, i64 0, ptr addrspace(1) %451)
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %460, label %467
458:
  %459 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !11
  store ptr addrspace(1) %459, ptr %46
  br label %67
460:
  %461 = load ptr addrspace(1), ptr %s
  %462 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %461, i64 72057594037927928)
  %463 = bitcast ptr addrspace(1) %462 to ptr addrspace(1)
  %464 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %463, i64 0, i32 1
  %465 = load i64, ptr addrspace(1) %464, align 8
  %466 = icmp ult i64 0, %465
  br i1 %466, label %470, label %491
467:
  %468 = or i64 %456, 3072
  %469 = call ptr addrspace(1) @_bal_panic_construct(i64 %468), !dbg !11
  store ptr addrspace(1) %469, ptr %46
  br label %67
470:
  %471 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %463, i64 0, i32 0
  %472 = load ptr, ptr addrspace(1) %471, align 8
  %473 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %472, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8
  %475 = call ptr addrspace(1) %474(ptr addrspace(1) %461, i64 0)
  store ptr addrspace(1) %475, ptr %25
  %476 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !29
  %477 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %476, i64 0, i32 3
  %478 = load ptr addrspace(1), ptr addrspace(1) %477, align 8
  %479 = bitcast ptr addrspace(1) %478 to ptr addrspace(1)
  %480 = load ptr addrspace(1), ptr %25
  %481 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %479, i64 0, i64 0
  store ptr addrspace(1) %480, ptr addrspace(1) %481
  %482 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %476, i64 0, i32 1
  store i64 1, ptr addrspace(1) %482
  %483 = bitcast ptr addrspace(1) %476 to ptr addrspace(1)
  %484 = getelementptr i8, ptr addrspace(1) %483, i64 864691128455135236
  store ptr addrspace(1) %484, ptr %26
  %485 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %485), !dbg !30
  store ptr addrspace(1) null, ptr %27
  %486 = load ptr addrspace(1), ptr %x
  %487 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %486, i64 72057594037927928), !dbg !31
  %488 = bitcast ptr addrspace(1) %487 to ptr addrspace(1)
  %489 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %486, i64 4)
  %490 = icmp ne ptr addrspace(1) %489, null
  br i1 %490, label %493, label %497
491:
  %492 = call ptr addrspace(1) @_bal_panic_construct(i64 3333), !dbg !11
  store ptr addrspace(1) %492, ptr %46
  br label %67
493:
  %494 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %488, i64 0, i32 1
  %495 = load i64, ptr addrspace(1) %494, align 8
  %496 = icmp ult i64 1, %495
  br i1 %496, label %513, label %497
497:
  %498 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %488, i64 0, i32 0
  %499 = load ptr, ptr addrspace(1) %498, align 8
  %500 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %499, i64 0, i32 7
  %501 = load ptr, ptr %500, align 8
  %502 = call i64 %501(ptr addrspace(1) %486, i64 1, i64 2)
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %518, label %519
504:
  %505 = call i64 @_B_func1(), !dbg !32
  store i64 %505, ptr %28
  %506 = load ptr addrspace(1), ptr %x
  %507 = load i64, ptr %28
  %508 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %506, i64 72057594037927928)
  %509 = bitcast ptr addrspace(1) %508 to ptr addrspace(1)
  %510 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %509, i64 0, i32 1
  %511 = load i64, ptr addrspace(1) %510, align 8
  %512 = icmp ult i64 %507, %511
  br i1 %512, label %522, label %525
513:
  %514 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %488, i64 0, i32 3
  %515 = load ptr addrspace(1), ptr addrspace(1) %514, align 8
  %516 = bitcast ptr addrspace(1) %515 to ptr addrspace(1)
  %517 = getelementptr inbounds [0 x i64], ptr addrspace(1) %516, i64 0, i64 1
  store i64 2, ptr addrspace(1) %517
  br label %504
518:
  br label %504
519:
  %520 = or i64 %502, 3584
  %521 = call ptr addrspace(1) @_bal_panic_construct(i64 %520), !dbg !11
  store ptr addrspace(1) %521, ptr %46
  br label %67
522:
  %523 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %506, i64 4)
  %524 = icmp ne ptr addrspace(1) %523, null
  br i1 %524, label %527, label %533
525:
  %526 = call ptr addrspace(1) @_bal_panic_construct(i64 3845), !dbg !11
  store ptr addrspace(1) %526, ptr %46
  br label %67
527:
  %528 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %509, i64 0, i32 3
  %529 = load ptr addrspace(1), ptr addrspace(1) %528, align 8
  %530 = bitcast ptr addrspace(1) %529 to ptr addrspace(1)
  %531 = getelementptr inbounds [0 x i64], ptr addrspace(1) %530, i64 0, i64 %507
  %532 = load i64, ptr addrspace(1) %531, align 8
  store i64 %532, ptr %29
  br label %539
533:
  %534 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %509, i64 0, i32 0
  %535 = load ptr, ptr addrspace(1) %534, align 8
  %536 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %535, i64 0, i32 6
  %537 = load ptr, ptr %536, align 8
  %538 = call i64 %537(ptr addrspace(1) %506, i64 %507)
  store i64 %538, ptr %29
  br label %539
539:
  %540 = load i64, ptr %29
  %541 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %540, i64 3)
  %542 = extractvalue {i64, i1} %541, 1
  br i1 %542, label %552, label %543
543:
  %544 = extractvalue {i64, i1} %541, 0
  store i64 %544, ptr %30
  %545 = load ptr addrspace(1), ptr %x
  %546 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %545, i64 72057594037927928), !dbg !33
  %547 = bitcast ptr addrspace(1) %546 to ptr addrspace(1)
  %548 = load i64, ptr %28
  %549 = load i64, ptr %30
  %550 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %545, i64 4)
  %551 = icmp ne ptr addrspace(1) %550, null
  br i1 %551, label %554, label %558
552:
  %553 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !11
  store ptr addrspace(1) %553, ptr %46
  br label %67
554:
  %555 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %547, i64 0, i32 1
  %556 = load i64, ptr addrspace(1) %555, align 8
  %557 = icmp ult i64 %548, %556
  br i1 %557, label %572, label %558
558:
  %559 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %547, i64 0, i32 0
  %560 = load ptr, ptr addrspace(1) %559, align 8
  %561 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %560, i64 0, i32 7
  %562 = load ptr, ptr %561, align 8
  %563 = call i64 %562(ptr addrspace(1) %545, i64 %548, i64 %549)
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %577, label %578
565:
  %566 = load ptr addrspace(1), ptr %x
  %567 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %566, i64 72057594037927928)
  %568 = bitcast ptr addrspace(1) %567 to ptr addrspace(1)
  %569 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %568, i64 0, i32 1
  %570 = load i64, ptr addrspace(1) %569, align 8
  %571 = icmp ult i64 1, %570
  br i1 %571, label %581, label %584
572:
  %573 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %547, i64 0, i32 3
  %574 = load ptr addrspace(1), ptr addrspace(1) %573, align 8
  %575 = bitcast ptr addrspace(1) %574 to ptr addrspace(1)
  %576 = getelementptr inbounds [0 x i64], ptr addrspace(1) %575, i64 0, i64 %548
  store i64 %549, ptr addrspace(1) %576
  br label %565
577:
  br label %565
578:
  %579 = or i64 %563, 3840
  %580 = call ptr addrspace(1) @_bal_panic_construct(i64 %579), !dbg !11
  store ptr addrspace(1) %580, ptr %46
  br label %67
581:
  %582 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %566, i64 4)
  %583 = icmp ne ptr addrspace(1) %582, null
  br i1 %583, label %586, label %592
584:
  %585 = call ptr addrspace(1) @_bal_panic_construct(i64 4101), !dbg !11
  store ptr addrspace(1) %585, ptr %46
  br label %67
586:
  %587 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %568, i64 0, i32 3
  %588 = load ptr addrspace(1), ptr addrspace(1) %587, align 8
  %589 = bitcast ptr addrspace(1) %588 to ptr addrspace(1)
  %590 = getelementptr inbounds [0 x i64], ptr addrspace(1) %589, i64 0, i64 1
  %591 = load i64, ptr addrspace(1) %590, align 8
  store i64 %591, ptr %31
  br label %598
592:
  %593 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %568, i64 0, i32 0
  %594 = load ptr, ptr addrspace(1) %593, align 8
  %595 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %594, i64 0, i32 6
  %596 = load ptr, ptr %595, align 8
  %597 = call i64 %596(ptr addrspace(1) %566, i64 1)
  store i64 %597, ptr %31
  br label %598
598:
  %599 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !34
  %600 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %599, i64 0, i32 3
  %601 = load ptr addrspace(1), ptr addrspace(1) %600, align 8
  %602 = bitcast ptr addrspace(1) %601 to ptr addrspace(1)
  %603 = load i64, ptr %31
  %604 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %603), !dbg !35
  %605 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %602, i64 0, i64 0
  store ptr addrspace(1) %604, ptr addrspace(1) %605
  %606 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %599, i64 0, i32 1
  store i64 1, ptr addrspace(1) %606
  %607 = bitcast ptr addrspace(1) %599 to ptr addrspace(1)
  %608 = getelementptr i8, ptr addrspace(1) %607, i64 864691128455135236
  store ptr addrspace(1) %608, ptr %32
  %609 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %609), !dbg !36
  store ptr addrspace(1) null, ptr %33
  %610 = load ptr addrspace(1), ptr %x
  %611 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %610, i64 72057594037927928)
  %612 = bitcast ptr addrspace(1) %611 to ptr addrspace(1)
  %613 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %612, i64 0, i32 1
  %614 = load i64, ptr addrspace(1) %613, align 8
  %615 = icmp ult i64 1, %614
  br i1 %615, label %616, label %619
616:
  %617 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %610, i64 4)
  %618 = icmp ne ptr addrspace(1) %617, null
  br i1 %618, label %621, label %627
619:
  %620 = call ptr addrspace(1) @_bal_panic_construct(i64 4357), !dbg !11
  store ptr addrspace(1) %620, ptr %46
  br label %67
621:
  %622 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %612, i64 0, i32 3
  %623 = load ptr addrspace(1), ptr addrspace(1) %622, align 8
  %624 = bitcast ptr addrspace(1) %623 to ptr addrspace(1)
  %625 = getelementptr inbounds [0 x i64], ptr addrspace(1) %624, i64 0, i64 1
  %626 = load i64, ptr addrspace(1) %625, align 8
  store i64 %626, ptr %34
  br label %633
627:
  %628 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %612, i64 0, i32 0
  %629 = load ptr, ptr addrspace(1) %628, align 8
  %630 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %629, i64 0, i32 6
  %631 = load ptr, ptr %630, align 8
  %632 = call i64 %631(ptr addrspace(1) %610, i64 1)
  store i64 %632, ptr %34
  br label %633
633:
  %634 = load i64, ptr %34
  %635 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %634, i64 2)
  %636 = extractvalue {i64, i1} %635, 1
  br i1 %636, label %645, label %637
637:
  %638 = extractvalue {i64, i1} %635, 0
  store i64 %638, ptr %35
  %639 = load ptr addrspace(1), ptr %x
  %640 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %639, i64 72057594037927928), !dbg !37
  %641 = bitcast ptr addrspace(1) %640 to ptr addrspace(1)
  %642 = load i64, ptr %35
  %643 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %639, i64 4)
  %644 = icmp ne ptr addrspace(1) %643, null
  br i1 %644, label %647, label %651
645:
  %646 = call ptr addrspace(1) @_bal_panic_construct(i64 4353), !dbg !11
  store ptr addrspace(1) %646, ptr %46
  br label %67
647:
  %648 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %641, i64 0, i32 1
  %649 = load i64, ptr addrspace(1) %648, align 8
  %650 = icmp ult i64 1, %649
  br i1 %650, label %665, label %651
651:
  %652 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %641, i64 0, i32 0
  %653 = load ptr, ptr addrspace(1) %652, align 8
  %654 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %653, i64 0, i32 7
  %655 = load ptr, ptr %654, align 8
  %656 = call i64 %655(ptr addrspace(1) %639, i64 1, i64 %642)
  %657 = icmp eq i64 %656, 0
  br i1 %657, label %670, label %671
658:
  %659 = load ptr addrspace(1), ptr %x
  %660 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %659, i64 72057594037927928)
  %661 = bitcast ptr addrspace(1) %660 to ptr addrspace(1)
  %662 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %661, i64 0, i32 1
  %663 = load i64, ptr addrspace(1) %662, align 8
  %664 = icmp ult i64 1, %663
  br i1 %664, label %674, label %677
665:
  %666 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %641, i64 0, i32 3
  %667 = load ptr addrspace(1), ptr addrspace(1) %666, align 8
  %668 = bitcast ptr addrspace(1) %667 to ptr addrspace(1)
  %669 = getelementptr inbounds [0 x i64], ptr addrspace(1) %668, i64 0, i64 1
  store i64 %642, ptr addrspace(1) %669
  br label %658
670:
  br label %658
671:
  %672 = or i64 %656, 4352
  %673 = call ptr addrspace(1) @_bal_panic_construct(i64 %672), !dbg !11
  store ptr addrspace(1) %673, ptr %46
  br label %67
674:
  %675 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %659, i64 4)
  %676 = icmp ne ptr addrspace(1) %675, null
  br i1 %676, label %679, label %685
677:
  %678 = call ptr addrspace(1) @_bal_panic_construct(i64 4613), !dbg !11
  store ptr addrspace(1) %678, ptr %46
  br label %67
679:
  %680 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %661, i64 0, i32 3
  %681 = load ptr addrspace(1), ptr addrspace(1) %680, align 8
  %682 = bitcast ptr addrspace(1) %681 to ptr addrspace(1)
  %683 = getelementptr inbounds [0 x i64], ptr addrspace(1) %682, i64 0, i64 1
  %684 = load i64, ptr addrspace(1) %683, align 8
  store i64 %684, ptr %36
  br label %691
685:
  %686 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %661, i64 0, i32 0
  %687 = load ptr, ptr addrspace(1) %686, align 8
  %688 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %687, i64 0, i32 6
  %689 = load ptr, ptr %688, align 8
  %690 = call i64 %689(ptr addrspace(1) %659, i64 1)
  store i64 %690, ptr %36
  br label %691
691:
  %692 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !38
  %693 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %692, i64 0, i32 3
  %694 = load ptr addrspace(1), ptr addrspace(1) %693, align 8
  %695 = bitcast ptr addrspace(1) %694 to ptr addrspace(1)
  %696 = load i64, ptr %36
  %697 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %696), !dbg !39
  %698 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %695, i64 0, i64 0
  store ptr addrspace(1) %697, ptr addrspace(1) %698
  %699 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %692, i64 0, i32 1
  store i64 1, ptr addrspace(1) %699
  %700 = bitcast ptr addrspace(1) %692 to ptr addrspace(1)
  %701 = getelementptr i8, ptr addrspace(1) %700, i64 864691128455135236
  store ptr addrspace(1) %701, ptr %37
  %702 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %702), !dbg !40
  store ptr addrspace(1) null, ptr %38
  %703 = call i64 @_B_func1(), !dbg !41
  store i64 %703, ptr %39
  %704 = load ptr addrspace(1), ptr %x
  %705 = load i64, ptr %39
  %706 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %704, i64 72057594037927928)
  %707 = bitcast ptr addrspace(1) %706 to ptr addrspace(1)
  %708 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %707, i64 0, i32 1
  %709 = load i64, ptr addrspace(1) %708, align 8
  %710 = icmp ult i64 %705, %709
  br i1 %710, label %711, label %714
711:
  %712 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %704, i64 4)
  %713 = icmp ne ptr addrspace(1) %712, null
  br i1 %713, label %716, label %722
714:
  %715 = call ptr addrspace(1) @_bal_panic_construct(i64 4869), !dbg !11
  store ptr addrspace(1) %715, ptr %46
  br label %67
716:
  %717 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %707, i64 0, i32 3
  %718 = load ptr addrspace(1), ptr addrspace(1) %717, align 8
  %719 = bitcast ptr addrspace(1) %718 to ptr addrspace(1)
  %720 = getelementptr inbounds [0 x i64], ptr addrspace(1) %719, i64 0, i64 %705
  %721 = load i64, ptr addrspace(1) %720, align 8
  store i64 %721, ptr %40
  br label %728
722:
  %723 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %707, i64 0, i32 0
  %724 = load ptr, ptr addrspace(1) %723, align 8
  %725 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %724, i64 0, i32 6
  %726 = load ptr, ptr %725, align 8
  %727 = call i64 %726(ptr addrspace(1) %704, i64 %705)
  store i64 %727, ptr %40
  br label %728
728:
  %729 = call i64 @_B_func2(), !dbg !42
  store i64 %729, ptr %41
  %730 = load i64, ptr %40
  %731 = load i64, ptr %41
  %732 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %730, i64 %731)
  %733 = extractvalue {i64, i1} %732, 1
  br i1 %733, label %743, label %734
734:
  %735 = extractvalue {i64, i1} %732, 0
  store i64 %735, ptr %42
  %736 = load ptr addrspace(1), ptr %x
  %737 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %736, i64 72057594037927928), !dbg !43
  %738 = bitcast ptr addrspace(1) %737 to ptr addrspace(1)
  %739 = load i64, ptr %39
  %740 = load i64, ptr %42
  %741 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %736, i64 4)
  %742 = icmp ne ptr addrspace(1) %741, null
  br i1 %742, label %745, label %749
743:
  %744 = call ptr addrspace(1) @_bal_panic_construct(i64 4865), !dbg !11
  store ptr addrspace(1) %744, ptr %46
  br label %67
745:
  %746 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %738, i64 0, i32 1
  %747 = load i64, ptr addrspace(1) %746, align 8
  %748 = icmp ult i64 %739, %747
  br i1 %748, label %763, label %749
749:
  %750 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %738, i64 0, i32 0
  %751 = load ptr, ptr addrspace(1) %750, align 8
  %752 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %751, i64 0, i32 7
  %753 = load ptr, ptr %752, align 8
  %754 = call i64 %753(ptr addrspace(1) %736, i64 %739, i64 %740)
  %755 = icmp eq i64 %754, 0
  br i1 %755, label %768, label %769
756:
  %757 = load ptr addrspace(1), ptr %x
  %758 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %757, i64 72057594037927928)
  %759 = bitcast ptr addrspace(1) %758 to ptr addrspace(1)
  %760 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %759, i64 0, i32 1
  %761 = load i64, ptr addrspace(1) %760, align 8
  %762 = icmp ult i64 1, %761
  br i1 %762, label %772, label %775
763:
  %764 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %738, i64 0, i32 3
  %765 = load ptr addrspace(1), ptr addrspace(1) %764, align 8
  %766 = bitcast ptr addrspace(1) %765 to ptr addrspace(1)
  %767 = getelementptr inbounds [0 x i64], ptr addrspace(1) %766, i64 0, i64 %739
  store i64 %740, ptr addrspace(1) %767
  br label %756
768:
  br label %756
769:
  %770 = or i64 %754, 4864
  %771 = call ptr addrspace(1) @_bal_panic_construct(i64 %770), !dbg !11
  store ptr addrspace(1) %771, ptr %46
  br label %67
772:
  %773 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %757, i64 4)
  %774 = icmp ne ptr addrspace(1) %773, null
  br i1 %774, label %777, label %783
775:
  %776 = call ptr addrspace(1) @_bal_panic_construct(i64 5381), !dbg !11
  store ptr addrspace(1) %776, ptr %46
  br label %67
777:
  %778 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %759, i64 0, i32 3
  %779 = load ptr addrspace(1), ptr addrspace(1) %778, align 8
  %780 = bitcast ptr addrspace(1) %779 to ptr addrspace(1)
  %781 = getelementptr inbounds [0 x i64], ptr addrspace(1) %780, i64 0, i64 1
  %782 = load i64, ptr addrspace(1) %781, align 8
  store i64 %782, ptr %43
  br label %789
783:
  %784 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %759, i64 0, i32 0
  %785 = load ptr, ptr addrspace(1) %784, align 8
  %786 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %785, i64 0, i32 6
  %787 = load ptr, ptr %786, align 8
  %788 = call i64 %787(ptr addrspace(1) %757, i64 1)
  store i64 %788, ptr %43
  br label %789
789:
  %790 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !44
  %791 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %790, i64 0, i32 3
  %792 = load ptr addrspace(1), ptr addrspace(1) %791, align 8
  %793 = bitcast ptr addrspace(1) %792 to ptr addrspace(1)
  %794 = load i64, ptr %43
  %795 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %794), !dbg !45
  %796 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %793, i64 0, i64 0
  store ptr addrspace(1) %795, ptr addrspace(1) %796
  %797 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %790, i64 0, i32 1
  store i64 1, ptr addrspace(1) %797
  %798 = bitcast ptr addrspace(1) %790 to ptr addrspace(1)
  %799 = getelementptr i8, ptr addrspace(1) %798, i64 864691128455135236
  store ptr addrspace(1) %799, ptr %44
  %800 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %800), !dbg !46
  store ptr addrspace(1) null, ptr %45
  ret void
}
define internal i64 @_B_func1() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !50
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187686051214694), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !51
  store ptr addrspace(1) null, ptr %2
  ret i64 1
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 6148), !dbg !48
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !49
  unreachable
}
define internal i64 @_B_func2() !dbg !9 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !54
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187690346181990), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !55
  store ptr addrspace(1) null, ptr %2
  ret i64 2
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 7428), !dbg !52
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !53
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/compoundassign2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"func1", linkageName:"_B_func1", scope: !1, file: !1, line: 24, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"func2", linkageName:"_B_func2", scope: !1, file: !1, line: 29, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 3, column: 16, scope: !5)
!13 = !DILocation(line: 4, column: 14, scope: !5)
!14 = !DILocation(line: 5, column: 5, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 4, scope: !5)
!18 = !DILocation(line: 7, column: 5, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 15, scope: !5)
!21 = !DILocation(line: 8, column: 4, scope: !5)
!22 = !DILocation(line: 9, column: 5, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 15, scope: !5)
!25 = !DILocation(line: 10, column: 4, scope: !5)
!26 = !DILocation(line: 11, column: 17, scope: !5)
!27 = !DILocation(line: 12, column: 9, scope: !5)
!28 = !DILocation(line: 12, column: 5, scope: !5)
!29 = !DILocation(line: 13, column: 15, scope: !5)
!30 = !DILocation(line: 13, column: 4, scope: !5)
!31 = !DILocation(line: 14, column: 5, scope: !5)
!32 = !DILocation(line: 15, column: 6, scope: !5)
!33 = !DILocation(line: 15, column: 5, scope: !5)
!34 = !DILocation(line: 16, column: 15, scope: !5)
!35 = !DILocation(line: 16, column: 15, scope: !5)
!36 = !DILocation(line: 16, column: 4, scope: !5)
!37 = !DILocation(line: 17, column: 5, scope: !5)
!38 = !DILocation(line: 18, column: 15, scope: !5)
!39 = !DILocation(line: 18, column: 15, scope: !5)
!40 = !DILocation(line: 18, column: 4, scope: !5)
!41 = !DILocation(line: 19, column: 6, scope: !5)
!42 = !DILocation(line: 19, column: 18, scope: !5)
!43 = !DILocation(line: 19, column: 5, scope: !5)
!44 = !DILocation(line: 21, column: 15, scope: !5)
!45 = !DILocation(line: 21, column: 15, scope: !5)
!46 = !DILocation(line: 21, column: 4, scope: !5)
!47 = !DILocation(line: 22, column: 0, scope: !5)
!48 = !DILocation(line: 0, column: 0, scope: !7)
!49 = !DILocation(line: 24, column: 9, scope: !7)
!50 = !DILocation(line: 25, column: 15, scope: !7)
!51 = !DILocation(line: 25, column: 4, scope: !7)
!52 = !DILocation(line: 0, column: 0, scope: !9)
!53 = !DILocation(line: 29, column: 9, scope: !9)
!54 = !DILocation(line: 30, column: 15, scope: !9)
!55 = !DILocation(line: 30, column: 4, scope: !9)
