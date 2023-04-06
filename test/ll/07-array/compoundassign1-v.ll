@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i64
  %40 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %42 = alloca i64
  %43 = alloca i64
  %44 = alloca i64
  %45 = alloca ptr addrspace(1)
  %46 = alloca ptr addrspace(1)
  %47 = alloca i64
  %48 = alloca i64
  %49 = alloca i64
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca ptr addrspace(1)
  %53 = alloca i8
  %54 = load ptr, ptr @_bal_stack_guard
  %55 = icmp ult ptr %53, %54
  br i1 %55, label %74, label %56
56:
  %57 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = getelementptr inbounds [0 x i64], ptr addrspace(1) %60, i64 0, i64 0
  store i64 10, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %1
  %65 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %65, ptr %x
  %66 = load ptr addrspace(1), ptr %x
  %67 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %66, i64 72057594037927928)
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  %70 = load i64, ptr addrspace(1) %69, align 8
  %71 = icmp ult i64 0, %70
  br i1 %71, label %76, label %79
72:
  %73 = load ptr addrspace(1), ptr %52
  call void @_bal_panic(ptr addrspace(1) %73), !dbg !50
  unreachable
74:
  %75 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %75), !dbg !8
  unreachable
76:
  %77 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %66, i64 4)
  %78 = icmp ne ptr addrspace(1) %77, null
  br i1 %78, label %81, label %87
79:
  %80 = call ptr addrspace(1) @_bal_panic_construct(i64 1285), !dbg !7
  store ptr addrspace(1) %80, ptr %52
  br label %72
81:
  %82 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %83 = load ptr addrspace(1), ptr addrspace(1) %82, align 8
  %84 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %85 = getelementptr inbounds [0 x i64], ptr addrspace(1) %84, i64 0, i64 0
  %86 = load i64, ptr addrspace(1) %85, align 8
  store i64 %86, ptr %2
  br label %93
87:
  %88 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 0
  %89 = load ptr, ptr addrspace(1) %88, align 8
  %90 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %89, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8
  %92 = call i64 %91(ptr addrspace(1) %66, i64 0)
  store i64 %92, ptr %2
  br label %93
93:
  %94 = load i64, ptr %2
  %95 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %94, i64 3)
  %96 = extractvalue {i64, i1} %95, 1
  br i1 %96, label %105, label %97
97:
  %98 = extractvalue {i64, i1} %95, 0
  store i64 %98, ptr %3
  %99 = load ptr addrspace(1), ptr %x
  %100 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %99, i64 72057594037927928), !dbg !10
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load i64, ptr %3
  %103 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %99, i64 4)
  %104 = icmp ne ptr addrspace(1) %103, null
  br i1 %104, label %107, label %111
105:
  %106 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !7
  store ptr addrspace(1) %106, ptr %52
  br label %72
107:
  %108 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 1
  %109 = load i64, ptr addrspace(1) %108, align 8
  %110 = icmp ult i64 0, %109
  br i1 %110, label %125, label %111
111:
  %112 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 0
  %113 = load ptr, ptr addrspace(1) %112, align 8
  %114 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %113, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8
  %116 = call i64 %115(ptr addrspace(1) %99, i64 0, i64 %102)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %130, label %131
118:
  %119 = load ptr addrspace(1), ptr %x
  %120 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %119, i64 72057594037927928)
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  %123 = load i64, ptr addrspace(1) %122, align 8
  %124 = icmp ult i64 0, %123
  br i1 %124, label %134, label %137
125:
  %126 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 3
  %127 = load ptr addrspace(1), ptr addrspace(1) %126, align 8
  %128 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %129 = getelementptr inbounds [0 x i64], ptr addrspace(1) %128, i64 0, i64 0
  store i64 %102, ptr addrspace(1) %129
  br label %118
130:
  br label %118
131:
  %132 = or i64 %116, 1280
  %133 = call ptr addrspace(1) @_bal_panic_construct(i64 %132), !dbg !7
  store ptr addrspace(1) %133, ptr %52
  br label %72
134:
  %135 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %119, i64 4)
  %136 = icmp ne ptr addrspace(1) %135, null
  br i1 %136, label %139, label %145
137:
  %138 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %138, ptr %52
  br label %72
139:
  %140 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = getelementptr inbounds [0 x i64], ptr addrspace(1) %142, i64 0, i64 0
  %144 = load i64, ptr addrspace(1) %143, align 8
  store i64 %144, ptr %4
  br label %151
145:
  %146 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 0
  %147 = load ptr, ptr addrspace(1) %146, align 8
  %148 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %147, i64 0, i32 6
  %149 = load ptr, ptr %148, align 8
  %150 = call i64 %149(ptr addrspace(1) %119, i64 0)
  store i64 %150, ptr %4
  br label %151
151:
  %152 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 3
  %154 = load ptr addrspace(1), ptr addrspace(1) %153, align 8
  %155 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %156 = load i64, ptr %4
  %157 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %156), !dbg !12
  %158 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %155, i64 0, i64 0
  store ptr addrspace(1) %157, ptr addrspace(1) %158
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 1
  store i64 1, ptr addrspace(1) %159
  %160 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %161 = getelementptr i8, ptr addrspace(1) %160, i64 864691128455135236
  store ptr addrspace(1) %161, ptr %5
  %162 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %162), !dbg !13
  store ptr addrspace(1) null, ptr %6
  %163 = load ptr addrspace(1), ptr %x
  %164 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %163, i64 72057594037927928)
  %165 = bitcast ptr addrspace(1) %164 to ptr addrspace(1)
  %166 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 1
  %167 = load i64, ptr addrspace(1) %166, align 8
  %168 = icmp ult i64 0, %167
  br i1 %168, label %169, label %172
169:
  %170 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %163, i64 4)
  %171 = icmp ne ptr addrspace(1) %170, null
  br i1 %171, label %174, label %180
172:
  %173 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %173, ptr %52
  br label %72
174:
  %175 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 3
  %176 = load ptr addrspace(1), ptr addrspace(1) %175, align 8
  %177 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %178 = getelementptr inbounds [0 x i64], ptr addrspace(1) %177, i64 0, i64 0
  %179 = load i64, ptr addrspace(1) %178, align 8
  store i64 %179, ptr %7
  br label %186
180:
  %181 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 0
  %182 = load ptr, ptr addrspace(1) %181, align 8
  %183 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %182, i64 0, i32 6
  %184 = load ptr, ptr %183, align 8
  %185 = call i64 %184(ptr addrspace(1) %163, i64 0)
  store i64 %185, ptr %7
  br label %186
186:
  %187 = load i64, ptr %7
  %188 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %187, i64 2)
  %189 = extractvalue {i64, i1} %188, 1
  br i1 %189, label %198, label %190
190:
  %191 = extractvalue {i64, i1} %188, 0
  store i64 %191, ptr %8
  %192 = load ptr addrspace(1), ptr %x
  %193 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %192, i64 72057594037927928), !dbg !14
  %194 = bitcast ptr addrspace(1) %193 to ptr addrspace(1)
  %195 = load i64, ptr %8
  %196 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %192, i64 4)
  %197 = icmp ne ptr addrspace(1) %196, null
  br i1 %197, label %200, label %204
198:
  %199 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %199, ptr %52
  br label %72
200:
  %201 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 1
  %202 = load i64, ptr addrspace(1) %201, align 8
  %203 = icmp ult i64 0, %202
  br i1 %203, label %218, label %204
204:
  %205 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 0
  %206 = load ptr, ptr addrspace(1) %205, align 8
  %207 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %206, i64 0, i32 7
  %208 = load ptr, ptr %207, align 8
  %209 = call i64 %208(ptr addrspace(1) %192, i64 0, i64 %195)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %223, label %224
211:
  %212 = load ptr addrspace(1), ptr %x
  %213 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %212, i64 72057594037927928)
  %214 = bitcast ptr addrspace(1) %213 to ptr addrspace(1)
  %215 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %214, i64 0, i32 1
  %216 = load i64, ptr addrspace(1) %215, align 8
  %217 = icmp ult i64 0, %216
  br i1 %217, label %227, label %230
218:
  %219 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 3
  %220 = load ptr addrspace(1), ptr addrspace(1) %219, align 8
  %221 = bitcast ptr addrspace(1) %220 to ptr addrspace(1)
  %222 = getelementptr inbounds [0 x i64], ptr addrspace(1) %221, i64 0, i64 0
  store i64 %195, ptr addrspace(1) %222
  br label %211
223:
  br label %211
224:
  %225 = or i64 %209, 1792
  %226 = call ptr addrspace(1) @_bal_panic_construct(i64 %225), !dbg !7
  store ptr addrspace(1) %226, ptr %52
  br label %72
227:
  %228 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %212, i64 4)
  %229 = icmp ne ptr addrspace(1) %228, null
  br i1 %229, label %232, label %238
230:
  %231 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %231, ptr %52
  br label %72
232:
  %233 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %214, i64 0, i32 3
  %234 = load ptr addrspace(1), ptr addrspace(1) %233, align 8
  %235 = bitcast ptr addrspace(1) %234 to ptr addrspace(1)
  %236 = getelementptr inbounds [0 x i64], ptr addrspace(1) %235, i64 0, i64 0
  %237 = load i64, ptr addrspace(1) %236, align 8
  store i64 %237, ptr %9
  br label %244
238:
  %239 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %214, i64 0, i32 0
  %240 = load ptr, ptr addrspace(1) %239, align 8
  %241 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %240, i64 0, i32 6
  %242 = load ptr, ptr %241, align 8
  %243 = call i64 %242(ptr addrspace(1) %212, i64 0)
  store i64 %243, ptr %9
  br label %244
244:
  %245 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %246 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 3
  %247 = load ptr addrspace(1), ptr addrspace(1) %246, align 8
  %248 = bitcast ptr addrspace(1) %247 to ptr addrspace(1)
  %249 = load i64, ptr %9
  %250 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %249), !dbg !16
  %251 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %248, i64 0, i64 0
  store ptr addrspace(1) %250, ptr addrspace(1) %251
  %252 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 1
  store i64 1, ptr addrspace(1) %252
  %253 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %254 = getelementptr i8, ptr addrspace(1) %253, i64 864691128455135236
  store ptr addrspace(1) %254, ptr %10
  %255 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %255), !dbg !17
  store ptr addrspace(1) null, ptr %11
  %256 = load ptr addrspace(1), ptr %x
  %257 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %256, i64 72057594037927928)
  %258 = bitcast ptr addrspace(1) %257 to ptr addrspace(1)
  %259 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 1
  %260 = load i64, ptr addrspace(1) %259, align 8
  %261 = icmp ult i64 0, %260
  br i1 %261, label %262, label %265
262:
  %263 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %256, i64 4)
  %264 = icmp ne ptr addrspace(1) %263, null
  br i1 %264, label %267, label %273
265:
  %266 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %266, ptr %52
  br label %72
267:
  %268 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 3
  %269 = load ptr addrspace(1), ptr addrspace(1) %268, align 8
  %270 = bitcast ptr addrspace(1) %269 to ptr addrspace(1)
  %271 = getelementptr inbounds [0 x i64], ptr addrspace(1) %270, i64 0, i64 0
  %272 = load i64, ptr addrspace(1) %271, align 8
  store i64 %272, ptr %12
  br label %279
273:
  %274 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 0
  %275 = load ptr, ptr addrspace(1) %274, align 8
  %276 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %275, i64 0, i32 6
  %277 = load ptr, ptr %276, align 8
  %278 = call i64 %277(ptr addrspace(1) %256, i64 0)
  store i64 %278, ptr %12
  br label %279
279:
  %280 = load i64, ptr %12
  %281 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %280, i64 4)
  %282 = extractvalue {i64, i1} %281, 1
  br i1 %282, label %291, label %283
283:
  %284 = extractvalue {i64, i1} %281, 0
  store i64 %284, ptr %13
  %285 = load ptr addrspace(1), ptr %x
  %286 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %285, i64 72057594037927928), !dbg !18
  %287 = bitcast ptr addrspace(1) %286 to ptr addrspace(1)
  %288 = load i64, ptr %13
  %289 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %285, i64 4)
  %290 = icmp ne ptr addrspace(1) %289, null
  br i1 %290, label %293, label %297
291:
  %292 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !7
  store ptr addrspace(1) %292, ptr %52
  br label %72
293:
  %294 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %287, i64 0, i32 1
  %295 = load i64, ptr addrspace(1) %294, align 8
  %296 = icmp ult i64 0, %295
  br i1 %296, label %311, label %297
297:
  %298 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %287, i64 0, i32 0
  %299 = load ptr, ptr addrspace(1) %298, align 8
  %300 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %299, i64 0, i32 7
  %301 = load ptr, ptr %300, align 8
  %302 = call i64 %301(ptr addrspace(1) %285, i64 0, i64 %288)
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %316, label %317
304:
  %305 = load ptr addrspace(1), ptr %x
  %306 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %305, i64 72057594037927928)
  %307 = bitcast ptr addrspace(1) %306 to ptr addrspace(1)
  %308 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 1
  %309 = load i64, ptr addrspace(1) %308, align 8
  %310 = icmp ult i64 0, %309
  br i1 %310, label %320, label %323
311:
  %312 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %287, i64 0, i32 3
  %313 = load ptr addrspace(1), ptr addrspace(1) %312, align 8
  %314 = bitcast ptr addrspace(1) %313 to ptr addrspace(1)
  %315 = getelementptr inbounds [0 x i64], ptr addrspace(1) %314, i64 0, i64 0
  store i64 %288, ptr addrspace(1) %315
  br label %304
316:
  br label %304
317:
  %318 = or i64 %302, 2304
  %319 = call ptr addrspace(1) @_bal_panic_construct(i64 %318), !dbg !7
  store ptr addrspace(1) %319, ptr %52
  br label %72
320:
  %321 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %305, i64 4)
  %322 = icmp ne ptr addrspace(1) %321, null
  br i1 %322, label %325, label %331
323:
  %324 = call ptr addrspace(1) @_bal_panic_construct(i64 2565), !dbg !7
  store ptr addrspace(1) %324, ptr %52
  br label %72
325:
  %326 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 3
  %327 = load ptr addrspace(1), ptr addrspace(1) %326, align 8
  %328 = bitcast ptr addrspace(1) %327 to ptr addrspace(1)
  %329 = getelementptr inbounds [0 x i64], ptr addrspace(1) %328, i64 0, i64 0
  %330 = load i64, ptr addrspace(1) %329, align 8
  store i64 %330, ptr %14
  br label %337
331:
  %332 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 0
  %333 = load ptr, ptr addrspace(1) %332, align 8
  %334 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %333, i64 0, i32 6
  %335 = load ptr, ptr %334, align 8
  %336 = call i64 %335(ptr addrspace(1) %305, i64 0)
  store i64 %336, ptr %14
  br label %337
337:
  %338 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %339 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %338, i64 0, i32 3
  %340 = load ptr addrspace(1), ptr addrspace(1) %339, align 8
  %341 = bitcast ptr addrspace(1) %340 to ptr addrspace(1)
  %342 = load i64, ptr %14
  %343 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %342), !dbg !20
  %344 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %341, i64 0, i64 0
  store ptr addrspace(1) %343, ptr addrspace(1) %344
  %345 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %338, i64 0, i32 1
  store i64 1, ptr addrspace(1) %345
  %346 = bitcast ptr addrspace(1) %338 to ptr addrspace(1)
  %347 = getelementptr i8, ptr addrspace(1) %346, i64 864691128455135236
  store ptr addrspace(1) %347, ptr %15
  %348 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %348), !dbg !21
  store ptr addrspace(1) null, ptr %16
  %349 = load ptr addrspace(1), ptr %x
  %350 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %349, i64 72057594037927928)
  %351 = bitcast ptr addrspace(1) %350 to ptr addrspace(1)
  %352 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %351, i64 0, i32 1
  %353 = load i64, ptr addrspace(1) %352, align 8
  %354 = icmp ult i64 0, %353
  br i1 %354, label %355, label %358
355:
  %356 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %349, i64 4)
  %357 = icmp ne ptr addrspace(1) %356, null
  br i1 %357, label %360, label %366
358:
  %359 = call ptr addrspace(1) @_bal_panic_construct(i64 2821), !dbg !7
  store ptr addrspace(1) %359, ptr %52
  br label %72
360:
  %361 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %351, i64 0, i32 3
  %362 = load ptr addrspace(1), ptr addrspace(1) %361, align 8
  %363 = bitcast ptr addrspace(1) %362 to ptr addrspace(1)
  %364 = getelementptr inbounds [0 x i64], ptr addrspace(1) %363, i64 0, i64 0
  %365 = load i64, ptr addrspace(1) %364, align 8
  store i64 %365, ptr %17
  br label %372
366:
  %367 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %351, i64 0, i32 0
  %368 = load ptr, ptr addrspace(1) %367, align 8
  %369 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %368, i64 0, i32 6
  %370 = load ptr, ptr %369, align 8
  %371 = call i64 %370(ptr addrspace(1) %349, i64 0)
  store i64 %371, ptr %17
  br label %372
372:
  %373 = load i64, ptr %17
  %374 = icmp eq i64 2, 0
  br i1 %374, label %375, label %377
375:
  %376 = call ptr addrspace(1) @_bal_panic_construct(i64 2818), !dbg !7
  store ptr addrspace(1) %376, ptr %52
  br label %72
377:
  %378 = icmp eq i64 %373, -9223372036854775808
  %379 = icmp eq i64 2, -1
  %380 = and i1 %378, %379
  br i1 %380, label %389, label %381
381:
  %382 = sdiv i64 %373, 2
  store i64 %382, ptr %18
  %383 = load ptr addrspace(1), ptr %x
  %384 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %383, i64 72057594037927928), !dbg !22
  %385 = bitcast ptr addrspace(1) %384 to ptr addrspace(1)
  %386 = load i64, ptr %18
  %387 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %383, i64 4)
  %388 = icmp ne ptr addrspace(1) %387, null
  br i1 %388, label %391, label %395
389:
  %390 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !7
  store ptr addrspace(1) %390, ptr %52
  br label %72
391:
  %392 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %385, i64 0, i32 1
  %393 = load i64, ptr addrspace(1) %392, align 8
  %394 = icmp ult i64 0, %393
  br i1 %394, label %409, label %395
395:
  %396 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %385, i64 0, i32 0
  %397 = load ptr, ptr addrspace(1) %396, align 8
  %398 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %397, i64 0, i32 7
  %399 = load ptr, ptr %398, align 8
  %400 = call i64 %399(ptr addrspace(1) %383, i64 0, i64 %386)
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %414, label %415
402:
  %403 = load ptr addrspace(1), ptr %x
  %404 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %403, i64 72057594037927928)
  %405 = bitcast ptr addrspace(1) %404 to ptr addrspace(1)
  %406 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %405, i64 0, i32 1
  %407 = load i64, ptr addrspace(1) %406, align 8
  %408 = icmp ult i64 0, %407
  br i1 %408, label %418, label %421
409:
  %410 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %385, i64 0, i32 3
  %411 = load ptr addrspace(1), ptr addrspace(1) %410, align 8
  %412 = bitcast ptr addrspace(1) %411 to ptr addrspace(1)
  %413 = getelementptr inbounds [0 x i64], ptr addrspace(1) %412, i64 0, i64 0
  store i64 %386, ptr addrspace(1) %413
  br label %402
414:
  br label %402
415:
  %416 = or i64 %400, 2816
  %417 = call ptr addrspace(1) @_bal_panic_construct(i64 %416), !dbg !7
  store ptr addrspace(1) %417, ptr %52
  br label %72
418:
  %419 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %403, i64 4)
  %420 = icmp ne ptr addrspace(1) %419, null
  br i1 %420, label %423, label %429
421:
  %422 = call ptr addrspace(1) @_bal_panic_construct(i64 3077), !dbg !7
  store ptr addrspace(1) %422, ptr %52
  br label %72
423:
  %424 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %405, i64 0, i32 3
  %425 = load ptr addrspace(1), ptr addrspace(1) %424, align 8
  %426 = bitcast ptr addrspace(1) %425 to ptr addrspace(1)
  %427 = getelementptr inbounds [0 x i64], ptr addrspace(1) %426, i64 0, i64 0
  %428 = load i64, ptr addrspace(1) %427, align 8
  store i64 %428, ptr %19
  br label %435
429:
  %430 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %405, i64 0, i32 0
  %431 = load ptr, ptr addrspace(1) %430, align 8
  %432 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %431, i64 0, i32 6
  %433 = load ptr, ptr %432, align 8
  %434 = call i64 %433(ptr addrspace(1) %403, i64 0)
  store i64 %434, ptr %19
  br label %435
435:
  %436 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %437 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %436, i64 0, i32 3
  %438 = load ptr addrspace(1), ptr addrspace(1) %437, align 8
  %439 = bitcast ptr addrspace(1) %438 to ptr addrspace(1)
  %440 = load i64, ptr %19
  %441 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %440), !dbg !24
  %442 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %439, i64 0, i64 0
  store ptr addrspace(1) %441, ptr addrspace(1) %442
  %443 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %436, i64 0, i32 1
  store i64 1, ptr addrspace(1) %443
  %444 = bitcast ptr addrspace(1) %436 to ptr addrspace(1)
  %445 = getelementptr i8, ptr addrspace(1) %444, i64 864691128455135236
  store ptr addrspace(1) %445, ptr %20
  %446 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %446), !dbg !25
  store ptr addrspace(1) null, ptr %21
  %447 = load ptr addrspace(1), ptr %x
  %448 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %447, i64 72057594037927928)
  %449 = bitcast ptr addrspace(1) %448 to ptr addrspace(1)
  %450 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %449, i64 0, i32 1
  %451 = load i64, ptr addrspace(1) %450, align 8
  %452 = icmp ult i64 0, %451
  br i1 %452, label %453, label %456
453:
  %454 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %447, i64 4)
  %455 = icmp ne ptr addrspace(1) %454, null
  br i1 %455, label %458, label %464
456:
  %457 = call ptr addrspace(1) @_bal_panic_construct(i64 3333), !dbg !7
  store ptr addrspace(1) %457, ptr %52
  br label %72
458:
  %459 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %449, i64 0, i32 3
  %460 = load ptr addrspace(1), ptr addrspace(1) %459, align 8
  %461 = bitcast ptr addrspace(1) %460 to ptr addrspace(1)
  %462 = getelementptr inbounds [0 x i64], ptr addrspace(1) %461, i64 0, i64 0
  %463 = load i64, ptr addrspace(1) %462, align 8
  store i64 %463, ptr %22
  br label %470
464:
  %465 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %449, i64 0, i32 0
  %466 = load ptr, ptr addrspace(1) %465, align 8
  %467 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %466, i64 0, i32 6
  %468 = load ptr, ptr %467, align 8
  %469 = call i64 %468(ptr addrspace(1) %447, i64 0)
  store i64 %469, ptr %22
  br label %470
470:
  %471 = load i64, ptr %22
  %472 = and i64 %471, 5
  store i64 %472, ptr %23
  %473 = load ptr addrspace(1), ptr %x
  %474 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %473, i64 72057594037927928), !dbg !26
  %475 = bitcast ptr addrspace(1) %474 to ptr addrspace(1)
  %476 = load i64, ptr %23
  %477 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %473, i64 4)
  %478 = icmp ne ptr addrspace(1) %477, null
  br i1 %478, label %479, label %483
479:
  %480 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %475, i64 0, i32 1
  %481 = load i64, ptr addrspace(1) %480, align 8
  %482 = icmp ult i64 0, %481
  br i1 %482, label %497, label %483
483:
  %484 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %475, i64 0, i32 0
  %485 = load ptr, ptr addrspace(1) %484, align 8
  %486 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %485, i64 0, i32 7
  %487 = load ptr, ptr %486, align 8
  %488 = call i64 %487(ptr addrspace(1) %473, i64 0, i64 %476)
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %502, label %503
490:
  %491 = load ptr addrspace(1), ptr %x
  %492 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %491, i64 72057594037927928)
  %493 = bitcast ptr addrspace(1) %492 to ptr addrspace(1)
  %494 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %493, i64 0, i32 1
  %495 = load i64, ptr addrspace(1) %494, align 8
  %496 = icmp ult i64 0, %495
  br i1 %496, label %506, label %509
497:
  %498 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %475, i64 0, i32 3
  %499 = load ptr addrspace(1), ptr addrspace(1) %498, align 8
  %500 = bitcast ptr addrspace(1) %499 to ptr addrspace(1)
  %501 = getelementptr inbounds [0 x i64], ptr addrspace(1) %500, i64 0, i64 0
  store i64 %476, ptr addrspace(1) %501
  br label %490
502:
  br label %490
503:
  %504 = or i64 %488, 3328
  %505 = call ptr addrspace(1) @_bal_panic_construct(i64 %504), !dbg !7
  store ptr addrspace(1) %505, ptr %52
  br label %72
506:
  %507 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %491, i64 4)
  %508 = icmp ne ptr addrspace(1) %507, null
  br i1 %508, label %511, label %517
509:
  %510 = call ptr addrspace(1) @_bal_panic_construct(i64 3589), !dbg !7
  store ptr addrspace(1) %510, ptr %52
  br label %72
511:
  %512 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %493, i64 0, i32 3
  %513 = load ptr addrspace(1), ptr addrspace(1) %512, align 8
  %514 = bitcast ptr addrspace(1) %513 to ptr addrspace(1)
  %515 = getelementptr inbounds [0 x i64], ptr addrspace(1) %514, i64 0, i64 0
  %516 = load i64, ptr addrspace(1) %515, align 8
  store i64 %516, ptr %24
  br label %523
517:
  %518 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %493, i64 0, i32 0
  %519 = load ptr, ptr addrspace(1) %518, align 8
  %520 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %519, i64 0, i32 6
  %521 = load ptr, ptr %520, align 8
  %522 = call i64 %521(ptr addrspace(1) %491, i64 0)
  store i64 %522, ptr %24
  br label %523
523:
  %524 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %525 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %524, i64 0, i32 3
  %526 = load ptr addrspace(1), ptr addrspace(1) %525, align 8
  %527 = bitcast ptr addrspace(1) %526 to ptr addrspace(1)
  %528 = load i64, ptr %24
  %529 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %528), !dbg !28
  %530 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %527, i64 0, i64 0
  store ptr addrspace(1) %529, ptr addrspace(1) %530
  %531 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %524, i64 0, i32 1
  store i64 1, ptr addrspace(1) %531
  %532 = bitcast ptr addrspace(1) %524 to ptr addrspace(1)
  %533 = getelementptr i8, ptr addrspace(1) %532, i64 864691128455135236
  store ptr addrspace(1) %533, ptr %25
  %534 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %534), !dbg !29
  store ptr addrspace(1) null, ptr %26
  %535 = load ptr addrspace(1), ptr %x
  %536 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %535, i64 72057594037927928)
  %537 = bitcast ptr addrspace(1) %536 to ptr addrspace(1)
  %538 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %537, i64 0, i32 1
  %539 = load i64, ptr addrspace(1) %538, align 8
  %540 = icmp ult i64 0, %539
  br i1 %540, label %541, label %544
541:
  %542 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %535, i64 4)
  %543 = icmp ne ptr addrspace(1) %542, null
  br i1 %543, label %546, label %552
544:
  %545 = call ptr addrspace(1) @_bal_panic_construct(i64 3845), !dbg !7
  store ptr addrspace(1) %545, ptr %52
  br label %72
546:
  %547 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %537, i64 0, i32 3
  %548 = load ptr addrspace(1), ptr addrspace(1) %547, align 8
  %549 = bitcast ptr addrspace(1) %548 to ptr addrspace(1)
  %550 = getelementptr inbounds [0 x i64], ptr addrspace(1) %549, i64 0, i64 0
  %551 = load i64, ptr addrspace(1) %550, align 8
  store i64 %551, ptr %27
  br label %558
552:
  %553 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %537, i64 0, i32 0
  %554 = load ptr, ptr addrspace(1) %553, align 8
  %555 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %554, i64 0, i32 6
  %556 = load ptr, ptr %555, align 8
  %557 = call i64 %556(ptr addrspace(1) %535, i64 0)
  store i64 %557, ptr %27
  br label %558
558:
  %559 = load i64, ptr %27
  %560 = or i64 %559, 9
  store i64 %560, ptr %28
  %561 = load ptr addrspace(1), ptr %x
  %562 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %561, i64 72057594037927928), !dbg !30
  %563 = bitcast ptr addrspace(1) %562 to ptr addrspace(1)
  %564 = load i64, ptr %28
  %565 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %561, i64 4)
  %566 = icmp ne ptr addrspace(1) %565, null
  br i1 %566, label %567, label %571
567:
  %568 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %563, i64 0, i32 1
  %569 = load i64, ptr addrspace(1) %568, align 8
  %570 = icmp ult i64 0, %569
  br i1 %570, label %585, label %571
571:
  %572 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %563, i64 0, i32 0
  %573 = load ptr, ptr addrspace(1) %572, align 8
  %574 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %573, i64 0, i32 7
  %575 = load ptr, ptr %574, align 8
  %576 = call i64 %575(ptr addrspace(1) %561, i64 0, i64 %564)
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %590, label %591
578:
  %579 = load ptr addrspace(1), ptr %x
  %580 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %579, i64 72057594037927928)
  %581 = bitcast ptr addrspace(1) %580 to ptr addrspace(1)
  %582 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %581, i64 0, i32 1
  %583 = load i64, ptr addrspace(1) %582, align 8
  %584 = icmp ult i64 0, %583
  br i1 %584, label %594, label %597
585:
  %586 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %563, i64 0, i32 3
  %587 = load ptr addrspace(1), ptr addrspace(1) %586, align 8
  %588 = bitcast ptr addrspace(1) %587 to ptr addrspace(1)
  %589 = getelementptr inbounds [0 x i64], ptr addrspace(1) %588, i64 0, i64 0
  store i64 %564, ptr addrspace(1) %589
  br label %578
590:
  br label %578
591:
  %592 = or i64 %576, 3840
  %593 = call ptr addrspace(1) @_bal_panic_construct(i64 %592), !dbg !7
  store ptr addrspace(1) %593, ptr %52
  br label %72
594:
  %595 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %579, i64 4)
  %596 = icmp ne ptr addrspace(1) %595, null
  br i1 %596, label %599, label %605
597:
  %598 = call ptr addrspace(1) @_bal_panic_construct(i64 4101), !dbg !7
  store ptr addrspace(1) %598, ptr %52
  br label %72
599:
  %600 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %581, i64 0, i32 3
  %601 = load ptr addrspace(1), ptr addrspace(1) %600, align 8
  %602 = bitcast ptr addrspace(1) %601 to ptr addrspace(1)
  %603 = getelementptr inbounds [0 x i64], ptr addrspace(1) %602, i64 0, i64 0
  %604 = load i64, ptr addrspace(1) %603, align 8
  store i64 %604, ptr %29
  br label %611
605:
  %606 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %581, i64 0, i32 0
  %607 = load ptr, ptr addrspace(1) %606, align 8
  %608 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %607, i64 0, i32 6
  %609 = load ptr, ptr %608, align 8
  %610 = call i64 %609(ptr addrspace(1) %579, i64 0)
  store i64 %610, ptr %29
  br label %611
611:
  %612 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !31
  %613 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %612, i64 0, i32 3
  %614 = load ptr addrspace(1), ptr addrspace(1) %613, align 8
  %615 = bitcast ptr addrspace(1) %614 to ptr addrspace(1)
  %616 = load i64, ptr %29
  %617 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %616), !dbg !32
  %618 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %615, i64 0, i64 0
  store ptr addrspace(1) %617, ptr addrspace(1) %618
  %619 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %612, i64 0, i32 1
  store i64 1, ptr addrspace(1) %619
  %620 = bitcast ptr addrspace(1) %612 to ptr addrspace(1)
  %621 = getelementptr i8, ptr addrspace(1) %620, i64 864691128455135236
  store ptr addrspace(1) %621, ptr %30
  %622 = load ptr addrspace(1), ptr %30
  call void @_Bb02ioprintln(ptr addrspace(1) %622), !dbg !33
  store ptr addrspace(1) null, ptr %31
  %623 = load ptr addrspace(1), ptr %x
  %624 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %623, i64 72057594037927928)
  %625 = bitcast ptr addrspace(1) %624 to ptr addrspace(1)
  %626 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %625, i64 0, i32 1
  %627 = load i64, ptr addrspace(1) %626, align 8
  %628 = icmp ult i64 0, %627
  br i1 %628, label %629, label %632
629:
  %630 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %623, i64 4)
  %631 = icmp ne ptr addrspace(1) %630, null
  br i1 %631, label %634, label %640
632:
  %633 = call ptr addrspace(1) @_bal_panic_construct(i64 4357), !dbg !7
  store ptr addrspace(1) %633, ptr %52
  br label %72
634:
  %635 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %625, i64 0, i32 3
  %636 = load ptr addrspace(1), ptr addrspace(1) %635, align 8
  %637 = bitcast ptr addrspace(1) %636 to ptr addrspace(1)
  %638 = getelementptr inbounds [0 x i64], ptr addrspace(1) %637, i64 0, i64 0
  %639 = load i64, ptr addrspace(1) %638, align 8
  store i64 %639, ptr %32
  br label %646
640:
  %641 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %625, i64 0, i32 0
  %642 = load ptr, ptr addrspace(1) %641, align 8
  %643 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %642, i64 0, i32 6
  %644 = load ptr, ptr %643, align 8
  %645 = call i64 %644(ptr addrspace(1) %623, i64 0)
  store i64 %645, ptr %32
  br label %646
646:
  %647 = load i64, ptr %32
  %648 = xor i64 %647, 2
  store i64 %648, ptr %33
  %649 = load ptr addrspace(1), ptr %x
  %650 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %649, i64 72057594037927928), !dbg !34
  %651 = bitcast ptr addrspace(1) %650 to ptr addrspace(1)
  %652 = load i64, ptr %33
  %653 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %649, i64 4)
  %654 = icmp ne ptr addrspace(1) %653, null
  br i1 %654, label %655, label %659
655:
  %656 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %651, i64 0, i32 1
  %657 = load i64, ptr addrspace(1) %656, align 8
  %658 = icmp ult i64 0, %657
  br i1 %658, label %673, label %659
659:
  %660 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %651, i64 0, i32 0
  %661 = load ptr, ptr addrspace(1) %660, align 8
  %662 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %661, i64 0, i32 7
  %663 = load ptr, ptr %662, align 8
  %664 = call i64 %663(ptr addrspace(1) %649, i64 0, i64 %652)
  %665 = icmp eq i64 %664, 0
  br i1 %665, label %678, label %679
666:
  %667 = load ptr addrspace(1), ptr %x
  %668 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %667, i64 72057594037927928)
  %669 = bitcast ptr addrspace(1) %668 to ptr addrspace(1)
  %670 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %669, i64 0, i32 1
  %671 = load i64, ptr addrspace(1) %670, align 8
  %672 = icmp ult i64 0, %671
  br i1 %672, label %682, label %685
673:
  %674 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %651, i64 0, i32 3
  %675 = load ptr addrspace(1), ptr addrspace(1) %674, align 8
  %676 = bitcast ptr addrspace(1) %675 to ptr addrspace(1)
  %677 = getelementptr inbounds [0 x i64], ptr addrspace(1) %676, i64 0, i64 0
  store i64 %652, ptr addrspace(1) %677
  br label %666
678:
  br label %666
679:
  %680 = or i64 %664, 4352
  %681 = call ptr addrspace(1) @_bal_panic_construct(i64 %680), !dbg !7
  store ptr addrspace(1) %681, ptr %52
  br label %72
682:
  %683 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %667, i64 4)
  %684 = icmp ne ptr addrspace(1) %683, null
  br i1 %684, label %687, label %693
685:
  %686 = call ptr addrspace(1) @_bal_panic_construct(i64 4613), !dbg !7
  store ptr addrspace(1) %686, ptr %52
  br label %72
687:
  %688 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %669, i64 0, i32 3
  %689 = load ptr addrspace(1), ptr addrspace(1) %688, align 8
  %690 = bitcast ptr addrspace(1) %689 to ptr addrspace(1)
  %691 = getelementptr inbounds [0 x i64], ptr addrspace(1) %690, i64 0, i64 0
  %692 = load i64, ptr addrspace(1) %691, align 8
  store i64 %692, ptr %34
  br label %699
693:
  %694 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %669, i64 0, i32 0
  %695 = load ptr, ptr addrspace(1) %694, align 8
  %696 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %695, i64 0, i32 6
  %697 = load ptr, ptr %696, align 8
  %698 = call i64 %697(ptr addrspace(1) %667, i64 0)
  store i64 %698, ptr %34
  br label %699
699:
  %700 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !35
  %701 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %700, i64 0, i32 3
  %702 = load ptr addrspace(1), ptr addrspace(1) %701, align 8
  %703 = bitcast ptr addrspace(1) %702 to ptr addrspace(1)
  %704 = load i64, ptr %34
  %705 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %704), !dbg !36
  %706 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %703, i64 0, i64 0
  store ptr addrspace(1) %705, ptr addrspace(1) %706
  %707 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %700, i64 0, i32 1
  store i64 1, ptr addrspace(1) %707
  %708 = bitcast ptr addrspace(1) %700 to ptr addrspace(1)
  %709 = getelementptr i8, ptr addrspace(1) %708, i64 864691128455135236
  store ptr addrspace(1) %709, ptr %35
  %710 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %710), !dbg !37
  store ptr addrspace(1) null, ptr %36
  %711 = load ptr addrspace(1), ptr %x
  %712 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %711, i64 72057594037927928)
  %713 = bitcast ptr addrspace(1) %712 to ptr addrspace(1)
  %714 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %713, i64 0, i32 1
  %715 = load i64, ptr addrspace(1) %714, align 8
  %716 = icmp ult i64 0, %715
  br i1 %716, label %717, label %720
717:
  %718 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %711, i64 4)
  %719 = icmp ne ptr addrspace(1) %718, null
  br i1 %719, label %722, label %728
720:
  %721 = call ptr addrspace(1) @_bal_panic_construct(i64 4869), !dbg !7
  store ptr addrspace(1) %721, ptr %52
  br label %72
722:
  %723 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %713, i64 0, i32 3
  %724 = load ptr addrspace(1), ptr addrspace(1) %723, align 8
  %725 = bitcast ptr addrspace(1) %724 to ptr addrspace(1)
  %726 = getelementptr inbounds [0 x i64], ptr addrspace(1) %725, i64 0, i64 0
  %727 = load i64, ptr addrspace(1) %726, align 8
  store i64 %727, ptr %37
  br label %734
728:
  %729 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %713, i64 0, i32 0
  %730 = load ptr, ptr addrspace(1) %729, align 8
  %731 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %730, i64 0, i32 6
  %732 = load ptr, ptr %731, align 8
  %733 = call i64 %732(ptr addrspace(1) %711, i64 0)
  store i64 %733, ptr %37
  br label %734
734:
  %735 = load i64, ptr %37
  %736 = and i64 63, 7
  %737 = shl i64 %735, %736
  store i64 %737, ptr %38
  %738 = load ptr addrspace(1), ptr %x
  %739 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %738, i64 72057594037927928), !dbg !38
  %740 = bitcast ptr addrspace(1) %739 to ptr addrspace(1)
  %741 = load i64, ptr %38
  %742 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %738, i64 4)
  %743 = icmp ne ptr addrspace(1) %742, null
  br i1 %743, label %744, label %748
744:
  %745 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %740, i64 0, i32 1
  %746 = load i64, ptr addrspace(1) %745, align 8
  %747 = icmp ult i64 0, %746
  br i1 %747, label %762, label %748
748:
  %749 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %740, i64 0, i32 0
  %750 = load ptr, ptr addrspace(1) %749, align 8
  %751 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %750, i64 0, i32 7
  %752 = load ptr, ptr %751, align 8
  %753 = call i64 %752(ptr addrspace(1) %738, i64 0, i64 %741)
  %754 = icmp eq i64 %753, 0
  br i1 %754, label %767, label %768
755:
  %756 = load ptr addrspace(1), ptr %x
  %757 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %756, i64 72057594037927928)
  %758 = bitcast ptr addrspace(1) %757 to ptr addrspace(1)
  %759 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %758, i64 0, i32 1
  %760 = load i64, ptr addrspace(1) %759, align 8
  %761 = icmp ult i64 0, %760
  br i1 %761, label %771, label %774
762:
  %763 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %740, i64 0, i32 3
  %764 = load ptr addrspace(1), ptr addrspace(1) %763, align 8
  %765 = bitcast ptr addrspace(1) %764 to ptr addrspace(1)
  %766 = getelementptr inbounds [0 x i64], ptr addrspace(1) %765, i64 0, i64 0
  store i64 %741, ptr addrspace(1) %766
  br label %755
767:
  br label %755
768:
  %769 = or i64 %753, 4864
  %770 = call ptr addrspace(1) @_bal_panic_construct(i64 %769), !dbg !7
  store ptr addrspace(1) %770, ptr %52
  br label %72
771:
  %772 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %756, i64 4)
  %773 = icmp ne ptr addrspace(1) %772, null
  br i1 %773, label %776, label %782
774:
  %775 = call ptr addrspace(1) @_bal_panic_construct(i64 5125), !dbg !7
  store ptr addrspace(1) %775, ptr %52
  br label %72
776:
  %777 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %758, i64 0, i32 3
  %778 = load ptr addrspace(1), ptr addrspace(1) %777, align 8
  %779 = bitcast ptr addrspace(1) %778 to ptr addrspace(1)
  %780 = getelementptr inbounds [0 x i64], ptr addrspace(1) %779, i64 0, i64 0
  %781 = load i64, ptr addrspace(1) %780, align 8
  store i64 %781, ptr %39
  br label %788
782:
  %783 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %758, i64 0, i32 0
  %784 = load ptr, ptr addrspace(1) %783, align 8
  %785 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %784, i64 0, i32 6
  %786 = load ptr, ptr %785, align 8
  %787 = call i64 %786(ptr addrspace(1) %756, i64 0)
  store i64 %787, ptr %39
  br label %788
788:
  %789 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !39
  %790 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %789, i64 0, i32 3
  %791 = load ptr addrspace(1), ptr addrspace(1) %790, align 8
  %792 = bitcast ptr addrspace(1) %791 to ptr addrspace(1)
  %793 = load i64, ptr %39
  %794 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %793), !dbg !40
  %795 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %792, i64 0, i64 0
  store ptr addrspace(1) %794, ptr addrspace(1) %795
  %796 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %789, i64 0, i32 1
  store i64 1, ptr addrspace(1) %796
  %797 = bitcast ptr addrspace(1) %789 to ptr addrspace(1)
  %798 = getelementptr i8, ptr addrspace(1) %797, i64 864691128455135236
  store ptr addrspace(1) %798, ptr %40
  %799 = load ptr addrspace(1), ptr %40
  call void @_Bb02ioprintln(ptr addrspace(1) %799), !dbg !41
  store ptr addrspace(1) null, ptr %41
  %800 = load ptr addrspace(1), ptr %x
  %801 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %800, i64 72057594037927928)
  %802 = bitcast ptr addrspace(1) %801 to ptr addrspace(1)
  %803 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %802, i64 0, i32 1
  %804 = load i64, ptr addrspace(1) %803, align 8
  %805 = icmp ult i64 0, %804
  br i1 %805, label %806, label %809
806:
  %807 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %800, i64 4)
  %808 = icmp ne ptr addrspace(1) %807, null
  br i1 %808, label %811, label %817
809:
  %810 = call ptr addrspace(1) @_bal_panic_construct(i64 5381), !dbg !7
  store ptr addrspace(1) %810, ptr %52
  br label %72
811:
  %812 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %802, i64 0, i32 3
  %813 = load ptr addrspace(1), ptr addrspace(1) %812, align 8
  %814 = bitcast ptr addrspace(1) %813 to ptr addrspace(1)
  %815 = getelementptr inbounds [0 x i64], ptr addrspace(1) %814, i64 0, i64 0
  %816 = load i64, ptr addrspace(1) %815, align 8
  store i64 %816, ptr %42
  br label %823
817:
  %818 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %802, i64 0, i32 0
  %819 = load ptr, ptr addrspace(1) %818, align 8
  %820 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %819, i64 0, i32 6
  %821 = load ptr, ptr %820, align 8
  %822 = call i64 %821(ptr addrspace(1) %800, i64 0)
  store i64 %822, ptr %42
  br label %823
823:
  %824 = load i64, ptr %42
  %825 = and i64 63, 6
  %826 = ashr i64 %824, %825
  store i64 %826, ptr %43
  %827 = load ptr addrspace(1), ptr %x
  %828 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %827, i64 72057594037927928), !dbg !42
  %829 = bitcast ptr addrspace(1) %828 to ptr addrspace(1)
  %830 = load i64, ptr %43
  %831 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %827, i64 4)
  %832 = icmp ne ptr addrspace(1) %831, null
  br i1 %832, label %833, label %837
833:
  %834 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %829, i64 0, i32 1
  %835 = load i64, ptr addrspace(1) %834, align 8
  %836 = icmp ult i64 0, %835
  br i1 %836, label %851, label %837
837:
  %838 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %829, i64 0, i32 0
  %839 = load ptr, ptr addrspace(1) %838, align 8
  %840 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %839, i64 0, i32 7
  %841 = load ptr, ptr %840, align 8
  %842 = call i64 %841(ptr addrspace(1) %827, i64 0, i64 %830)
  %843 = icmp eq i64 %842, 0
  br i1 %843, label %856, label %857
844:
  %845 = load ptr addrspace(1), ptr %x
  %846 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %845, i64 72057594037927928)
  %847 = bitcast ptr addrspace(1) %846 to ptr addrspace(1)
  %848 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %847, i64 0, i32 1
  %849 = load i64, ptr addrspace(1) %848, align 8
  %850 = icmp ult i64 0, %849
  br i1 %850, label %860, label %863
851:
  %852 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %829, i64 0, i32 3
  %853 = load ptr addrspace(1), ptr addrspace(1) %852, align 8
  %854 = bitcast ptr addrspace(1) %853 to ptr addrspace(1)
  %855 = getelementptr inbounds [0 x i64], ptr addrspace(1) %854, i64 0, i64 0
  store i64 %830, ptr addrspace(1) %855
  br label %844
856:
  br label %844
857:
  %858 = or i64 %842, 5376
  %859 = call ptr addrspace(1) @_bal_panic_construct(i64 %858), !dbg !7
  store ptr addrspace(1) %859, ptr %52
  br label %72
860:
  %861 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %845, i64 4)
  %862 = icmp ne ptr addrspace(1) %861, null
  br i1 %862, label %865, label %871
863:
  %864 = call ptr addrspace(1) @_bal_panic_construct(i64 5637), !dbg !7
  store ptr addrspace(1) %864, ptr %52
  br label %72
865:
  %866 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %847, i64 0, i32 3
  %867 = load ptr addrspace(1), ptr addrspace(1) %866, align 8
  %868 = bitcast ptr addrspace(1) %867 to ptr addrspace(1)
  %869 = getelementptr inbounds [0 x i64], ptr addrspace(1) %868, i64 0, i64 0
  %870 = load i64, ptr addrspace(1) %869, align 8
  store i64 %870, ptr %44
  br label %877
871:
  %872 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %847, i64 0, i32 0
  %873 = load ptr, ptr addrspace(1) %872, align 8
  %874 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %873, i64 0, i32 6
  %875 = load ptr, ptr %874, align 8
  %876 = call i64 %875(ptr addrspace(1) %845, i64 0)
  store i64 %876, ptr %44
  br label %877
877:
  %878 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !43
  %879 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %878, i64 0, i32 3
  %880 = load ptr addrspace(1), ptr addrspace(1) %879, align 8
  %881 = bitcast ptr addrspace(1) %880 to ptr addrspace(1)
  %882 = load i64, ptr %44
  %883 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %882), !dbg !44
  %884 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %881, i64 0, i64 0
  store ptr addrspace(1) %883, ptr addrspace(1) %884
  %885 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %878, i64 0, i32 1
  store i64 1, ptr addrspace(1) %885
  %886 = bitcast ptr addrspace(1) %878 to ptr addrspace(1)
  %887 = getelementptr i8, ptr addrspace(1) %886, i64 864691128455135236
  store ptr addrspace(1) %887, ptr %45
  %888 = load ptr addrspace(1), ptr %45
  call void @_Bb02ioprintln(ptr addrspace(1) %888), !dbg !45
  store ptr addrspace(1) null, ptr %46
  %889 = load ptr addrspace(1), ptr %x
  %890 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %889, i64 72057594037927928)
  %891 = bitcast ptr addrspace(1) %890 to ptr addrspace(1)
  %892 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %891, i64 0, i32 1
  %893 = load i64, ptr addrspace(1) %892, align 8
  %894 = icmp ult i64 0, %893
  br i1 %894, label %895, label %898
895:
  %896 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %889, i64 4)
  %897 = icmp ne ptr addrspace(1) %896, null
  br i1 %897, label %900, label %906
898:
  %899 = call ptr addrspace(1) @_bal_panic_construct(i64 5893), !dbg !7
  store ptr addrspace(1) %899, ptr %52
  br label %72
900:
  %901 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %891, i64 0, i32 3
  %902 = load ptr addrspace(1), ptr addrspace(1) %901, align 8
  %903 = bitcast ptr addrspace(1) %902 to ptr addrspace(1)
  %904 = getelementptr inbounds [0 x i64], ptr addrspace(1) %903, i64 0, i64 0
  %905 = load i64, ptr addrspace(1) %904, align 8
  store i64 %905, ptr %47
  br label %912
906:
  %907 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %891, i64 0, i32 0
  %908 = load ptr, ptr addrspace(1) %907, align 8
  %909 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %908, i64 0, i32 6
  %910 = load ptr, ptr %909, align 8
  %911 = call i64 %910(ptr addrspace(1) %889, i64 0)
  store i64 %911, ptr %47
  br label %912
912:
  %913 = load i64, ptr %47
  %914 = and i64 63, 2
  %915 = lshr i64 %913, %914
  store i64 %915, ptr %48
  %916 = load ptr addrspace(1), ptr %x
  %917 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %916, i64 72057594037927928), !dbg !46
  %918 = bitcast ptr addrspace(1) %917 to ptr addrspace(1)
  %919 = load i64, ptr %48
  %920 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %916, i64 4)
  %921 = icmp ne ptr addrspace(1) %920, null
  br i1 %921, label %922, label %926
922:
  %923 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %918, i64 0, i32 1
  %924 = load i64, ptr addrspace(1) %923, align 8
  %925 = icmp ult i64 0, %924
  br i1 %925, label %940, label %926
926:
  %927 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %918, i64 0, i32 0
  %928 = load ptr, ptr addrspace(1) %927, align 8
  %929 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %928, i64 0, i32 7
  %930 = load ptr, ptr %929, align 8
  %931 = call i64 %930(ptr addrspace(1) %916, i64 0, i64 %919)
  %932 = icmp eq i64 %931, 0
  br i1 %932, label %945, label %946
933:
  %934 = load ptr addrspace(1), ptr %x
  %935 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %934, i64 72057594037927928)
  %936 = bitcast ptr addrspace(1) %935 to ptr addrspace(1)
  %937 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %936, i64 0, i32 1
  %938 = load i64, ptr addrspace(1) %937, align 8
  %939 = icmp ult i64 0, %938
  br i1 %939, label %949, label %952
940:
  %941 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %918, i64 0, i32 3
  %942 = load ptr addrspace(1), ptr addrspace(1) %941, align 8
  %943 = bitcast ptr addrspace(1) %942 to ptr addrspace(1)
  %944 = getelementptr inbounds [0 x i64], ptr addrspace(1) %943, i64 0, i64 0
  store i64 %919, ptr addrspace(1) %944
  br label %933
945:
  br label %933
946:
  %947 = or i64 %931, 5888
  %948 = call ptr addrspace(1) @_bal_panic_construct(i64 %947), !dbg !7
  store ptr addrspace(1) %948, ptr %52
  br label %72
949:
  %950 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %934, i64 4)
  %951 = icmp ne ptr addrspace(1) %950, null
  br i1 %951, label %954, label %960
952:
  %953 = call ptr addrspace(1) @_bal_panic_construct(i64 6149), !dbg !7
  store ptr addrspace(1) %953, ptr %52
  br label %72
954:
  %955 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %936, i64 0, i32 3
  %956 = load ptr addrspace(1), ptr addrspace(1) %955, align 8
  %957 = bitcast ptr addrspace(1) %956 to ptr addrspace(1)
  %958 = getelementptr inbounds [0 x i64], ptr addrspace(1) %957, i64 0, i64 0
  %959 = load i64, ptr addrspace(1) %958, align 8
  store i64 %959, ptr %49
  br label %966
960:
  %961 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %936, i64 0, i32 0
  %962 = load ptr, ptr addrspace(1) %961, align 8
  %963 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %962, i64 0, i32 6
  %964 = load ptr, ptr %963, align 8
  %965 = call i64 %964(ptr addrspace(1) %934, i64 0)
  store i64 %965, ptr %49
  br label %966
966:
  %967 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !47
  %968 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %967, i64 0, i32 3
  %969 = load ptr addrspace(1), ptr addrspace(1) %968, align 8
  %970 = bitcast ptr addrspace(1) %969 to ptr addrspace(1)
  %971 = load i64, ptr %49
  %972 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %971), !dbg !48
  %973 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %970, i64 0, i64 0
  store ptr addrspace(1) %972, ptr addrspace(1) %973
  %974 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %967, i64 0, i32 1
  store i64 1, ptr addrspace(1) %974
  %975 = bitcast ptr addrspace(1) %967 to ptr addrspace(1)
  %976 = getelementptr i8, ptr addrspace(1) %975, i64 864691128455135236
  store ptr addrspace(1) %976, ptr %50
  %977 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %977), !dbg !49
  store ptr addrspace(1) null, ptr %51
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/compoundassign1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 5, column: 5, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 5, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 9, column: 5, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 15, scope: !5)
!21 = !DILocation(line: 10, column: 4, scope: !5)
!22 = !DILocation(line: 11, column: 5, scope: !5)
!23 = !DILocation(line: 12, column: 15, scope: !5)
!24 = !DILocation(line: 12, column: 15, scope: !5)
!25 = !DILocation(line: 12, column: 4, scope: !5)
!26 = !DILocation(line: 13, column: 5, scope: !5)
!27 = !DILocation(line: 14, column: 15, scope: !5)
!28 = !DILocation(line: 14, column: 15, scope: !5)
!29 = !DILocation(line: 14, column: 4, scope: !5)
!30 = !DILocation(line: 15, column: 5, scope: !5)
!31 = !DILocation(line: 16, column: 15, scope: !5)
!32 = !DILocation(line: 16, column: 15, scope: !5)
!33 = !DILocation(line: 16, column: 4, scope: !5)
!34 = !DILocation(line: 17, column: 5, scope: !5)
!35 = !DILocation(line: 18, column: 15, scope: !5)
!36 = !DILocation(line: 18, column: 15, scope: !5)
!37 = !DILocation(line: 18, column: 4, scope: !5)
!38 = !DILocation(line: 19, column: 5, scope: !5)
!39 = !DILocation(line: 20, column: 15, scope: !5)
!40 = !DILocation(line: 20, column: 15, scope: !5)
!41 = !DILocation(line: 20, column: 4, scope: !5)
!42 = !DILocation(line: 21, column: 5, scope: !5)
!43 = !DILocation(line: 22, column: 15, scope: !5)
!44 = !DILocation(line: 22, column: 15, scope: !5)
!45 = !DILocation(line: 22, column: 4, scope: !5)
!46 = !DILocation(line: 23, column: 5, scope: !5)
!47 = !DILocation(line: 24, column: 15, scope: !5)
!48 = !DILocation(line: 24, column: 15, scope: !5)
!49 = !DILocation(line: 24, column: 4, scope: !5)
!50 = !DILocation(line: 25, column: 0, scope: !5)
