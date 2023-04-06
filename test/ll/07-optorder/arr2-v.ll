@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i64 @_bal_array_float_compare(ptr addrspace(1), ptr addrspace(1)) readonly
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
  %64 = alloca i8
  %65 = load ptr, ptr @_bal_stack_guard
  %66 = icmp ult ptr %64, %65
  br i1 %66, label %445, label %67
67:
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = getelementptr inbounds [0 x double], ptr addrspace(1) %71, i64 0, i64 0
  store double 0.1, ptr addrspace(1) %72
  %73 = getelementptr inbounds [0 x double], ptr addrspace(1) %71, i64 0, i64 1
  store double 2.0, ptr addrspace(1) %73
  %74 = getelementptr inbounds [0 x double], ptr addrspace(1) %71, i64 0, i64 2
  store double 3.5, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  store i64 3, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %1
  %78 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %78, ptr %a
  %79 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !10
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.1), !dbg !11
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 0
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %85
  %86 = call ptr addrspace(1) @_bal_float_to_tagged(double 3.5), !dbg !12
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 2
  store ptr addrspace(1) %86, ptr addrspace(1) %87
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 3, ptr addrspace(1) %88
  %89 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %90 = getelementptr i8, ptr addrspace(1) %89, i64 864691128455135236
  store ptr addrspace(1) %90, ptr %2
  %91 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %91, ptr %b
  %92 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !13
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %92, i64 0, i32 3
  %94 = load ptr addrspace(1), ptr addrspace(1) %93, align 8
  %95 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %96 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.1), !dbg !14
  %97 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %95, i64 0, i64 0
  store ptr addrspace(1) %96, ptr addrspace(1) %97
  %98 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %95, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %98
  %99 = call ptr addrspace(1) @_bal_float_to_tagged(double 4.7), !dbg !15
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %95, i64 0, i64 2
  store ptr addrspace(1) %99, ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %92, i64 0, i32 1
  store i64 3, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %92 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %3
  %104 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %104, ptr %c
  %105 = load ptr addrspace(1), ptr %b
  %106 = load ptr addrspace(1), ptr %b
  %107 = call i64 @_bal_array_float_compare(ptr addrspace(1) %105, ptr addrspace(1) %106), !dbg !16
  %108 = icmp eq i64 %107, 0
  store i1 %108, ptr %4
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !17
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = load i1, ptr %4
  %114 = zext i1 %113 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, ptr addrspace(1) null, i64 %115
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 1, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %5
  %121 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %121), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %122 = load ptr addrspace(1), ptr %b
  %123 = load ptr addrspace(1), ptr %b
  %124 = call i64 @_bal_array_float_compare(ptr addrspace(1) %122, ptr addrspace(1) %123), !dbg !19
  %125 = icmp ule i64 %124, 1
  store i1 %125, ptr %7
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !20
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = load i1, ptr %7
  %131 = zext i1 %130 to i64
  %132 = or i64 %131, 72057594037927936
  %133 = getelementptr i8, ptr addrspace(1) null, i64 %132
  %134 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %133, ptr addrspace(1) %134
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %135
  %136 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %137 = getelementptr i8, ptr addrspace(1) %136, i64 864691128455135236
  store ptr addrspace(1) %137, ptr %8
  %138 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %138), !dbg !21
  store ptr addrspace(1) null, ptr %9
  %139 = load ptr addrspace(1), ptr %b
  %140 = load ptr addrspace(1), ptr %b
  %141 = call i64 @_bal_array_float_compare(ptr addrspace(1) %139, ptr addrspace(1) %140), !dbg !22
  %142 = icmp eq i64 %141, 2
  store i1 %142, ptr %10
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !23
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = load i1, ptr %10
  %148 = zext i1 %147 to i64
  %149 = or i64 %148, 72057594037927936
  %150 = getelementptr i8, ptr addrspace(1) null, i64 %149
  %151 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) %150, ptr addrspace(1) %151
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %152
  %153 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %154 = getelementptr i8, ptr addrspace(1) %153, i64 864691128455135236
  store ptr addrspace(1) %154, ptr %11
  %155 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %155), !dbg !24
  store ptr addrspace(1) null, ptr %12
  %156 = load ptr addrspace(1), ptr %b
  %157 = load ptr addrspace(1), ptr %b
  %158 = call i64 @_bal_array_float_compare(ptr addrspace(1) %156, ptr addrspace(1) %157), !dbg !25
  %159 = icmp sge i64 %158, 1
  store i1 %159, ptr %13
  %160 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !26
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = load i1, ptr %13
  %165 = zext i1 %164 to i64
  %166 = or i64 %165, 72057594037927936
  %167 = getelementptr i8, ptr addrspace(1) null, i64 %166
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %14
  %172 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !27
  store ptr addrspace(1) null, ptr %15
  %173 = load ptr addrspace(1), ptr %a
  %174 = load ptr addrspace(1), ptr %b
  %175 = call i64 @_bal_array_float_compare(ptr addrspace(1) %173, ptr addrspace(1) %174), !dbg !28
  %176 = icmp eq i64 %175, 0
  store i1 %176, ptr %16
  %177 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !29
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 3
  %179 = load ptr addrspace(1), ptr addrspace(1) %178, align 8
  %180 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %181 = load i1, ptr %16
  %182 = zext i1 %181 to i64
  %183 = or i64 %182, 72057594037927936
  %184 = getelementptr i8, ptr addrspace(1) null, i64 %183
  %185 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %180, i64 0, i64 0
  store ptr addrspace(1) %184, ptr addrspace(1) %185
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 1
  store i64 1, ptr addrspace(1) %186
  %187 = bitcast ptr addrspace(1) %177 to ptr addrspace(1)
  %188 = getelementptr i8, ptr addrspace(1) %187, i64 864691128455135236
  store ptr addrspace(1) %188, ptr %17
  %189 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %189), !dbg !30
  store ptr addrspace(1) null, ptr %18
  %190 = load ptr addrspace(1), ptr %a
  %191 = load ptr addrspace(1), ptr %b
  %192 = call i64 @_bal_array_float_compare(ptr addrspace(1) %190, ptr addrspace(1) %191), !dbg !31
  %193 = icmp ule i64 %192, 1
  store i1 %193, ptr %19
  %194 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !32
  %195 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 3
  %196 = load ptr addrspace(1), ptr addrspace(1) %195, align 8
  %197 = bitcast ptr addrspace(1) %196 to ptr addrspace(1)
  %198 = load i1, ptr %19
  %199 = zext i1 %198 to i64
  %200 = or i64 %199, 72057594037927936
  %201 = getelementptr i8, ptr addrspace(1) null, i64 %200
  %202 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %197, i64 0, i64 0
  store ptr addrspace(1) %201, ptr addrspace(1) %202
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 1
  store i64 1, ptr addrspace(1) %203
  %204 = bitcast ptr addrspace(1) %194 to ptr addrspace(1)
  %205 = getelementptr i8, ptr addrspace(1) %204, i64 864691128455135236
  store ptr addrspace(1) %205, ptr %20
  %206 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %206), !dbg !33
  store ptr addrspace(1) null, ptr %21
  %207 = load ptr addrspace(1), ptr %a
  %208 = load ptr addrspace(1), ptr %b
  %209 = call i64 @_bal_array_float_compare(ptr addrspace(1) %207, ptr addrspace(1) %208), !dbg !34
  %210 = icmp eq i64 %209, 2
  store i1 %210, ptr %22
  %211 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !35
  %212 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %211, i64 0, i32 3
  %213 = load ptr addrspace(1), ptr addrspace(1) %212, align 8
  %214 = bitcast ptr addrspace(1) %213 to ptr addrspace(1)
  %215 = load i1, ptr %22
  %216 = zext i1 %215 to i64
  %217 = or i64 %216, 72057594037927936
  %218 = getelementptr i8, ptr addrspace(1) null, i64 %217
  %219 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %214, i64 0, i64 0
  store ptr addrspace(1) %218, ptr addrspace(1) %219
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %211, i64 0, i32 1
  store i64 1, ptr addrspace(1) %220
  %221 = bitcast ptr addrspace(1) %211 to ptr addrspace(1)
  %222 = getelementptr i8, ptr addrspace(1) %221, i64 864691128455135236
  store ptr addrspace(1) %222, ptr %23
  %223 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %223), !dbg !36
  store ptr addrspace(1) null, ptr %24
  %224 = load ptr addrspace(1), ptr %a
  %225 = load ptr addrspace(1), ptr %b
  %226 = call i64 @_bal_array_float_compare(ptr addrspace(1) %224, ptr addrspace(1) %225), !dbg !37
  %227 = icmp sge i64 %226, 1
  store i1 %227, ptr %25
  %228 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !38
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 3
  %230 = load ptr addrspace(1), ptr addrspace(1) %229, align 8
  %231 = bitcast ptr addrspace(1) %230 to ptr addrspace(1)
  %232 = load i1, ptr %25
  %233 = zext i1 %232 to i64
  %234 = or i64 %233, 72057594037927936
  %235 = getelementptr i8, ptr addrspace(1) null, i64 %234
  %236 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 0
  store ptr addrspace(1) %235, ptr addrspace(1) %236
  %237 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 1
  store i64 1, ptr addrspace(1) %237
  %238 = bitcast ptr addrspace(1) %228 to ptr addrspace(1)
  %239 = getelementptr i8, ptr addrspace(1) %238, i64 864691128455135236
  store ptr addrspace(1) %239, ptr %26
  %240 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %240), !dbg !39
  store ptr addrspace(1) null, ptr %27
  %241 = load ptr addrspace(1), ptr %b
  %242 = load ptr addrspace(1), ptr %a
  %243 = call i64 @_bal_array_float_compare(ptr addrspace(1) %241, ptr addrspace(1) %242), !dbg !40
  %244 = icmp eq i64 %243, 0
  store i1 %244, ptr %28
  %245 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !41
  %246 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 3
  %247 = load ptr addrspace(1), ptr addrspace(1) %246, align 8
  %248 = bitcast ptr addrspace(1) %247 to ptr addrspace(1)
  %249 = load i1, ptr %28
  %250 = zext i1 %249 to i64
  %251 = or i64 %250, 72057594037927936
  %252 = getelementptr i8, ptr addrspace(1) null, i64 %251
  %253 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %248, i64 0, i64 0
  store ptr addrspace(1) %252, ptr addrspace(1) %253
  %254 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 1
  store i64 1, ptr addrspace(1) %254
  %255 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %256 = getelementptr i8, ptr addrspace(1) %255, i64 864691128455135236
  store ptr addrspace(1) %256, ptr %29
  %257 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %257), !dbg !42
  store ptr addrspace(1) null, ptr %30
  %258 = load ptr addrspace(1), ptr %b
  %259 = load ptr addrspace(1), ptr %a
  %260 = call i64 @_bal_array_float_compare(ptr addrspace(1) %258, ptr addrspace(1) %259), !dbg !43
  %261 = icmp ule i64 %260, 1
  store i1 %261, ptr %31
  %262 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !44
  %263 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %262, i64 0, i32 3
  %264 = load ptr addrspace(1), ptr addrspace(1) %263, align 8
  %265 = bitcast ptr addrspace(1) %264 to ptr addrspace(1)
  %266 = load i1, ptr %31
  %267 = zext i1 %266 to i64
  %268 = or i64 %267, 72057594037927936
  %269 = getelementptr i8, ptr addrspace(1) null, i64 %268
  %270 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %265, i64 0, i64 0
  store ptr addrspace(1) %269, ptr addrspace(1) %270
  %271 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %262, i64 0, i32 1
  store i64 1, ptr addrspace(1) %271
  %272 = bitcast ptr addrspace(1) %262 to ptr addrspace(1)
  %273 = getelementptr i8, ptr addrspace(1) %272, i64 864691128455135236
  store ptr addrspace(1) %273, ptr %32
  %274 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %274), !dbg !45
  store ptr addrspace(1) null, ptr %33
  %275 = load ptr addrspace(1), ptr %b
  %276 = load ptr addrspace(1), ptr %a
  %277 = call i64 @_bal_array_float_compare(ptr addrspace(1) %275, ptr addrspace(1) %276), !dbg !46
  %278 = icmp eq i64 %277, 2
  store i1 %278, ptr %34
  %279 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !47
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 3
  %281 = load ptr addrspace(1), ptr addrspace(1) %280, align 8
  %282 = bitcast ptr addrspace(1) %281 to ptr addrspace(1)
  %283 = load i1, ptr %34
  %284 = zext i1 %283 to i64
  %285 = or i64 %284, 72057594037927936
  %286 = getelementptr i8, ptr addrspace(1) null, i64 %285
  %287 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %282, i64 0, i64 0
  store ptr addrspace(1) %286, ptr addrspace(1) %287
  %288 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 1
  store i64 1, ptr addrspace(1) %288
  %289 = bitcast ptr addrspace(1) %279 to ptr addrspace(1)
  %290 = getelementptr i8, ptr addrspace(1) %289, i64 864691128455135236
  store ptr addrspace(1) %290, ptr %35
  %291 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %291), !dbg !48
  store ptr addrspace(1) null, ptr %36
  %292 = load ptr addrspace(1), ptr %b
  %293 = load ptr addrspace(1), ptr %a
  %294 = call i64 @_bal_array_float_compare(ptr addrspace(1) %292, ptr addrspace(1) %293), !dbg !49
  %295 = icmp sge i64 %294, 1
  store i1 %295, ptr %37
  %296 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !50
  %297 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %296, i64 0, i32 3
  %298 = load ptr addrspace(1), ptr addrspace(1) %297, align 8
  %299 = bitcast ptr addrspace(1) %298 to ptr addrspace(1)
  %300 = load i1, ptr %37
  %301 = zext i1 %300 to i64
  %302 = or i64 %301, 72057594037927936
  %303 = getelementptr i8, ptr addrspace(1) null, i64 %302
  %304 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %299, i64 0, i64 0
  store ptr addrspace(1) %303, ptr addrspace(1) %304
  %305 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %296, i64 0, i32 1
  store i64 1, ptr addrspace(1) %305
  %306 = bitcast ptr addrspace(1) %296 to ptr addrspace(1)
  %307 = getelementptr i8, ptr addrspace(1) %306, i64 864691128455135236
  store ptr addrspace(1) %307, ptr %38
  %308 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %308), !dbg !51
  store ptr addrspace(1) null, ptr %39
  %309 = load ptr addrspace(1), ptr %b
  %310 = load ptr addrspace(1), ptr %c
  %311 = call i64 @_bal_array_float_compare(ptr addrspace(1) %309, ptr addrspace(1) %310), !dbg !52
  %312 = icmp eq i64 %311, 0
  store i1 %312, ptr %40
  %313 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !53
  %314 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %313, i64 0, i32 3
  %315 = load ptr addrspace(1), ptr addrspace(1) %314, align 8
  %316 = bitcast ptr addrspace(1) %315 to ptr addrspace(1)
  %317 = load i1, ptr %40
  %318 = zext i1 %317 to i64
  %319 = or i64 %318, 72057594037927936
  %320 = getelementptr i8, ptr addrspace(1) null, i64 %319
  %321 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %316, i64 0, i64 0
  store ptr addrspace(1) %320, ptr addrspace(1) %321
  %322 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %313, i64 0, i32 1
  store i64 1, ptr addrspace(1) %322
  %323 = bitcast ptr addrspace(1) %313 to ptr addrspace(1)
  %324 = getelementptr i8, ptr addrspace(1) %323, i64 864691128455135236
  store ptr addrspace(1) %324, ptr %41
  %325 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %325), !dbg !54
  store ptr addrspace(1) null, ptr %42
  %326 = load ptr addrspace(1), ptr %b
  %327 = load ptr addrspace(1), ptr %c
  %328 = call i64 @_bal_array_float_compare(ptr addrspace(1) %326, ptr addrspace(1) %327), !dbg !55
  %329 = icmp ule i64 %328, 1
  store i1 %329, ptr %43
  %330 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !56
  %331 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %330, i64 0, i32 3
  %332 = load ptr addrspace(1), ptr addrspace(1) %331, align 8
  %333 = bitcast ptr addrspace(1) %332 to ptr addrspace(1)
  %334 = load i1, ptr %43
  %335 = zext i1 %334 to i64
  %336 = or i64 %335, 72057594037927936
  %337 = getelementptr i8, ptr addrspace(1) null, i64 %336
  %338 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %333, i64 0, i64 0
  store ptr addrspace(1) %337, ptr addrspace(1) %338
  %339 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %330, i64 0, i32 1
  store i64 1, ptr addrspace(1) %339
  %340 = bitcast ptr addrspace(1) %330 to ptr addrspace(1)
  %341 = getelementptr i8, ptr addrspace(1) %340, i64 864691128455135236
  store ptr addrspace(1) %341, ptr %44
  %342 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %342), !dbg !57
  store ptr addrspace(1) null, ptr %45
  %343 = load ptr addrspace(1), ptr %b
  %344 = load ptr addrspace(1), ptr %c
  %345 = call i64 @_bal_array_float_compare(ptr addrspace(1) %343, ptr addrspace(1) %344), !dbg !58
  %346 = icmp eq i64 %345, 2
  store i1 %346, ptr %46
  %347 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !59
  %348 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %347, i64 0, i32 3
  %349 = load ptr addrspace(1), ptr addrspace(1) %348, align 8
  %350 = bitcast ptr addrspace(1) %349 to ptr addrspace(1)
  %351 = load i1, ptr %46
  %352 = zext i1 %351 to i64
  %353 = or i64 %352, 72057594037927936
  %354 = getelementptr i8, ptr addrspace(1) null, i64 %353
  %355 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %350, i64 0, i64 0
  store ptr addrspace(1) %354, ptr addrspace(1) %355
  %356 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %347, i64 0, i32 1
  store i64 1, ptr addrspace(1) %356
  %357 = bitcast ptr addrspace(1) %347 to ptr addrspace(1)
  %358 = getelementptr i8, ptr addrspace(1) %357, i64 864691128455135236
  store ptr addrspace(1) %358, ptr %47
  %359 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %359), !dbg !60
  store ptr addrspace(1) null, ptr %48
  %360 = load ptr addrspace(1), ptr %b
  %361 = load ptr addrspace(1), ptr %c
  %362 = call i64 @_bal_array_float_compare(ptr addrspace(1) %360, ptr addrspace(1) %361), !dbg !61
  %363 = icmp sge i64 %362, 1
  store i1 %363, ptr %49
  %364 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !62
  %365 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %364, i64 0, i32 3
  %366 = load ptr addrspace(1), ptr addrspace(1) %365, align 8
  %367 = bitcast ptr addrspace(1) %366 to ptr addrspace(1)
  %368 = load i1, ptr %49
  %369 = zext i1 %368 to i64
  %370 = or i64 %369, 72057594037927936
  %371 = getelementptr i8, ptr addrspace(1) null, i64 %370
  %372 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %367, i64 0, i64 0
  store ptr addrspace(1) %371, ptr addrspace(1) %372
  %373 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %364, i64 0, i32 1
  store i64 1, ptr addrspace(1) %373
  %374 = bitcast ptr addrspace(1) %364 to ptr addrspace(1)
  %375 = getelementptr i8, ptr addrspace(1) %374, i64 864691128455135236
  store ptr addrspace(1) %375, ptr %50
  %376 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %376), !dbg !63
  store ptr addrspace(1) null, ptr %51
  %377 = load ptr addrspace(1), ptr %c
  %378 = load ptr addrspace(1), ptr %b
  %379 = call i64 @_bal_array_float_compare(ptr addrspace(1) %377, ptr addrspace(1) %378), !dbg !64
  %380 = icmp eq i64 %379, 0
  store i1 %380, ptr %52
  %381 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !65
  %382 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %381, i64 0, i32 3
  %383 = load ptr addrspace(1), ptr addrspace(1) %382, align 8
  %384 = bitcast ptr addrspace(1) %383 to ptr addrspace(1)
  %385 = load i1, ptr %52
  %386 = zext i1 %385 to i64
  %387 = or i64 %386, 72057594037927936
  %388 = getelementptr i8, ptr addrspace(1) null, i64 %387
  %389 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %384, i64 0, i64 0
  store ptr addrspace(1) %388, ptr addrspace(1) %389
  %390 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %381, i64 0, i32 1
  store i64 1, ptr addrspace(1) %390
  %391 = bitcast ptr addrspace(1) %381 to ptr addrspace(1)
  %392 = getelementptr i8, ptr addrspace(1) %391, i64 864691128455135236
  store ptr addrspace(1) %392, ptr %53
  %393 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %393), !dbg !66
  store ptr addrspace(1) null, ptr %54
  %394 = load ptr addrspace(1), ptr %c
  %395 = load ptr addrspace(1), ptr %b
  %396 = call i64 @_bal_array_float_compare(ptr addrspace(1) %394, ptr addrspace(1) %395), !dbg !67
  %397 = icmp ule i64 %396, 1
  store i1 %397, ptr %55
  %398 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !68
  %399 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %398, i64 0, i32 3
  %400 = load ptr addrspace(1), ptr addrspace(1) %399, align 8
  %401 = bitcast ptr addrspace(1) %400 to ptr addrspace(1)
  %402 = load i1, ptr %55
  %403 = zext i1 %402 to i64
  %404 = or i64 %403, 72057594037927936
  %405 = getelementptr i8, ptr addrspace(1) null, i64 %404
  %406 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %401, i64 0, i64 0
  store ptr addrspace(1) %405, ptr addrspace(1) %406
  %407 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %398, i64 0, i32 1
  store i64 1, ptr addrspace(1) %407
  %408 = bitcast ptr addrspace(1) %398 to ptr addrspace(1)
  %409 = getelementptr i8, ptr addrspace(1) %408, i64 864691128455135236
  store ptr addrspace(1) %409, ptr %56
  %410 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %410), !dbg !69
  store ptr addrspace(1) null, ptr %57
  %411 = load ptr addrspace(1), ptr %c
  %412 = load ptr addrspace(1), ptr %b
  %413 = call i64 @_bal_array_float_compare(ptr addrspace(1) %411, ptr addrspace(1) %412), !dbg !70
  %414 = icmp eq i64 %413, 2
  store i1 %414, ptr %58
  %415 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !71
  %416 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %415, i64 0, i32 3
  %417 = load ptr addrspace(1), ptr addrspace(1) %416, align 8
  %418 = bitcast ptr addrspace(1) %417 to ptr addrspace(1)
  %419 = load i1, ptr %58
  %420 = zext i1 %419 to i64
  %421 = or i64 %420, 72057594037927936
  %422 = getelementptr i8, ptr addrspace(1) null, i64 %421
  %423 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %418, i64 0, i64 0
  store ptr addrspace(1) %422, ptr addrspace(1) %423
  %424 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %415, i64 0, i32 1
  store i64 1, ptr addrspace(1) %424
  %425 = bitcast ptr addrspace(1) %415 to ptr addrspace(1)
  %426 = getelementptr i8, ptr addrspace(1) %425, i64 864691128455135236
  store ptr addrspace(1) %426, ptr %59
  %427 = load ptr addrspace(1), ptr %59
  call void @_Bb02ioprintln(ptr addrspace(1) %427), !dbg !72
  store ptr addrspace(1) null, ptr %60
  %428 = load ptr addrspace(1), ptr %c
  %429 = load ptr addrspace(1), ptr %b
  %430 = call i64 @_bal_array_float_compare(ptr addrspace(1) %428, ptr addrspace(1) %429), !dbg !73
  %431 = icmp sge i64 %430, 1
  store i1 %431, ptr %61
  %432 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !74
  %433 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %432, i64 0, i32 3
  %434 = load ptr addrspace(1), ptr addrspace(1) %433, align 8
  %435 = bitcast ptr addrspace(1) %434 to ptr addrspace(1)
  %436 = load i1, ptr %61
  %437 = zext i1 %436 to i64
  %438 = or i64 %437, 72057594037927936
  %439 = getelementptr i8, ptr addrspace(1) null, i64 %438
  %440 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %435, i64 0, i64 0
  store ptr addrspace(1) %439, ptr addrspace(1) %440
  %441 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %432, i64 0, i32 1
  store i64 1, ptr addrspace(1) %441
  %442 = bitcast ptr addrspace(1) %432 to ptr addrspace(1)
  %443 = getelementptr i8, ptr addrspace(1) %442, i64 864691128455135236
  store ptr addrspace(1) %443, ptr %62
  %444 = load ptr addrspace(1), ptr %62
  call void @_Bb02ioprintln(ptr addrspace(1) %444), !dbg !75
  store ptr addrspace(1) null, ptr %63
  ret void
445:
  %446 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %446), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/arr2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 13, scope: !5)
!10 = !DILocation(line: 5, column: 14, scope: !5)
!11 = !DILocation(line: 5, column: 14, scope: !5)
!12 = !DILocation(line: 5, column: 14, scope: !5)
!13 = !DILocation(line: 6, column: 14, scope: !5)
!14 = !DILocation(line: 6, column: 14, scope: !5)
!15 = !DILocation(line: 6, column: 14, scope: !5)
!16 = !DILocation(line: 8, column: 14, scope: !5)
!17 = !DILocation(line: 8, column: 12, scope: !5)
!18 = !DILocation(line: 8, column: 1, scope: !5)
!19 = !DILocation(line: 9, column: 14, scope: !5)
!20 = !DILocation(line: 9, column: 12, scope: !5)
!21 = !DILocation(line: 9, column: 1, scope: !5)
!22 = !DILocation(line: 10, column: 14, scope: !5)
!23 = !DILocation(line: 10, column: 12, scope: !5)
!24 = !DILocation(line: 10, column: 1, scope: !5)
!25 = !DILocation(line: 11, column: 14, scope: !5)
!26 = !DILocation(line: 11, column: 12, scope: !5)
!27 = !DILocation(line: 11, column: 1, scope: !5)
!28 = !DILocation(line: 13, column: 14, scope: !5)
!29 = !DILocation(line: 13, column: 12, scope: !5)
!30 = !DILocation(line: 13, column: 1, scope: !5)
!31 = !DILocation(line: 14, column: 14, scope: !5)
!32 = !DILocation(line: 14, column: 12, scope: !5)
!33 = !DILocation(line: 14, column: 1, scope: !5)
!34 = !DILocation(line: 15, column: 14, scope: !5)
!35 = !DILocation(line: 15, column: 12, scope: !5)
!36 = !DILocation(line: 15, column: 1, scope: !5)
!37 = !DILocation(line: 16, column: 14, scope: !5)
!38 = !DILocation(line: 16, column: 12, scope: !5)
!39 = !DILocation(line: 16, column: 1, scope: !5)
!40 = !DILocation(line: 18, column: 14, scope: !5)
!41 = !DILocation(line: 18, column: 12, scope: !5)
!42 = !DILocation(line: 18, column: 1, scope: !5)
!43 = !DILocation(line: 19, column: 14, scope: !5)
!44 = !DILocation(line: 19, column: 12, scope: !5)
!45 = !DILocation(line: 19, column: 1, scope: !5)
!46 = !DILocation(line: 20, column: 14, scope: !5)
!47 = !DILocation(line: 20, column: 12, scope: !5)
!48 = !DILocation(line: 20, column: 1, scope: !5)
!49 = !DILocation(line: 21, column: 14, scope: !5)
!50 = !DILocation(line: 21, column: 12, scope: !5)
!51 = !DILocation(line: 21, column: 1, scope: !5)
!52 = !DILocation(line: 23, column: 14, scope: !5)
!53 = !DILocation(line: 23, column: 12, scope: !5)
!54 = !DILocation(line: 23, column: 1, scope: !5)
!55 = !DILocation(line: 24, column: 14, scope: !5)
!56 = !DILocation(line: 24, column: 12, scope: !5)
!57 = !DILocation(line: 24, column: 1, scope: !5)
!58 = !DILocation(line: 25, column: 14, scope: !5)
!59 = !DILocation(line: 25, column: 12, scope: !5)
!60 = !DILocation(line: 25, column: 1, scope: !5)
!61 = !DILocation(line: 26, column: 14, scope: !5)
!62 = !DILocation(line: 26, column: 12, scope: !5)
!63 = !DILocation(line: 26, column: 1, scope: !5)
!64 = !DILocation(line: 28, column: 14, scope: !5)
!65 = !DILocation(line: 28, column: 12, scope: !5)
!66 = !DILocation(line: 28, column: 1, scope: !5)
!67 = !DILocation(line: 29, column: 14, scope: !5)
!68 = !DILocation(line: 29, column: 12, scope: !5)
!69 = !DILocation(line: 29, column: 1, scope: !5)
!70 = !DILocation(line: 30, column: 14, scope: !5)
!71 = !DILocation(line: 30, column: 12, scope: !5)
!72 = !DILocation(line: 30, column: 1, scope: !5)
!73 = !DILocation(line: 31, column: 14, scope: !5)
!74 = !DILocation(line: 31, column: 12, scope: !5)
!75 = !DILocation(line: 31, column: 1, scope: !5)
