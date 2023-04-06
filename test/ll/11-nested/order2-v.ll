@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
@_Bi04root5 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_array_int_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_array_list_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_opt_list_compare(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %a = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca i1
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %d = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca i1
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %e = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca i1
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i1
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %f = alloca ptr addrspace(1)
  %37 = alloca ptr addrspace(1)
  %g = alloca ptr addrspace(1)
  %38 = alloca ptr addrspace(1)
  %39 = alloca i1
  %40 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %42 = alloca i1
  %43 = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %h = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %i = alloca ptr addrspace(1)
  %46 = alloca ptr addrspace(1)
  %47 = alloca i1
  %48 = alloca ptr addrspace(1)
  %49 = alloca ptr addrspace(1)
  %50 = alloca i1
  %51 = alloca ptr addrspace(1)
  %52 = alloca ptr addrspace(1)
  %53 = alloca i1
  %54 = alloca ptr addrspace(1)
  %55 = alloca ptr addrspace(1)
  %56 = alloca i1
  %57 = alloca ptr addrspace(1)
  %58 = alloca ptr addrspace(1)
  %j = alloca ptr addrspace(1)
  %59 = alloca ptr addrspace(1)
  %60 = alloca ptr addrspace(1)
  %61 = alloca ptr addrspace(1)
  %k = alloca ptr addrspace(1)
  %62 = alloca ptr addrspace(1)
  %63 = alloca ptr addrspace(1)
  %64 = alloca ptr addrspace(1)
  %65 = alloca i1
  %66 = alloca ptr addrspace(1)
  %67 = alloca ptr addrspace(1)
  %68 = alloca i1
  %69 = alloca ptr addrspace(1)
  %70 = alloca ptr addrspace(1)
  %71 = alloca i8
  %72 = load ptr, ptr @_bal_stack_guard
  %73 = icmp ult ptr %71, %72
  br i1 %73, label %548, label %74
74:
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = zext i1 0 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, ptr addrspace(1) null, i64 %80
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %83
  %84 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %85 = getelementptr i8, ptr addrspace(1) %84, i64 864691128455135236
  store ptr addrspace(1) %85, ptr %1
  %86 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %86), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = zext i1 0 to i64
  %92 = or i64 %91, 72057594037927936
  %93 = getelementptr i8, ptr addrspace(1) null, i64 %92
  %94 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %93, ptr addrspace(1) %94
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 1, ptr addrspace(1) %95
  %96 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %97 = getelementptr i8, ptr addrspace(1) %96, i64 864691128455135236
  store ptr addrspace(1) %97, ptr %3
  %98 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %98), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = zext i1 1 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, ptr addrspace(1) null, i64 %104
  %106 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %105, ptr addrspace(1) %106
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %107
  %108 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %109 = getelementptr i8, ptr addrspace(1) %108, i64 864691128455135236
  store ptr addrspace(1) %109, ptr %5
  %110 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %110), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = getelementptr inbounds [0 x i64], ptr addrspace(1) %114, i64 0, i64 0
  store i64 1, ptr addrspace(1) %115
  %116 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %116
  %117 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %118 = getelementptr i8, ptr addrspace(1) %117, i64 864691128455135236
  store ptr addrspace(1) %118, ptr %7
  %119 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %119, ptr %a
  %120 = load ptr addrspace(1), ptr %a
  %121 = call i64 @_bal_array_int_compare(ptr addrspace(1) %120, ptr addrspace(1) null), !dbg !16
  %122 = icmp eq i64 %121, 0
  store i1 %122, ptr %8
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load i1, ptr %8
  %128 = zext i1 %127 to i64
  %129 = or i64 %128, 72057594037927936
  %130 = getelementptr i8, ptr addrspace(1) null, i64 %129
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %9
  %135 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %135), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %136 = load ptr addrspace(1), ptr %a
  %137 = call i64 @_bal_array_int_compare(ptr addrspace(1) null, ptr addrspace(1) %136), !dbg !19
  %138 = icmp eq i64 %137, 0
  store i1 %138, ptr %11
  %139 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = load i1, ptr %11
  %144 = zext i1 %143 to i64
  %145 = or i64 %144, 72057594037927936
  %146 = getelementptr i8, ptr addrspace(1) null, i64 %145
  %147 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %142, i64 0, i64 0
  store ptr addrspace(1) %146, ptr addrspace(1) %147
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 1
  store i64 1, ptr addrspace(1) %148
  %149 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %150 = getelementptr i8, ptr addrspace(1) %149, i64 864691128455135236
  store ptr addrspace(1) %150, ptr %12
  %151 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %151), !dbg !21
  store ptr addrspace(1) null, ptr %13
  %152 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 3
  %154 = load ptr addrspace(1), ptr addrspace(1) %153, align 8
  %155 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %156 = getelementptr inbounds [0 x i64], ptr addrspace(1) %155, i64 0, i64 0
  store i64 1, ptr addrspace(1) %156
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 1
  store i64 1, ptr addrspace(1) %157
  %158 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %159 = getelementptr i8, ptr addrspace(1) %158, i64 864691128455135236
  store ptr addrspace(1) %159, ptr %14
  %160 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !23
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = load ptr addrspace(1), ptr %14
  %165 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 0
  store ptr addrspace(1) %164, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  store i64 1, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %15
  %169 = load ptr addrspace(1), ptr %15
  store ptr addrspace(1) %169, ptr %b
  %170 = load ptr addrspace(1), ptr %b
  %171 = call i64 @_bal_array_list_compare(ptr addrspace(1) %170, ptr addrspace(1) null), !dbg !24
  %172 = icmp eq i64 %171, 0
  store i1 %172, ptr %16
  %173 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 3
  %175 = load ptr addrspace(1), ptr addrspace(1) %174, align 8
  %176 = bitcast ptr addrspace(1) %175 to ptr addrspace(1)
  %177 = load i1, ptr %16
  %178 = zext i1 %177 to i64
  %179 = or i64 %178, 72057594037927936
  %180 = getelementptr i8, ptr addrspace(1) null, i64 %179
  %181 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %176, i64 0, i64 0
  store ptr addrspace(1) %180, ptr addrspace(1) %181
  %182 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 1
  store i64 1, ptr addrspace(1) %182
  %183 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %184 = getelementptr i8, ptr addrspace(1) %183, i64 864691128455135236
  store ptr addrspace(1) %184, ptr %17
  %185 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %185), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %186 = load ptr addrspace(1), ptr %b
  %187 = call i64 @_bal_array_list_compare(ptr addrspace(1) null, ptr addrspace(1) %186), !dbg !27
  %188 = icmp eq i64 %187, 0
  store i1 %188, ptr %19
  %189 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %189, i64 0, i32 3
  %191 = load ptr addrspace(1), ptr addrspace(1) %190, align 8
  %192 = bitcast ptr addrspace(1) %191 to ptr addrspace(1)
  %193 = load i1, ptr %19
  %194 = zext i1 %193 to i64
  %195 = or i64 %194, 72057594037927936
  %196 = getelementptr i8, ptr addrspace(1) null, i64 %195
  %197 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %192, i64 0, i64 0
  store ptr addrspace(1) %196, ptr addrspace(1) %197
  %198 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %189, i64 0, i32 1
  store i64 1, ptr addrspace(1) %198
  %199 = bitcast ptr addrspace(1) %189 to ptr addrspace(1)
  %200 = getelementptr i8, ptr addrspace(1) %199, i64 864691128455135236
  store ptr addrspace(1) %200, ptr %20
  %201 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %201), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %202 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !30
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 3
  %204 = load ptr addrspace(1), ptr addrspace(1) %203, align 8
  %205 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %206 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %205, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %206
  %207 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 1
  store i64 1, ptr addrspace(1) %207
  %208 = bitcast ptr addrspace(1) %202 to ptr addrspace(1)
  %209 = getelementptr i8, ptr addrspace(1) %208, i64 864691128455135236
  store ptr addrspace(1) %209, ptr %22
  %210 = load ptr addrspace(1), ptr %22
  store ptr addrspace(1) %210, ptr %c
  %211 = load ptr addrspace(1), ptr %b
  %212 = load ptr addrspace(1), ptr %c
  %213 = call i64 @_bal_array_list_compare(ptr addrspace(1) %211, ptr addrspace(1) %212), !dbg !31
  %214 = icmp eq i64 %213, 0
  store i1 %214, ptr %23
  %215 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %216 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %215, i64 0, i32 3
  %217 = load ptr addrspace(1), ptr addrspace(1) %216, align 8
  %218 = bitcast ptr addrspace(1) %217 to ptr addrspace(1)
  %219 = load i1, ptr %23
  %220 = zext i1 %219 to i64
  %221 = or i64 %220, 72057594037927936
  %222 = getelementptr i8, ptr addrspace(1) null, i64 %221
  %223 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %218, i64 0, i64 0
  store ptr addrspace(1) %222, ptr addrspace(1) %223
  %224 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %215, i64 0, i32 1
  store i64 1, ptr addrspace(1) %224
  %225 = bitcast ptr addrspace(1) %215 to ptr addrspace(1)
  %226 = getelementptr i8, ptr addrspace(1) %225, i64 864691128455135236
  store ptr addrspace(1) %226, ptr %24
  %227 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %227), !dbg !33
  store ptr addrspace(1) null, ptr %25
  %228 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !34
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 3
  %230 = load ptr addrspace(1), ptr addrspace(1) %229, align 8
  %231 = bitcast ptr addrspace(1) %230 to ptr addrspace(1)
  %232 = and i64 72057594037927935, 1
  %233 = or i64 2449958197289549824, %232
  %234 = getelementptr i8, ptr addrspace(1) null, i64 %233
  %235 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 0
  store ptr addrspace(1) %234, ptr addrspace(1) %235
  %236 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 1
  store i64 1, ptr addrspace(1) %236
  %237 = bitcast ptr addrspace(1) %228 to ptr addrspace(1)
  %238 = getelementptr i8, ptr addrspace(1) %237, i64 864691128455135236
  store ptr addrspace(1) %238, ptr %26
  %239 = load ptr addrspace(1), ptr %26
  store ptr addrspace(1) %239, ptr %d
  %240 = load ptr addrspace(1), ptr %d
  %241 = call i64 @_bal_array_int_compare(ptr addrspace(1) %240, ptr addrspace(1) null), !dbg !35
  %242 = icmp eq i64 %241, 0
  store i1 %242, ptr %27
  %243 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %244 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 3
  %245 = load ptr addrspace(1), ptr addrspace(1) %244, align 8
  %246 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %247 = load i1, ptr %27
  %248 = zext i1 %247 to i64
  %249 = or i64 %248, 72057594037927936
  %250 = getelementptr i8, ptr addrspace(1) null, i64 %249
  %251 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %246, i64 0, i64 0
  store ptr addrspace(1) %250, ptr addrspace(1) %251
  %252 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 1
  store i64 1, ptr addrspace(1) %252
  %253 = bitcast ptr addrspace(1) %243 to ptr addrspace(1)
  %254 = getelementptr i8, ptr addrspace(1) %253, i64 864691128455135236
  store ptr addrspace(1) %254, ptr %28
  %255 = load ptr addrspace(1), ptr %28
  call void @_Bb02ioprintln(ptr addrspace(1) %255), !dbg !37
  store ptr addrspace(1) null, ptr %29
  %256 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !38
  %257 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %256, i64 0, i32 3
  %258 = load ptr addrspace(1), ptr addrspace(1) %257, align 8
  %259 = bitcast ptr addrspace(1) %258 to ptr addrspace(1)
  %260 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %259, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %260
  %261 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %256, i64 0, i32 1
  store i64 1, ptr addrspace(1) %261
  %262 = bitcast ptr addrspace(1) %256 to ptr addrspace(1)
  %263 = getelementptr i8, ptr addrspace(1) %262, i64 864691128455135236
  store ptr addrspace(1) %263, ptr %30
  %264 = load ptr addrspace(1), ptr %30
  store ptr addrspace(1) %264, ptr %e
  %265 = load ptr addrspace(1), ptr %d
  %266 = load ptr addrspace(1), ptr %e
  %267 = call i64 @_bal_array_int_compare(ptr addrspace(1) %265, ptr addrspace(1) %266), !dbg !39
  %268 = icmp eq i64 %267, 0
  store i1 %268, ptr %31
  %269 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %270 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %269, i64 0, i32 3
  %271 = load ptr addrspace(1), ptr addrspace(1) %270, align 8
  %272 = bitcast ptr addrspace(1) %271 to ptr addrspace(1)
  %273 = load i1, ptr %31
  %274 = zext i1 %273 to i64
  %275 = or i64 %274, 72057594037927936
  %276 = getelementptr i8, ptr addrspace(1) null, i64 %275
  %277 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %272, i64 0, i64 0
  store ptr addrspace(1) %276, ptr addrspace(1) %277
  %278 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %269, i64 0, i32 1
  store i64 1, ptr addrspace(1) %278
  %279 = bitcast ptr addrspace(1) %269 to ptr addrspace(1)
  %280 = getelementptr i8, ptr addrspace(1) %279, i64 864691128455135236
  store ptr addrspace(1) %280, ptr %32
  %281 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %281), !dbg !41
  store ptr addrspace(1) null, ptr %33
  %282 = load ptr addrspace(1), ptr %e
  %283 = load ptr addrspace(1), ptr %d
  %284 = call i64 @_bal_array_int_compare(ptr addrspace(1) %282, ptr addrspace(1) %283), !dbg !42
  %285 = icmp eq i64 %284, 0
  store i1 %285, ptr %34
  %286 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %287 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 3
  %288 = load ptr addrspace(1), ptr addrspace(1) %287, align 8
  %289 = bitcast ptr addrspace(1) %288 to ptr addrspace(1)
  %290 = load i1, ptr %34
  %291 = zext i1 %290 to i64
  %292 = or i64 %291, 72057594037927936
  %293 = getelementptr i8, ptr addrspace(1) null, i64 %292
  %294 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %289, i64 0, i64 0
  store ptr addrspace(1) %293, ptr addrspace(1) %294
  %295 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 1
  store i64 1, ptr addrspace(1) %295
  %296 = bitcast ptr addrspace(1) %286 to ptr addrspace(1)
  %297 = getelementptr i8, ptr addrspace(1) %296, i64 864691128455135236
  store ptr addrspace(1) %297, ptr %35
  %298 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %298), !dbg !44
  store ptr addrspace(1) null, ptr %36
  %299 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !45
  %300 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %299, i64 0, i32 3
  %301 = load ptr addrspace(1), ptr addrspace(1) %300, align 8
  %302 = bitcast ptr addrspace(1) %301 to ptr addrspace(1)
  %303 = getelementptr inbounds [0 x i64], ptr addrspace(1) %302, i64 0, i64 0
  store i64 1, ptr addrspace(1) %303
  %304 = getelementptr inbounds [0 x i64], ptr addrspace(1) %302, i64 0, i64 1
  store i64 2, ptr addrspace(1) %304
  %305 = getelementptr inbounds [0 x i64], ptr addrspace(1) %302, i64 0, i64 2
  store i64 3, ptr addrspace(1) %305
  %306 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %299, i64 0, i32 1
  store i64 3, ptr addrspace(1) %306
  %307 = bitcast ptr addrspace(1) %299 to ptr addrspace(1)
  %308 = getelementptr i8, ptr addrspace(1) %307, i64 864691128455135236
  store ptr addrspace(1) %308, ptr %37
  %309 = load ptr addrspace(1), ptr %37
  store ptr addrspace(1) %309, ptr %f
  %310 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 3), !dbg !46
  %311 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %310, i64 0, i32 3
  %312 = load ptr addrspace(1), ptr addrspace(1) %311, align 8
  %313 = bitcast ptr addrspace(1) %312 to ptr addrspace(1)
  %314 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %313, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %314
  %315 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %313, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %315
  %316 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %313, i64 0, i64 2
  store ptr addrspace(1) null, ptr addrspace(1) %316
  %317 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %310, i64 0, i32 1
  store i64 3, ptr addrspace(1) %317
  %318 = bitcast ptr addrspace(1) %310 to ptr addrspace(1)
  %319 = getelementptr i8, ptr addrspace(1) %318, i64 864691128455135236
  store ptr addrspace(1) %319, ptr %38
  %320 = load ptr addrspace(1), ptr %38
  store ptr addrspace(1) %320, ptr %g
  %321 = load ptr addrspace(1), ptr %f
  %322 = load ptr addrspace(1), ptr %g
  %323 = call i64 @_bal_array_int_compare(ptr addrspace(1) %321, ptr addrspace(1) %322), !dbg !47
  %324 = icmp eq i64 %323, 0
  store i1 %324, ptr %39
  %325 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %326 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %325, i64 0, i32 3
  %327 = load ptr addrspace(1), ptr addrspace(1) %326, align 8
  %328 = bitcast ptr addrspace(1) %327 to ptr addrspace(1)
  %329 = load i1, ptr %39
  %330 = zext i1 %329 to i64
  %331 = or i64 %330, 72057594037927936
  %332 = getelementptr i8, ptr addrspace(1) null, i64 %331
  %333 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %328, i64 0, i64 0
  store ptr addrspace(1) %332, ptr addrspace(1) %333
  %334 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %325, i64 0, i32 1
  store i64 1, ptr addrspace(1) %334
  %335 = bitcast ptr addrspace(1) %325 to ptr addrspace(1)
  %336 = getelementptr i8, ptr addrspace(1) %335, i64 864691128455135236
  store ptr addrspace(1) %336, ptr %40
  %337 = load ptr addrspace(1), ptr %40
  call void @_Bb02ioprintln(ptr addrspace(1) %337), !dbg !49
  store ptr addrspace(1) null, ptr %41
  %338 = load ptr addrspace(1), ptr %g
  %339 = load ptr addrspace(1), ptr %f
  %340 = call i64 @_bal_array_int_compare(ptr addrspace(1) %338, ptr addrspace(1) %339), !dbg !50
  %341 = icmp eq i64 %340, 0
  store i1 %341, ptr %42
  %342 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !51
  %343 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %342, i64 0, i32 3
  %344 = load ptr addrspace(1), ptr addrspace(1) %343, align 8
  %345 = bitcast ptr addrspace(1) %344 to ptr addrspace(1)
  %346 = load i1, ptr %42
  %347 = zext i1 %346 to i64
  %348 = or i64 %347, 72057594037927936
  %349 = getelementptr i8, ptr addrspace(1) null, i64 %348
  %350 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %345, i64 0, i64 0
  store ptr addrspace(1) %349, ptr addrspace(1) %350
  %351 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %342, i64 0, i32 1
  store i64 1, ptr addrspace(1) %351
  %352 = bitcast ptr addrspace(1) %342 to ptr addrspace(1)
  %353 = getelementptr i8, ptr addrspace(1) %352, i64 864691128455135236
  store ptr addrspace(1) %353, ptr %43
  %354 = load ptr addrspace(1), ptr %43
  call void @_Bb02ioprintln(ptr addrspace(1) %354), !dbg !52
  store ptr addrspace(1) null, ptr %44
  %355 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 3), !dbg !53
  %356 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %355, i64 0, i32 3
  %357 = load ptr addrspace(1), ptr addrspace(1) %356, align 8
  %358 = bitcast ptr addrspace(1) %357 to ptr addrspace(1)
  %359 = and i64 72057594037927935, 1
  %360 = or i64 2449958197289549824, %359
  %361 = getelementptr i8, ptr addrspace(1) null, i64 %360
  %362 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %358, i64 0, i64 0
  store ptr addrspace(1) %361, ptr addrspace(1) %362
  %363 = and i64 72057594037927935, 2
  %364 = or i64 2449958197289549824, %363
  %365 = getelementptr i8, ptr addrspace(1) null, i64 %364
  %366 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %358, i64 0, i64 1
  store ptr addrspace(1) %365, ptr addrspace(1) %366
  %367 = and i64 72057594037927935, 3
  %368 = or i64 2449958197289549824, %367
  %369 = getelementptr i8, ptr addrspace(1) null, i64 %368
  %370 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %358, i64 0, i64 2
  store ptr addrspace(1) %369, ptr addrspace(1) %370
  %371 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %355, i64 0, i32 1
  store i64 3, ptr addrspace(1) %371
  %372 = bitcast ptr addrspace(1) %355 to ptr addrspace(1)
  %373 = getelementptr i8, ptr addrspace(1) %372, i64 864691128455135236
  store ptr addrspace(1) %373, ptr %45
  %374 = load ptr addrspace(1), ptr %45
  store ptr addrspace(1) %374, ptr %h
  %375 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 4), !dbg !54
  %376 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 3
  %377 = load ptr addrspace(1), ptr addrspace(1) %376, align 8
  %378 = bitcast ptr addrspace(1) %377 to ptr addrspace(1)
  %379 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %378, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %379
  %380 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %378, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %380
  %381 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %378, i64 0, i64 2
  store ptr addrspace(1) null, ptr addrspace(1) %381
  %382 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %378, i64 0, i64 3
  store ptr addrspace(1) null, ptr addrspace(1) %382
  %383 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 1
  store i64 4, ptr addrspace(1) %383
  %384 = bitcast ptr addrspace(1) %375 to ptr addrspace(1)
  %385 = getelementptr i8, ptr addrspace(1) %384, i64 864691128455135236
  store ptr addrspace(1) %385, ptr %46
  %386 = load ptr addrspace(1), ptr %46
  store ptr addrspace(1) %386, ptr %i
  %387 = load ptr addrspace(1), ptr %h
  %388 = load ptr addrspace(1), ptr %i
  %389 = call i64 @_bal_array_int_compare(ptr addrspace(1) %387, ptr addrspace(1) %388), !dbg !55
  %390 = icmp eq i64 %389, 2
  store i1 %390, ptr %47
  %391 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %392 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %391, i64 0, i32 3
  %393 = load ptr addrspace(1), ptr addrspace(1) %392, align 8
  %394 = bitcast ptr addrspace(1) %393 to ptr addrspace(1)
  %395 = load i1, ptr %47
  %396 = zext i1 %395 to i64
  %397 = or i64 %396, 72057594037927936
  %398 = getelementptr i8, ptr addrspace(1) null, i64 %397
  %399 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %394, i64 0, i64 0
  store ptr addrspace(1) %398, ptr addrspace(1) %399
  %400 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %391, i64 0, i32 1
  store i64 1, ptr addrspace(1) %400
  %401 = bitcast ptr addrspace(1) %391 to ptr addrspace(1)
  %402 = getelementptr i8, ptr addrspace(1) %401, i64 864691128455135236
  store ptr addrspace(1) %402, ptr %48
  %403 = load ptr addrspace(1), ptr %48
  call void @_Bb02ioprintln(ptr addrspace(1) %403), !dbg !57
  store ptr addrspace(1) null, ptr %49
  %404 = load ptr addrspace(1), ptr %i
  %405 = load ptr addrspace(1), ptr %h
  %406 = call i64 @_bal_array_int_compare(ptr addrspace(1) %404, ptr addrspace(1) %405), !dbg !58
  %407 = icmp eq i64 %406, 2
  store i1 %407, ptr %50
  %408 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !59
  %409 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %408, i64 0, i32 3
  %410 = load ptr addrspace(1), ptr addrspace(1) %409, align 8
  %411 = bitcast ptr addrspace(1) %410 to ptr addrspace(1)
  %412 = load i1, ptr %50
  %413 = zext i1 %412 to i64
  %414 = or i64 %413, 72057594037927936
  %415 = getelementptr i8, ptr addrspace(1) null, i64 %414
  %416 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %411, i64 0, i64 0
  store ptr addrspace(1) %415, ptr addrspace(1) %416
  %417 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %408, i64 0, i32 1
  store i64 1, ptr addrspace(1) %417
  %418 = bitcast ptr addrspace(1) %408 to ptr addrspace(1)
  %419 = getelementptr i8, ptr addrspace(1) %418, i64 864691128455135236
  store ptr addrspace(1) %419, ptr %51
  %420 = load ptr addrspace(1), ptr %51
  call void @_Bb02ioprintln(ptr addrspace(1) %420), !dbg !60
  store ptr addrspace(1) null, ptr %52
  %421 = load ptr addrspace(1), ptr %g
  %422 = load ptr addrspace(1), ptr %i
  %423 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %421, ptr addrspace(1) %422), !dbg !61
  %424 = icmp eq i64 %423, 0
  store i1 %424, ptr %53
  %425 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !62
  %426 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %425, i64 0, i32 3
  %427 = load ptr addrspace(1), ptr addrspace(1) %426, align 8
  %428 = bitcast ptr addrspace(1) %427 to ptr addrspace(1)
  %429 = load i1, ptr %53
  %430 = zext i1 %429 to i64
  %431 = or i64 %430, 72057594037927936
  %432 = getelementptr i8, ptr addrspace(1) null, i64 %431
  %433 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %428, i64 0, i64 0
  store ptr addrspace(1) %432, ptr addrspace(1) %433
  %434 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %425, i64 0, i32 1
  store i64 1, ptr addrspace(1) %434
  %435 = bitcast ptr addrspace(1) %425 to ptr addrspace(1)
  %436 = getelementptr i8, ptr addrspace(1) %435, i64 864691128455135236
  store ptr addrspace(1) %436, ptr %54
  %437 = load ptr addrspace(1), ptr %54
  call void @_Bb02ioprintln(ptr addrspace(1) %437), !dbg !63
  store ptr addrspace(1) null, ptr %55
  %438 = load ptr addrspace(1), ptr %i
  %439 = load ptr addrspace(1), ptr %g
  %440 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %438, ptr addrspace(1) %439), !dbg !64
  %441 = icmp eq i64 %440, 0
  store i1 %441, ptr %56
  %442 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !65
  %443 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %442, i64 0, i32 3
  %444 = load ptr addrspace(1), ptr addrspace(1) %443, align 8
  %445 = bitcast ptr addrspace(1) %444 to ptr addrspace(1)
  %446 = load i1, ptr %56
  %447 = zext i1 %446 to i64
  %448 = or i64 %447, 72057594037927936
  %449 = getelementptr i8, ptr addrspace(1) null, i64 %448
  %450 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %445, i64 0, i64 0
  store ptr addrspace(1) %449, ptr addrspace(1) %450
  %451 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %442, i64 0, i32 1
  store i64 1, ptr addrspace(1) %451
  %452 = bitcast ptr addrspace(1) %442 to ptr addrspace(1)
  %453 = getelementptr i8, ptr addrspace(1) %452, i64 864691128455135236
  store ptr addrspace(1) %453, ptr %57
  %454 = load ptr addrspace(1), ptr %57
  call void @_Bb02ioprintln(ptr addrspace(1) %454), !dbg !66
  store ptr addrspace(1) null, ptr %58
  %455 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !67
  %456 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %455, i64 0, i32 3
  %457 = load ptr addrspace(1), ptr addrspace(1) %456, align 8
  %458 = bitcast ptr addrspace(1) %457 to ptr addrspace(1)
  %459 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %458, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %459
  %460 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %455, i64 0, i32 1
  store i64 1, ptr addrspace(1) %460
  %461 = bitcast ptr addrspace(1) %455 to ptr addrspace(1)
  %462 = getelementptr i8, ptr addrspace(1) %461, i64 864691128455135236
  store ptr addrspace(1) %462, ptr %59
  %463 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 2), !dbg !68
  %464 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %463, i64 0, i32 3
  %465 = load ptr addrspace(1), ptr addrspace(1) %464, align 8
  %466 = bitcast ptr addrspace(1) %465 to ptr addrspace(1)
  %467 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %466, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %467
  %468 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %466, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %468
  %469 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %463, i64 0, i32 1
  store i64 2, ptr addrspace(1) %469
  %470 = bitcast ptr addrspace(1) %463 to ptr addrspace(1)
  %471 = getelementptr i8, ptr addrspace(1) %470, i64 864691128455135236
  store ptr addrspace(1) %471, ptr %60
  %472 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 2), !dbg !69
  %473 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %472, i64 0, i32 3
  %474 = load ptr addrspace(1), ptr addrspace(1) %473, align 8
  %475 = bitcast ptr addrspace(1) %474 to ptr addrspace(1)
  %476 = load ptr addrspace(1), ptr %59
  %477 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %475, i64 0, i64 0
  store ptr addrspace(1) %476, ptr addrspace(1) %477
  %478 = load ptr addrspace(1), ptr %60
  %479 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %475, i64 0, i64 1
  store ptr addrspace(1) %478, ptr addrspace(1) %479
  %480 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %472, i64 0, i32 1
  store i64 2, ptr addrspace(1) %480
  %481 = bitcast ptr addrspace(1) %472 to ptr addrspace(1)
  %482 = getelementptr i8, ptr addrspace(1) %481, i64 864691128455135236
  store ptr addrspace(1) %482, ptr %61
  %483 = load ptr addrspace(1), ptr %61
  store ptr addrspace(1) %483, ptr %j
  %484 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !70
  %485 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %484, i64 0, i32 3
  %486 = load ptr addrspace(1), ptr addrspace(1) %485, align 8
  %487 = bitcast ptr addrspace(1) %486 to ptr addrspace(1)
  %488 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %487, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %488
  %489 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %484, i64 0, i32 1
  store i64 1, ptr addrspace(1) %489
  %490 = bitcast ptr addrspace(1) %484 to ptr addrspace(1)
  %491 = getelementptr i8, ptr addrspace(1) %490, i64 864691128455135236
  store ptr addrspace(1) %491, ptr %62
  %492 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 3), !dbg !71
  %493 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %492, i64 0, i32 3
  %494 = load ptr addrspace(1), ptr addrspace(1) %493, align 8
  %495 = bitcast ptr addrspace(1) %494 to ptr addrspace(1)
  %496 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %495, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %496
  %497 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %495, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %497
  %498 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %495, i64 0, i64 2
  store ptr addrspace(1) null, ptr addrspace(1) %498
  %499 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %492, i64 0, i32 1
  store i64 3, ptr addrspace(1) %499
  %500 = bitcast ptr addrspace(1) %492 to ptr addrspace(1)
  %501 = getelementptr i8, ptr addrspace(1) %500, i64 864691128455135236
  store ptr addrspace(1) %501, ptr %63
  %502 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 2), !dbg !72
  %503 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %502, i64 0, i32 3
  %504 = load ptr addrspace(1), ptr addrspace(1) %503, align 8
  %505 = bitcast ptr addrspace(1) %504 to ptr addrspace(1)
  %506 = load ptr addrspace(1), ptr %62
  %507 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %505, i64 0, i64 0
  store ptr addrspace(1) %506, ptr addrspace(1) %507
  %508 = load ptr addrspace(1), ptr %63
  %509 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %505, i64 0, i64 1
  store ptr addrspace(1) %508, ptr addrspace(1) %509
  %510 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %502, i64 0, i32 1
  store i64 2, ptr addrspace(1) %510
  %511 = bitcast ptr addrspace(1) %502 to ptr addrspace(1)
  %512 = getelementptr i8, ptr addrspace(1) %511, i64 864691128455135236
  store ptr addrspace(1) %512, ptr %64
  %513 = load ptr addrspace(1), ptr %64
  store ptr addrspace(1) %513, ptr %k
  %514 = load ptr addrspace(1), ptr %j
  %515 = load ptr addrspace(1), ptr %k
  %516 = call i64 @_bal_array_list_compare(ptr addrspace(1) %514, ptr addrspace(1) %515), !dbg !73
  %517 = icmp eq i64 %516, 0
  store i1 %517, ptr %65
  %518 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !74
  %519 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %518, i64 0, i32 3
  %520 = load ptr addrspace(1), ptr addrspace(1) %519, align 8
  %521 = bitcast ptr addrspace(1) %520 to ptr addrspace(1)
  %522 = load i1, ptr %65
  %523 = zext i1 %522 to i64
  %524 = or i64 %523, 72057594037927936
  %525 = getelementptr i8, ptr addrspace(1) null, i64 %524
  %526 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %521, i64 0, i64 0
  store ptr addrspace(1) %525, ptr addrspace(1) %526
  %527 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %518, i64 0, i32 1
  store i64 1, ptr addrspace(1) %527
  %528 = bitcast ptr addrspace(1) %518 to ptr addrspace(1)
  %529 = getelementptr i8, ptr addrspace(1) %528, i64 864691128455135236
  store ptr addrspace(1) %529, ptr %66
  %530 = load ptr addrspace(1), ptr %66
  call void @_Bb02ioprintln(ptr addrspace(1) %530), !dbg !75
  store ptr addrspace(1) null, ptr %67
  %531 = load ptr addrspace(1), ptr %k
  %532 = load ptr addrspace(1), ptr %j
  %533 = call i64 @_bal_array_list_compare(ptr addrspace(1) %531, ptr addrspace(1) %532), !dbg !76
  %534 = icmp eq i64 %533, 0
  store i1 %534, ptr %68
  %535 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !77
  %536 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %535, i64 0, i32 3
  %537 = load ptr addrspace(1), ptr addrspace(1) %536, align 8
  %538 = bitcast ptr addrspace(1) %537 to ptr addrspace(1)
  %539 = load i1, ptr %68
  %540 = zext i1 %539 to i64
  %541 = or i64 %540, 72057594037927936
  %542 = getelementptr i8, ptr addrspace(1) null, i64 %541
  %543 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %538, i64 0, i64 0
  store ptr addrspace(1) %542, ptr addrspace(1) %543
  %544 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %535, i64 0, i32 1
  store i64 1, ptr addrspace(1) %544
  %545 = bitcast ptr addrspace(1) %535 to ptr addrspace(1)
  %546 = getelementptr i8, ptr addrspace(1) %545, i64 864691128455135236
  store ptr addrspace(1) %546, ptr %69
  %547 = load ptr addrspace(1), ptr %69
  call void @_Bb02ioprintln(ptr addrspace(1) %547), !dbg !78
  store ptr addrspace(1) null, ptr %70
  ret void
548:
  %549 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %549), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/order2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 4, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 9, column: 17, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 18, scope: !5)
!20 = !DILocation(line: 10, column: 15, scope: !5)
!21 = !DILocation(line: 10, column: 4, scope: !5)
!22 = !DILocation(line: 12, column: 18, scope: !5)
!23 = !DILocation(line: 12, column: 17, scope: !5)
!24 = !DILocation(line: 13, column: 17, scope: !5)
!25 = !DILocation(line: 13, column: 15, scope: !5)
!26 = !DILocation(line: 13, column: 4, scope: !5)
!27 = !DILocation(line: 14, column: 18, scope: !5)
!28 = !DILocation(line: 14, column: 15, scope: !5)
!29 = !DILocation(line: 14, column: 4, scope: !5)
!30 = !DILocation(line: 16, column: 17, scope: !5)
!31 = !DILocation(line: 17, column: 17, scope: !5)
!32 = !DILocation(line: 17, column: 15, scope: !5)
!33 = !DILocation(line: 17, column: 4, scope: !5)
!34 = !DILocation(line: 19, column: 15, scope: !5)
!35 = !DILocation(line: 20, column: 17, scope: !5)
!36 = !DILocation(line: 20, column: 15, scope: !5)
!37 = !DILocation(line: 20, column: 4, scope: !5)
!38 = !DILocation(line: 22, column: 15, scope: !5)
!39 = !DILocation(line: 23, column: 17, scope: !5)
!40 = !DILocation(line: 23, column: 15, scope: !5)
!41 = !DILocation(line: 23, column: 4, scope: !5)
!42 = !DILocation(line: 24, column: 17, scope: !5)
!43 = !DILocation(line: 24, column: 15, scope: !5)
!44 = !DILocation(line: 24, column: 4, scope: !5)
!45 = !DILocation(line: 26, column: 14, scope: !5)
!46 = !DILocation(line: 27, column: 13, scope: !5)
!47 = !DILocation(line: 28, column: 17, scope: !5)
!48 = !DILocation(line: 28, column: 15, scope: !5)
!49 = !DILocation(line: 28, column: 4, scope: !5)
!50 = !DILocation(line: 29, column: 17, scope: !5)
!51 = !DILocation(line: 29, column: 15, scope: !5)
!52 = !DILocation(line: 29, column: 4, scope: !5)
!53 = !DILocation(line: 31, column: 15, scope: !5)
!54 = !DILocation(line: 32, column: 13, scope: !5)
!55 = !DILocation(line: 33, column: 17, scope: !5)
!56 = !DILocation(line: 33, column: 15, scope: !5)
!57 = !DILocation(line: 33, column: 4, scope: !5)
!58 = !DILocation(line: 34, column: 17, scope: !5)
!59 = !DILocation(line: 34, column: 15, scope: !5)
!60 = !DILocation(line: 34, column: 4, scope: !5)
!61 = !DILocation(line: 36, column: 17, scope: !5)
!62 = !DILocation(line: 36, column: 15, scope: !5)
!63 = !DILocation(line: 36, column: 4, scope: !5)
!64 = !DILocation(line: 37, column: 17, scope: !5)
!65 = !DILocation(line: 37, column: 15, scope: !5)
!66 = !DILocation(line: 37, column: 4, scope: !5)
!67 = !DILocation(line: 39, column: 16, scope: !5)
!68 = !DILocation(line: 39, column: 22, scope: !5)
!69 = !DILocation(line: 39, column: 15, scope: !5)
!70 = !DILocation(line: 40, column: 16, scope: !5)
!71 = !DILocation(line: 40, column: 22, scope: !5)
!72 = !DILocation(line: 40, column: 15, scope: !5)
!73 = !DILocation(line: 41, column: 17, scope: !5)
!74 = !DILocation(line: 41, column: 15, scope: !5)
!75 = !DILocation(line: 41, column: 4, scope: !5)
!76 = !DILocation(line: 42, column: 17, scope: !5)
!77 = !DILocation(line: 42, column: 15, scope: !5)
!78 = !DILocation(line: 42, column: 4, scope: !5)
