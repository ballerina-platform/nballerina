@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_1(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %b1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i64
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %b2 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i64
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i64
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i64
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i8
  %26 = load ptr, ptr @_bal_stack_guard
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %40, label %28
28:
  %29 = call ptr addrspace(1) @_bal_list_construct_1(ptr @_Bi04root0, i64 0), !dbg !9
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %1
  %32 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %32, ptr %b1
  %33 = load ptr addrspace(1), ptr %b1
  %34 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %33, i64 72057594037927928), !dbg !10
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %33, i64 4)
  %37 = icmp ne ptr addrspace(1) %36, null
  br i1 %37, label %42, label %46
38:
  %39 = load ptr addrspace(1), ptr %24
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !28
  unreachable
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !8
  unreachable
42:
  %43 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  %44 = load i64, ptr addrspace(1) %43, align 8
  %45 = icmp ult i64 0, %44
  br i1 %45, label %59, label %46
46:
  %47 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 0
  %48 = load ptr, ptr addrspace(1) %47, align 8
  %49 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8
  %51 = call i64 %50(ptr addrspace(1) %33, i64 0, i64 42)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %65, label %66
53:
  %54 = load ptr addrspace(1), ptr %b1
  %55 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %54, i64 72057594037927928), !dbg !11
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %54, i64 4)
  %58 = icmp ne ptr addrspace(1) %57, null
  br i1 %58, label %69, label %73
59:
  %60 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = trunc i64 42 to i8
  %64 = getelementptr inbounds [0 x i8], ptr addrspace(1) %62, i64 0, i64 0
  store i8 %63, ptr addrspace(1) %64
  br label %53
65:
  br label %53
66:
  %67 = or i64 %51, 1024
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 %67), !dbg !7
  store ptr addrspace(1) %68, ptr %24
  br label %38
69:
  %70 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  %71 = load i64, ptr addrspace(1) %70, align 8
  %72 = icmp ult i64 1, %71
  br i1 %72, label %86, label %73
73:
  %74 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 0
  %75 = load ptr, ptr addrspace(1) %74, align 8
  %76 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8
  %78 = call i64 %77(ptr addrspace(1) %54, i64 1, i64 43)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %92, label %93
80:
  %81 = load ptr addrspace(1), ptr %b1
  %82 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %81, i64 72057594037927928), !dbg !12
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %81, i64 4)
  %85 = icmp ne ptr addrspace(1) %84, null
  br i1 %85, label %96, label %100
86:
  %87 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = trunc i64 43 to i8
  %91 = getelementptr inbounds [0 x i8], ptr addrspace(1) %89, i64 0, i64 1
  store i8 %90, ptr addrspace(1) %91
  br label %80
92:
  br label %80
93:
  %94 = or i64 %78, 1280
  %95 = call ptr addrspace(1) @_bal_panic_construct(i64 %94), !dbg !7
  store ptr addrspace(1) %95, ptr %24
  br label %38
96:
  %97 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  %98 = load i64, ptr addrspace(1) %97, align 8
  %99 = icmp ult i64 3, %98
  br i1 %99, label %114, label %100
100:
  %101 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 0
  %102 = load ptr, ptr addrspace(1) %101, align 8
  %103 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %102, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8
  %105 = call i64 %104(ptr addrspace(1) %81, i64 3, i64 44)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %120, label %121
107:
  %108 = load ptr addrspace(1), ptr %b1
  %109 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %108, i64 72057594037927928)
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 1
  %112 = load i64, ptr addrspace(1) %111, align 8
  %113 = icmp ult i64 0, %112
  br i1 %113, label %124, label %127
114:
  %115 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %116 = load ptr addrspace(1), ptr addrspace(1) %115, align 8
  %117 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %118 = trunc i64 44 to i8
  %119 = getelementptr inbounds [0 x i8], ptr addrspace(1) %117, i64 0, i64 3
  store i8 %118, ptr addrspace(1) %119
  br label %107
120:
  br label %107
121:
  %122 = or i64 %105, 1536
  %123 = call ptr addrspace(1) @_bal_panic_construct(i64 %122), !dbg !7
  store ptr addrspace(1) %123, ptr %24
  br label %38
124:
  %125 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %108, i64 4)
  %126 = icmp ne ptr addrspace(1) %125, null
  br i1 %126, label %129, label %136
127:
  %128 = call ptr addrspace(1) @_bal_panic_construct(i64 1797), !dbg !7
  store ptr addrspace(1) %128, ptr %24
  br label %38
129:
  %130 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 3
  %131 = load ptr addrspace(1), ptr addrspace(1) %130, align 8
  %132 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %133 = getelementptr inbounds [0 x i8], ptr addrspace(1) %132, i64 0, i64 0
  %134 = load i8, ptr addrspace(1) %133, align 8
  %135 = zext i8 %134 to i64
  store i64 %135, ptr %2
  br label %142
136:
  %137 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %110, i64 0, i32 0
  %138 = load ptr, ptr addrspace(1) %137, align 8
  %139 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %138, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8
  %141 = call i64 %140(ptr addrspace(1) %108, i64 0)
  store i64 %141, ptr %2
  br label %142
142:
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = load i64, ptr %2
  %148 = and i64 72057594037927935, %147
  %149 = or i64 2449958197289549824, %148
  %150 = getelementptr i8, ptr addrspace(1) null, i64 %149
  %151 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) %150, ptr addrspace(1) %151
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %152
  %153 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %154 = getelementptr i8, ptr addrspace(1) %153, i64 864691128455135236
  store ptr addrspace(1) %154, ptr %3
  %155 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %155), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %156 = load ptr addrspace(1), ptr %b1
  %157 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %156, i64 72057594037927928)
  %158 = bitcast ptr addrspace(1) %157 to ptr addrspace(1)
  %159 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 1
  %160 = load i64, ptr addrspace(1) %159, align 8
  %161 = icmp ult i64 1, %160
  br i1 %161, label %162, label %165
162:
  %163 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %156, i64 4)
  %164 = icmp ne ptr addrspace(1) %163, null
  br i1 %164, label %167, label %174
165:
  %166 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %166, ptr %24
  br label %38
167:
  %168 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 3
  %169 = load ptr addrspace(1), ptr addrspace(1) %168, align 8
  %170 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %171 = getelementptr inbounds [0 x i8], ptr addrspace(1) %170, i64 0, i64 1
  %172 = load i8, ptr addrspace(1) %171, align 8
  %173 = zext i8 %172 to i64
  store i64 %173, ptr %5
  br label %180
174:
  %175 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %158, i64 0, i32 0
  %176 = load ptr, ptr addrspace(1) %175, align 8
  %177 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %176, i64 0, i32 6
  %178 = load ptr, ptr %177, align 8
  %179 = call i64 %178(ptr addrspace(1) %156, i64 1)
  store i64 %179, ptr %5
  br label %180
180:
  %181 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %182 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %181, i64 0, i32 3
  %183 = load ptr addrspace(1), ptr addrspace(1) %182, align 8
  %184 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %185 = load i64, ptr %5
  %186 = and i64 72057594037927935, %185
  %187 = or i64 2449958197289549824, %186
  %188 = getelementptr i8, ptr addrspace(1) null, i64 %187
  %189 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %184, i64 0, i64 0
  store ptr addrspace(1) %188, ptr addrspace(1) %189
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %181, i64 0, i32 1
  store i64 1, ptr addrspace(1) %190
  %191 = bitcast ptr addrspace(1) %181 to ptr addrspace(1)
  %192 = getelementptr i8, ptr addrspace(1) %191, i64 864691128455135236
  store ptr addrspace(1) %192, ptr %6
  %193 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %193), !dbg !16
  store ptr addrspace(1) null, ptr %7
  %194 = load ptr addrspace(1), ptr %b1
  %195 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %194, i64 72057594037927928)
  %196 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %197 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %196, i64 0, i32 1
  %198 = load i64, ptr addrspace(1) %197, align 8
  %199 = icmp ult i64 2, %198
  br i1 %199, label %200, label %203
200:
  %201 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %194, i64 4)
  %202 = icmp ne ptr addrspace(1) %201, null
  br i1 %202, label %205, label %212
203:
  %204 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %204, ptr %24
  br label %38
205:
  %206 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %196, i64 0, i32 3
  %207 = load ptr addrspace(1), ptr addrspace(1) %206, align 8
  %208 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %209 = getelementptr inbounds [0 x i8], ptr addrspace(1) %208, i64 0, i64 2
  %210 = load i8, ptr addrspace(1) %209, align 8
  %211 = zext i8 %210 to i64
  store i64 %211, ptr %8
  br label %218
212:
  %213 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %196, i64 0, i32 0
  %214 = load ptr, ptr addrspace(1) %213, align 8
  %215 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %214, i64 0, i32 6
  %216 = load ptr, ptr %215, align 8
  %217 = call i64 %216(ptr addrspace(1) %194, i64 2)
  store i64 %217, ptr %8
  br label %218
218:
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load i64, ptr %8
  %224 = and i64 72057594037927935, %223
  %225 = or i64 2449958197289549824, %224
  %226 = getelementptr i8, ptr addrspace(1) null, i64 %225
  %227 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %226, ptr addrspace(1) %227
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %228
  %229 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 864691128455135236
  store ptr addrspace(1) %230, ptr %9
  %231 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %231), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %232 = load ptr addrspace(1), ptr %b1
  %233 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %232, i64 72057594037927928)
  %234 = bitcast ptr addrspace(1) %233 to ptr addrspace(1)
  %235 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %234, i64 0, i32 1
  %236 = load i64, ptr addrspace(1) %235, align 8
  %237 = icmp ult i64 3, %236
  br i1 %237, label %238, label %241
238:
  %239 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %232, i64 4)
  %240 = icmp ne ptr addrspace(1) %239, null
  br i1 %240, label %243, label %250
241:
  %242 = call ptr addrspace(1) @_bal_panic_construct(i64 2565), !dbg !7
  store ptr addrspace(1) %242, ptr %24
  br label %38
243:
  %244 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %234, i64 0, i32 3
  %245 = load ptr addrspace(1), ptr addrspace(1) %244, align 8
  %246 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %247 = getelementptr inbounds [0 x i8], ptr addrspace(1) %246, i64 0, i64 3
  %248 = load i8, ptr addrspace(1) %247, align 8
  %249 = zext i8 %248 to i64
  store i64 %249, ptr %11
  br label %256
250:
  %251 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %234, i64 0, i32 0
  %252 = load ptr, ptr addrspace(1) %251, align 8
  %253 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %252, i64 0, i32 6
  %254 = load ptr, ptr %253, align 8
  %255 = call i64 %254(ptr addrspace(1) %232, i64 3)
  store i64 %255, ptr %11
  br label %256
256:
  %257 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %258 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %257, i64 0, i32 3
  %259 = load ptr addrspace(1), ptr addrspace(1) %258, align 8
  %260 = bitcast ptr addrspace(1) %259 to ptr addrspace(1)
  %261 = load i64, ptr %11
  %262 = and i64 72057594037927935, %261
  %263 = or i64 2449958197289549824, %262
  %264 = getelementptr i8, ptr addrspace(1) null, i64 %263
  %265 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %260, i64 0, i64 0
  store ptr addrspace(1) %264, ptr addrspace(1) %265
  %266 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %257, i64 0, i32 1
  store i64 1, ptr addrspace(1) %266
  %267 = bitcast ptr addrspace(1) %257 to ptr addrspace(1)
  %268 = getelementptr i8, ptr addrspace(1) %267, i64 864691128455135236
  store ptr addrspace(1) %268, ptr %12
  %269 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %269), !dbg !20
  store ptr addrspace(1) null, ptr %13
  %270 = call ptr addrspace(1) @_bal_list_construct_1(ptr @_Bi04root0, i64 3), !dbg !21
  %271 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %270, i64 0, i32 3
  %272 = load ptr addrspace(1), ptr addrspace(1) %271, align 8
  %273 = bitcast ptr addrspace(1) %272 to ptr addrspace(1)
  %274 = trunc i64 88 to i8
  %275 = getelementptr inbounds [0 x i8], ptr addrspace(1) %273, i64 0, i64 0
  store i8 %274, ptr addrspace(1) %275
  %276 = trunc i64 89 to i8
  %277 = getelementptr inbounds [0 x i8], ptr addrspace(1) %273, i64 0, i64 1
  store i8 %276, ptr addrspace(1) %277
  %278 = trunc i64 90 to i8
  %279 = getelementptr inbounds [0 x i8], ptr addrspace(1) %273, i64 0, i64 2
  store i8 %278, ptr addrspace(1) %279
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %270, i64 0, i32 1
  store i64 3, ptr addrspace(1) %280
  %281 = bitcast ptr addrspace(1) %270 to ptr addrspace(1)
  %282 = getelementptr i8, ptr addrspace(1) %281, i64 864691128455135236
  store ptr addrspace(1) %282, ptr %14
  %283 = load ptr addrspace(1), ptr %14
  store ptr addrspace(1) %283, ptr %b2
  %284 = load ptr addrspace(1), ptr %b2
  %285 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %284, i64 72057594037927928)
  %286 = bitcast ptr addrspace(1) %285 to ptr addrspace(1)
  %287 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 1
  %288 = load i64, ptr addrspace(1) %287, align 8
  %289 = icmp ult i64 0, %288
  br i1 %289, label %290, label %293
290:
  %291 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %284, i64 4)
  %292 = icmp ne ptr addrspace(1) %291, null
  br i1 %292, label %295, label %302
293:
  %294 = call ptr addrspace(1) @_bal_panic_construct(i64 3333), !dbg !7
  store ptr addrspace(1) %294, ptr %24
  br label %38
295:
  %296 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 3
  %297 = load ptr addrspace(1), ptr addrspace(1) %296, align 8
  %298 = bitcast ptr addrspace(1) %297 to ptr addrspace(1)
  %299 = getelementptr inbounds [0 x i8], ptr addrspace(1) %298, i64 0, i64 0
  %300 = load i8, ptr addrspace(1) %299, align 8
  %301 = zext i8 %300 to i64
  store i64 %301, ptr %15
  br label %308
302:
  %303 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 0
  %304 = load ptr, ptr addrspace(1) %303, align 8
  %305 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %304, i64 0, i32 6
  %306 = load ptr, ptr %305, align 8
  %307 = call i64 %306(ptr addrspace(1) %284, i64 0)
  store i64 %307, ptr %15
  br label %308
308:
  %309 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %310 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %309, i64 0, i32 3
  %311 = load ptr addrspace(1), ptr addrspace(1) %310, align 8
  %312 = bitcast ptr addrspace(1) %311 to ptr addrspace(1)
  %313 = load i64, ptr %15
  %314 = and i64 72057594037927935, %313
  %315 = or i64 2449958197289549824, %314
  %316 = getelementptr i8, ptr addrspace(1) null, i64 %315
  %317 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %312, i64 0, i64 0
  store ptr addrspace(1) %316, ptr addrspace(1) %317
  %318 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %309, i64 0, i32 1
  store i64 1, ptr addrspace(1) %318
  %319 = bitcast ptr addrspace(1) %309 to ptr addrspace(1)
  %320 = getelementptr i8, ptr addrspace(1) %319, i64 864691128455135236
  store ptr addrspace(1) %320, ptr %16
  %321 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %321), !dbg !23
  store ptr addrspace(1) null, ptr %17
  %322 = load ptr addrspace(1), ptr %b2
  %323 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %322, i64 72057594037927928)
  %324 = bitcast ptr addrspace(1) %323 to ptr addrspace(1)
  %325 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %324, i64 0, i32 1
  %326 = load i64, ptr addrspace(1) %325, align 8
  %327 = icmp ult i64 1, %326
  br i1 %327, label %328, label %331
328:
  %329 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %322, i64 4)
  %330 = icmp ne ptr addrspace(1) %329, null
  br i1 %330, label %333, label %340
331:
  %332 = call ptr addrspace(1) @_bal_panic_construct(i64 3589), !dbg !7
  store ptr addrspace(1) %332, ptr %24
  br label %38
333:
  %334 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %324, i64 0, i32 3
  %335 = load ptr addrspace(1), ptr addrspace(1) %334, align 8
  %336 = bitcast ptr addrspace(1) %335 to ptr addrspace(1)
  %337 = getelementptr inbounds [0 x i8], ptr addrspace(1) %336, i64 0, i64 1
  %338 = load i8, ptr addrspace(1) %337, align 8
  %339 = zext i8 %338 to i64
  store i64 %339, ptr %18
  br label %346
340:
  %341 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %324, i64 0, i32 0
  %342 = load ptr, ptr addrspace(1) %341, align 8
  %343 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %342, i64 0, i32 6
  %344 = load ptr, ptr %343, align 8
  %345 = call i64 %344(ptr addrspace(1) %322, i64 1)
  store i64 %345, ptr %18
  br label %346
346:
  %347 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !24
  %348 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %347, i64 0, i32 3
  %349 = load ptr addrspace(1), ptr addrspace(1) %348, align 8
  %350 = bitcast ptr addrspace(1) %349 to ptr addrspace(1)
  %351 = load i64, ptr %18
  %352 = and i64 72057594037927935, %351
  %353 = or i64 2449958197289549824, %352
  %354 = getelementptr i8, ptr addrspace(1) null, i64 %353
  %355 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %350, i64 0, i64 0
  store ptr addrspace(1) %354, ptr addrspace(1) %355
  %356 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %347, i64 0, i32 1
  store i64 1, ptr addrspace(1) %356
  %357 = bitcast ptr addrspace(1) %347 to ptr addrspace(1)
  %358 = getelementptr i8, ptr addrspace(1) %357, i64 864691128455135236
  store ptr addrspace(1) %358, ptr %19
  %359 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %359), !dbg !25
  store ptr addrspace(1) null, ptr %20
  %360 = load ptr addrspace(1), ptr %b2
  %361 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %360, i64 72057594037927928)
  %362 = bitcast ptr addrspace(1) %361 to ptr addrspace(1)
  %363 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %362, i64 0, i32 1
  %364 = load i64, ptr addrspace(1) %363, align 8
  %365 = icmp ult i64 2, %364
  br i1 %365, label %366, label %369
366:
  %367 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %360, i64 4)
  %368 = icmp ne ptr addrspace(1) %367, null
  br i1 %368, label %371, label %378
369:
  %370 = call ptr addrspace(1) @_bal_panic_construct(i64 3845), !dbg !7
  store ptr addrspace(1) %370, ptr %24
  br label %38
371:
  %372 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %362, i64 0, i32 3
  %373 = load ptr addrspace(1), ptr addrspace(1) %372, align 8
  %374 = bitcast ptr addrspace(1) %373 to ptr addrspace(1)
  %375 = getelementptr inbounds [0 x i8], ptr addrspace(1) %374, i64 0, i64 2
  %376 = load i8, ptr addrspace(1) %375, align 8
  %377 = zext i8 %376 to i64
  store i64 %377, ptr %21
  br label %384
378:
  %379 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %362, i64 0, i32 0
  %380 = load ptr, ptr addrspace(1) %379, align 8
  %381 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %380, i64 0, i32 6
  %382 = load ptr, ptr %381, align 8
  %383 = call i64 %382(ptr addrspace(1) %360, i64 2)
  store i64 %383, ptr %21
  br label %384
384:
  %385 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %386 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %385, i64 0, i32 3
  %387 = load ptr addrspace(1), ptr addrspace(1) %386, align 8
  %388 = bitcast ptr addrspace(1) %387 to ptr addrspace(1)
  %389 = load i64, ptr %21
  %390 = and i64 72057594037927935, %389
  %391 = or i64 2449958197289549824, %390
  %392 = getelementptr i8, ptr addrspace(1) null, i64 %391
  %393 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %388, i64 0, i64 0
  store ptr addrspace(1) %392, ptr addrspace(1) %393
  %394 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %385, i64 0, i32 1
  store i64 1, ptr addrspace(1) %394
  %395 = bitcast ptr addrspace(1) %385 to ptr addrspace(1)
  %396 = getelementptr i8, ptr addrspace(1) %395, i64 864691128455135236
  store ptr addrspace(1) %396, ptr %22
  %397 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %397), !dbg !27
  store ptr addrspace(1) null, ptr %23
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bytearr/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 16, scope: !5)
!10 = !DILocation(line: 4, column: 6, scope: !5)
!11 = !DILocation(line: 5, column: 6, scope: !5)
!12 = !DILocation(line: 6, column: 6, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 16, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 15, column: 15, scope: !5)
!27 = !DILocation(line: 15, column: 4, scope: !5)
!28 = !DILocation(line: 16, column: 0, scope: !5)
