@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i64
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i64
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i64
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca i64
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i64
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i64
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca i64
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca i64
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca i64
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca i64
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca i64
  %53 = alloca ptr addrspace(1)
  %54 = alloca ptr addrspace(1)
  %55 = alloca i64
  %56 = alloca ptr addrspace(1)
  %57 = alloca ptr addrspace(1)
  %58 = alloca i64
  %59 = alloca ptr addrspace(1)
  %60 = alloca ptr addrspace(1)
  %61 = alloca i64
  %62 = alloca ptr addrspace(1)
  %63 = alloca ptr addrspace(1)
  %64 = alloca i64
  %65 = alloca ptr addrspace(1)
  %66 = alloca ptr addrspace(1)
  %67 = alloca i64
  %68 = alloca ptr addrspace(1)
  %69 = alloca ptr addrspace(1)
  %70 = alloca i64
  %71 = alloca ptr addrspace(1)
  %72 = alloca ptr addrspace(1)
  %73 = alloca i64
  %74 = alloca ptr addrspace(1)
  %75 = alloca ptr addrspace(1)
  %76 = alloca i64
  %77 = alloca ptr addrspace(1)
  %78 = alloca ptr addrspace(1)
  %79 = alloca i64
  %80 = alloca ptr addrspace(1)
  %81 = alloca ptr addrspace(1)
  %82 = alloca i64
  %83 = alloca ptr addrspace(1)
  %84 = alloca ptr addrspace(1)
  %85 = alloca i64
  %86 = alloca ptr addrspace(1)
  %87 = alloca ptr addrspace(1)
  %88 = alloca i64
  %89 = alloca ptr addrspace(1)
  %90 = alloca ptr addrspace(1)
  %91 = alloca i8
  %92 = load ptr, ptr @_bal_stack_guard
  %93 = icmp ult ptr %91, %92
  br i1 %93, label %455, label %94
94:
  %95 = call i64 @_B_rem(i64 9223372036854775806, i64 9223372036854775806), !dbg !11
  store i64 %95, ptr %1
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = load i64, ptr %1
  %101 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %100), !dbg !13
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %2
  %106 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %107 = call i64 @_B_rem(i64 1, i64 9223372036854775806), !dbg !15
  store i64 %107, ptr %4
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load i64, ptr %4
  %113 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %112), !dbg !17
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %5
  %118 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %119 = call i64 @_B_rem(i64 0, i64 9223372036854775806), !dbg !19
  store i64 %119, ptr %7
  %120 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %122 = load ptr addrspace(1), ptr addrspace(1) %121, align 8
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = load i64, ptr %7
  %125 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %124), !dbg !21
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %8
  %130 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !22
  store ptr addrspace(1) null, ptr %9
  %131 = call i64 @_B_rem(i64 -1, i64 9223372036854775806), !dbg !23
  store i64 %131, ptr %10
  %132 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %133 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %132, i64 0, i32 3
  %134 = load ptr addrspace(1), ptr addrspace(1) %133, align 8
  %135 = bitcast ptr addrspace(1) %134 to ptr addrspace(1)
  %136 = load i64, ptr %10
  %137 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %136), !dbg !25
  %138 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %135, i64 0, i64 0
  store ptr addrspace(1) %137, ptr addrspace(1) %138
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %132, i64 0, i32 1
  store i64 1, ptr addrspace(1) %139
  %140 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %141 = getelementptr i8, ptr addrspace(1) %140, i64 864691128455135236
  store ptr addrspace(1) %141, ptr %11
  %142 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %142), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %143 = call i64 @_B_rem(i64 -9223372036854775806, i64 9223372036854775806), !dbg !27
  store i64 %143, ptr %13
  %144 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 3
  %146 = load ptr addrspace(1), ptr addrspace(1) %145, align 8
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = load i64, ptr %13
  %149 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %148), !dbg !29
  %150 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %147, i64 0, i64 0
  store ptr addrspace(1) %149, ptr addrspace(1) %150
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 1
  store i64 1, ptr addrspace(1) %151
  %152 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %153 = getelementptr i8, ptr addrspace(1) %152, i64 864691128455135236
  store ptr addrspace(1) %153, ptr %14
  %154 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %154), !dbg !30
  store ptr addrspace(1) null, ptr %15
  %155 = call i64 @_B_rem(i64 9223372036854775806, i64 10), !dbg !31
  store i64 %155, ptr %16
  %156 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %156, i64 0, i32 3
  %158 = load ptr addrspace(1), ptr addrspace(1) %157, align 8
  %159 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %160 = load i64, ptr %16
  %161 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %160), !dbg !33
  %162 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %159, i64 0, i64 0
  store ptr addrspace(1) %161, ptr addrspace(1) %162
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %156, i64 0, i32 1
  store i64 1, ptr addrspace(1) %163
  %164 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %165 = getelementptr i8, ptr addrspace(1) %164, i64 864691128455135236
  store ptr addrspace(1) %165, ptr %17
  %166 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %166), !dbg !34
  store ptr addrspace(1) null, ptr %18
  %167 = call i64 @_B_rem(i64 1, i64 10), !dbg !35
  store i64 %167, ptr %19
  %168 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 3
  %170 = load ptr addrspace(1), ptr addrspace(1) %169, align 8
  %171 = bitcast ptr addrspace(1) %170 to ptr addrspace(1)
  %172 = load i64, ptr %19
  %173 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %172), !dbg !37
  %174 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %171, i64 0, i64 0
  store ptr addrspace(1) %173, ptr addrspace(1) %174
  %175 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 1
  store i64 1, ptr addrspace(1) %175
  %176 = bitcast ptr addrspace(1) %168 to ptr addrspace(1)
  %177 = getelementptr i8, ptr addrspace(1) %176, i64 864691128455135236
  store ptr addrspace(1) %177, ptr %20
  %178 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %178), !dbg !38
  store ptr addrspace(1) null, ptr %21
  %179 = call i64 @_B_rem(i64 0, i64 10), !dbg !39
  store i64 %179, ptr %22
  %180 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %181 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %180, i64 0, i32 3
  %182 = load ptr addrspace(1), ptr addrspace(1) %181, align 8
  %183 = bitcast ptr addrspace(1) %182 to ptr addrspace(1)
  %184 = load i64, ptr %22
  %185 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %184), !dbg !41
  %186 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %183, i64 0, i64 0
  store ptr addrspace(1) %185, ptr addrspace(1) %186
  %187 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %180, i64 0, i32 1
  store i64 1, ptr addrspace(1) %187
  %188 = bitcast ptr addrspace(1) %180 to ptr addrspace(1)
  %189 = getelementptr i8, ptr addrspace(1) %188, i64 864691128455135236
  store ptr addrspace(1) %189, ptr %23
  %190 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %190), !dbg !42
  store ptr addrspace(1) null, ptr %24
  %191 = call i64 @_B_rem(i64 -1, i64 10), !dbg !43
  store i64 %191, ptr %25
  %192 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %193 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 3
  %194 = load ptr addrspace(1), ptr addrspace(1) %193, align 8
  %195 = bitcast ptr addrspace(1) %194 to ptr addrspace(1)
  %196 = load i64, ptr %25
  %197 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %196), !dbg !45
  %198 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %195, i64 0, i64 0
  store ptr addrspace(1) %197, ptr addrspace(1) %198
  %199 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 1
  store i64 1, ptr addrspace(1) %199
  %200 = bitcast ptr addrspace(1) %192 to ptr addrspace(1)
  %201 = getelementptr i8, ptr addrspace(1) %200, i64 864691128455135236
  store ptr addrspace(1) %201, ptr %26
  %202 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %202), !dbg !46
  store ptr addrspace(1) null, ptr %27
  %203 = call i64 @_B_rem(i64 -9223372036854775806, i64 10), !dbg !47
  store i64 %203, ptr %28
  %204 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %205 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %204, i64 0, i32 3
  %206 = load ptr addrspace(1), ptr addrspace(1) %205, align 8
  %207 = bitcast ptr addrspace(1) %206 to ptr addrspace(1)
  %208 = load i64, ptr %28
  %209 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %208), !dbg !49
  %210 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %207, i64 0, i64 0
  store ptr addrspace(1) %209, ptr addrspace(1) %210
  %211 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %204, i64 0, i32 1
  store i64 1, ptr addrspace(1) %211
  %212 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %213 = getelementptr i8, ptr addrspace(1) %212, i64 864691128455135236
  store ptr addrspace(1) %213, ptr %29
  %214 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %214), !dbg !50
  store ptr addrspace(1) null, ptr %30
  %215 = call i64 @_B_rem(i64 9223372036854775806, i64 1), !dbg !51
  store i64 %215, ptr %31
  %216 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !52
  %217 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %216, i64 0, i32 3
  %218 = load ptr addrspace(1), ptr addrspace(1) %217, align 8
  %219 = bitcast ptr addrspace(1) %218 to ptr addrspace(1)
  %220 = load i64, ptr %31
  %221 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %220), !dbg !53
  %222 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %219, i64 0, i64 0
  store ptr addrspace(1) %221, ptr addrspace(1) %222
  %223 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %216, i64 0, i32 1
  store i64 1, ptr addrspace(1) %223
  %224 = bitcast ptr addrspace(1) %216 to ptr addrspace(1)
  %225 = getelementptr i8, ptr addrspace(1) %224, i64 864691128455135236
  store ptr addrspace(1) %225, ptr %32
  %226 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %226), !dbg !54
  store ptr addrspace(1) null, ptr %33
  %227 = call i64 @_B_rem(i64 1, i64 1), !dbg !55
  store i64 %227, ptr %34
  %228 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 3
  %230 = load ptr addrspace(1), ptr addrspace(1) %229, align 8
  %231 = bitcast ptr addrspace(1) %230 to ptr addrspace(1)
  %232 = load i64, ptr %34
  %233 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %232), !dbg !57
  %234 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 0
  store ptr addrspace(1) %233, ptr addrspace(1) %234
  %235 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 1
  store i64 1, ptr addrspace(1) %235
  %236 = bitcast ptr addrspace(1) %228 to ptr addrspace(1)
  %237 = getelementptr i8, ptr addrspace(1) %236, i64 864691128455135236
  store ptr addrspace(1) %237, ptr %35
  %238 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %238), !dbg !58
  store ptr addrspace(1) null, ptr %36
  %239 = call i64 @_B_rem(i64 0, i64 1), !dbg !59
  store i64 %239, ptr %37
  %240 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !60
  %241 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %240, i64 0, i32 3
  %242 = load ptr addrspace(1), ptr addrspace(1) %241, align 8
  %243 = bitcast ptr addrspace(1) %242 to ptr addrspace(1)
  %244 = load i64, ptr %37
  %245 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %244), !dbg !61
  %246 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %243, i64 0, i64 0
  store ptr addrspace(1) %245, ptr addrspace(1) %246
  %247 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %240, i64 0, i32 1
  store i64 1, ptr addrspace(1) %247
  %248 = bitcast ptr addrspace(1) %240 to ptr addrspace(1)
  %249 = getelementptr i8, ptr addrspace(1) %248, i64 864691128455135236
  store ptr addrspace(1) %249, ptr %38
  %250 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %250), !dbg !62
  store ptr addrspace(1) null, ptr %39
  %251 = call i64 @_B_rem(i64 -1, i64 1), !dbg !63
  store i64 %251, ptr %40
  %252 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !64
  %253 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %252, i64 0, i32 3
  %254 = load ptr addrspace(1), ptr addrspace(1) %253, align 8
  %255 = bitcast ptr addrspace(1) %254 to ptr addrspace(1)
  %256 = load i64, ptr %40
  %257 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %256), !dbg !65
  %258 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %255, i64 0, i64 0
  store ptr addrspace(1) %257, ptr addrspace(1) %258
  %259 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %252, i64 0, i32 1
  store i64 1, ptr addrspace(1) %259
  %260 = bitcast ptr addrspace(1) %252 to ptr addrspace(1)
  %261 = getelementptr i8, ptr addrspace(1) %260, i64 864691128455135236
  store ptr addrspace(1) %261, ptr %41
  %262 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %262), !dbg !66
  store ptr addrspace(1) null, ptr %42
  %263 = call i64 @_B_rem(i64 -9223372036854775806, i64 1), !dbg !67
  store i64 %263, ptr %43
  %264 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !68
  %265 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %264, i64 0, i32 3
  %266 = load ptr addrspace(1), ptr addrspace(1) %265, align 8
  %267 = bitcast ptr addrspace(1) %266 to ptr addrspace(1)
  %268 = load i64, ptr %43
  %269 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %268), !dbg !69
  %270 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %267, i64 0, i64 0
  store ptr addrspace(1) %269, ptr addrspace(1) %270
  %271 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %264, i64 0, i32 1
  store i64 1, ptr addrspace(1) %271
  %272 = bitcast ptr addrspace(1) %264 to ptr addrspace(1)
  %273 = getelementptr i8, ptr addrspace(1) %272, i64 864691128455135236
  store ptr addrspace(1) %273, ptr %44
  %274 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %274), !dbg !70
  store ptr addrspace(1) null, ptr %45
  %275 = call i64 @_B_rem(i64 9223372036854775806, i64 -1), !dbg !71
  store i64 %275, ptr %46
  %276 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !72
  %277 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %276, i64 0, i32 3
  %278 = load ptr addrspace(1), ptr addrspace(1) %277, align 8
  %279 = bitcast ptr addrspace(1) %278 to ptr addrspace(1)
  %280 = load i64, ptr %46
  %281 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %280), !dbg !73
  %282 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %279, i64 0, i64 0
  store ptr addrspace(1) %281, ptr addrspace(1) %282
  %283 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %276, i64 0, i32 1
  store i64 1, ptr addrspace(1) %283
  %284 = bitcast ptr addrspace(1) %276 to ptr addrspace(1)
  %285 = getelementptr i8, ptr addrspace(1) %284, i64 864691128455135236
  store ptr addrspace(1) %285, ptr %47
  %286 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %286), !dbg !74
  store ptr addrspace(1) null, ptr %48
  %287 = call i64 @_B_rem(i64 1, i64 -1), !dbg !75
  store i64 %287, ptr %49
  %288 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !76
  %289 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %288, i64 0, i32 3
  %290 = load ptr addrspace(1), ptr addrspace(1) %289, align 8
  %291 = bitcast ptr addrspace(1) %290 to ptr addrspace(1)
  %292 = load i64, ptr %49
  %293 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %292), !dbg !77
  %294 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %291, i64 0, i64 0
  store ptr addrspace(1) %293, ptr addrspace(1) %294
  %295 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %288, i64 0, i32 1
  store i64 1, ptr addrspace(1) %295
  %296 = bitcast ptr addrspace(1) %288 to ptr addrspace(1)
  %297 = getelementptr i8, ptr addrspace(1) %296, i64 864691128455135236
  store ptr addrspace(1) %297, ptr %50
  %298 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %298), !dbg !78
  store ptr addrspace(1) null, ptr %51
  %299 = call i64 @_B_rem(i64 0, i64 -1), !dbg !79
  store i64 %299, ptr %52
  %300 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !80
  %301 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %300, i64 0, i32 3
  %302 = load ptr addrspace(1), ptr addrspace(1) %301, align 8
  %303 = bitcast ptr addrspace(1) %302 to ptr addrspace(1)
  %304 = load i64, ptr %52
  %305 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %304), !dbg !81
  %306 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %303, i64 0, i64 0
  store ptr addrspace(1) %305, ptr addrspace(1) %306
  %307 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %300, i64 0, i32 1
  store i64 1, ptr addrspace(1) %307
  %308 = bitcast ptr addrspace(1) %300 to ptr addrspace(1)
  %309 = getelementptr i8, ptr addrspace(1) %308, i64 864691128455135236
  store ptr addrspace(1) %309, ptr %53
  %310 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %310), !dbg !82
  store ptr addrspace(1) null, ptr %54
  %311 = call i64 @_B_rem(i64 -1, i64 -1), !dbg !83
  store i64 %311, ptr %55
  %312 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !84
  %313 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %312, i64 0, i32 3
  %314 = load ptr addrspace(1), ptr addrspace(1) %313, align 8
  %315 = bitcast ptr addrspace(1) %314 to ptr addrspace(1)
  %316 = load i64, ptr %55
  %317 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %316), !dbg !85
  %318 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %315, i64 0, i64 0
  store ptr addrspace(1) %317, ptr addrspace(1) %318
  %319 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %312, i64 0, i32 1
  store i64 1, ptr addrspace(1) %319
  %320 = bitcast ptr addrspace(1) %312 to ptr addrspace(1)
  %321 = getelementptr i8, ptr addrspace(1) %320, i64 864691128455135236
  store ptr addrspace(1) %321, ptr %56
  %322 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %322), !dbg !86
  store ptr addrspace(1) null, ptr %57
  %323 = call i64 @_B_rem(i64 -9223372036854775806, i64 -1), !dbg !87
  store i64 %323, ptr %58
  %324 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !88
  %325 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %324, i64 0, i32 3
  %326 = load ptr addrspace(1), ptr addrspace(1) %325, align 8
  %327 = bitcast ptr addrspace(1) %326 to ptr addrspace(1)
  %328 = load i64, ptr %58
  %329 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %328), !dbg !89
  %330 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %327, i64 0, i64 0
  store ptr addrspace(1) %329, ptr addrspace(1) %330
  %331 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %324, i64 0, i32 1
  store i64 1, ptr addrspace(1) %331
  %332 = bitcast ptr addrspace(1) %324 to ptr addrspace(1)
  %333 = getelementptr i8, ptr addrspace(1) %332, i64 864691128455135236
  store ptr addrspace(1) %333, ptr %59
  %334 = load ptr addrspace(1), ptr %59
  call void @_Bb02ioprintln(ptr addrspace(1) %334), !dbg !90
  store ptr addrspace(1) null, ptr %60
  %335 = call i64 @_B_rem(i64 9223372036854775806, i64 -10), !dbg !91
  store i64 %335, ptr %61
  %336 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !92
  %337 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %336, i64 0, i32 3
  %338 = load ptr addrspace(1), ptr addrspace(1) %337, align 8
  %339 = bitcast ptr addrspace(1) %338 to ptr addrspace(1)
  %340 = load i64, ptr %61
  %341 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %340), !dbg !93
  %342 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %339, i64 0, i64 0
  store ptr addrspace(1) %341, ptr addrspace(1) %342
  %343 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %336, i64 0, i32 1
  store i64 1, ptr addrspace(1) %343
  %344 = bitcast ptr addrspace(1) %336 to ptr addrspace(1)
  %345 = getelementptr i8, ptr addrspace(1) %344, i64 864691128455135236
  store ptr addrspace(1) %345, ptr %62
  %346 = load ptr addrspace(1), ptr %62
  call void @_Bb02ioprintln(ptr addrspace(1) %346), !dbg !94
  store ptr addrspace(1) null, ptr %63
  %347 = call i64 @_B_rem(i64 1, i64 -10), !dbg !95
  store i64 %347, ptr %64
  %348 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !96
  %349 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %348, i64 0, i32 3
  %350 = load ptr addrspace(1), ptr addrspace(1) %349, align 8
  %351 = bitcast ptr addrspace(1) %350 to ptr addrspace(1)
  %352 = load i64, ptr %64
  %353 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %352), !dbg !97
  %354 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %351, i64 0, i64 0
  store ptr addrspace(1) %353, ptr addrspace(1) %354
  %355 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %348, i64 0, i32 1
  store i64 1, ptr addrspace(1) %355
  %356 = bitcast ptr addrspace(1) %348 to ptr addrspace(1)
  %357 = getelementptr i8, ptr addrspace(1) %356, i64 864691128455135236
  store ptr addrspace(1) %357, ptr %65
  %358 = load ptr addrspace(1), ptr %65
  call void @_Bb02ioprintln(ptr addrspace(1) %358), !dbg !98
  store ptr addrspace(1) null, ptr %66
  %359 = call i64 @_B_rem(i64 0, i64 -10), !dbg !99
  store i64 %359, ptr %67
  %360 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !100
  %361 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %360, i64 0, i32 3
  %362 = load ptr addrspace(1), ptr addrspace(1) %361, align 8
  %363 = bitcast ptr addrspace(1) %362 to ptr addrspace(1)
  %364 = load i64, ptr %67
  %365 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %364), !dbg !101
  %366 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %363, i64 0, i64 0
  store ptr addrspace(1) %365, ptr addrspace(1) %366
  %367 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %360, i64 0, i32 1
  store i64 1, ptr addrspace(1) %367
  %368 = bitcast ptr addrspace(1) %360 to ptr addrspace(1)
  %369 = getelementptr i8, ptr addrspace(1) %368, i64 864691128455135236
  store ptr addrspace(1) %369, ptr %68
  %370 = load ptr addrspace(1), ptr %68
  call void @_Bb02ioprintln(ptr addrspace(1) %370), !dbg !102
  store ptr addrspace(1) null, ptr %69
  %371 = call i64 @_B_rem(i64 -1, i64 -10), !dbg !103
  store i64 %371, ptr %70
  %372 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !104
  %373 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %372, i64 0, i32 3
  %374 = load ptr addrspace(1), ptr addrspace(1) %373, align 8
  %375 = bitcast ptr addrspace(1) %374 to ptr addrspace(1)
  %376 = load i64, ptr %70
  %377 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %376), !dbg !105
  %378 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %375, i64 0, i64 0
  store ptr addrspace(1) %377, ptr addrspace(1) %378
  %379 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %372, i64 0, i32 1
  store i64 1, ptr addrspace(1) %379
  %380 = bitcast ptr addrspace(1) %372 to ptr addrspace(1)
  %381 = getelementptr i8, ptr addrspace(1) %380, i64 864691128455135236
  store ptr addrspace(1) %381, ptr %71
  %382 = load ptr addrspace(1), ptr %71
  call void @_Bb02ioprintln(ptr addrspace(1) %382), !dbg !106
  store ptr addrspace(1) null, ptr %72
  %383 = call i64 @_B_rem(i64 -9223372036854775806, i64 -10), !dbg !107
  store i64 %383, ptr %73
  %384 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !108
  %385 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %384, i64 0, i32 3
  %386 = load ptr addrspace(1), ptr addrspace(1) %385, align 8
  %387 = bitcast ptr addrspace(1) %386 to ptr addrspace(1)
  %388 = load i64, ptr %73
  %389 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %388), !dbg !109
  %390 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %387, i64 0, i64 0
  store ptr addrspace(1) %389, ptr addrspace(1) %390
  %391 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %384, i64 0, i32 1
  store i64 1, ptr addrspace(1) %391
  %392 = bitcast ptr addrspace(1) %384 to ptr addrspace(1)
  %393 = getelementptr i8, ptr addrspace(1) %392, i64 864691128455135236
  store ptr addrspace(1) %393, ptr %74
  %394 = load ptr addrspace(1), ptr %74
  call void @_Bb02ioprintln(ptr addrspace(1) %394), !dbg !110
  store ptr addrspace(1) null, ptr %75
  %395 = call i64 @_B_rem(i64 9223372036854775806, i64 -9223372036854775806), !dbg !111
  store i64 %395, ptr %76
  %396 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !112
  %397 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %396, i64 0, i32 3
  %398 = load ptr addrspace(1), ptr addrspace(1) %397, align 8
  %399 = bitcast ptr addrspace(1) %398 to ptr addrspace(1)
  %400 = load i64, ptr %76
  %401 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %400), !dbg !113
  %402 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %399, i64 0, i64 0
  store ptr addrspace(1) %401, ptr addrspace(1) %402
  %403 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %396, i64 0, i32 1
  store i64 1, ptr addrspace(1) %403
  %404 = bitcast ptr addrspace(1) %396 to ptr addrspace(1)
  %405 = getelementptr i8, ptr addrspace(1) %404, i64 864691128455135236
  store ptr addrspace(1) %405, ptr %77
  %406 = load ptr addrspace(1), ptr %77
  call void @_Bb02ioprintln(ptr addrspace(1) %406), !dbg !114
  store ptr addrspace(1) null, ptr %78
  %407 = call i64 @_B_rem(i64 1, i64 -9223372036854775806), !dbg !115
  store i64 %407, ptr %79
  %408 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !116
  %409 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %408, i64 0, i32 3
  %410 = load ptr addrspace(1), ptr addrspace(1) %409, align 8
  %411 = bitcast ptr addrspace(1) %410 to ptr addrspace(1)
  %412 = load i64, ptr %79
  %413 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %412), !dbg !117
  %414 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %411, i64 0, i64 0
  store ptr addrspace(1) %413, ptr addrspace(1) %414
  %415 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %408, i64 0, i32 1
  store i64 1, ptr addrspace(1) %415
  %416 = bitcast ptr addrspace(1) %408 to ptr addrspace(1)
  %417 = getelementptr i8, ptr addrspace(1) %416, i64 864691128455135236
  store ptr addrspace(1) %417, ptr %80
  %418 = load ptr addrspace(1), ptr %80
  call void @_Bb02ioprintln(ptr addrspace(1) %418), !dbg !118
  store ptr addrspace(1) null, ptr %81
  %419 = call i64 @_B_rem(i64 0, i64 -9223372036854775806), !dbg !119
  store i64 %419, ptr %82
  %420 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !120
  %421 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %420, i64 0, i32 3
  %422 = load ptr addrspace(1), ptr addrspace(1) %421, align 8
  %423 = bitcast ptr addrspace(1) %422 to ptr addrspace(1)
  %424 = load i64, ptr %82
  %425 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %424), !dbg !121
  %426 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %423, i64 0, i64 0
  store ptr addrspace(1) %425, ptr addrspace(1) %426
  %427 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %420, i64 0, i32 1
  store i64 1, ptr addrspace(1) %427
  %428 = bitcast ptr addrspace(1) %420 to ptr addrspace(1)
  %429 = getelementptr i8, ptr addrspace(1) %428, i64 864691128455135236
  store ptr addrspace(1) %429, ptr %83
  %430 = load ptr addrspace(1), ptr %83
  call void @_Bb02ioprintln(ptr addrspace(1) %430), !dbg !122
  store ptr addrspace(1) null, ptr %84
  %431 = call i64 @_B_rem(i64 -1, i64 -9223372036854775806), !dbg !123
  store i64 %431, ptr %85
  %432 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !124
  %433 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %432, i64 0, i32 3
  %434 = load ptr addrspace(1), ptr addrspace(1) %433, align 8
  %435 = bitcast ptr addrspace(1) %434 to ptr addrspace(1)
  %436 = load i64, ptr %85
  %437 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %436), !dbg !125
  %438 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %435, i64 0, i64 0
  store ptr addrspace(1) %437, ptr addrspace(1) %438
  %439 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %432, i64 0, i32 1
  store i64 1, ptr addrspace(1) %439
  %440 = bitcast ptr addrspace(1) %432 to ptr addrspace(1)
  %441 = getelementptr i8, ptr addrspace(1) %440, i64 864691128455135236
  store ptr addrspace(1) %441, ptr %86
  %442 = load ptr addrspace(1), ptr %86
  call void @_Bb02ioprintln(ptr addrspace(1) %442), !dbg !126
  store ptr addrspace(1) null, ptr %87
  %443 = call i64 @_B_rem(i64 -9223372036854775806, i64 -9223372036854775806), !dbg !127
  store i64 %443, ptr %88
  %444 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !128
  %445 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %444, i64 0, i32 3
  %446 = load ptr addrspace(1), ptr addrspace(1) %445, align 8
  %447 = bitcast ptr addrspace(1) %446 to ptr addrspace(1)
  %448 = load i64, ptr %88
  %449 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %448), !dbg !129
  %450 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %447, i64 0, i64 0
  store ptr addrspace(1) %449, ptr addrspace(1) %450
  %451 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %444, i64 0, i32 1
  store i64 1, ptr addrspace(1) %451
  %452 = bitcast ptr addrspace(1) %444 to ptr addrspace(1)
  %453 = getelementptr i8, ptr addrspace(1) %452, i64 864691128455135236
  store ptr addrspace(1) %453, ptr %89
  %454 = load ptr addrspace(1), ptr %89
  call void @_Bb02ioprintln(ptr addrspace(1) %454), !dbg !130
  store ptr addrspace(1) null, ptr %90
  ret void
455:
  %456 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %456), !dbg !10
  unreachable
}
define internal i64 @_B_rem(i64 %0, i64 %1) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  %9 = load i64, ptr %a
  %10 = load i64, ptr %b
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %18
12:
  %13 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !133
  unreachable
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 10756), !dbg !131
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !132
  unreachable
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 11010), !dbg !131
  store ptr addrspace(1) %17, ptr %4
  br label %12
18:
  %19 = icmp eq i64 %9, -9223372036854775808
  %20 = icmp eq i64 %10, -1
  %21 = and i1 %19, %20
  br i1 %21, label %24, label %22
22:
  %23 = srem i64 %9, %10
  store i64 %23, ptr %3
  br label %25
24:
  store i64 0, ptr %3
  br label %25
25:
  %26 = load i64, ptr %3
  ret i64 %26
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/rem4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"rem", linkageName:"_B_rem", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 4, scope: !5)
!23 = !DILocation(line: 8, column: 15, scope: !5)
!24 = !DILocation(line: 8, column: 15, scope: !5)
!25 = !DILocation(line: 8, column: 15, scope: !5)
!26 = !DILocation(line: 8, column: 4, scope: !5)
!27 = !DILocation(line: 9, column: 15, scope: !5)
!28 = !DILocation(line: 9, column: 15, scope: !5)
!29 = !DILocation(line: 9, column: 15, scope: !5)
!30 = !DILocation(line: 9, column: 4, scope: !5)
!31 = !DILocation(line: 11, column: 15, scope: !5)
!32 = !DILocation(line: 11, column: 15, scope: !5)
!33 = !DILocation(line: 11, column: 15, scope: !5)
!34 = !DILocation(line: 11, column: 4, scope: !5)
!35 = !DILocation(line: 12, column: 15, scope: !5)
!36 = !DILocation(line: 12, column: 15, scope: !5)
!37 = !DILocation(line: 12, column: 15, scope: !5)
!38 = !DILocation(line: 12, column: 4, scope: !5)
!39 = !DILocation(line: 13, column: 15, scope: !5)
!40 = !DILocation(line: 13, column: 15, scope: !5)
!41 = !DILocation(line: 13, column: 15, scope: !5)
!42 = !DILocation(line: 13, column: 4, scope: !5)
!43 = !DILocation(line: 14, column: 15, scope: !5)
!44 = !DILocation(line: 14, column: 15, scope: !5)
!45 = !DILocation(line: 14, column: 15, scope: !5)
!46 = !DILocation(line: 14, column: 4, scope: !5)
!47 = !DILocation(line: 15, column: 15, scope: !5)
!48 = !DILocation(line: 15, column: 15, scope: !5)
!49 = !DILocation(line: 15, column: 15, scope: !5)
!50 = !DILocation(line: 15, column: 4, scope: !5)
!51 = !DILocation(line: 17, column: 15, scope: !5)
!52 = !DILocation(line: 17, column: 15, scope: !5)
!53 = !DILocation(line: 17, column: 15, scope: !5)
!54 = !DILocation(line: 17, column: 4, scope: !5)
!55 = !DILocation(line: 18, column: 15, scope: !5)
!56 = !DILocation(line: 18, column: 15, scope: !5)
!57 = !DILocation(line: 18, column: 15, scope: !5)
!58 = !DILocation(line: 18, column: 4, scope: !5)
!59 = !DILocation(line: 19, column: 15, scope: !5)
!60 = !DILocation(line: 19, column: 15, scope: !5)
!61 = !DILocation(line: 19, column: 15, scope: !5)
!62 = !DILocation(line: 19, column: 4, scope: !5)
!63 = !DILocation(line: 20, column: 15, scope: !5)
!64 = !DILocation(line: 20, column: 15, scope: !5)
!65 = !DILocation(line: 20, column: 15, scope: !5)
!66 = !DILocation(line: 20, column: 4, scope: !5)
!67 = !DILocation(line: 21, column: 15, scope: !5)
!68 = !DILocation(line: 21, column: 15, scope: !5)
!69 = !DILocation(line: 21, column: 15, scope: !5)
!70 = !DILocation(line: 21, column: 4, scope: !5)
!71 = !DILocation(line: 23, column: 15, scope: !5)
!72 = !DILocation(line: 23, column: 15, scope: !5)
!73 = !DILocation(line: 23, column: 15, scope: !5)
!74 = !DILocation(line: 23, column: 4, scope: !5)
!75 = !DILocation(line: 24, column: 15, scope: !5)
!76 = !DILocation(line: 24, column: 15, scope: !5)
!77 = !DILocation(line: 24, column: 15, scope: !5)
!78 = !DILocation(line: 24, column: 4, scope: !5)
!79 = !DILocation(line: 25, column: 15, scope: !5)
!80 = !DILocation(line: 25, column: 15, scope: !5)
!81 = !DILocation(line: 25, column: 15, scope: !5)
!82 = !DILocation(line: 25, column: 4, scope: !5)
!83 = !DILocation(line: 26, column: 15, scope: !5)
!84 = !DILocation(line: 26, column: 15, scope: !5)
!85 = !DILocation(line: 26, column: 15, scope: !5)
!86 = !DILocation(line: 26, column: 4, scope: !5)
!87 = !DILocation(line: 27, column: 15, scope: !5)
!88 = !DILocation(line: 27, column: 15, scope: !5)
!89 = !DILocation(line: 27, column: 15, scope: !5)
!90 = !DILocation(line: 27, column: 4, scope: !5)
!91 = !DILocation(line: 29, column: 15, scope: !5)
!92 = !DILocation(line: 29, column: 15, scope: !5)
!93 = !DILocation(line: 29, column: 15, scope: !5)
!94 = !DILocation(line: 29, column: 4, scope: !5)
!95 = !DILocation(line: 30, column: 15, scope: !5)
!96 = !DILocation(line: 30, column: 15, scope: !5)
!97 = !DILocation(line: 30, column: 15, scope: !5)
!98 = !DILocation(line: 30, column: 4, scope: !5)
!99 = !DILocation(line: 31, column: 15, scope: !5)
!100 = !DILocation(line: 31, column: 15, scope: !5)
!101 = !DILocation(line: 31, column: 15, scope: !5)
!102 = !DILocation(line: 31, column: 4, scope: !5)
!103 = !DILocation(line: 32, column: 15, scope: !5)
!104 = !DILocation(line: 32, column: 15, scope: !5)
!105 = !DILocation(line: 32, column: 15, scope: !5)
!106 = !DILocation(line: 32, column: 4, scope: !5)
!107 = !DILocation(line: 33, column: 15, scope: !5)
!108 = !DILocation(line: 33, column: 15, scope: !5)
!109 = !DILocation(line: 33, column: 15, scope: !5)
!110 = !DILocation(line: 33, column: 4, scope: !5)
!111 = !DILocation(line: 35, column: 15, scope: !5)
!112 = !DILocation(line: 35, column: 15, scope: !5)
!113 = !DILocation(line: 35, column: 15, scope: !5)
!114 = !DILocation(line: 35, column: 4, scope: !5)
!115 = !DILocation(line: 36, column: 15, scope: !5)
!116 = !DILocation(line: 36, column: 15, scope: !5)
!117 = !DILocation(line: 36, column: 15, scope: !5)
!118 = !DILocation(line: 36, column: 4, scope: !5)
!119 = !DILocation(line: 37, column: 15, scope: !5)
!120 = !DILocation(line: 37, column: 15, scope: !5)
!121 = !DILocation(line: 37, column: 15, scope: !5)
!122 = !DILocation(line: 37, column: 4, scope: !5)
!123 = !DILocation(line: 38, column: 15, scope: !5)
!124 = !DILocation(line: 38, column: 15, scope: !5)
!125 = !DILocation(line: 38, column: 15, scope: !5)
!126 = !DILocation(line: 38, column: 4, scope: !5)
!127 = !DILocation(line: 39, column: 15, scope: !5)
!128 = !DILocation(line: 39, column: 15, scope: !5)
!129 = !DILocation(line: 39, column: 15, scope: !5)
!130 = !DILocation(line: 39, column: 4, scope: !5)
!131 = !DILocation(line: 0, column: 0, scope: !7)
!132 = !DILocation(line: 42, column: 9, scope: !7)
!133 = !DILocation(line: 44, column: 0, scope: !7)
