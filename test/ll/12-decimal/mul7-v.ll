@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 1, i64 12384898975268864], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2442147266685829120], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 1, i64 4892035095231201280], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2462343096264818688], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 8636725357241647055], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6761028940589957120], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 2, i64 -6761099309334134784], align 8
@.dec10 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -9221049868296912896], align 8
@.dec11 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
@.dec12 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 7215769306062077903], align 8
@.dec13 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2442147266685829120], align 8
@.dec14 = internal unnamed_addr constant [2 x i64] [i64 0, i64 4899854821927944192], align 8
@.dec15 = internal unnamed_addr constant [2 x i64] [i64 1, i64 12314530231091200], align 8
@.dec16 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452139628359057408], align 8
@.dec17 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2442076897941651456], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca ptr addrspace(1)
  %d2 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca ptr addrspace(1)
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca ptr addrspace(1)
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca ptr addrspace(1)
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca ptr addrspace(1)
  %53 = alloca ptr addrspace(1)
  %54 = alloca ptr addrspace(1)
  %55 = alloca ptr addrspace(1)
  %56 = alloca i8
  %57 = load ptr, ptr @_bal_stack_guard
  %58 = icmp ult ptr %56, %57
  br i1 %58, label %71, label %59
59:
  %60 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 288230376151711744
  store ptr addrspace(1) %61, ptr %d1
  %62 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 288230376151711744
  store ptr addrspace(1) %63, ptr %d2
  %64 = load ptr addrspace(1), ptr %d1
  %65 = load ptr addrspace(1), ptr %d2
  %66 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %64, ptr addrspace(1) %65), !dbg !9
  %67 = extractvalue {ptr addrspace(1), i64} %66, 1
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %94, label %73
69:
  %70 = load ptr addrspace(1), ptr %55
  call void @_bal_panic(ptr addrspace(1) %70), !dbg !63
  unreachable
71:
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %72), !dbg !8
  unreachable
73:
  %74 = extractvalue {ptr addrspace(1), i64} %66, 0
  store ptr addrspace(1) %74, ptr %1
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = load ptr addrspace(1), ptr %1
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %2
  %84 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %85 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 288230376151711744
  store ptr addrspace(1) %86, ptr %d1
  %87 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 288230376151711744
  store ptr addrspace(1) %88, ptr %d2
  %89 = load ptr addrspace(1), ptr %d1
  %90 = load ptr addrspace(1), ptr %d2
  %91 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %89, ptr addrspace(1) %90), !dbg !12
  %92 = extractvalue {ptr addrspace(1), i64} %91, 1
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %118, label %97
94:
  %95 = or i64 %67, 1280
  %96 = call ptr addrspace(1) @_bal_panic_construct(i64 %95), !dbg !7
  store ptr addrspace(1) %96, ptr %55
  br label %69
97:
  %98 = extractvalue {ptr addrspace(1), i64} %91, 0
  store ptr addrspace(1) %98, ptr %4
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load ptr addrspace(1), ptr %4
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %5
  %108 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %109 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 288230376151711744
  store ptr addrspace(1) %110, ptr %d1
  %111 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 288230376151711744
  store ptr addrspace(1) %112, ptr %d2
  %113 = load ptr addrspace(1), ptr %d1
  %114 = load ptr addrspace(1), ptr %d2
  %115 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %113, ptr addrspace(1) %114), !dbg !15
  %116 = extractvalue {ptr addrspace(1), i64} %115, 1
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %142, label %121
118:
  %119 = or i64 %92, 2304
  %120 = call ptr addrspace(1) @_bal_panic_construct(i64 %119), !dbg !7
  store ptr addrspace(1) %120, ptr %55
  br label %69
121:
  %122 = extractvalue {ptr addrspace(1), i64} %115, 0
  store ptr addrspace(1) %122, ptr %7
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load ptr addrspace(1), ptr %7
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %8
  %132 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %133 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 288230376151711744
  store ptr addrspace(1) %134, ptr %d1
  %135 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %136 = getelementptr i8, ptr addrspace(1) %135, i64 288230376151711744
  store ptr addrspace(1) %136, ptr %d2
  %137 = load ptr addrspace(1), ptr %d1
  %138 = load ptr addrspace(1), ptr %d2
  %139 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %137, ptr addrspace(1) %138), !dbg !18
  %140 = extractvalue {ptr addrspace(1), i64} %139, 1
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %166, label %145
142:
  %143 = or i64 %116, 3328
  %144 = call ptr addrspace(1) @_bal_panic_construct(i64 %143), !dbg !7
  store ptr addrspace(1) %144, ptr %55
  br label %69
145:
  %146 = extractvalue {ptr addrspace(1), i64} %139, 0
  store ptr addrspace(1) %146, ptr %10
  %147 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = load ptr addrspace(1), ptr %10
  %152 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 0
  store ptr addrspace(1) %151, ptr addrspace(1) %152
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 1
  store i64 1, ptr addrspace(1) %153
  %154 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %155 = getelementptr i8, ptr addrspace(1) %154, i64 864691128455135236
  store ptr addrspace(1) %155, ptr %11
  %156 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %156), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %157 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %158 = getelementptr i8, ptr addrspace(1) %157, i64 288230376151711744
  store ptr addrspace(1) %158, ptr %d1
  %159 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %160 = getelementptr i8, ptr addrspace(1) %159, i64 288230376151711744
  store ptr addrspace(1) %160, ptr %d2
  %161 = load ptr addrspace(1), ptr %d1
  %162 = load ptr addrspace(1), ptr %d2
  %163 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %161, ptr addrspace(1) %162), !dbg !21
  %164 = extractvalue {ptr addrspace(1), i64} %163, 1
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %190, label %169
166:
  %167 = or i64 %140, 4352
  %168 = call ptr addrspace(1) @_bal_panic_construct(i64 %167), !dbg !7
  store ptr addrspace(1) %168, ptr %55
  br label %69
169:
  %170 = extractvalue {ptr addrspace(1), i64} %163, 0
  store ptr addrspace(1) %170, ptr %13
  %171 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 3
  %173 = load ptr addrspace(1), ptr addrspace(1) %172, align 8
  %174 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %175 = load ptr addrspace(1), ptr %13
  %176 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %174, i64 0, i64 0
  store ptr addrspace(1) %175, ptr addrspace(1) %176
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 1
  store i64 1, ptr addrspace(1) %177
  %178 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %179 = getelementptr i8, ptr addrspace(1) %178, i64 864691128455135236
  store ptr addrspace(1) %179, ptr %14
  %180 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %180), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %181 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 288230376151711744
  store ptr addrspace(1) %182, ptr %d1
  %183 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %184 = getelementptr i8, ptr addrspace(1) %183, i64 288230376151711744
  store ptr addrspace(1) %184, ptr %d2
  %185 = load ptr addrspace(1), ptr %d1
  %186 = load ptr addrspace(1), ptr %d2
  %187 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %185, ptr addrspace(1) %186), !dbg !24
  %188 = extractvalue {ptr addrspace(1), i64} %187, 1
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %214, label %193
190:
  %191 = or i64 %164, 5376
  %192 = call ptr addrspace(1) @_bal_panic_construct(i64 %191), !dbg !7
  store ptr addrspace(1) %192, ptr %55
  br label %69
193:
  %194 = extractvalue {ptr addrspace(1), i64} %187, 0
  store ptr addrspace(1) %194, ptr %16
  %195 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 3
  %197 = load ptr addrspace(1), ptr addrspace(1) %196, align 8
  %198 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %199 = load ptr addrspace(1), ptr %16
  %200 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %198, i64 0, i64 0
  store ptr addrspace(1) %199, ptr addrspace(1) %200
  %201 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 1
  store i64 1, ptr addrspace(1) %201
  %202 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %203 = getelementptr i8, ptr addrspace(1) %202, i64 864691128455135236
  store ptr addrspace(1) %203, ptr %17
  %204 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %204), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %205 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %206 = getelementptr i8, ptr addrspace(1) %205, i64 288230376151711744
  store ptr addrspace(1) %206, ptr %d1
  %207 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %208 = getelementptr i8, ptr addrspace(1) %207, i64 288230376151711744
  store ptr addrspace(1) %208, ptr %d2
  %209 = load ptr addrspace(1), ptr %d1
  %210 = load ptr addrspace(1), ptr %d2
  %211 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %209, ptr addrspace(1) %210), !dbg !27
  %212 = extractvalue {ptr addrspace(1), i64} %211, 1
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %238, label %217
214:
  %215 = or i64 %188, 6400
  %216 = call ptr addrspace(1) @_bal_panic_construct(i64 %215), !dbg !7
  store ptr addrspace(1) %216, ptr %55
  br label %69
217:
  %218 = extractvalue {ptr addrspace(1), i64} %211, 0
  store ptr addrspace(1) %218, ptr %19
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load ptr addrspace(1), ptr %19
  %224 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %223, ptr addrspace(1) %224
  %225 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %225
  %226 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %227 = getelementptr i8, ptr addrspace(1) %226, i64 864691128455135236
  store ptr addrspace(1) %227, ptr %20
  %228 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %228), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %229 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 288230376151711744
  store ptr addrspace(1) %230, ptr %d1
  %231 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %232 = getelementptr i8, ptr addrspace(1) %231, i64 288230376151711744
  store ptr addrspace(1) %232, ptr %d2
  %233 = load ptr addrspace(1), ptr %d1
  %234 = load ptr addrspace(1), ptr %d2
  %235 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %233, ptr addrspace(1) %234), !dbg !30
  %236 = extractvalue {ptr addrspace(1), i64} %235, 1
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %262, label %241
238:
  %239 = or i64 %212, 7424
  %240 = call ptr addrspace(1) @_bal_panic_construct(i64 %239), !dbg !7
  store ptr addrspace(1) %240, ptr %55
  br label %69
241:
  %242 = extractvalue {ptr addrspace(1), i64} %235, 0
  store ptr addrspace(1) %242, ptr %22
  %243 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %244 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 3
  %245 = load ptr addrspace(1), ptr addrspace(1) %244, align 8
  %246 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %247 = load ptr addrspace(1), ptr %22
  %248 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %246, i64 0, i64 0
  store ptr addrspace(1) %247, ptr addrspace(1) %248
  %249 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 1
  store i64 1, ptr addrspace(1) %249
  %250 = bitcast ptr addrspace(1) %243 to ptr addrspace(1)
  %251 = getelementptr i8, ptr addrspace(1) %250, i64 864691128455135236
  store ptr addrspace(1) %251, ptr %23
  %252 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %252), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %253 = addrspacecast ptr bitcast(ptr @.dec10 to ptr) to ptr addrspace(1)
  %254 = getelementptr i8, ptr addrspace(1) %253, i64 288230376151711744
  store ptr addrspace(1) %254, ptr %d1
  %255 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %256 = getelementptr i8, ptr addrspace(1) %255, i64 288230376151711744
  store ptr addrspace(1) %256, ptr %d2
  %257 = load ptr addrspace(1), ptr %d1
  %258 = load ptr addrspace(1), ptr %d2
  %259 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %257, ptr addrspace(1) %258), !dbg !33
  %260 = extractvalue {ptr addrspace(1), i64} %259, 1
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %286, label %265
262:
  %263 = or i64 %236, 8448
  %264 = call ptr addrspace(1) @_bal_panic_construct(i64 %263), !dbg !7
  store ptr addrspace(1) %264, ptr %55
  br label %69
265:
  %266 = extractvalue {ptr addrspace(1), i64} %259, 0
  store ptr addrspace(1) %266, ptr %25
  %267 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %268 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %267, i64 0, i32 3
  %269 = load ptr addrspace(1), ptr addrspace(1) %268, align 8
  %270 = bitcast ptr addrspace(1) %269 to ptr addrspace(1)
  %271 = load ptr addrspace(1), ptr %25
  %272 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %270, i64 0, i64 0
  store ptr addrspace(1) %271, ptr addrspace(1) %272
  %273 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %267, i64 0, i32 1
  store i64 1, ptr addrspace(1) %273
  %274 = bitcast ptr addrspace(1) %267 to ptr addrspace(1)
  %275 = getelementptr i8, ptr addrspace(1) %274, i64 864691128455135236
  store ptr addrspace(1) %275, ptr %26
  %276 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %276), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %277 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %278 = getelementptr i8, ptr addrspace(1) %277, i64 288230376151711744
  store ptr addrspace(1) %278, ptr %d1
  %279 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %280 = getelementptr i8, ptr addrspace(1) %279, i64 288230376151711744
  store ptr addrspace(1) %280, ptr %d2
  %281 = load ptr addrspace(1), ptr %d1
  %282 = load ptr addrspace(1), ptr %d2
  %283 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %281, ptr addrspace(1) %282), !dbg !36
  %284 = extractvalue {ptr addrspace(1), i64} %283, 1
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %310, label %289
286:
  %287 = or i64 %260, 9472
  %288 = call ptr addrspace(1) @_bal_panic_construct(i64 %287), !dbg !7
  store ptr addrspace(1) %288, ptr %55
  br label %69
289:
  %290 = extractvalue {ptr addrspace(1), i64} %283, 0
  store ptr addrspace(1) %290, ptr %28
  %291 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %292 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %291, i64 0, i32 3
  %293 = load ptr addrspace(1), ptr addrspace(1) %292, align 8
  %294 = bitcast ptr addrspace(1) %293 to ptr addrspace(1)
  %295 = load ptr addrspace(1), ptr %28
  %296 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %294, i64 0, i64 0
  store ptr addrspace(1) %295, ptr addrspace(1) %296
  %297 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %291, i64 0, i32 1
  store i64 1, ptr addrspace(1) %297
  %298 = bitcast ptr addrspace(1) %291 to ptr addrspace(1)
  %299 = getelementptr i8, ptr addrspace(1) %298, i64 864691128455135236
  store ptr addrspace(1) %299, ptr %29
  %300 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %300), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %301 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %302 = getelementptr i8, ptr addrspace(1) %301, i64 288230376151711744
  store ptr addrspace(1) %302, ptr %d1
  %303 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %304 = getelementptr i8, ptr addrspace(1) %303, i64 288230376151711744
  store ptr addrspace(1) %304, ptr %d2
  %305 = load ptr addrspace(1), ptr %d1
  %306 = load ptr addrspace(1), ptr %d2
  %307 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %305, ptr addrspace(1) %306), !dbg !39
  %308 = extractvalue {ptr addrspace(1), i64} %307, 1
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %334, label %313
310:
  %311 = or i64 %284, 10496
  %312 = call ptr addrspace(1) @_bal_panic_construct(i64 %311), !dbg !7
  store ptr addrspace(1) %312, ptr %55
  br label %69
313:
  %314 = extractvalue {ptr addrspace(1), i64} %307, 0
  store ptr addrspace(1) %314, ptr %31
  %315 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %316 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %315, i64 0, i32 3
  %317 = load ptr addrspace(1), ptr addrspace(1) %316, align 8
  %318 = bitcast ptr addrspace(1) %317 to ptr addrspace(1)
  %319 = load ptr addrspace(1), ptr %31
  %320 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %318, i64 0, i64 0
  store ptr addrspace(1) %319, ptr addrspace(1) %320
  %321 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %315, i64 0, i32 1
  store i64 1, ptr addrspace(1) %321
  %322 = bitcast ptr addrspace(1) %315 to ptr addrspace(1)
  %323 = getelementptr i8, ptr addrspace(1) %322, i64 864691128455135236
  store ptr addrspace(1) %323, ptr %32
  %324 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %324), !dbg !41
  store ptr addrspace(1) null, ptr %33
  %325 = addrspacecast ptr bitcast(ptr @.dec12 to ptr) to ptr addrspace(1)
  %326 = getelementptr i8, ptr addrspace(1) %325, i64 288230376151711744
  store ptr addrspace(1) %326, ptr %d1
  %327 = addrspacecast ptr bitcast(ptr @.dec13 to ptr) to ptr addrspace(1)
  %328 = getelementptr i8, ptr addrspace(1) %327, i64 288230376151711744
  store ptr addrspace(1) %328, ptr %d2
  %329 = load ptr addrspace(1), ptr %d1
  %330 = load ptr addrspace(1), ptr %d2
  %331 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %329, ptr addrspace(1) %330), !dbg !42
  %332 = extractvalue {ptr addrspace(1), i64} %331, 1
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %358, label %337
334:
  %335 = or i64 %308, 11520
  %336 = call ptr addrspace(1) @_bal_panic_construct(i64 %335), !dbg !7
  store ptr addrspace(1) %336, ptr %55
  br label %69
337:
  %338 = extractvalue {ptr addrspace(1), i64} %331, 0
  store ptr addrspace(1) %338, ptr %34
  %339 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %340 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %339, i64 0, i32 3
  %341 = load ptr addrspace(1), ptr addrspace(1) %340, align 8
  %342 = bitcast ptr addrspace(1) %341 to ptr addrspace(1)
  %343 = load ptr addrspace(1), ptr %34
  %344 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %342, i64 0, i64 0
  store ptr addrspace(1) %343, ptr addrspace(1) %344
  %345 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %339, i64 0, i32 1
  store i64 1, ptr addrspace(1) %345
  %346 = bitcast ptr addrspace(1) %339 to ptr addrspace(1)
  %347 = getelementptr i8, ptr addrspace(1) %346, i64 864691128455135236
  store ptr addrspace(1) %347, ptr %35
  %348 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %348), !dbg !44
  store ptr addrspace(1) null, ptr %36
  %349 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %350 = getelementptr i8, ptr addrspace(1) %349, i64 288230376151711744
  store ptr addrspace(1) %350, ptr %d1
  %351 = addrspacecast ptr bitcast(ptr @.dec14 to ptr) to ptr addrspace(1)
  %352 = getelementptr i8, ptr addrspace(1) %351, i64 288230376151711744
  store ptr addrspace(1) %352, ptr %d2
  %353 = load ptr addrspace(1), ptr %d1
  %354 = load ptr addrspace(1), ptr %d2
  %355 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %353, ptr addrspace(1) %354), !dbg !45
  %356 = extractvalue {ptr addrspace(1), i64} %355, 1
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %382, label %361
358:
  %359 = or i64 %332, 12544
  %360 = call ptr addrspace(1) @_bal_panic_construct(i64 %359), !dbg !7
  store ptr addrspace(1) %360, ptr %55
  br label %69
361:
  %362 = extractvalue {ptr addrspace(1), i64} %355, 0
  store ptr addrspace(1) %362, ptr %37
  %363 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !46
  %364 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %363, i64 0, i32 3
  %365 = load ptr addrspace(1), ptr addrspace(1) %364, align 8
  %366 = bitcast ptr addrspace(1) %365 to ptr addrspace(1)
  %367 = load ptr addrspace(1), ptr %37
  %368 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %366, i64 0, i64 0
  store ptr addrspace(1) %367, ptr addrspace(1) %368
  %369 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %363, i64 0, i32 1
  store i64 1, ptr addrspace(1) %369
  %370 = bitcast ptr addrspace(1) %363 to ptr addrspace(1)
  %371 = getelementptr i8, ptr addrspace(1) %370, i64 864691128455135236
  store ptr addrspace(1) %371, ptr %38
  %372 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %372), !dbg !47
  store ptr addrspace(1) null, ptr %39
  %373 = addrspacecast ptr bitcast(ptr @.dec15 to ptr) to ptr addrspace(1)
  %374 = getelementptr i8, ptr addrspace(1) %373, i64 288230376151711744
  store ptr addrspace(1) %374, ptr %d1
  %375 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %376 = getelementptr i8, ptr addrspace(1) %375, i64 288230376151711744
  store ptr addrspace(1) %376, ptr %d2
  %377 = load ptr addrspace(1), ptr %d1
  %378 = load ptr addrspace(1), ptr %d2
  %379 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %377, ptr addrspace(1) %378), !dbg !48
  %380 = extractvalue {ptr addrspace(1), i64} %379, 1
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %406, label %385
382:
  %383 = or i64 %356, 13568
  %384 = call ptr addrspace(1) @_bal_panic_construct(i64 %383), !dbg !7
  store ptr addrspace(1) %384, ptr %55
  br label %69
385:
  %386 = extractvalue {ptr addrspace(1), i64} %379, 0
  store ptr addrspace(1) %386, ptr %40
  %387 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !49
  %388 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %387, i64 0, i32 3
  %389 = load ptr addrspace(1), ptr addrspace(1) %388, align 8
  %390 = bitcast ptr addrspace(1) %389 to ptr addrspace(1)
  %391 = load ptr addrspace(1), ptr %40
  %392 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %390, i64 0, i64 0
  store ptr addrspace(1) %391, ptr addrspace(1) %392
  %393 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %387, i64 0, i32 1
  store i64 1, ptr addrspace(1) %393
  %394 = bitcast ptr addrspace(1) %387 to ptr addrspace(1)
  %395 = getelementptr i8, ptr addrspace(1) %394, i64 864691128455135236
  store ptr addrspace(1) %395, ptr %41
  %396 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %396), !dbg !50
  store ptr addrspace(1) null, ptr %42
  %397 = addrspacecast ptr bitcast(ptr @.dec12 to ptr) to ptr addrspace(1)
  %398 = getelementptr i8, ptr addrspace(1) %397, i64 288230376151711744
  store ptr addrspace(1) %398, ptr %d1
  %399 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %400 = getelementptr i8, ptr addrspace(1) %399, i64 288230376151711744
  store ptr addrspace(1) %400, ptr %d2
  %401 = load ptr addrspace(1), ptr %d1
  %402 = load ptr addrspace(1), ptr %d2
  %403 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %401, ptr addrspace(1) %402), !dbg !51
  %404 = extractvalue {ptr addrspace(1), i64} %403, 1
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %430, label %409
406:
  %407 = or i64 %380, 14592
  %408 = call ptr addrspace(1) @_bal_panic_construct(i64 %407), !dbg !7
  store ptr addrspace(1) %408, ptr %55
  br label %69
409:
  %410 = extractvalue {ptr addrspace(1), i64} %403, 0
  store ptr addrspace(1) %410, ptr %43
  %411 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !52
  %412 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %411, i64 0, i32 3
  %413 = load ptr addrspace(1), ptr addrspace(1) %412, align 8
  %414 = bitcast ptr addrspace(1) %413 to ptr addrspace(1)
  %415 = load ptr addrspace(1), ptr %43
  %416 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %414, i64 0, i64 0
  store ptr addrspace(1) %415, ptr addrspace(1) %416
  %417 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %411, i64 0, i32 1
  store i64 1, ptr addrspace(1) %417
  %418 = bitcast ptr addrspace(1) %411 to ptr addrspace(1)
  %419 = getelementptr i8, ptr addrspace(1) %418, i64 864691128455135236
  store ptr addrspace(1) %419, ptr %44
  %420 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %420), !dbg !53
  store ptr addrspace(1) null, ptr %45
  %421 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %422 = getelementptr i8, ptr addrspace(1) %421, i64 288230376151711744
  store ptr addrspace(1) %422, ptr %d1
  %423 = addrspacecast ptr bitcast(ptr @.dec16 to ptr) to ptr addrspace(1)
  %424 = getelementptr i8, ptr addrspace(1) %423, i64 288230376151711744
  store ptr addrspace(1) %424, ptr %d2
  %425 = load ptr addrspace(1), ptr %d1
  %426 = load ptr addrspace(1), ptr %d2
  %427 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %425, ptr addrspace(1) %426), !dbg !54
  %428 = extractvalue {ptr addrspace(1), i64} %427, 1
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %454, label %433
430:
  %431 = or i64 %404, 15616
  %432 = call ptr addrspace(1) @_bal_panic_construct(i64 %431), !dbg !7
  store ptr addrspace(1) %432, ptr %55
  br label %69
433:
  %434 = extractvalue {ptr addrspace(1), i64} %427, 0
  store ptr addrspace(1) %434, ptr %46
  %435 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !55
  %436 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %435, i64 0, i32 3
  %437 = load ptr addrspace(1), ptr addrspace(1) %436, align 8
  %438 = bitcast ptr addrspace(1) %437 to ptr addrspace(1)
  %439 = load ptr addrspace(1), ptr %46
  %440 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %438, i64 0, i64 0
  store ptr addrspace(1) %439, ptr addrspace(1) %440
  %441 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %435, i64 0, i32 1
  store i64 1, ptr addrspace(1) %441
  %442 = bitcast ptr addrspace(1) %435 to ptr addrspace(1)
  %443 = getelementptr i8, ptr addrspace(1) %442, i64 864691128455135236
  store ptr addrspace(1) %443, ptr %47
  %444 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %444), !dbg !56
  store ptr addrspace(1) null, ptr %48
  %445 = addrspacecast ptr bitcast(ptr @.dec12 to ptr) to ptr addrspace(1)
  %446 = getelementptr i8, ptr addrspace(1) %445, i64 288230376151711744
  store ptr addrspace(1) %446, ptr %d1
  %447 = addrspacecast ptr bitcast(ptr @.dec17 to ptr) to ptr addrspace(1)
  %448 = getelementptr i8, ptr addrspace(1) %447, i64 288230376151711744
  store ptr addrspace(1) %448, ptr %d2
  %449 = load ptr addrspace(1), ptr %d1
  %450 = load ptr addrspace(1), ptr %d2
  %451 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %449, ptr addrspace(1) %450), !dbg !57
  %452 = extractvalue {ptr addrspace(1), i64} %451, 1
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %478, label %457
454:
  %455 = or i64 %428, 16640
  %456 = call ptr addrspace(1) @_bal_panic_construct(i64 %455), !dbg !7
  store ptr addrspace(1) %456, ptr %55
  br label %69
457:
  %458 = extractvalue {ptr addrspace(1), i64} %451, 0
  store ptr addrspace(1) %458, ptr %49
  %459 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !58
  %460 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %459, i64 0, i32 3
  %461 = load ptr addrspace(1), ptr addrspace(1) %460, align 8
  %462 = bitcast ptr addrspace(1) %461 to ptr addrspace(1)
  %463 = load ptr addrspace(1), ptr %49
  %464 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %462, i64 0, i64 0
  store ptr addrspace(1) %463, ptr addrspace(1) %464
  %465 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %459, i64 0, i32 1
  store i64 1, ptr addrspace(1) %465
  %466 = bitcast ptr addrspace(1) %459 to ptr addrspace(1)
  %467 = getelementptr i8, ptr addrspace(1) %466, i64 864691128455135236
  store ptr addrspace(1) %467, ptr %50
  %468 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %468), !dbg !59
  store ptr addrspace(1) null, ptr %51
  %469 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %470 = getelementptr i8, ptr addrspace(1) %469, i64 288230376151711744
  store ptr addrspace(1) %470, ptr %d1
  %471 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %472 = getelementptr i8, ptr addrspace(1) %471, i64 288230376151711744
  store ptr addrspace(1) %472, ptr %d2
  %473 = load ptr addrspace(1), ptr %d1
  %474 = load ptr addrspace(1), ptr %d2
  %475 = call {ptr addrspace(1), i64} @_bal_decimal_mul(ptr addrspace(1) %473, ptr addrspace(1) %474), !dbg !60
  %476 = extractvalue {ptr addrspace(1), i64} %475, 1
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %493, label %481
478:
  %479 = or i64 %452, 17664
  %480 = call ptr addrspace(1) @_bal_panic_construct(i64 %479), !dbg !7
  store ptr addrspace(1) %480, ptr %55
  br label %69
481:
  %482 = extractvalue {ptr addrspace(1), i64} %475, 0
  store ptr addrspace(1) %482, ptr %52
  %483 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !61
  %484 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %483, i64 0, i32 3
  %485 = load ptr addrspace(1), ptr addrspace(1) %484, align 8
  %486 = bitcast ptr addrspace(1) %485 to ptr addrspace(1)
  %487 = load ptr addrspace(1), ptr %52
  %488 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %486, i64 0, i64 0
  store ptr addrspace(1) %487, ptr addrspace(1) %488
  %489 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %483, i64 0, i32 1
  store i64 1, ptr addrspace(1) %489
  %490 = bitcast ptr addrspace(1) %483 to ptr addrspace(1)
  %491 = getelementptr i8, ptr addrspace(1) %490, i64 864691128455135236
  store ptr addrspace(1) %491, ptr %53
  %492 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %492), !dbg !62
  store ptr addrspace(1) null, ptr %54
  ret void
493:
  %494 = or i64 %476, 18688
  %495 = call ptr addrspace(1) @_bal_panic_construct(i64 %494), !dbg !7
  store ptr addrspace(1) %495, ptr %55
  br label %69
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/mul7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 18, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 18, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 13, column: 18, scope: !5)
!16 = !DILocation(line: 13, column: 15, scope: !5)
!17 = !DILocation(line: 13, column: 4, scope: !5)
!18 = !DILocation(line: 17, column: 18, scope: !5)
!19 = !DILocation(line: 17, column: 15, scope: !5)
!20 = !DILocation(line: 17, column: 4, scope: !5)
!21 = !DILocation(line: 21, column: 18, scope: !5)
!22 = !DILocation(line: 21, column: 15, scope: !5)
!23 = !DILocation(line: 21, column: 4, scope: !5)
!24 = !DILocation(line: 25, column: 18, scope: !5)
!25 = !DILocation(line: 25, column: 15, scope: !5)
!26 = !DILocation(line: 25, column: 4, scope: !5)
!27 = !DILocation(line: 29, column: 18, scope: !5)
!28 = !DILocation(line: 29, column: 15, scope: !5)
!29 = !DILocation(line: 29, column: 4, scope: !5)
!30 = !DILocation(line: 33, column: 18, scope: !5)
!31 = !DILocation(line: 33, column: 15, scope: !5)
!32 = !DILocation(line: 33, column: 4, scope: !5)
!33 = !DILocation(line: 37, column: 18, scope: !5)
!34 = !DILocation(line: 37, column: 15, scope: !5)
!35 = !DILocation(line: 37, column: 4, scope: !5)
!36 = !DILocation(line: 41, column: 18, scope: !5)
!37 = !DILocation(line: 41, column: 15, scope: !5)
!38 = !DILocation(line: 41, column: 4, scope: !5)
!39 = !DILocation(line: 45, column: 18, scope: !5)
!40 = !DILocation(line: 45, column: 15, scope: !5)
!41 = !DILocation(line: 45, column: 4, scope: !5)
!42 = !DILocation(line: 49, column: 18, scope: !5)
!43 = !DILocation(line: 49, column: 15, scope: !5)
!44 = !DILocation(line: 49, column: 4, scope: !5)
!45 = !DILocation(line: 53, column: 18, scope: !5)
!46 = !DILocation(line: 53, column: 15, scope: !5)
!47 = !DILocation(line: 53, column: 4, scope: !5)
!48 = !DILocation(line: 57, column: 18, scope: !5)
!49 = !DILocation(line: 57, column: 15, scope: !5)
!50 = !DILocation(line: 57, column: 4, scope: !5)
!51 = !DILocation(line: 61, column: 18, scope: !5)
!52 = !DILocation(line: 61, column: 15, scope: !5)
!53 = !DILocation(line: 61, column: 4, scope: !5)
!54 = !DILocation(line: 65, column: 18, scope: !5)
!55 = !DILocation(line: 65, column: 15, scope: !5)
!56 = !DILocation(line: 65, column: 4, scope: !5)
!57 = !DILocation(line: 69, column: 18, scope: !5)
!58 = !DILocation(line: 69, column: 15, scope: !5)
!59 = !DILocation(line: 69, column: 4, scope: !5)
!60 = !DILocation(line: 73, column: 18, scope: !5)
!61 = !DILocation(line: 73, column: 15, scope: !5)
!62 = !DILocation(line: 73, column: 4, scope: !5)
!63 = !DILocation(line: 74, column: 0, scope: !5)
