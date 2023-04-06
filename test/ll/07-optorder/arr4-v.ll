@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_boolean_compare(ptr addrspace(1), ptr addrspace(1)) readonly
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
  br i1 %66, label %462, label %67
67:
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = zext i1 0 to i64
  %73 = or i64 %72, 72057594037927936
  %74 = getelementptr i8, ptr addrspace(1) null, i64 %73
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = zext i1 1 to i64
  %77 = or i64 %76, 72057594037927936
  %78 = getelementptr i8, ptr addrspace(1) null, i64 %77
  %79 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 1
  store ptr addrspace(1) %78, ptr addrspace(1) %79
  %80 = zext i1 0 to i64
  %81 = or i64 %80, 72057594037927936
  %82 = getelementptr i8, ptr addrspace(1) null, i64 %81
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 2
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  store i64 3, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %1
  %87 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %87, ptr %a
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !10
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %90 = load ptr addrspace(1), ptr addrspace(1) %89, align 8
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = zext i1 0 to i64
  %93 = or i64 %92, 72057594037927936
  %94 = getelementptr i8, ptr addrspace(1) null, i64 %93
  %95 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 0
  store ptr addrspace(1) %94, ptr addrspace(1) %95
  %96 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %96
  %97 = zext i1 0 to i64
  %98 = or i64 %97, 72057594037927936
  %99 = getelementptr i8, ptr addrspace(1) null, i64 %98
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 2
  store ptr addrspace(1) %99, ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  store i64 3, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %2
  %104 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %104, ptr %b
  %105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !11
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 3
  %107 = load ptr addrspace(1), ptr addrspace(1) %106, align 8
  %108 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %109 = zext i1 0 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, ptr addrspace(1) null, i64 %110
  %112 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 0
  store ptr addrspace(1) %111, ptr addrspace(1) %112
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %113
  %114 = zext i1 1 to i64
  %115 = or i64 %114, 72057594037927936
  %116 = getelementptr i8, ptr addrspace(1) null, i64 %115
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 2
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  store i64 3, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %3
  %121 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %121, ptr %c
  %122 = load ptr addrspace(1), ptr %b
  %123 = load ptr addrspace(1), ptr %b
  %124 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %122, ptr addrspace(1) %123), !dbg !12
  %125 = icmp eq i64 %124, 0
  store i1 %125, ptr %4
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = load i1, ptr %4
  %131 = zext i1 %130 to i64
  %132 = or i64 %131, 72057594037927936
  %133 = getelementptr i8, ptr addrspace(1) null, i64 %132
  %134 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %133, ptr addrspace(1) %134
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %135
  %136 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %137 = getelementptr i8, ptr addrspace(1) %136, i64 864691128455135236
  store ptr addrspace(1) %137, ptr %5
  %138 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %138), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %139 = load ptr addrspace(1), ptr %b
  %140 = load ptr addrspace(1), ptr %b
  %141 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %139, ptr addrspace(1) %140), !dbg !15
  %142 = icmp ule i64 %141, 1
  store i1 %142, ptr %7
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = load i1, ptr %7
  %148 = zext i1 %147 to i64
  %149 = or i64 %148, 72057594037927936
  %150 = getelementptr i8, ptr addrspace(1) null, i64 %149
  %151 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) %150, ptr addrspace(1) %151
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %152
  %153 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %154 = getelementptr i8, ptr addrspace(1) %153, i64 864691128455135236
  store ptr addrspace(1) %154, ptr %8
  %155 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %155), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %156 = load ptr addrspace(1), ptr %b
  %157 = load ptr addrspace(1), ptr %b
  %158 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %156, ptr addrspace(1) %157), !dbg !18
  %159 = icmp eq i64 %158, 2
  store i1 %159, ptr %10
  %160 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = load i1, ptr %10
  %165 = zext i1 %164 to i64
  %166 = or i64 %165, 72057594037927936
  %167 = getelementptr i8, ptr addrspace(1) null, i64 %166
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %11
  %172 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %173 = load ptr addrspace(1), ptr %b
  %174 = load ptr addrspace(1), ptr %b
  %175 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %173, ptr addrspace(1) %174), !dbg !21
  %176 = icmp sge i64 %175, 1
  store i1 %176, ptr %13
  %177 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !22
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 3
  %179 = load ptr addrspace(1), ptr addrspace(1) %178, align 8
  %180 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %181 = load i1, ptr %13
  %182 = zext i1 %181 to i64
  %183 = or i64 %182, 72057594037927936
  %184 = getelementptr i8, ptr addrspace(1) null, i64 %183
  %185 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %180, i64 0, i64 0
  store ptr addrspace(1) %184, ptr addrspace(1) %185
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 1
  store i64 1, ptr addrspace(1) %186
  %187 = bitcast ptr addrspace(1) %177 to ptr addrspace(1)
  %188 = getelementptr i8, ptr addrspace(1) %187, i64 864691128455135236
  store ptr addrspace(1) %188, ptr %14
  %189 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %189), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %190 = load ptr addrspace(1), ptr %a
  %191 = load ptr addrspace(1), ptr %b
  %192 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %190, ptr addrspace(1) %191), !dbg !24
  %193 = icmp eq i64 %192, 0
  store i1 %193, ptr %16
  %194 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !25
  %195 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 3
  %196 = load ptr addrspace(1), ptr addrspace(1) %195, align 8
  %197 = bitcast ptr addrspace(1) %196 to ptr addrspace(1)
  %198 = load i1, ptr %16
  %199 = zext i1 %198 to i64
  %200 = or i64 %199, 72057594037927936
  %201 = getelementptr i8, ptr addrspace(1) null, i64 %200
  %202 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %197, i64 0, i64 0
  store ptr addrspace(1) %201, ptr addrspace(1) %202
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 1
  store i64 1, ptr addrspace(1) %203
  %204 = bitcast ptr addrspace(1) %194 to ptr addrspace(1)
  %205 = getelementptr i8, ptr addrspace(1) %204, i64 864691128455135236
  store ptr addrspace(1) %205, ptr %17
  %206 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %206), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %207 = load ptr addrspace(1), ptr %a
  %208 = load ptr addrspace(1), ptr %b
  %209 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %207, ptr addrspace(1) %208), !dbg !27
  %210 = icmp ule i64 %209, 1
  store i1 %210, ptr %19
  %211 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !28
  %212 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %211, i64 0, i32 3
  %213 = load ptr addrspace(1), ptr addrspace(1) %212, align 8
  %214 = bitcast ptr addrspace(1) %213 to ptr addrspace(1)
  %215 = load i1, ptr %19
  %216 = zext i1 %215 to i64
  %217 = or i64 %216, 72057594037927936
  %218 = getelementptr i8, ptr addrspace(1) null, i64 %217
  %219 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %214, i64 0, i64 0
  store ptr addrspace(1) %218, ptr addrspace(1) %219
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %211, i64 0, i32 1
  store i64 1, ptr addrspace(1) %220
  %221 = bitcast ptr addrspace(1) %211 to ptr addrspace(1)
  %222 = getelementptr i8, ptr addrspace(1) %221, i64 864691128455135236
  store ptr addrspace(1) %222, ptr %20
  %223 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %223), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %224 = load ptr addrspace(1), ptr %a
  %225 = load ptr addrspace(1), ptr %b
  %226 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %224, ptr addrspace(1) %225), !dbg !30
  %227 = icmp eq i64 %226, 2
  store i1 %227, ptr %22
  %228 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !31
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 3
  %230 = load ptr addrspace(1), ptr addrspace(1) %229, align 8
  %231 = bitcast ptr addrspace(1) %230 to ptr addrspace(1)
  %232 = load i1, ptr %22
  %233 = zext i1 %232 to i64
  %234 = or i64 %233, 72057594037927936
  %235 = getelementptr i8, ptr addrspace(1) null, i64 %234
  %236 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 0
  store ptr addrspace(1) %235, ptr addrspace(1) %236
  %237 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 1
  store i64 1, ptr addrspace(1) %237
  %238 = bitcast ptr addrspace(1) %228 to ptr addrspace(1)
  %239 = getelementptr i8, ptr addrspace(1) %238, i64 864691128455135236
  store ptr addrspace(1) %239, ptr %23
  %240 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %240), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %241 = load ptr addrspace(1), ptr %a
  %242 = load ptr addrspace(1), ptr %b
  %243 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %241, ptr addrspace(1) %242), !dbg !33
  %244 = icmp sge i64 %243, 1
  store i1 %244, ptr %25
  %245 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !34
  %246 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 3
  %247 = load ptr addrspace(1), ptr addrspace(1) %246, align 8
  %248 = bitcast ptr addrspace(1) %247 to ptr addrspace(1)
  %249 = load i1, ptr %25
  %250 = zext i1 %249 to i64
  %251 = or i64 %250, 72057594037927936
  %252 = getelementptr i8, ptr addrspace(1) null, i64 %251
  %253 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %248, i64 0, i64 0
  store ptr addrspace(1) %252, ptr addrspace(1) %253
  %254 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 1
  store i64 1, ptr addrspace(1) %254
  %255 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %256 = getelementptr i8, ptr addrspace(1) %255, i64 864691128455135236
  store ptr addrspace(1) %256, ptr %26
  %257 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %257), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %258 = load ptr addrspace(1), ptr %b
  %259 = load ptr addrspace(1), ptr %a
  %260 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %258, ptr addrspace(1) %259), !dbg !36
  %261 = icmp eq i64 %260, 0
  store i1 %261, ptr %28
  %262 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !37
  %263 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %262, i64 0, i32 3
  %264 = load ptr addrspace(1), ptr addrspace(1) %263, align 8
  %265 = bitcast ptr addrspace(1) %264 to ptr addrspace(1)
  %266 = load i1, ptr %28
  %267 = zext i1 %266 to i64
  %268 = or i64 %267, 72057594037927936
  %269 = getelementptr i8, ptr addrspace(1) null, i64 %268
  %270 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %265, i64 0, i64 0
  store ptr addrspace(1) %269, ptr addrspace(1) %270
  %271 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %262, i64 0, i32 1
  store i64 1, ptr addrspace(1) %271
  %272 = bitcast ptr addrspace(1) %262 to ptr addrspace(1)
  %273 = getelementptr i8, ptr addrspace(1) %272, i64 864691128455135236
  store ptr addrspace(1) %273, ptr %29
  %274 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %274), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %275 = load ptr addrspace(1), ptr %b
  %276 = load ptr addrspace(1), ptr %a
  %277 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %275, ptr addrspace(1) %276), !dbg !39
  %278 = icmp ule i64 %277, 1
  store i1 %278, ptr %31
  %279 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !40
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 3
  %281 = load ptr addrspace(1), ptr addrspace(1) %280, align 8
  %282 = bitcast ptr addrspace(1) %281 to ptr addrspace(1)
  %283 = load i1, ptr %31
  %284 = zext i1 %283 to i64
  %285 = or i64 %284, 72057594037927936
  %286 = getelementptr i8, ptr addrspace(1) null, i64 %285
  %287 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %282, i64 0, i64 0
  store ptr addrspace(1) %286, ptr addrspace(1) %287
  %288 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 1
  store i64 1, ptr addrspace(1) %288
  %289 = bitcast ptr addrspace(1) %279 to ptr addrspace(1)
  %290 = getelementptr i8, ptr addrspace(1) %289, i64 864691128455135236
  store ptr addrspace(1) %290, ptr %32
  %291 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %291), !dbg !41
  store ptr addrspace(1) null, ptr %33
  %292 = load ptr addrspace(1), ptr %b
  %293 = load ptr addrspace(1), ptr %a
  %294 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %292, ptr addrspace(1) %293), !dbg !42
  %295 = icmp eq i64 %294, 2
  store i1 %295, ptr %34
  %296 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !43
  %297 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %296, i64 0, i32 3
  %298 = load ptr addrspace(1), ptr addrspace(1) %297, align 8
  %299 = bitcast ptr addrspace(1) %298 to ptr addrspace(1)
  %300 = load i1, ptr %34
  %301 = zext i1 %300 to i64
  %302 = or i64 %301, 72057594037927936
  %303 = getelementptr i8, ptr addrspace(1) null, i64 %302
  %304 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %299, i64 0, i64 0
  store ptr addrspace(1) %303, ptr addrspace(1) %304
  %305 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %296, i64 0, i32 1
  store i64 1, ptr addrspace(1) %305
  %306 = bitcast ptr addrspace(1) %296 to ptr addrspace(1)
  %307 = getelementptr i8, ptr addrspace(1) %306, i64 864691128455135236
  store ptr addrspace(1) %307, ptr %35
  %308 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %308), !dbg !44
  store ptr addrspace(1) null, ptr %36
  %309 = load ptr addrspace(1), ptr %b
  %310 = load ptr addrspace(1), ptr %a
  %311 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %309, ptr addrspace(1) %310), !dbg !45
  %312 = icmp sge i64 %311, 1
  store i1 %312, ptr %37
  %313 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !46
  %314 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %313, i64 0, i32 3
  %315 = load ptr addrspace(1), ptr addrspace(1) %314, align 8
  %316 = bitcast ptr addrspace(1) %315 to ptr addrspace(1)
  %317 = load i1, ptr %37
  %318 = zext i1 %317 to i64
  %319 = or i64 %318, 72057594037927936
  %320 = getelementptr i8, ptr addrspace(1) null, i64 %319
  %321 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %316, i64 0, i64 0
  store ptr addrspace(1) %320, ptr addrspace(1) %321
  %322 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %313, i64 0, i32 1
  store i64 1, ptr addrspace(1) %322
  %323 = bitcast ptr addrspace(1) %313 to ptr addrspace(1)
  %324 = getelementptr i8, ptr addrspace(1) %323, i64 864691128455135236
  store ptr addrspace(1) %324, ptr %38
  %325 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %325), !dbg !47
  store ptr addrspace(1) null, ptr %39
  %326 = load ptr addrspace(1), ptr %b
  %327 = load ptr addrspace(1), ptr %c
  %328 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %326, ptr addrspace(1) %327), !dbg !48
  %329 = icmp eq i64 %328, 0
  store i1 %329, ptr %40
  %330 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !49
  %331 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %330, i64 0, i32 3
  %332 = load ptr addrspace(1), ptr addrspace(1) %331, align 8
  %333 = bitcast ptr addrspace(1) %332 to ptr addrspace(1)
  %334 = load i1, ptr %40
  %335 = zext i1 %334 to i64
  %336 = or i64 %335, 72057594037927936
  %337 = getelementptr i8, ptr addrspace(1) null, i64 %336
  %338 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %333, i64 0, i64 0
  store ptr addrspace(1) %337, ptr addrspace(1) %338
  %339 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %330, i64 0, i32 1
  store i64 1, ptr addrspace(1) %339
  %340 = bitcast ptr addrspace(1) %330 to ptr addrspace(1)
  %341 = getelementptr i8, ptr addrspace(1) %340, i64 864691128455135236
  store ptr addrspace(1) %341, ptr %41
  %342 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %342), !dbg !50
  store ptr addrspace(1) null, ptr %42
  %343 = load ptr addrspace(1), ptr %b
  %344 = load ptr addrspace(1), ptr %c
  %345 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %343, ptr addrspace(1) %344), !dbg !51
  %346 = icmp ule i64 %345, 1
  store i1 %346, ptr %43
  %347 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !52
  %348 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %347, i64 0, i32 3
  %349 = load ptr addrspace(1), ptr addrspace(1) %348, align 8
  %350 = bitcast ptr addrspace(1) %349 to ptr addrspace(1)
  %351 = load i1, ptr %43
  %352 = zext i1 %351 to i64
  %353 = or i64 %352, 72057594037927936
  %354 = getelementptr i8, ptr addrspace(1) null, i64 %353
  %355 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %350, i64 0, i64 0
  store ptr addrspace(1) %354, ptr addrspace(1) %355
  %356 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %347, i64 0, i32 1
  store i64 1, ptr addrspace(1) %356
  %357 = bitcast ptr addrspace(1) %347 to ptr addrspace(1)
  %358 = getelementptr i8, ptr addrspace(1) %357, i64 864691128455135236
  store ptr addrspace(1) %358, ptr %44
  %359 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %359), !dbg !53
  store ptr addrspace(1) null, ptr %45
  %360 = load ptr addrspace(1), ptr %b
  %361 = load ptr addrspace(1), ptr %c
  %362 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %360, ptr addrspace(1) %361), !dbg !54
  %363 = icmp eq i64 %362, 2
  store i1 %363, ptr %46
  %364 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !55
  %365 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %364, i64 0, i32 3
  %366 = load ptr addrspace(1), ptr addrspace(1) %365, align 8
  %367 = bitcast ptr addrspace(1) %366 to ptr addrspace(1)
  %368 = load i1, ptr %46
  %369 = zext i1 %368 to i64
  %370 = or i64 %369, 72057594037927936
  %371 = getelementptr i8, ptr addrspace(1) null, i64 %370
  %372 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %367, i64 0, i64 0
  store ptr addrspace(1) %371, ptr addrspace(1) %372
  %373 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %364, i64 0, i32 1
  store i64 1, ptr addrspace(1) %373
  %374 = bitcast ptr addrspace(1) %364 to ptr addrspace(1)
  %375 = getelementptr i8, ptr addrspace(1) %374, i64 864691128455135236
  store ptr addrspace(1) %375, ptr %47
  %376 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %376), !dbg !56
  store ptr addrspace(1) null, ptr %48
  %377 = load ptr addrspace(1), ptr %b
  %378 = load ptr addrspace(1), ptr %c
  %379 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %377, ptr addrspace(1) %378), !dbg !57
  %380 = icmp sge i64 %379, 1
  store i1 %380, ptr %49
  %381 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !58
  %382 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %381, i64 0, i32 3
  %383 = load ptr addrspace(1), ptr addrspace(1) %382, align 8
  %384 = bitcast ptr addrspace(1) %383 to ptr addrspace(1)
  %385 = load i1, ptr %49
  %386 = zext i1 %385 to i64
  %387 = or i64 %386, 72057594037927936
  %388 = getelementptr i8, ptr addrspace(1) null, i64 %387
  %389 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %384, i64 0, i64 0
  store ptr addrspace(1) %388, ptr addrspace(1) %389
  %390 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %381, i64 0, i32 1
  store i64 1, ptr addrspace(1) %390
  %391 = bitcast ptr addrspace(1) %381 to ptr addrspace(1)
  %392 = getelementptr i8, ptr addrspace(1) %391, i64 864691128455135236
  store ptr addrspace(1) %392, ptr %50
  %393 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %393), !dbg !59
  store ptr addrspace(1) null, ptr %51
  %394 = load ptr addrspace(1), ptr %c
  %395 = load ptr addrspace(1), ptr %b
  %396 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %394, ptr addrspace(1) %395), !dbg !60
  %397 = icmp eq i64 %396, 0
  store i1 %397, ptr %52
  %398 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !61
  %399 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %398, i64 0, i32 3
  %400 = load ptr addrspace(1), ptr addrspace(1) %399, align 8
  %401 = bitcast ptr addrspace(1) %400 to ptr addrspace(1)
  %402 = load i1, ptr %52
  %403 = zext i1 %402 to i64
  %404 = or i64 %403, 72057594037927936
  %405 = getelementptr i8, ptr addrspace(1) null, i64 %404
  %406 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %401, i64 0, i64 0
  store ptr addrspace(1) %405, ptr addrspace(1) %406
  %407 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %398, i64 0, i32 1
  store i64 1, ptr addrspace(1) %407
  %408 = bitcast ptr addrspace(1) %398 to ptr addrspace(1)
  %409 = getelementptr i8, ptr addrspace(1) %408, i64 864691128455135236
  store ptr addrspace(1) %409, ptr %53
  %410 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %410), !dbg !62
  store ptr addrspace(1) null, ptr %54
  %411 = load ptr addrspace(1), ptr %c
  %412 = load ptr addrspace(1), ptr %b
  %413 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %411, ptr addrspace(1) %412), !dbg !63
  %414 = icmp ule i64 %413, 1
  store i1 %414, ptr %55
  %415 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !64
  %416 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %415, i64 0, i32 3
  %417 = load ptr addrspace(1), ptr addrspace(1) %416, align 8
  %418 = bitcast ptr addrspace(1) %417 to ptr addrspace(1)
  %419 = load i1, ptr %55
  %420 = zext i1 %419 to i64
  %421 = or i64 %420, 72057594037927936
  %422 = getelementptr i8, ptr addrspace(1) null, i64 %421
  %423 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %418, i64 0, i64 0
  store ptr addrspace(1) %422, ptr addrspace(1) %423
  %424 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %415, i64 0, i32 1
  store i64 1, ptr addrspace(1) %424
  %425 = bitcast ptr addrspace(1) %415 to ptr addrspace(1)
  %426 = getelementptr i8, ptr addrspace(1) %425, i64 864691128455135236
  store ptr addrspace(1) %426, ptr %56
  %427 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %427), !dbg !65
  store ptr addrspace(1) null, ptr %57
  %428 = load ptr addrspace(1), ptr %c
  %429 = load ptr addrspace(1), ptr %b
  %430 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %428, ptr addrspace(1) %429), !dbg !66
  %431 = icmp eq i64 %430, 2
  store i1 %431, ptr %58
  %432 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !67
  %433 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %432, i64 0, i32 3
  %434 = load ptr addrspace(1), ptr addrspace(1) %433, align 8
  %435 = bitcast ptr addrspace(1) %434 to ptr addrspace(1)
  %436 = load i1, ptr %58
  %437 = zext i1 %436 to i64
  %438 = or i64 %437, 72057594037927936
  %439 = getelementptr i8, ptr addrspace(1) null, i64 %438
  %440 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %435, i64 0, i64 0
  store ptr addrspace(1) %439, ptr addrspace(1) %440
  %441 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %432, i64 0, i32 1
  store i64 1, ptr addrspace(1) %441
  %442 = bitcast ptr addrspace(1) %432 to ptr addrspace(1)
  %443 = getelementptr i8, ptr addrspace(1) %442, i64 864691128455135236
  store ptr addrspace(1) %443, ptr %59
  %444 = load ptr addrspace(1), ptr %59
  call void @_Bb02ioprintln(ptr addrspace(1) %444), !dbg !68
  store ptr addrspace(1) null, ptr %60
  %445 = load ptr addrspace(1), ptr %c
  %446 = load ptr addrspace(1), ptr %b
  %447 = call i64 @_bal_array_boolean_compare(ptr addrspace(1) %445, ptr addrspace(1) %446), !dbg !69
  %448 = icmp sge i64 %447, 1
  store i1 %448, ptr %61
  %449 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !70
  %450 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %449, i64 0, i32 3
  %451 = load ptr addrspace(1), ptr addrspace(1) %450, align 8
  %452 = bitcast ptr addrspace(1) %451 to ptr addrspace(1)
  %453 = load i1, ptr %61
  %454 = zext i1 %453 to i64
  %455 = or i64 %454, 72057594037927936
  %456 = getelementptr i8, ptr addrspace(1) null, i64 %455
  %457 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %452, i64 0, i64 0
  store ptr addrspace(1) %456, ptr addrspace(1) %457
  %458 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %449, i64 0, i32 1
  store i64 1, ptr addrspace(1) %458
  %459 = bitcast ptr addrspace(1) %449 to ptr addrspace(1)
  %460 = getelementptr i8, ptr addrspace(1) %459, i64 864691128455135236
  store ptr addrspace(1) %460, ptr %62
  %461 = load ptr addrspace(1), ptr %62
  call void @_Bb02ioprintln(ptr addrspace(1) %461), !dbg !71
  store ptr addrspace(1) null, ptr %63
  ret void
462:
  %463 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %463), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/arr4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 16, scope: !5)
!12 = !DILocation(line: 8, column: 14, scope: !5)
!13 = !DILocation(line: 8, column: 12, scope: !5)
!14 = !DILocation(line: 8, column: 1, scope: !5)
!15 = !DILocation(line: 9, column: 14, scope: !5)
!16 = !DILocation(line: 9, column: 12, scope: !5)
!17 = !DILocation(line: 9, column: 1, scope: !5)
!18 = !DILocation(line: 10, column: 14, scope: !5)
!19 = !DILocation(line: 10, column: 12, scope: !5)
!20 = !DILocation(line: 10, column: 1, scope: !5)
!21 = !DILocation(line: 11, column: 14, scope: !5)
!22 = !DILocation(line: 11, column: 12, scope: !5)
!23 = !DILocation(line: 11, column: 1, scope: !5)
!24 = !DILocation(line: 13, column: 14, scope: !5)
!25 = !DILocation(line: 13, column: 12, scope: !5)
!26 = !DILocation(line: 13, column: 1, scope: !5)
!27 = !DILocation(line: 14, column: 14, scope: !5)
!28 = !DILocation(line: 14, column: 12, scope: !5)
!29 = !DILocation(line: 14, column: 1, scope: !5)
!30 = !DILocation(line: 15, column: 14, scope: !5)
!31 = !DILocation(line: 15, column: 12, scope: !5)
!32 = !DILocation(line: 15, column: 1, scope: !5)
!33 = !DILocation(line: 16, column: 14, scope: !5)
!34 = !DILocation(line: 16, column: 12, scope: !5)
!35 = !DILocation(line: 16, column: 1, scope: !5)
!36 = !DILocation(line: 18, column: 14, scope: !5)
!37 = !DILocation(line: 18, column: 12, scope: !5)
!38 = !DILocation(line: 18, column: 1, scope: !5)
!39 = !DILocation(line: 19, column: 14, scope: !5)
!40 = !DILocation(line: 19, column: 12, scope: !5)
!41 = !DILocation(line: 19, column: 1, scope: !5)
!42 = !DILocation(line: 20, column: 14, scope: !5)
!43 = !DILocation(line: 20, column: 12, scope: !5)
!44 = !DILocation(line: 20, column: 1, scope: !5)
!45 = !DILocation(line: 21, column: 14, scope: !5)
!46 = !DILocation(line: 21, column: 12, scope: !5)
!47 = !DILocation(line: 21, column: 1, scope: !5)
!48 = !DILocation(line: 23, column: 14, scope: !5)
!49 = !DILocation(line: 23, column: 12, scope: !5)
!50 = !DILocation(line: 23, column: 1, scope: !5)
!51 = !DILocation(line: 24, column: 14, scope: !5)
!52 = !DILocation(line: 24, column: 12, scope: !5)
!53 = !DILocation(line: 24, column: 1, scope: !5)
!54 = !DILocation(line: 25, column: 14, scope: !5)
!55 = !DILocation(line: 25, column: 12, scope: !5)
!56 = !DILocation(line: 25, column: 1, scope: !5)
!57 = !DILocation(line: 26, column: 14, scope: !5)
!58 = !DILocation(line: 26, column: 12, scope: !5)
!59 = !DILocation(line: 26, column: 1, scope: !5)
!60 = !DILocation(line: 28, column: 14, scope: !5)
!61 = !DILocation(line: 28, column: 12, scope: !5)
!62 = !DILocation(line: 28, column: 1, scope: !5)
!63 = !DILocation(line: 29, column: 14, scope: !5)
!64 = !DILocation(line: 29, column: 12, scope: !5)
!65 = !DILocation(line: 29, column: 1, scope: !5)
!66 = !DILocation(line: 30, column: 14, scope: !5)
!67 = !DILocation(line: 30, column: 12, scope: !5)
!68 = !DILocation(line: 30, column: 1, scope: !5)
!69 = !DILocation(line: 31, column: 14, scope: !5)
!70 = !DILocation(line: 31, column: 12, scope: !5)
!71 = !DILocation(line: 31, column: 1, scope: !5)
