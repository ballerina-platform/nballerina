@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452209997103235072], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 1024, i64 2452209997103235072], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 8015301715358266676, i64 2740461588717644005], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 8015301715358266673, i64 2740461588717644005], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 8015301715358266673, i64 -6482910448137131803], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 8015301715358266676, i64 -6482910448137131803], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081602, i64 8646858456403230671], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -4323526011019853824], align 8
@.dec10 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081602, i64 -576513580451545137], align 8
@.dec11 = internal unnamed_addr constant [2 x i64] [i64 1, i64 4899846025834921984], align 8
@.dec12 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2322168557862912], align 8
@.dec13 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1), ptr addrspace(1)) readonly
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
  %32 = alloca i8
  %33 = load ptr, ptr @_bal_stack_guard
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %47, label %35
35:
  %36 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 288230376151711744
  store ptr addrspace(1) %37, ptr %d1
  %38 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 288230376151711744
  store ptr addrspace(1) %39, ptr %d2
  %40 = load ptr addrspace(1), ptr %d1
  %41 = load ptr addrspace(1), ptr %d2
  %42 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %40, ptr addrspace(1) %41), !dbg !9
  %43 = extractvalue {ptr addrspace(1), i64} %42, 1
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %70, label %49
45:
  %46 = load ptr addrspace(1), ptr %31
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !39
  unreachable
47:
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %48), !dbg !8
  unreachable
49:
  %50 = extractvalue {ptr addrspace(1), i64} %42, 0
  store ptr addrspace(1) %50, ptr %1
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load ptr addrspace(1), ptr %1
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %2
  %60 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %61 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 288230376151711744
  store ptr addrspace(1) %62, ptr %d1
  %63 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 288230376151711744
  store ptr addrspace(1) %64, ptr %d2
  %65 = load ptr addrspace(1), ptr %d1
  %66 = load ptr addrspace(1), ptr %d2
  %67 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %65, ptr addrspace(1) %66), !dbg !12
  %68 = extractvalue {ptr addrspace(1), i64} %67, 1
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %94, label %73
70:
  %71 = or i64 %43, 1280
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 %71), !dbg !7
  store ptr addrspace(1) %72, ptr %31
  br label %45
73:
  %74 = extractvalue {ptr addrspace(1), i64} %67, 0
  store ptr addrspace(1) %74, ptr %4
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = load ptr addrspace(1), ptr %4
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %5
  %84 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %85 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 288230376151711744
  store ptr addrspace(1) %86, ptr %d1
  %87 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 288230376151711744
  store ptr addrspace(1) %88, ptr %d2
  %89 = load ptr addrspace(1), ptr %d1
  %90 = load ptr addrspace(1), ptr %d2
  %91 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %89, ptr addrspace(1) %90), !dbg !15
  %92 = extractvalue {ptr addrspace(1), i64} %91, 1
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %118, label %97
94:
  %95 = or i64 %68, 2304
  %96 = call ptr addrspace(1) @_bal_panic_construct(i64 %95), !dbg !7
  store ptr addrspace(1) %96, ptr %31
  br label %45
97:
  %98 = extractvalue {ptr addrspace(1), i64} %91, 0
  store ptr addrspace(1) %98, ptr %7
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load ptr addrspace(1), ptr %7
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %8
  %108 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %109 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 288230376151711744
  store ptr addrspace(1) %110, ptr %d1
  %111 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 288230376151711744
  store ptr addrspace(1) %112, ptr %d2
  %113 = load ptr addrspace(1), ptr %d1
  %114 = load ptr addrspace(1), ptr %d2
  %115 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %113, ptr addrspace(1) %114), !dbg !18
  %116 = extractvalue {ptr addrspace(1), i64} %115, 1
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %142, label %121
118:
  %119 = or i64 %92, 3328
  %120 = call ptr addrspace(1) @_bal_panic_construct(i64 %119), !dbg !7
  store ptr addrspace(1) %120, ptr %31
  br label %45
121:
  %122 = extractvalue {ptr addrspace(1), i64} %115, 0
  store ptr addrspace(1) %122, ptr %10
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load ptr addrspace(1), ptr %10
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %11
  %132 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %133 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 288230376151711744
  store ptr addrspace(1) %134, ptr %d1
  %135 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %136 = getelementptr i8, ptr addrspace(1) %135, i64 288230376151711744
  store ptr addrspace(1) %136, ptr %d2
  %137 = load ptr addrspace(1), ptr %d1
  %138 = load ptr addrspace(1), ptr %d2
  %139 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %137, ptr addrspace(1) %138), !dbg !21
  %140 = extractvalue {ptr addrspace(1), i64} %139, 1
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %166, label %145
142:
  %143 = or i64 %116, 4352
  %144 = call ptr addrspace(1) @_bal_panic_construct(i64 %143), !dbg !7
  store ptr addrspace(1) %144, ptr %31
  br label %45
145:
  %146 = extractvalue {ptr addrspace(1), i64} %139, 0
  store ptr addrspace(1) %146, ptr %13
  %147 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = load ptr addrspace(1), ptr %13
  %152 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 0
  store ptr addrspace(1) %151, ptr addrspace(1) %152
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 1
  store i64 1, ptr addrspace(1) %153
  %154 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %155 = getelementptr i8, ptr addrspace(1) %154, i64 864691128455135236
  store ptr addrspace(1) %155, ptr %14
  %156 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %156), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %157 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %158 = getelementptr i8, ptr addrspace(1) %157, i64 288230376151711744
  store ptr addrspace(1) %158, ptr %d1
  %159 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %160 = getelementptr i8, ptr addrspace(1) %159, i64 288230376151711744
  store ptr addrspace(1) %160, ptr %d2
  %161 = load ptr addrspace(1), ptr %d1
  %162 = load ptr addrspace(1), ptr %d2
  %163 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %161, ptr addrspace(1) %162), !dbg !24
  %164 = extractvalue {ptr addrspace(1), i64} %163, 1
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %190, label %169
166:
  %167 = or i64 %140, 5376
  %168 = call ptr addrspace(1) @_bal_panic_construct(i64 %167), !dbg !7
  store ptr addrspace(1) %168, ptr %31
  br label %45
169:
  %170 = extractvalue {ptr addrspace(1), i64} %163, 0
  store ptr addrspace(1) %170, ptr %16
  %171 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 3
  %173 = load ptr addrspace(1), ptr addrspace(1) %172, align 8
  %174 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %175 = load ptr addrspace(1), ptr %16
  %176 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %174, i64 0, i64 0
  store ptr addrspace(1) %175, ptr addrspace(1) %176
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 1
  store i64 1, ptr addrspace(1) %177
  %178 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %179 = getelementptr i8, ptr addrspace(1) %178, i64 864691128455135236
  store ptr addrspace(1) %179, ptr %17
  %180 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %180), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %181 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 288230376151711744
  store ptr addrspace(1) %182, ptr %d1
  %183 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %184 = getelementptr i8, ptr addrspace(1) %183, i64 288230376151711744
  store ptr addrspace(1) %184, ptr %d2
  %185 = load ptr addrspace(1), ptr %d1
  %186 = load ptr addrspace(1), ptr %d2
  %187 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %185, ptr addrspace(1) %186), !dbg !27
  %188 = extractvalue {ptr addrspace(1), i64} %187, 1
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %214, label %193
190:
  %191 = or i64 %164, 6400
  %192 = call ptr addrspace(1) @_bal_panic_construct(i64 %191), !dbg !7
  store ptr addrspace(1) %192, ptr %31
  br label %45
193:
  %194 = extractvalue {ptr addrspace(1), i64} %187, 0
  store ptr addrspace(1) %194, ptr %19
  %195 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 3
  %197 = load ptr addrspace(1), ptr addrspace(1) %196, align 8
  %198 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %199 = load ptr addrspace(1), ptr %19
  %200 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %198, i64 0, i64 0
  store ptr addrspace(1) %199, ptr addrspace(1) %200
  %201 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 1
  store i64 1, ptr addrspace(1) %201
  %202 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %203 = getelementptr i8, ptr addrspace(1) %202, i64 864691128455135236
  store ptr addrspace(1) %203, ptr %20
  %204 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %204), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %205 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %206 = getelementptr i8, ptr addrspace(1) %205, i64 288230376151711744
  store ptr addrspace(1) %206, ptr %d1
  %207 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %208 = getelementptr i8, ptr addrspace(1) %207, i64 288230376151711744
  store ptr addrspace(1) %208, ptr %d2
  %209 = load ptr addrspace(1), ptr %d1
  %210 = load ptr addrspace(1), ptr %d2
  %211 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %209, ptr addrspace(1) %210), !dbg !30
  %212 = extractvalue {ptr addrspace(1), i64} %211, 1
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %238, label %217
214:
  %215 = or i64 %188, 7424
  %216 = call ptr addrspace(1) @_bal_panic_construct(i64 %215), !dbg !7
  store ptr addrspace(1) %216, ptr %31
  br label %45
217:
  %218 = extractvalue {ptr addrspace(1), i64} %211, 0
  store ptr addrspace(1) %218, ptr %22
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load ptr addrspace(1), ptr %22
  %224 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %223, ptr addrspace(1) %224
  %225 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %225
  %226 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %227 = getelementptr i8, ptr addrspace(1) %226, i64 864691128455135236
  store ptr addrspace(1) %227, ptr %23
  %228 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %228), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %229 = addrspacecast ptr bitcast(ptr @.dec10 to ptr) to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 288230376151711744
  store ptr addrspace(1) %230, ptr %d1
  %231 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %232 = getelementptr i8, ptr addrspace(1) %231, i64 288230376151711744
  store ptr addrspace(1) %232, ptr %d2
  %233 = load ptr addrspace(1), ptr %d1
  %234 = load ptr addrspace(1), ptr %d2
  %235 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %233, ptr addrspace(1) %234), !dbg !33
  %236 = extractvalue {ptr addrspace(1), i64} %235, 1
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %262, label %241
238:
  %239 = or i64 %212, 8448
  %240 = call ptr addrspace(1) @_bal_panic_construct(i64 %239), !dbg !7
  store ptr addrspace(1) %240, ptr %31
  br label %45
241:
  %242 = extractvalue {ptr addrspace(1), i64} %235, 0
  store ptr addrspace(1) %242, ptr %25
  %243 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %244 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 3
  %245 = load ptr addrspace(1), ptr addrspace(1) %244, align 8
  %246 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %247 = load ptr addrspace(1), ptr %25
  %248 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %246, i64 0, i64 0
  store ptr addrspace(1) %247, ptr addrspace(1) %248
  %249 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 1
  store i64 1, ptr addrspace(1) %249
  %250 = bitcast ptr addrspace(1) %243 to ptr addrspace(1)
  %251 = getelementptr i8, ptr addrspace(1) %250, i64 864691128455135236
  store ptr addrspace(1) %251, ptr %26
  %252 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %252), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %253 = addrspacecast ptr bitcast(ptr @.dec12 to ptr) to ptr addrspace(1)
  %254 = getelementptr i8, ptr addrspace(1) %253, i64 288230376151711744
  store ptr addrspace(1) %254, ptr %d1
  %255 = addrspacecast ptr bitcast(ptr @.dec13 to ptr) to ptr addrspace(1)
  %256 = getelementptr i8, ptr addrspace(1) %255, i64 288230376151711744
  store ptr addrspace(1) %256, ptr %d2
  %257 = load ptr addrspace(1), ptr %d1
  %258 = load ptr addrspace(1), ptr %d2
  %259 = call {ptr addrspace(1), i64} @_bal_decimal_sub(ptr addrspace(1) %257, ptr addrspace(1) %258), !dbg !36
  %260 = extractvalue {ptr addrspace(1), i64} %259, 1
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %277, label %265
262:
  %263 = or i64 %236, 9472
  %264 = call ptr addrspace(1) @_bal_panic_construct(i64 %263), !dbg !7
  store ptr addrspace(1) %264, ptr %31
  br label %45
265:
  %266 = extractvalue {ptr addrspace(1), i64} %259, 0
  store ptr addrspace(1) %266, ptr %28
  %267 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %268 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %267, i64 0, i32 3
  %269 = load ptr addrspace(1), ptr addrspace(1) %268, align 8
  %270 = bitcast ptr addrspace(1) %269 to ptr addrspace(1)
  %271 = load ptr addrspace(1), ptr %28
  %272 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %270, i64 0, i64 0
  store ptr addrspace(1) %271, ptr addrspace(1) %272
  %273 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %267, i64 0, i32 1
  store i64 1, ptr addrspace(1) %273
  %274 = bitcast ptr addrspace(1) %267 to ptr addrspace(1)
  %275 = getelementptr i8, ptr addrspace(1) %274, i64 864691128455135236
  store ptr addrspace(1) %275, ptr %29
  %276 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %276), !dbg !38
  store ptr addrspace(1) null, ptr %30
  ret void
277:
  %278 = or i64 %260, 10496
  %279 = call ptr addrspace(1) @_bal_panic_construct(i64 %278), !dbg !7
  store ptr addrspace(1) %279, ptr %31
  br label %45
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/sub4-v.bal", directory:"")
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
!39 = !DILocation(line: 42, column: 0, scope: !5)
