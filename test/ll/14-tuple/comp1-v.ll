@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_opt_list_compare(ptr addrspace(1), ptr addrspace(1)) readonly
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
  br i1 %54, label %367, label %55
55:
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = and i64 72057594037927935, 0
  %61 = or i64 2449958197289549824, %60
  %62 = getelementptr i8, ptr addrspace(1) null, i64 %61
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %64
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 2, ptr addrspace(1) %65
  %66 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 864691128455135236
  store ptr addrspace(1) %67, ptr %1
  %68 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %68, ptr %a
  %69 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !10
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 3
  %71 = load ptr addrspace(1), ptr addrspace(1) %70, align 8
  %72 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %73 = and i64 72057594037927935, 1
  %74 = or i64 2449958197289549824, %73
  %75 = getelementptr i8, ptr addrspace(1) null, i64 %74
  %76 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %72, i64 0, i64 0
  store ptr addrspace(1) %75, ptr addrspace(1) %76
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %72, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 1
  store i64 2, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %2
  %81 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %81, ptr %b
  %82 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !11
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 3
  %84 = load ptr addrspace(1), ptr addrspace(1) %83, align 8
  %85 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %86 = and i64 72057594037927935, 0
  %87 = or i64 2449958197289549824, %86
  %88 = getelementptr i8, ptr addrspace(1) null, i64 %87
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %85, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %85, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 1
  store i64 2, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %3
  %94 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %94, ptr %c
  %95 = load ptr addrspace(1), ptr %a
  %96 = load ptr addrspace(1), ptr %b
  %97 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %95, ptr addrspace(1) %96), !dbg !12
  %98 = icmp eq i64 %97, 0
  store i1 %98, ptr %4
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load i1, ptr %4
  %104 = zext i1 %103 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, ptr addrspace(1) null, i64 %105
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %5
  %111 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %112 = load ptr addrspace(1), ptr %a
  %113 = load ptr addrspace(1), ptr %b
  %114 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %112, ptr addrspace(1) %113), !dbg !15
  %115 = icmp ule i64 %114, 1
  store i1 %115, ptr %7
  %116 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 3
  %118 = load ptr addrspace(1), ptr addrspace(1) %117, align 8
  %119 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %120 = load i1, ptr %7
  %121 = zext i1 %120 to i64
  %122 = or i64 %121, 72057594037927936
  %123 = getelementptr i8, ptr addrspace(1) null, i64 %122
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %119, i64 0, i64 0
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  store i64 1, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %8
  %128 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %128), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %129 = load ptr addrspace(1), ptr %a
  %130 = load ptr addrspace(1), ptr %b
  %131 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %129, ptr addrspace(1) %130), !dbg !18
  %132 = icmp eq i64 %131, 2
  store i1 %132, ptr %10
  %133 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 3
  %135 = load ptr addrspace(1), ptr addrspace(1) %134, align 8
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = load i1, ptr %10
  %138 = zext i1 %137 to i64
  %139 = or i64 %138, 72057594037927936
  %140 = getelementptr i8, ptr addrspace(1) null, i64 %139
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  store i64 1, ptr addrspace(1) %142
  %143 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %144 = getelementptr i8, ptr addrspace(1) %143, i64 864691128455135236
  store ptr addrspace(1) %144, ptr %11
  %145 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %145), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %146 = load ptr addrspace(1), ptr %a
  %147 = load ptr addrspace(1), ptr %b
  %148 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %146, ptr addrspace(1) %147), !dbg !21
  %149 = icmp sge i64 %148, 1
  store i1 %149, ptr %13
  %150 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 3
  %152 = load ptr addrspace(1), ptr addrspace(1) %151, align 8
  %153 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %154 = load i1, ptr %13
  %155 = zext i1 %154 to i64
  %156 = or i64 %155, 72057594037927936
  %157 = getelementptr i8, ptr addrspace(1) null, i64 %156
  %158 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 0
  store ptr addrspace(1) %157, ptr addrspace(1) %158
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 1
  store i64 1, ptr addrspace(1) %159
  %160 = bitcast ptr addrspace(1) %150 to ptr addrspace(1)
  %161 = getelementptr i8, ptr addrspace(1) %160, i64 864691128455135236
  store ptr addrspace(1) %161, ptr %14
  %162 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %162), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %163 = load ptr addrspace(1), ptr %b
  %164 = load ptr addrspace(1), ptr %a
  %165 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %163, ptr addrspace(1) %164), !dbg !24
  %166 = icmp eq i64 %165, 0
  store i1 %166, ptr %16
  %167 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 3
  %169 = load ptr addrspace(1), ptr addrspace(1) %168, align 8
  %170 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %171 = load i1, ptr %16
  %172 = zext i1 %171 to i64
  %173 = or i64 %172, 72057594037927936
  %174 = getelementptr i8, ptr addrspace(1) null, i64 %173
  %175 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %170, i64 0, i64 0
  store ptr addrspace(1) %174, ptr addrspace(1) %175
  %176 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 1
  store i64 1, ptr addrspace(1) %176
  %177 = bitcast ptr addrspace(1) %167 to ptr addrspace(1)
  %178 = getelementptr i8, ptr addrspace(1) %177, i64 864691128455135236
  store ptr addrspace(1) %178, ptr %17
  %179 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %179), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %180 = load ptr addrspace(1), ptr %b
  %181 = load ptr addrspace(1), ptr %a
  %182 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %180, ptr addrspace(1) %181), !dbg !27
  %183 = icmp ule i64 %182, 1
  store i1 %183, ptr %19
  %184 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !28
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 3
  %186 = load ptr addrspace(1), ptr addrspace(1) %185, align 8
  %187 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %188 = load i1, ptr %19
  %189 = zext i1 %188 to i64
  %190 = or i64 %189, 72057594037927936
  %191 = getelementptr i8, ptr addrspace(1) null, i64 %190
  %192 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %187, i64 0, i64 0
  store ptr addrspace(1) %191, ptr addrspace(1) %192
  %193 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 1
  store i64 1, ptr addrspace(1) %193
  %194 = bitcast ptr addrspace(1) %184 to ptr addrspace(1)
  %195 = getelementptr i8, ptr addrspace(1) %194, i64 864691128455135236
  store ptr addrspace(1) %195, ptr %20
  %196 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %196), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %197 = load ptr addrspace(1), ptr %b
  %198 = load ptr addrspace(1), ptr %a
  %199 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %197, ptr addrspace(1) %198), !dbg !30
  %200 = icmp eq i64 %199, 2
  store i1 %200, ptr %22
  %201 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !31
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %201, i64 0, i32 3
  %203 = load ptr addrspace(1), ptr addrspace(1) %202, align 8
  %204 = bitcast ptr addrspace(1) %203 to ptr addrspace(1)
  %205 = load i1, ptr %22
  %206 = zext i1 %205 to i64
  %207 = or i64 %206, 72057594037927936
  %208 = getelementptr i8, ptr addrspace(1) null, i64 %207
  %209 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %204, i64 0, i64 0
  store ptr addrspace(1) %208, ptr addrspace(1) %209
  %210 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %201, i64 0, i32 1
  store i64 1, ptr addrspace(1) %210
  %211 = bitcast ptr addrspace(1) %201 to ptr addrspace(1)
  %212 = getelementptr i8, ptr addrspace(1) %211, i64 864691128455135236
  store ptr addrspace(1) %212, ptr %23
  %213 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %213), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %214 = load ptr addrspace(1), ptr %b
  %215 = load ptr addrspace(1), ptr %a
  %216 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %214, ptr addrspace(1) %215), !dbg !33
  %217 = icmp sge i64 %216, 1
  store i1 %217, ptr %25
  %218 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !34
  %219 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %218, i64 0, i32 3
  %220 = load ptr addrspace(1), ptr addrspace(1) %219, align 8
  %221 = bitcast ptr addrspace(1) %220 to ptr addrspace(1)
  %222 = load i1, ptr %25
  %223 = zext i1 %222 to i64
  %224 = or i64 %223, 72057594037927936
  %225 = getelementptr i8, ptr addrspace(1) null, i64 %224
  %226 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %221, i64 0, i64 0
  store ptr addrspace(1) %225, ptr addrspace(1) %226
  %227 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %218, i64 0, i32 1
  store i64 1, ptr addrspace(1) %227
  %228 = bitcast ptr addrspace(1) %218 to ptr addrspace(1)
  %229 = getelementptr i8, ptr addrspace(1) %228, i64 864691128455135236
  store ptr addrspace(1) %229, ptr %26
  %230 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %230), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %231 = load ptr addrspace(1), ptr %a
  %232 = load ptr addrspace(1), ptr %c
  %233 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %231, ptr addrspace(1) %232), !dbg !36
  %234 = icmp eq i64 %233, 0
  store i1 %234, ptr %28
  %235 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !37
  %236 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %235, i64 0, i32 3
  %237 = load ptr addrspace(1), ptr addrspace(1) %236, align 8
  %238 = bitcast ptr addrspace(1) %237 to ptr addrspace(1)
  %239 = load i1, ptr %28
  %240 = zext i1 %239 to i64
  %241 = or i64 %240, 72057594037927936
  %242 = getelementptr i8, ptr addrspace(1) null, i64 %241
  %243 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %238, i64 0, i64 0
  store ptr addrspace(1) %242, ptr addrspace(1) %243
  %244 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %235, i64 0, i32 1
  store i64 1, ptr addrspace(1) %244
  %245 = bitcast ptr addrspace(1) %235 to ptr addrspace(1)
  %246 = getelementptr i8, ptr addrspace(1) %245, i64 864691128455135236
  store ptr addrspace(1) %246, ptr %29
  %247 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %247), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %248 = load ptr addrspace(1), ptr %a
  %249 = load ptr addrspace(1), ptr %c
  %250 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %248, ptr addrspace(1) %249), !dbg !39
  %251 = icmp ule i64 %250, 1
  store i1 %251, ptr %31
  %252 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !40
  %253 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %252, i64 0, i32 3
  %254 = load ptr addrspace(1), ptr addrspace(1) %253, align 8
  %255 = bitcast ptr addrspace(1) %254 to ptr addrspace(1)
  %256 = load i1, ptr %31
  %257 = zext i1 %256 to i64
  %258 = or i64 %257, 72057594037927936
  %259 = getelementptr i8, ptr addrspace(1) null, i64 %258
  %260 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %255, i64 0, i64 0
  store ptr addrspace(1) %259, ptr addrspace(1) %260
  %261 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %252, i64 0, i32 1
  store i64 1, ptr addrspace(1) %261
  %262 = bitcast ptr addrspace(1) %252 to ptr addrspace(1)
  %263 = getelementptr i8, ptr addrspace(1) %262, i64 864691128455135236
  store ptr addrspace(1) %263, ptr %32
  %264 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %264), !dbg !41
  store ptr addrspace(1) null, ptr %33
  %265 = load ptr addrspace(1), ptr %a
  %266 = load ptr addrspace(1), ptr %c
  %267 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %265, ptr addrspace(1) %266), !dbg !42
  %268 = icmp eq i64 %267, 2
  store i1 %268, ptr %34
  %269 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !43
  %270 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %269, i64 0, i32 3
  %271 = load ptr addrspace(1), ptr addrspace(1) %270, align 8
  %272 = bitcast ptr addrspace(1) %271 to ptr addrspace(1)
  %273 = load i1, ptr %34
  %274 = zext i1 %273 to i64
  %275 = or i64 %274, 72057594037927936
  %276 = getelementptr i8, ptr addrspace(1) null, i64 %275
  %277 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %272, i64 0, i64 0
  store ptr addrspace(1) %276, ptr addrspace(1) %277
  %278 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %269, i64 0, i32 1
  store i64 1, ptr addrspace(1) %278
  %279 = bitcast ptr addrspace(1) %269 to ptr addrspace(1)
  %280 = getelementptr i8, ptr addrspace(1) %279, i64 864691128455135236
  store ptr addrspace(1) %280, ptr %35
  %281 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %281), !dbg !44
  store ptr addrspace(1) null, ptr %36
  %282 = load ptr addrspace(1), ptr %a
  %283 = load ptr addrspace(1), ptr %c
  %284 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %282, ptr addrspace(1) %283), !dbg !45
  %285 = icmp sge i64 %284, 1
  store i1 %285, ptr %37
  %286 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !46
  %287 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 3
  %288 = load ptr addrspace(1), ptr addrspace(1) %287, align 8
  %289 = bitcast ptr addrspace(1) %288 to ptr addrspace(1)
  %290 = load i1, ptr %37
  %291 = zext i1 %290 to i64
  %292 = or i64 %291, 72057594037927936
  %293 = getelementptr i8, ptr addrspace(1) null, i64 %292
  %294 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %289, i64 0, i64 0
  store ptr addrspace(1) %293, ptr addrspace(1) %294
  %295 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 1
  store i64 1, ptr addrspace(1) %295
  %296 = bitcast ptr addrspace(1) %286 to ptr addrspace(1)
  %297 = getelementptr i8, ptr addrspace(1) %296, i64 864691128455135236
  store ptr addrspace(1) %297, ptr %38
  %298 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %298), !dbg !47
  store ptr addrspace(1) null, ptr %39
  %299 = load ptr addrspace(1), ptr %c
  %300 = load ptr addrspace(1), ptr %a
  %301 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %299, ptr addrspace(1) %300), !dbg !48
  %302 = icmp eq i64 %301, 0
  store i1 %302, ptr %40
  %303 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !49
  %304 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %303, i64 0, i32 3
  %305 = load ptr addrspace(1), ptr addrspace(1) %304, align 8
  %306 = bitcast ptr addrspace(1) %305 to ptr addrspace(1)
  %307 = load i1, ptr %40
  %308 = zext i1 %307 to i64
  %309 = or i64 %308, 72057594037927936
  %310 = getelementptr i8, ptr addrspace(1) null, i64 %309
  %311 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %306, i64 0, i64 0
  store ptr addrspace(1) %310, ptr addrspace(1) %311
  %312 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %303, i64 0, i32 1
  store i64 1, ptr addrspace(1) %312
  %313 = bitcast ptr addrspace(1) %303 to ptr addrspace(1)
  %314 = getelementptr i8, ptr addrspace(1) %313, i64 864691128455135236
  store ptr addrspace(1) %314, ptr %41
  %315 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %315), !dbg !50
  store ptr addrspace(1) null, ptr %42
  %316 = load ptr addrspace(1), ptr %c
  %317 = load ptr addrspace(1), ptr %a
  %318 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %316, ptr addrspace(1) %317), !dbg !51
  %319 = icmp ule i64 %318, 1
  store i1 %319, ptr %43
  %320 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !52
  %321 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %320, i64 0, i32 3
  %322 = load ptr addrspace(1), ptr addrspace(1) %321, align 8
  %323 = bitcast ptr addrspace(1) %322 to ptr addrspace(1)
  %324 = load i1, ptr %43
  %325 = zext i1 %324 to i64
  %326 = or i64 %325, 72057594037927936
  %327 = getelementptr i8, ptr addrspace(1) null, i64 %326
  %328 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %323, i64 0, i64 0
  store ptr addrspace(1) %327, ptr addrspace(1) %328
  %329 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %320, i64 0, i32 1
  store i64 1, ptr addrspace(1) %329
  %330 = bitcast ptr addrspace(1) %320 to ptr addrspace(1)
  %331 = getelementptr i8, ptr addrspace(1) %330, i64 864691128455135236
  store ptr addrspace(1) %331, ptr %44
  %332 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %332), !dbg !53
  store ptr addrspace(1) null, ptr %45
  %333 = load ptr addrspace(1), ptr %c
  %334 = load ptr addrspace(1), ptr %a
  %335 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %333, ptr addrspace(1) %334), !dbg !54
  %336 = icmp eq i64 %335, 2
  store i1 %336, ptr %46
  %337 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !55
  %338 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %337, i64 0, i32 3
  %339 = load ptr addrspace(1), ptr addrspace(1) %338, align 8
  %340 = bitcast ptr addrspace(1) %339 to ptr addrspace(1)
  %341 = load i1, ptr %46
  %342 = zext i1 %341 to i64
  %343 = or i64 %342, 72057594037927936
  %344 = getelementptr i8, ptr addrspace(1) null, i64 %343
  %345 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %340, i64 0, i64 0
  store ptr addrspace(1) %344, ptr addrspace(1) %345
  %346 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %337, i64 0, i32 1
  store i64 1, ptr addrspace(1) %346
  %347 = bitcast ptr addrspace(1) %337 to ptr addrspace(1)
  %348 = getelementptr i8, ptr addrspace(1) %347, i64 864691128455135236
  store ptr addrspace(1) %348, ptr %47
  %349 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %349), !dbg !56
  store ptr addrspace(1) null, ptr %48
  %350 = load ptr addrspace(1), ptr %c
  %351 = load ptr addrspace(1), ptr %a
  %352 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %350, ptr addrspace(1) %351), !dbg !57
  %353 = icmp sge i64 %352, 1
  store i1 %353, ptr %49
  %354 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !58
  %355 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %354, i64 0, i32 3
  %356 = load ptr addrspace(1), ptr addrspace(1) %355, align 8
  %357 = bitcast ptr addrspace(1) %356 to ptr addrspace(1)
  %358 = load i1, ptr %49
  %359 = zext i1 %358 to i64
  %360 = or i64 %359, 72057594037927936
  %361 = getelementptr i8, ptr addrspace(1) null, i64 %360
  %362 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %357, i64 0, i64 0
  store ptr addrspace(1) %361, ptr addrspace(1) %362
  %363 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %354, i64 0, i32 1
  store i64 1, ptr addrspace(1) %363
  %364 = bitcast ptr addrspace(1) %354 to ptr addrspace(1)
  %365 = getelementptr i8, ptr addrspace(1) %364, i64 864691128455135236
  store ptr addrspace(1) %365, ptr %50
  %366 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %366), !dbg !59
  store ptr addrspace(1) null, ptr %51
  ret void
367:
  %368 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %368), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/comp1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 15, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 15, scope: !5)
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
