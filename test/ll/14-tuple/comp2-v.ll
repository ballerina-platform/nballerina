@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_int_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
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
  %52 = alloca i8
  %53 = load ptr, ptr @_bal_stack_guard
  %54 = icmp ult ptr %52, %53
  br i1 %54, label %388, label %55
55:
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = and i64 72057594037927935, 0
  %61 = or i64 2449958197289549824, %60
  %62 = getelementptr i8, ptr addrspace(1) null, i64 %61
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = and i64 72057594037927935, 1
  %65 = or i64 2449958197289549824, %64
  %66 = getelementptr i8, ptr addrspace(1) null, i64 %65
  %67 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 1
  store ptr addrspace(1) %66, ptr addrspace(1) %67
  %68 = and i64 72057594037927935, 2
  %69 = or i64 2449958197289549824, %68
  %70 = getelementptr i8, ptr addrspace(1) null, i64 %69
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 2
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 3, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %1
  %75 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %75, ptr %a
  %76 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !10
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = and i64 72057594037927935, 1
  %81 = or i64 2449958197289549824, %80
  %82 = getelementptr i8, ptr addrspace(1) null, i64 %81
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = and i64 72057594037927935, 0
  %85 = or i64 2449958197289549824, %84
  %86 = getelementptr i8, ptr addrspace(1) null, i64 %85
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 1
  store ptr addrspace(1) %86, ptr addrspace(1) %87
  %88 = and i64 72057594037927935, 3
  %89 = or i64 2449958197289549824, %88
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 2
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 1
  store i64 3, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %2
  %95 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %95, ptr %b
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !11
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = and i64 72057594037927935, 0
  %101 = or i64 2449958197289549824, %100
  %102 = getelementptr i8, ptr addrspace(1) null, i64 %101
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = and i64 72057594037927935, 1
  %105 = or i64 2449958197289549824, %104
  %106 = getelementptr i8, ptr addrspace(1) null, i64 %105
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 1
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = and i64 72057594037927935, 0
  %109 = or i64 2449958197289549824, %108
  %110 = getelementptr i8, ptr addrspace(1) null, i64 %109
  %111 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 2
  store ptr addrspace(1) %110, ptr addrspace(1) %111
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 3, ptr addrspace(1) %112
  %113 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %114 = getelementptr i8, ptr addrspace(1) %113, i64 864691128455135236
  store ptr addrspace(1) %114, ptr %3
  %115 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %115, ptr %c
  %116 = load ptr addrspace(1), ptr %a
  %117 = load ptr addrspace(1), ptr %b
  %118 = call i64 @_bal_array_int_compare(ptr addrspace(1) %116, ptr addrspace(1) %117), !dbg !12
  %119 = icmp eq i64 %118, 0
  store i1 %119, ptr %4
  %120 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %122 = load ptr addrspace(1), ptr addrspace(1) %121, align 8
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = load i1, ptr %4
  %125 = zext i1 %124 to i64
  %126 = or i64 %125, 72057594037927936
  %127 = getelementptr i8, ptr addrspace(1) null, i64 %126
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %5
  %132 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %133 = load ptr addrspace(1), ptr %a
  %134 = load ptr addrspace(1), ptr %b
  %135 = call i64 @_bal_array_int_compare(ptr addrspace(1) %133, ptr addrspace(1) %134), !dbg !15
  %136 = icmp ule i64 %135, 1
  store i1 %136, ptr %7
  %137 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 3
  %139 = load ptr addrspace(1), ptr addrspace(1) %138, align 8
  %140 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %141 = load i1, ptr %7
  %142 = zext i1 %141 to i64
  %143 = or i64 %142, 72057594037927936
  %144 = getelementptr i8, ptr addrspace(1) null, i64 %143
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %140, i64 0, i64 0
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 1
  store i64 1, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %8
  %149 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %149), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %150 = load ptr addrspace(1), ptr %a
  %151 = load ptr addrspace(1), ptr %b
  %152 = call i64 @_bal_array_int_compare(ptr addrspace(1) %150, ptr addrspace(1) %151), !dbg !18
  %153 = icmp eq i64 %152, 2
  store i1 %153, ptr %10
  %154 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %155 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 3
  %156 = load ptr addrspace(1), ptr addrspace(1) %155, align 8
  %157 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %158 = load i1, ptr %10
  %159 = zext i1 %158 to i64
  %160 = or i64 %159, 72057594037927936
  %161 = getelementptr i8, ptr addrspace(1) null, i64 %160
  %162 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %157, i64 0, i64 0
  store ptr addrspace(1) %161, ptr addrspace(1) %162
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 1
  store i64 1, ptr addrspace(1) %163
  %164 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %165 = getelementptr i8, ptr addrspace(1) %164, i64 864691128455135236
  store ptr addrspace(1) %165, ptr %11
  %166 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %166), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %167 = load ptr addrspace(1), ptr %a
  %168 = load ptr addrspace(1), ptr %b
  %169 = call i64 @_bal_array_int_compare(ptr addrspace(1) %167, ptr addrspace(1) %168), !dbg !21
  %170 = icmp sge i64 %169, 1
  store i1 %170, ptr %13
  %171 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 3
  %173 = load ptr addrspace(1), ptr addrspace(1) %172, align 8
  %174 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %175 = load i1, ptr %13
  %176 = zext i1 %175 to i64
  %177 = or i64 %176, 72057594037927936
  %178 = getelementptr i8, ptr addrspace(1) null, i64 %177
  %179 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %174, i64 0, i64 0
  store ptr addrspace(1) %178, ptr addrspace(1) %179
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 1
  store i64 1, ptr addrspace(1) %180
  %181 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 864691128455135236
  store ptr addrspace(1) %182, ptr %14
  %183 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %183), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %184 = load ptr addrspace(1), ptr %b
  %185 = load ptr addrspace(1), ptr %a
  %186 = call i64 @_bal_array_int_compare(ptr addrspace(1) %184, ptr addrspace(1) %185), !dbg !24
  %187 = icmp eq i64 %186, 0
  store i1 %187, ptr %16
  %188 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %189 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %188, i64 0, i32 3
  %190 = load ptr addrspace(1), ptr addrspace(1) %189, align 8
  %191 = bitcast ptr addrspace(1) %190 to ptr addrspace(1)
  %192 = load i1, ptr %16
  %193 = zext i1 %192 to i64
  %194 = or i64 %193, 72057594037927936
  %195 = getelementptr i8, ptr addrspace(1) null, i64 %194
  %196 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %191, i64 0, i64 0
  store ptr addrspace(1) %195, ptr addrspace(1) %196
  %197 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %188, i64 0, i32 1
  store i64 1, ptr addrspace(1) %197
  %198 = bitcast ptr addrspace(1) %188 to ptr addrspace(1)
  %199 = getelementptr i8, ptr addrspace(1) %198, i64 864691128455135236
  store ptr addrspace(1) %199, ptr %17
  %200 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %200), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %201 = load ptr addrspace(1), ptr %b
  %202 = load ptr addrspace(1), ptr %a
  %203 = call i64 @_bal_array_int_compare(ptr addrspace(1) %201, ptr addrspace(1) %202), !dbg !27
  %204 = icmp ule i64 %203, 1
  store i1 %204, ptr %19
  %205 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !28
  %206 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %205, i64 0, i32 3
  %207 = load ptr addrspace(1), ptr addrspace(1) %206, align 8
  %208 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %209 = load i1, ptr %19
  %210 = zext i1 %209 to i64
  %211 = or i64 %210, 72057594037927936
  %212 = getelementptr i8, ptr addrspace(1) null, i64 %211
  %213 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %208, i64 0, i64 0
  store ptr addrspace(1) %212, ptr addrspace(1) %213
  %214 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %205, i64 0, i32 1
  store i64 1, ptr addrspace(1) %214
  %215 = bitcast ptr addrspace(1) %205 to ptr addrspace(1)
  %216 = getelementptr i8, ptr addrspace(1) %215, i64 864691128455135236
  store ptr addrspace(1) %216, ptr %20
  %217 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %217), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %218 = load ptr addrspace(1), ptr %b
  %219 = load ptr addrspace(1), ptr %a
  %220 = call i64 @_bal_array_int_compare(ptr addrspace(1) %218, ptr addrspace(1) %219), !dbg !30
  %221 = icmp eq i64 %220, 2
  store i1 %221, ptr %22
  %222 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !31
  %223 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %222, i64 0, i32 3
  %224 = load ptr addrspace(1), ptr addrspace(1) %223, align 8
  %225 = bitcast ptr addrspace(1) %224 to ptr addrspace(1)
  %226 = load i1, ptr %22
  %227 = zext i1 %226 to i64
  %228 = or i64 %227, 72057594037927936
  %229 = getelementptr i8, ptr addrspace(1) null, i64 %228
  %230 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %225, i64 0, i64 0
  store ptr addrspace(1) %229, ptr addrspace(1) %230
  %231 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %222, i64 0, i32 1
  store i64 1, ptr addrspace(1) %231
  %232 = bitcast ptr addrspace(1) %222 to ptr addrspace(1)
  %233 = getelementptr i8, ptr addrspace(1) %232, i64 864691128455135236
  store ptr addrspace(1) %233, ptr %23
  %234 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %234), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %235 = load ptr addrspace(1), ptr %b
  %236 = load ptr addrspace(1), ptr %a
  %237 = call i64 @_bal_array_int_compare(ptr addrspace(1) %235, ptr addrspace(1) %236), !dbg !33
  %238 = icmp sge i64 %237, 1
  store i1 %238, ptr %25
  %239 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !34
  %240 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %239, i64 0, i32 3
  %241 = load ptr addrspace(1), ptr addrspace(1) %240, align 8
  %242 = bitcast ptr addrspace(1) %241 to ptr addrspace(1)
  %243 = load i1, ptr %25
  %244 = zext i1 %243 to i64
  %245 = or i64 %244, 72057594037927936
  %246 = getelementptr i8, ptr addrspace(1) null, i64 %245
  %247 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %242, i64 0, i64 0
  store ptr addrspace(1) %246, ptr addrspace(1) %247
  %248 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %239, i64 0, i32 1
  store i64 1, ptr addrspace(1) %248
  %249 = bitcast ptr addrspace(1) %239 to ptr addrspace(1)
  %250 = getelementptr i8, ptr addrspace(1) %249, i64 864691128455135236
  store ptr addrspace(1) %250, ptr %26
  %251 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %251), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %252 = load ptr addrspace(1), ptr %a
  %253 = load ptr addrspace(1), ptr %c
  %254 = call i64 @_bal_array_int_compare(ptr addrspace(1) %252, ptr addrspace(1) %253), !dbg !36
  %255 = icmp eq i64 %254, 0
  store i1 %255, ptr %28
  %256 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !37
  %257 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %256, i64 0, i32 3
  %258 = load ptr addrspace(1), ptr addrspace(1) %257, align 8
  %259 = bitcast ptr addrspace(1) %258 to ptr addrspace(1)
  %260 = load i1, ptr %28
  %261 = zext i1 %260 to i64
  %262 = or i64 %261, 72057594037927936
  %263 = getelementptr i8, ptr addrspace(1) null, i64 %262
  %264 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %259, i64 0, i64 0
  store ptr addrspace(1) %263, ptr addrspace(1) %264
  %265 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %256, i64 0, i32 1
  store i64 1, ptr addrspace(1) %265
  %266 = bitcast ptr addrspace(1) %256 to ptr addrspace(1)
  %267 = getelementptr i8, ptr addrspace(1) %266, i64 864691128455135236
  store ptr addrspace(1) %267, ptr %29
  %268 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %268), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %269 = load ptr addrspace(1), ptr %a
  %270 = load ptr addrspace(1), ptr %c
  %271 = call i64 @_bal_array_int_compare(ptr addrspace(1) %269, ptr addrspace(1) %270), !dbg !39
  %272 = icmp ule i64 %271, 1
  store i1 %272, ptr %31
  %273 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !40
  %274 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %273, i64 0, i32 3
  %275 = load ptr addrspace(1), ptr addrspace(1) %274, align 8
  %276 = bitcast ptr addrspace(1) %275 to ptr addrspace(1)
  %277 = load i1, ptr %31
  %278 = zext i1 %277 to i64
  %279 = or i64 %278, 72057594037927936
  %280 = getelementptr i8, ptr addrspace(1) null, i64 %279
  %281 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %276, i64 0, i64 0
  store ptr addrspace(1) %280, ptr addrspace(1) %281
  %282 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %273, i64 0, i32 1
  store i64 1, ptr addrspace(1) %282
  %283 = bitcast ptr addrspace(1) %273 to ptr addrspace(1)
  %284 = getelementptr i8, ptr addrspace(1) %283, i64 864691128455135236
  store ptr addrspace(1) %284, ptr %32
  %285 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %285), !dbg !41
  store ptr addrspace(1) null, ptr %33
  %286 = load ptr addrspace(1), ptr %a
  %287 = load ptr addrspace(1), ptr %c
  %288 = call i64 @_bal_array_int_compare(ptr addrspace(1) %286, ptr addrspace(1) %287), !dbg !42
  %289 = icmp eq i64 %288, 2
  store i1 %289, ptr %34
  %290 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !43
  %291 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 3
  %292 = load ptr addrspace(1), ptr addrspace(1) %291, align 8
  %293 = bitcast ptr addrspace(1) %292 to ptr addrspace(1)
  %294 = load i1, ptr %34
  %295 = zext i1 %294 to i64
  %296 = or i64 %295, 72057594037927936
  %297 = getelementptr i8, ptr addrspace(1) null, i64 %296
  %298 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %293, i64 0, i64 0
  store ptr addrspace(1) %297, ptr addrspace(1) %298
  %299 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 1
  store i64 1, ptr addrspace(1) %299
  %300 = bitcast ptr addrspace(1) %290 to ptr addrspace(1)
  %301 = getelementptr i8, ptr addrspace(1) %300, i64 864691128455135236
  store ptr addrspace(1) %301, ptr %35
  %302 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %302), !dbg !44
  store ptr addrspace(1) null, ptr %36
  %303 = load ptr addrspace(1), ptr %a
  %304 = load ptr addrspace(1), ptr %c
  %305 = call i64 @_bal_array_int_compare(ptr addrspace(1) %303, ptr addrspace(1) %304), !dbg !45
  %306 = icmp sge i64 %305, 1
  store i1 %306, ptr %37
  %307 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !46
  %308 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 3
  %309 = load ptr addrspace(1), ptr addrspace(1) %308, align 8
  %310 = bitcast ptr addrspace(1) %309 to ptr addrspace(1)
  %311 = load i1, ptr %37
  %312 = zext i1 %311 to i64
  %313 = or i64 %312, 72057594037927936
  %314 = getelementptr i8, ptr addrspace(1) null, i64 %313
  %315 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %310, i64 0, i64 0
  store ptr addrspace(1) %314, ptr addrspace(1) %315
  %316 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 1
  store i64 1, ptr addrspace(1) %316
  %317 = bitcast ptr addrspace(1) %307 to ptr addrspace(1)
  %318 = getelementptr i8, ptr addrspace(1) %317, i64 864691128455135236
  store ptr addrspace(1) %318, ptr %38
  %319 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %319), !dbg !47
  store ptr addrspace(1) null, ptr %39
  %320 = load ptr addrspace(1), ptr %c
  %321 = load ptr addrspace(1), ptr %a
  %322 = call i64 @_bal_array_int_compare(ptr addrspace(1) %320, ptr addrspace(1) %321), !dbg !48
  %323 = icmp eq i64 %322, 0
  store i1 %323, ptr %40
  %324 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !49
  %325 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %324, i64 0, i32 3
  %326 = load ptr addrspace(1), ptr addrspace(1) %325, align 8
  %327 = bitcast ptr addrspace(1) %326 to ptr addrspace(1)
  %328 = load i1, ptr %40
  %329 = zext i1 %328 to i64
  %330 = or i64 %329, 72057594037927936
  %331 = getelementptr i8, ptr addrspace(1) null, i64 %330
  %332 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %327, i64 0, i64 0
  store ptr addrspace(1) %331, ptr addrspace(1) %332
  %333 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %324, i64 0, i32 1
  store i64 1, ptr addrspace(1) %333
  %334 = bitcast ptr addrspace(1) %324 to ptr addrspace(1)
  %335 = getelementptr i8, ptr addrspace(1) %334, i64 864691128455135236
  store ptr addrspace(1) %335, ptr %41
  %336 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %336), !dbg !50
  store ptr addrspace(1) null, ptr %42
  %337 = load ptr addrspace(1), ptr %c
  %338 = load ptr addrspace(1), ptr %a
  %339 = call i64 @_bal_array_int_compare(ptr addrspace(1) %337, ptr addrspace(1) %338), !dbg !51
  %340 = icmp ule i64 %339, 1
  store i1 %340, ptr %43
  %341 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !52
  %342 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %341, i64 0, i32 3
  %343 = load ptr addrspace(1), ptr addrspace(1) %342, align 8
  %344 = bitcast ptr addrspace(1) %343 to ptr addrspace(1)
  %345 = load i1, ptr %43
  %346 = zext i1 %345 to i64
  %347 = or i64 %346, 72057594037927936
  %348 = getelementptr i8, ptr addrspace(1) null, i64 %347
  %349 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %344, i64 0, i64 0
  store ptr addrspace(1) %348, ptr addrspace(1) %349
  %350 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %341, i64 0, i32 1
  store i64 1, ptr addrspace(1) %350
  %351 = bitcast ptr addrspace(1) %341 to ptr addrspace(1)
  %352 = getelementptr i8, ptr addrspace(1) %351, i64 864691128455135236
  store ptr addrspace(1) %352, ptr %44
  %353 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %353), !dbg !53
  store ptr addrspace(1) null, ptr %45
  %354 = load ptr addrspace(1), ptr %c
  %355 = load ptr addrspace(1), ptr %a
  %356 = call i64 @_bal_array_int_compare(ptr addrspace(1) %354, ptr addrspace(1) %355), !dbg !54
  %357 = icmp eq i64 %356, 2
  store i1 %357, ptr %46
  %358 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !55
  %359 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %358, i64 0, i32 3
  %360 = load ptr addrspace(1), ptr addrspace(1) %359, align 8
  %361 = bitcast ptr addrspace(1) %360 to ptr addrspace(1)
  %362 = load i1, ptr %46
  %363 = zext i1 %362 to i64
  %364 = or i64 %363, 72057594037927936
  %365 = getelementptr i8, ptr addrspace(1) null, i64 %364
  %366 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %361, i64 0, i64 0
  store ptr addrspace(1) %365, ptr addrspace(1) %366
  %367 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %358, i64 0, i32 1
  store i64 1, ptr addrspace(1) %367
  %368 = bitcast ptr addrspace(1) %358 to ptr addrspace(1)
  %369 = getelementptr i8, ptr addrspace(1) %368, i64 864691128455135236
  store ptr addrspace(1) %369, ptr %47
  %370 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %370), !dbg !56
  store ptr addrspace(1) null, ptr %48
  %371 = load ptr addrspace(1), ptr %c
  %372 = load ptr addrspace(1), ptr %a
  %373 = call i64 @_bal_array_int_compare(ptr addrspace(1) %371, ptr addrspace(1) %372), !dbg !57
  %374 = icmp sge i64 %373, 1
  store i1 %374, ptr %49
  %375 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !58
  %376 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 3
  %377 = load ptr addrspace(1), ptr addrspace(1) %376, align 8
  %378 = bitcast ptr addrspace(1) %377 to ptr addrspace(1)
  %379 = load i1, ptr %49
  %380 = zext i1 %379 to i64
  %381 = or i64 %380, 72057594037927936
  %382 = getelementptr i8, ptr addrspace(1) null, i64 %381
  %383 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %378, i64 0, i64 0
  store ptr addrspace(1) %382, ptr addrspace(1) %383
  %384 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 1
  store i64 1, ptr addrspace(1) %384
  %385 = bitcast ptr addrspace(1) %375 to ptr addrspace(1)
  %386 = getelementptr i8, ptr addrspace(1) %385, i64 864691128455135236
  store ptr addrspace(1) %386, ptr %50
  %387 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %387), !dbg !59
  store ptr addrspace(1) null, ptr %51
  ret void
388:
  %389 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %389), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/comp2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 10, scope: !5)
!10 = !DILocation(line: 6, column: 10, scope: !5)
!11 = !DILocation(line: 7, column: 10, scope: !5)
!12 = !DILocation(line: 9, column: 17, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 10, column: 17, scope: !5)
!16 = !DILocation(line: 10, column: 15, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 11, column: 17, scope: !5)
!19 = !DILocation(line: 11, column: 15, scope: !5)
!20 = !DILocation(line: 11, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 17, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 17, scope: !5)
!25 = !DILocation(line: 14, column: 15, scope: !5)
!26 = !DILocation(line: 14, column: 4, scope: !5)
!27 = !DILocation(line: 15, column: 17, scope: !5)
!28 = !DILocation(line: 15, column: 15, scope: !5)
!29 = !DILocation(line: 15, column: 4, scope: !5)
!30 = !DILocation(line: 16, column: 17, scope: !5)
!31 = !DILocation(line: 16, column: 15, scope: !5)
!32 = !DILocation(line: 16, column: 4, scope: !5)
!33 = !DILocation(line: 17, column: 17, scope: !5)
!34 = !DILocation(line: 17, column: 15, scope: !5)
!35 = !DILocation(line: 17, column: 4, scope: !5)
!36 = !DILocation(line: 20, column: 17, scope: !5)
!37 = !DILocation(line: 20, column: 15, scope: !5)
!38 = !DILocation(line: 20, column: 4, scope: !5)
!39 = !DILocation(line: 21, column: 17, scope: !5)
!40 = !DILocation(line: 21, column: 15, scope: !5)
!41 = !DILocation(line: 21, column: 4, scope: !5)
!42 = !DILocation(line: 22, column: 17, scope: !5)
!43 = !DILocation(line: 22, column: 15, scope: !5)
!44 = !DILocation(line: 22, column: 4, scope: !5)
!45 = !DILocation(line: 23, column: 17, scope: !5)
!46 = !DILocation(line: 23, column: 15, scope: !5)
!47 = !DILocation(line: 23, column: 4, scope: !5)
!48 = !DILocation(line: 25, column: 17, scope: !5)
!49 = !DILocation(line: 25, column: 15, scope: !5)
!50 = !DILocation(line: 25, column: 4, scope: !5)
!51 = !DILocation(line: 26, column: 17, scope: !5)
!52 = !DILocation(line: 26, column: 15, scope: !5)
!53 = !DILocation(line: 26, column: 4, scope: !5)
!54 = !DILocation(line: 27, column: 17, scope: !5)
!55 = !DILocation(line: 27, column: 15, scope: !5)
!56 = !DILocation(line: 27, column: 4, scope: !5)
!57 = !DILocation(line: 28, column: 17, scope: !5)
!58 = !DILocation(line: 28, column: 15, scope: !5)
!59 = !DILocation(line: 28, column: 4, scope: !5)
