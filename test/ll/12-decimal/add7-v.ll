@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1024, i64 2452209997103235072], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 8015301715358266676, i64 2740461588717644005], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 8015301715358266673, i64 2740461588717644005], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 8015301715358266676, i64 2740531957461821669], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 8015301715358266673, i64 2740531957461821669], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081602, i64 8646858456403230671], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 1, i64 4899846025834921984], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081185, i64 8646858456403230671], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 2, i64 4899846025834921984], align 8
@.dec10 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081602, i64 -576513580451545137], align 8
@.dec11 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -4323526011019853824], align 8
@.dec12 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 -576513580451545137], align 8
@.dec13 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2322168557862912], align 8
@.dec14 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
@.dec15 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -9221049868296912896], align 8
@.dec16 = internal unnamed_addr constant [2 x i64] [i64 9, i64 2322168557862912], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1), ptr addrspace(1)) readonly
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
  %44 = alloca i8
  %45 = load ptr, ptr @_bal_stack_guard
  %46 = icmp ult ptr %44, %45
  br i1 %46, label %59, label %47
47:
  %48 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 288230376151711744
  store ptr addrspace(1) %49, ptr %d1
  %50 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 288230376151711744
  store ptr addrspace(1) %51, ptr %d2
  %52 = load ptr addrspace(1), ptr %d1
  %53 = load ptr addrspace(1), ptr %d2
  %54 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %52, ptr addrspace(1) %53), !dbg !9
  %55 = extractvalue {ptr addrspace(1), i64} %54, 1
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %82, label %61
57:
  %58 = load ptr addrspace(1), ptr %43
  call void @_bal_panic(ptr addrspace(1) %58), !dbg !51
  unreachable
59:
  %60 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %60), !dbg !8
  unreachable
61:
  %62 = extractvalue {ptr addrspace(1), i64} %54, 0
  store ptr addrspace(1) %62, ptr %1
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load ptr addrspace(1), ptr %1
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %2
  %72 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %73 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 288230376151711744
  store ptr addrspace(1) %74, ptr %d1
  %75 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 288230376151711744
  store ptr addrspace(1) %76, ptr %d2
  %77 = load ptr addrspace(1), ptr %d1
  %78 = load ptr addrspace(1), ptr %d2
  %79 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %77, ptr addrspace(1) %78), !dbg !12
  %80 = extractvalue {ptr addrspace(1), i64} %79, 1
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %106, label %85
82:
  %83 = or i64 %55, 1280
  %84 = call ptr addrspace(1) @_bal_panic_construct(i64 %83), !dbg !7
  store ptr addrspace(1) %84, ptr %43
  br label %57
85:
  %86 = extractvalue {ptr addrspace(1), i64} %79, 0
  store ptr addrspace(1) %86, ptr %4
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = load ptr addrspace(1), ptr %4
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %5
  %96 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %97 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %98 = getelementptr i8, ptr addrspace(1) %97, i64 288230376151711744
  store ptr addrspace(1) %98, ptr %d1
  %99 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %100 = getelementptr i8, ptr addrspace(1) %99, i64 288230376151711744
  store ptr addrspace(1) %100, ptr %d2
  %101 = load ptr addrspace(1), ptr %d1
  %102 = load ptr addrspace(1), ptr %d2
  %103 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %101, ptr addrspace(1) %102), !dbg !15
  %104 = extractvalue {ptr addrspace(1), i64} %103, 1
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %130, label %109
106:
  %107 = or i64 %80, 2304
  %108 = call ptr addrspace(1) @_bal_panic_construct(i64 %107), !dbg !7
  store ptr addrspace(1) %108, ptr %43
  br label %57
109:
  %110 = extractvalue {ptr addrspace(1), i64} %103, 0
  store ptr addrspace(1) %110, ptr %7
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = load ptr addrspace(1), ptr %7
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %117
  %118 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 864691128455135236
  store ptr addrspace(1) %119, ptr %8
  %120 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %120), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %121 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %122 = getelementptr i8, ptr addrspace(1) %121, i64 288230376151711744
  store ptr addrspace(1) %122, ptr %d1
  %123 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 288230376151711744
  store ptr addrspace(1) %124, ptr %d2
  %125 = load ptr addrspace(1), ptr %d1
  %126 = load ptr addrspace(1), ptr %d2
  %127 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %125, ptr addrspace(1) %126), !dbg !18
  %128 = extractvalue {ptr addrspace(1), i64} %127, 1
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %154, label %133
130:
  %131 = or i64 %104, 3328
  %132 = call ptr addrspace(1) @_bal_panic_construct(i64 %131), !dbg !7
  store ptr addrspace(1) %132, ptr %43
  br label %57
133:
  %134 = extractvalue {ptr addrspace(1), i64} %127, 0
  store ptr addrspace(1) %134, ptr %10
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load ptr addrspace(1), ptr %10
  %140 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %139, ptr addrspace(1) %140
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %141
  %142 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %143 = getelementptr i8, ptr addrspace(1) %142, i64 864691128455135236
  store ptr addrspace(1) %143, ptr %11
  %144 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %144), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %145 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %146 = getelementptr i8, ptr addrspace(1) %145, i64 288230376151711744
  store ptr addrspace(1) %146, ptr %d1
  %147 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 288230376151711744
  store ptr addrspace(1) %148, ptr %d2
  %149 = load ptr addrspace(1), ptr %d1
  %150 = load ptr addrspace(1), ptr %d2
  %151 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %149, ptr addrspace(1) %150), !dbg !21
  %152 = extractvalue {ptr addrspace(1), i64} %151, 1
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %178, label %157
154:
  %155 = or i64 %128, 4352
  %156 = call ptr addrspace(1) @_bal_panic_construct(i64 %155), !dbg !7
  store ptr addrspace(1) %156, ptr %43
  br label %57
157:
  %158 = extractvalue {ptr addrspace(1), i64} %151, 0
  store ptr addrspace(1) %158, ptr %13
  %159 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 3
  %161 = load ptr addrspace(1), ptr addrspace(1) %160, align 8
  %162 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %163 = load ptr addrspace(1), ptr %13
  %164 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %162, i64 0, i64 0
  store ptr addrspace(1) %163, ptr addrspace(1) %164
  %165 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 1
  store i64 1, ptr addrspace(1) %165
  %166 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %167 = getelementptr i8, ptr addrspace(1) %166, i64 864691128455135236
  store ptr addrspace(1) %167, ptr %14
  %168 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %168), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %169 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %170 = getelementptr i8, ptr addrspace(1) %169, i64 288230376151711744
  store ptr addrspace(1) %170, ptr %d1
  %171 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %172 = getelementptr i8, ptr addrspace(1) %171, i64 288230376151711744
  store ptr addrspace(1) %172, ptr %d2
  %173 = load ptr addrspace(1), ptr %d1
  %174 = load ptr addrspace(1), ptr %d2
  %175 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %173, ptr addrspace(1) %174), !dbg !24
  %176 = extractvalue {ptr addrspace(1), i64} %175, 1
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %202, label %181
178:
  %179 = or i64 %152, 5376
  %180 = call ptr addrspace(1) @_bal_panic_construct(i64 %179), !dbg !7
  store ptr addrspace(1) %180, ptr %43
  br label %57
181:
  %182 = extractvalue {ptr addrspace(1), i64} %175, 0
  store ptr addrspace(1) %182, ptr %16
  %183 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %184 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 3
  %185 = load ptr addrspace(1), ptr addrspace(1) %184, align 8
  %186 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %187 = load ptr addrspace(1), ptr %16
  %188 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %186, i64 0, i64 0
  store ptr addrspace(1) %187, ptr addrspace(1) %188
  %189 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 1
  store i64 1, ptr addrspace(1) %189
  %190 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %191 = getelementptr i8, ptr addrspace(1) %190, i64 864691128455135236
  store ptr addrspace(1) %191, ptr %17
  %192 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %192), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %193 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %194 = getelementptr i8, ptr addrspace(1) %193, i64 288230376151711744
  store ptr addrspace(1) %194, ptr %d1
  %195 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %196 = getelementptr i8, ptr addrspace(1) %195, i64 288230376151711744
  store ptr addrspace(1) %196, ptr %d2
  %197 = load ptr addrspace(1), ptr %d1
  %198 = load ptr addrspace(1), ptr %d2
  %199 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %197, ptr addrspace(1) %198), !dbg !27
  %200 = extractvalue {ptr addrspace(1), i64} %199, 1
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %226, label %205
202:
  %203 = or i64 %176, 6400
  %204 = call ptr addrspace(1) @_bal_panic_construct(i64 %203), !dbg !7
  store ptr addrspace(1) %204, ptr %43
  br label %57
205:
  %206 = extractvalue {ptr addrspace(1), i64} %199, 0
  store ptr addrspace(1) %206, ptr %19
  %207 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %208 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 3
  %209 = load ptr addrspace(1), ptr addrspace(1) %208, align 8
  %210 = bitcast ptr addrspace(1) %209 to ptr addrspace(1)
  %211 = load ptr addrspace(1), ptr %19
  %212 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %210, i64 0, i64 0
  store ptr addrspace(1) %211, ptr addrspace(1) %212
  %213 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 1
  store i64 1, ptr addrspace(1) %213
  %214 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %215 = getelementptr i8, ptr addrspace(1) %214, i64 864691128455135236
  store ptr addrspace(1) %215, ptr %20
  %216 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %216), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %217 = addrspacecast ptr bitcast(ptr @.dec10 to ptr) to ptr addrspace(1)
  %218 = getelementptr i8, ptr addrspace(1) %217, i64 288230376151711744
  store ptr addrspace(1) %218, ptr %d1
  %219 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %220 = getelementptr i8, ptr addrspace(1) %219, i64 288230376151711744
  store ptr addrspace(1) %220, ptr %d2
  %221 = load ptr addrspace(1), ptr %d1
  %222 = load ptr addrspace(1), ptr %d2
  %223 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %221, ptr addrspace(1) %222), !dbg !30
  %224 = extractvalue {ptr addrspace(1), i64} %223, 1
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %250, label %229
226:
  %227 = or i64 %200, 7424
  %228 = call ptr addrspace(1) @_bal_panic_construct(i64 %227), !dbg !7
  store ptr addrspace(1) %228, ptr %43
  br label %57
229:
  %230 = extractvalue {ptr addrspace(1), i64} %223, 0
  store ptr addrspace(1) %230, ptr %22
  %231 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %232 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %231, i64 0, i32 3
  %233 = load ptr addrspace(1), ptr addrspace(1) %232, align 8
  %234 = bitcast ptr addrspace(1) %233 to ptr addrspace(1)
  %235 = load ptr addrspace(1), ptr %22
  %236 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %234, i64 0, i64 0
  store ptr addrspace(1) %235, ptr addrspace(1) %236
  %237 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %231, i64 0, i32 1
  store i64 1, ptr addrspace(1) %237
  %238 = bitcast ptr addrspace(1) %231 to ptr addrspace(1)
  %239 = getelementptr i8, ptr addrspace(1) %238, i64 864691128455135236
  store ptr addrspace(1) %239, ptr %23
  %240 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %240), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %241 = addrspacecast ptr bitcast(ptr @.dec12 to ptr) to ptr addrspace(1)
  %242 = getelementptr i8, ptr addrspace(1) %241, i64 288230376151711744
  store ptr addrspace(1) %242, ptr %d1
  %243 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %244 = getelementptr i8, ptr addrspace(1) %243, i64 288230376151711744
  store ptr addrspace(1) %244, ptr %d2
  %245 = load ptr addrspace(1), ptr %d1
  %246 = load ptr addrspace(1), ptr %d2
  %247 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %245, ptr addrspace(1) %246), !dbg !33
  %248 = extractvalue {ptr addrspace(1), i64} %247, 1
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %274, label %253
250:
  %251 = or i64 %224, 8448
  %252 = call ptr addrspace(1) @_bal_panic_construct(i64 %251), !dbg !7
  store ptr addrspace(1) %252, ptr %43
  br label %57
253:
  %254 = extractvalue {ptr addrspace(1), i64} %247, 0
  store ptr addrspace(1) %254, ptr %25
  %255 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %256 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %255, i64 0, i32 3
  %257 = load ptr addrspace(1), ptr addrspace(1) %256, align 8
  %258 = bitcast ptr addrspace(1) %257 to ptr addrspace(1)
  %259 = load ptr addrspace(1), ptr %25
  %260 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %258, i64 0, i64 0
  store ptr addrspace(1) %259, ptr addrspace(1) %260
  %261 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %255, i64 0, i32 1
  store i64 1, ptr addrspace(1) %261
  %262 = bitcast ptr addrspace(1) %255 to ptr addrspace(1)
  %263 = getelementptr i8, ptr addrspace(1) %262, i64 864691128455135236
  store ptr addrspace(1) %263, ptr %26
  %264 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %264), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %265 = addrspacecast ptr bitcast(ptr @.dec13 to ptr) to ptr addrspace(1)
  %266 = getelementptr i8, ptr addrspace(1) %265, i64 288230376151711744
  store ptr addrspace(1) %266, ptr %d1
  %267 = addrspacecast ptr bitcast(ptr @.dec14 to ptr) to ptr addrspace(1)
  %268 = getelementptr i8, ptr addrspace(1) %267, i64 288230376151711744
  store ptr addrspace(1) %268, ptr %d2
  %269 = load ptr addrspace(1), ptr %d1
  %270 = load ptr addrspace(1), ptr %d2
  %271 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %269, ptr addrspace(1) %270), !dbg !36
  %272 = extractvalue {ptr addrspace(1), i64} %271, 1
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %298, label %277
274:
  %275 = or i64 %248, 9472
  %276 = call ptr addrspace(1) @_bal_panic_construct(i64 %275), !dbg !7
  store ptr addrspace(1) %276, ptr %43
  br label %57
277:
  %278 = extractvalue {ptr addrspace(1), i64} %271, 0
  store ptr addrspace(1) %278, ptr %28
  %279 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 3
  %281 = load ptr addrspace(1), ptr addrspace(1) %280, align 8
  %282 = bitcast ptr addrspace(1) %281 to ptr addrspace(1)
  %283 = load ptr addrspace(1), ptr %28
  %284 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %282, i64 0, i64 0
  store ptr addrspace(1) %283, ptr addrspace(1) %284
  %285 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 1
  store i64 1, ptr addrspace(1) %285
  %286 = bitcast ptr addrspace(1) %279 to ptr addrspace(1)
  %287 = getelementptr i8, ptr addrspace(1) %286, i64 864691128455135236
  store ptr addrspace(1) %287, ptr %29
  %288 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %288), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %289 = addrspacecast ptr bitcast(ptr @.dec14 to ptr) to ptr addrspace(1)
  %290 = getelementptr i8, ptr addrspace(1) %289, i64 288230376151711744
  store ptr addrspace(1) %290, ptr %d1
  %291 = addrspacecast ptr bitcast(ptr @.dec13 to ptr) to ptr addrspace(1)
  %292 = getelementptr i8, ptr addrspace(1) %291, i64 288230376151711744
  store ptr addrspace(1) %292, ptr %d2
  %293 = load ptr addrspace(1), ptr %d1
  %294 = load ptr addrspace(1), ptr %d2
  %295 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %293, ptr addrspace(1) %294), !dbg !39
  %296 = extractvalue {ptr addrspace(1), i64} %295, 1
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %322, label %301
298:
  %299 = or i64 %272, 10496
  %300 = call ptr addrspace(1) @_bal_panic_construct(i64 %299), !dbg !7
  store ptr addrspace(1) %300, ptr %43
  br label %57
301:
  %302 = extractvalue {ptr addrspace(1), i64} %295, 0
  store ptr addrspace(1) %302, ptr %31
  %303 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %304 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %303, i64 0, i32 3
  %305 = load ptr addrspace(1), ptr addrspace(1) %304, align 8
  %306 = bitcast ptr addrspace(1) %305 to ptr addrspace(1)
  %307 = load ptr addrspace(1), ptr %31
  %308 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %306, i64 0, i64 0
  store ptr addrspace(1) %307, ptr addrspace(1) %308
  %309 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %303, i64 0, i32 1
  store i64 1, ptr addrspace(1) %309
  %310 = bitcast ptr addrspace(1) %303 to ptr addrspace(1)
  %311 = getelementptr i8, ptr addrspace(1) %310, i64 864691128455135236
  store ptr addrspace(1) %311, ptr %32
  %312 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %312), !dbg !41
  store ptr addrspace(1) null, ptr %33
  %313 = addrspacecast ptr bitcast(ptr @.dec13 to ptr) to ptr addrspace(1)
  %314 = getelementptr i8, ptr addrspace(1) %313, i64 288230376151711744
  store ptr addrspace(1) %314, ptr %d1
  %315 = addrspacecast ptr bitcast(ptr @.dec15 to ptr) to ptr addrspace(1)
  %316 = getelementptr i8, ptr addrspace(1) %315, i64 288230376151711744
  store ptr addrspace(1) %316, ptr %d2
  %317 = load ptr addrspace(1), ptr %d1
  %318 = load ptr addrspace(1), ptr %d2
  %319 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %317, ptr addrspace(1) %318), !dbg !42
  %320 = extractvalue {ptr addrspace(1), i64} %319, 1
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %346, label %325
322:
  %323 = or i64 %296, 11520
  %324 = call ptr addrspace(1) @_bal_panic_construct(i64 %323), !dbg !7
  store ptr addrspace(1) %324, ptr %43
  br label %57
325:
  %326 = extractvalue {ptr addrspace(1), i64} %319, 0
  store ptr addrspace(1) %326, ptr %34
  %327 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %328 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %327, i64 0, i32 3
  %329 = load ptr addrspace(1), ptr addrspace(1) %328, align 8
  %330 = bitcast ptr addrspace(1) %329 to ptr addrspace(1)
  %331 = load ptr addrspace(1), ptr %34
  %332 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %330, i64 0, i64 0
  store ptr addrspace(1) %331, ptr addrspace(1) %332
  %333 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %327, i64 0, i32 1
  store i64 1, ptr addrspace(1) %333
  %334 = bitcast ptr addrspace(1) %327 to ptr addrspace(1)
  %335 = getelementptr i8, ptr addrspace(1) %334, i64 864691128455135236
  store ptr addrspace(1) %335, ptr %35
  %336 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %336), !dbg !44
  store ptr addrspace(1) null, ptr %36
  %337 = addrspacecast ptr bitcast(ptr @.dec16 to ptr) to ptr addrspace(1)
  %338 = getelementptr i8, ptr addrspace(1) %337, i64 288230376151711744
  store ptr addrspace(1) %338, ptr %d1
  %339 = addrspacecast ptr bitcast(ptr @.dec14 to ptr) to ptr addrspace(1)
  %340 = getelementptr i8, ptr addrspace(1) %339, i64 288230376151711744
  store ptr addrspace(1) %340, ptr %d2
  %341 = load ptr addrspace(1), ptr %d1
  %342 = load ptr addrspace(1), ptr %d2
  %343 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %341, ptr addrspace(1) %342), !dbg !45
  %344 = extractvalue {ptr addrspace(1), i64} %343, 1
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %370, label %349
346:
  %347 = or i64 %320, 12544
  %348 = call ptr addrspace(1) @_bal_panic_construct(i64 %347), !dbg !7
  store ptr addrspace(1) %348, ptr %43
  br label %57
349:
  %350 = extractvalue {ptr addrspace(1), i64} %343, 0
  store ptr addrspace(1) %350, ptr %37
  %351 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !46
  %352 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %351, i64 0, i32 3
  %353 = load ptr addrspace(1), ptr addrspace(1) %352, align 8
  %354 = bitcast ptr addrspace(1) %353 to ptr addrspace(1)
  %355 = load ptr addrspace(1), ptr %37
  %356 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %354, i64 0, i64 0
  store ptr addrspace(1) %355, ptr addrspace(1) %356
  %357 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %351, i64 0, i32 1
  store i64 1, ptr addrspace(1) %357
  %358 = bitcast ptr addrspace(1) %351 to ptr addrspace(1)
  %359 = getelementptr i8, ptr addrspace(1) %358, i64 864691128455135236
  store ptr addrspace(1) %359, ptr %38
  %360 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %360), !dbg !47
  store ptr addrspace(1) null, ptr %39
  %361 = addrspacecast ptr bitcast(ptr @.dec14 to ptr) to ptr addrspace(1)
  %362 = getelementptr i8, ptr addrspace(1) %361, i64 288230376151711744
  store ptr addrspace(1) %362, ptr %d1
  %363 = addrspacecast ptr bitcast(ptr @.dec15 to ptr) to ptr addrspace(1)
  %364 = getelementptr i8, ptr addrspace(1) %363, i64 288230376151711744
  store ptr addrspace(1) %364, ptr %d2
  %365 = load ptr addrspace(1), ptr %d1
  %366 = load ptr addrspace(1), ptr %d2
  %367 = call {ptr addrspace(1), i64} @_bal_decimal_add(ptr addrspace(1) %365, ptr addrspace(1) %366), !dbg !48
  %368 = extractvalue {ptr addrspace(1), i64} %367, 1
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %385, label %373
370:
  %371 = or i64 %344, 13568
  %372 = call ptr addrspace(1) @_bal_panic_construct(i64 %371), !dbg !7
  store ptr addrspace(1) %372, ptr %43
  br label %57
373:
  %374 = extractvalue {ptr addrspace(1), i64} %367, 0
  store ptr addrspace(1) %374, ptr %40
  %375 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !49
  %376 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 3
  %377 = load ptr addrspace(1), ptr addrspace(1) %376, align 8
  %378 = bitcast ptr addrspace(1) %377 to ptr addrspace(1)
  %379 = load ptr addrspace(1), ptr %40
  %380 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %378, i64 0, i64 0
  store ptr addrspace(1) %379, ptr addrspace(1) %380
  %381 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 1
  store i64 1, ptr addrspace(1) %381
  %382 = bitcast ptr addrspace(1) %375 to ptr addrspace(1)
  %383 = getelementptr i8, ptr addrspace(1) %382, i64 864691128455135236
  store ptr addrspace(1) %383, ptr %41
  %384 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %384), !dbg !50
  store ptr addrspace(1) null, ptr %42
  ret void
385:
  %386 = or i64 %368, 14592
  %387 = call ptr addrspace(1) @_bal_panic_construct(i64 %386), !dbg !7
  store ptr addrspace(1) %387, ptr %43
  br label %57
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/add7-v.bal", directory:"")
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
!51 = !DILocation(line: 58, column: 0, scope: !5)
