@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
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
  %i = alloca i64
  %j = alloca i64
  %k = alloca i64
  %l = alloca i64
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca ptr addrspace(1)
  %40 = alloca ptr addrspace(1)
  %41 = alloca i64
  %42 = alloca i64
  %43 = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %45 = alloca i64
  %46 = alloca i64
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca ptr addrspace(1)
  %50 = alloca i8
  %51 = load ptr, ptr @_bal_stack_guard
  %52 = icmp ult ptr %50, %51
  br i1 %52, label %203, label %53
53:
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = and i64 72057594037927935, 14
  %59 = or i64 2449958197289549824, %58
  %60 = getelementptr i8, ptr addrspace(1) null, i64 %59
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %1
  %65 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = and i64 72057594037927935, 22
  %71 = or i64 2449958197289549824, %70
  %72 = getelementptr i8, ptr addrspace(1) null, i64 %71
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %74
  %75 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 864691128455135236
  store ptr addrspace(1) %76, ptr %3
  %77 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %77), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = and i64 72057594037927935, 16
  %83 = or i64 2449958197289549824, %82
  %84 = getelementptr i8, ptr addrspace(1) null, i64 %83
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %5
  %89 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %90 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 3
  %92 = load ptr addrspace(1), ptr addrspace(1) %91, align 8
  %93 = bitcast ptr addrspace(1) %92 to ptr addrspace(1)
  %94 = and i64 72057594037927935, 0
  %95 = or i64 2449958197289549824, %94
  %96 = getelementptr i8, ptr addrspace(1) null, i64 %95
  %97 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %93, i64 0, i64 0
  store ptr addrspace(1) %96, ptr addrspace(1) %97
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 1
  store i64 1, ptr addrspace(1) %98
  %99 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %100 = getelementptr i8, ptr addrspace(1) %99, i64 864691128455135236
  store ptr addrspace(1) %100, ptr %7
  %101 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %101), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %102 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 3
  %104 = load ptr addrspace(1), ptr addrspace(1) %103, align 8
  %105 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %106 = and i64 72057594037927935, 10
  %107 = or i64 2449958197289549824, %106
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %105, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %9
  %113 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %114 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 3
  %116 = load ptr addrspace(1), ptr addrspace(1) %115, align 8
  %117 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %118 = and i64 72057594037927935, 10
  %119 = or i64 2449958197289549824, %118
  %120 = getelementptr i8, ptr addrspace(1) null, i64 %119
  %121 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %117, i64 0, i64 0
  store ptr addrspace(1) %120, ptr addrspace(1) %121
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 1
  store i64 1, ptr addrspace(1) %122
  %123 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 864691128455135236
  store ptr addrspace(1) %124, ptr %11
  %125 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %125), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = and i64 72057594037927935, 1
  %131 = or i64 2449958197289549824, %130
  %132 = getelementptr i8, ptr addrspace(1) null, i64 %131
  %133 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %132, ptr addrspace(1) %133
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %134
  %135 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %136 = getelementptr i8, ptr addrspace(1) %135, i64 864691128455135236
  store ptr addrspace(1) %136, ptr %13
  %137 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %137), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %138 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 3
  %140 = load ptr addrspace(1), ptr addrspace(1) %139, align 8
  %141 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %142 = and i64 72057594037927935, 1
  %143 = or i64 2449958197289549824, %142
  %144 = getelementptr i8, ptr addrspace(1) null, i64 %143
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %141, i64 0, i64 0
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 1
  store i64 1, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %15
  %149 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %149), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %150 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 3
  %152 = load ptr addrspace(1), ptr addrspace(1) %151, align 8
  %153 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %154 = and i64 72057594037927935, 2
  %155 = or i64 2449958197289549824, %154
  %156 = getelementptr i8, ptr addrspace(1) null, i64 %155
  %157 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 0
  store ptr addrspace(1) %156, ptr addrspace(1) %157
  %158 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 1
  store i64 1, ptr addrspace(1) %158
  %159 = bitcast ptr addrspace(1) %150 to ptr addrspace(1)
  %160 = getelementptr i8, ptr addrspace(1) %159, i64 864691128455135236
  store ptr addrspace(1) %160, ptr %17
  %161 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %161), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %162 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %162, i64 0, i32 3
  %164 = load ptr addrspace(1), ptr addrspace(1) %163, align 8
  %165 = bitcast ptr addrspace(1) %164 to ptr addrspace(1)
  %166 = and i64 72057594037927935, 2
  %167 = or i64 2449958197289549824, %166
  %168 = getelementptr i8, ptr addrspace(1) null, i64 %167
  %169 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %165, i64 0, i64 0
  store ptr addrspace(1) %168, ptr addrspace(1) %169
  %170 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %162, i64 0, i32 1
  store i64 1, ptr addrspace(1) %170
  %171 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %172 = getelementptr i8, ptr addrspace(1) %171, i64 864691128455135236
  store ptr addrspace(1) %172, ptr %19
  %173 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %173), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %174 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %175 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %174, i64 0, i32 3
  %176 = load ptr addrspace(1), ptr addrspace(1) %175, align 8
  %177 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %178 = and i64 72057594037927935, 1
  %179 = or i64 2449958197289549824, %178
  %180 = getelementptr i8, ptr addrspace(1) null, i64 %179
  %181 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %177, i64 0, i64 0
  store ptr addrspace(1) %180, ptr addrspace(1) %181
  %182 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %174, i64 0, i32 1
  store i64 1, ptr addrspace(1) %182
  %183 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %184 = getelementptr i8, ptr addrspace(1) %183, i64 864691128455135236
  store ptr addrspace(1) %184, ptr %21
  %185 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %185), !dbg !30
  store ptr addrspace(1) null, ptr %22
  %186 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %187 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 3
  %188 = load ptr addrspace(1), ptr addrspace(1) %187, align 8
  %189 = bitcast ptr addrspace(1) %188 to ptr addrspace(1)
  %190 = and i64 72057594037927935, 1
  %191 = or i64 2449958197289549824, %190
  %192 = getelementptr i8, ptr addrspace(1) null, i64 %191
  %193 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %189, i64 0, i64 0
  store ptr addrspace(1) %192, ptr addrspace(1) %193
  %194 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 1
  store i64 1, ptr addrspace(1) %194
  %195 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %196 = getelementptr i8, ptr addrspace(1) %195, i64 864691128455135236
  store ptr addrspace(1) %196, ptr %23
  %197 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %197), !dbg !32
  store ptr addrspace(1) null, ptr %24
  store i64 12, ptr %i
  store i64 6, ptr %j
  store i64 3, ptr %k
  store i64 4, ptr %l
  %198 = load i64, ptr %j
  %199 = load i64, ptr %k
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %205, label %207
201:
  %202 = load ptr addrspace(1), ptr %49
  call void @_bal_panic(ptr addrspace(1) %202), !dbg !51
  unreachable
203:
  %204 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %204), !dbg !8
  unreachable
205:
  %206 = call ptr addrspace(1) @_bal_panic_construct(i64 5634), !dbg !7
  store ptr addrspace(1) %206, ptr %49
  br label %201
207:
  %208 = icmp eq i64 %198, -9223372036854775808
  %209 = icmp eq i64 %199, -1
  %210 = and i1 %208, %209
  br i1 %210, label %217, label %211
211:
  %212 = sdiv i64 %198, %199
  store i64 %212, ptr %25
  %213 = load i64, ptr %i
  %214 = load i64, ptr %25
  %215 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %213, i64 %214)
  %216 = extractvalue {i64, i1} %215, 1
  br i1 %216, label %235, label %219
217:
  %218 = call ptr addrspace(1) @_bal_panic_construct(i64 5633), !dbg !7
  store ptr addrspace(1) %218, ptr %49
  br label %201
219:
  %220 = extractvalue {i64, i1} %215, 0
  store i64 %220, ptr %26
  %221 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %222 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %221, i64 0, i32 3
  %223 = load ptr addrspace(1), ptr addrspace(1) %222, align 8
  %224 = bitcast ptr addrspace(1) %223 to ptr addrspace(1)
  %225 = load i64, ptr %26
  %226 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %225), !dbg !34
  %227 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %224, i64 0, i64 0
  store ptr addrspace(1) %226, ptr addrspace(1) %227
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %221, i64 0, i32 1
  store i64 1, ptr addrspace(1) %228
  %229 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 864691128455135236
  store ptr addrspace(1) %230, ptr %27
  %231 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %231), !dbg !35
  store ptr addrspace(1) null, ptr %28
  %232 = load i64, ptr %j
  %233 = load i64, ptr %k
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %237, label %239
235:
  %236 = call ptr addrspace(1) @_bal_panic_construct(i64 5633), !dbg !7
  store ptr addrspace(1) %236, ptr %49
  br label %201
237:
  %238 = call ptr addrspace(1) @_bal_panic_construct(i64 5890), !dbg !7
  store ptr addrspace(1) %238, ptr %49
  br label %201
239:
  %240 = icmp eq i64 %232, -9223372036854775808
  %241 = icmp eq i64 %233, -1
  %242 = and i1 %240, %241
  br i1 %242, label %249, label %243
243:
  %244 = sdiv i64 %232, %233
  store i64 %244, ptr %29
  %245 = load i64, ptr %29
  %246 = load i64, ptr %i
  %247 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %245, i64 %246)
  %248 = extractvalue {i64, i1} %247, 1
  br i1 %248, label %268, label %251
249:
  %250 = call ptr addrspace(1) @_bal_panic_construct(i64 5889), !dbg !7
  store ptr addrspace(1) %250, ptr %49
  br label %201
251:
  %252 = extractvalue {i64, i1} %247, 0
  store i64 %252, ptr %30
  %253 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %254 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %253, i64 0, i32 3
  %255 = load ptr addrspace(1), ptr addrspace(1) %254, align 8
  %256 = bitcast ptr addrspace(1) %255 to ptr addrspace(1)
  %257 = load i64, ptr %30
  %258 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %257), !dbg !37
  %259 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %256, i64 0, i64 0
  store ptr addrspace(1) %258, ptr addrspace(1) %259
  %260 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %253, i64 0, i32 1
  store i64 1, ptr addrspace(1) %260
  %261 = bitcast ptr addrspace(1) %253 to ptr addrspace(1)
  %262 = getelementptr i8, ptr addrspace(1) %261, i64 864691128455135236
  store ptr addrspace(1) %262, ptr %31
  %263 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %263), !dbg !38
  store ptr addrspace(1) null, ptr %32
  %264 = load i64, ptr %j
  %265 = load i64, ptr %k
  %266 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %264, i64 %265)
  %267 = extractvalue {i64, i1} %266, 1
  br i1 %267, label %276, label %270
268:
  %269 = call ptr addrspace(1) @_bal_panic_construct(i64 5889), !dbg !7
  store ptr addrspace(1) %269, ptr %49
  br label %201
270:
  %271 = extractvalue {i64, i1} %266, 0
  store i64 %271, ptr %33
  %272 = load i64, ptr %33
  %273 = load i64, ptr %i
  %274 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %272, i64 %273)
  %275 = extractvalue {i64, i1} %274, 1
  br i1 %275, label %295, label %278
276:
  %277 = call ptr addrspace(1) @_bal_panic_construct(i64 6145), !dbg !7
  store ptr addrspace(1) %277, ptr %49
  br label %201
278:
  %279 = extractvalue {i64, i1} %274, 0
  store i64 %279, ptr %34
  %280 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !39
  %281 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %280, i64 0, i32 3
  %282 = load ptr addrspace(1), ptr addrspace(1) %281, align 8
  %283 = bitcast ptr addrspace(1) %282 to ptr addrspace(1)
  %284 = load i64, ptr %34
  %285 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %284), !dbg !40
  %286 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %283, i64 0, i64 0
  store ptr addrspace(1) %285, ptr addrspace(1) %286
  %287 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %280, i64 0, i32 1
  store i64 1, ptr addrspace(1) %287
  %288 = bitcast ptr addrspace(1) %280 to ptr addrspace(1)
  %289 = getelementptr i8, ptr addrspace(1) %288, i64 864691128455135236
  store ptr addrspace(1) %289, ptr %35
  %290 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %290), !dbg !41
  store ptr addrspace(1) null, ptr %36
  %291 = load i64, ptr %j
  %292 = load i64, ptr %k
  %293 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %291, i64 %292)
  %294 = extractvalue {i64, i1} %293, 1
  br i1 %294, label %303, label %297
295:
  %296 = call ptr addrspace(1) @_bal_panic_construct(i64 6145), !dbg !7
  store ptr addrspace(1) %296, ptr %49
  br label %201
297:
  %298 = extractvalue {i64, i1} %293, 0
  store i64 %298, ptr %37
  %299 = load i64, ptr %i
  %300 = load i64, ptr %37
  %301 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %299, i64 %300)
  %302 = extractvalue {i64, i1} %301, 1
  br i1 %302, label %321, label %305
303:
  %304 = call ptr addrspace(1) @_bal_panic_construct(i64 6401), !dbg !7
  store ptr addrspace(1) %304, ptr %49
  br label %201
305:
  %306 = extractvalue {i64, i1} %301, 0
  store i64 %306, ptr %38
  %307 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !42
  %308 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 3
  %309 = load ptr addrspace(1), ptr addrspace(1) %308, align 8
  %310 = bitcast ptr addrspace(1) %309 to ptr addrspace(1)
  %311 = load i64, ptr %38
  %312 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %311), !dbg !43
  %313 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %310, i64 0, i64 0
  store ptr addrspace(1) %312, ptr addrspace(1) %313
  %314 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 1
  store i64 1, ptr addrspace(1) %314
  %315 = bitcast ptr addrspace(1) %307 to ptr addrspace(1)
  %316 = getelementptr i8, ptr addrspace(1) %315, i64 864691128455135236
  store ptr addrspace(1) %316, ptr %39
  %317 = load ptr addrspace(1), ptr %39
  call void @_Bb02ioprintln(ptr addrspace(1) %317), !dbg !44
  store ptr addrspace(1) null, ptr %40
  %318 = load i64, ptr %l
  %319 = load i64, ptr %k
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %323, label %325
321:
  %322 = call ptr addrspace(1) @_bal_panic_construct(i64 6401), !dbg !7
  store ptr addrspace(1) %322, ptr %49
  br label %201
323:
  %324 = call ptr addrspace(1) @_bal_panic_construct(i64 6658), !dbg !7
  store ptr addrspace(1) %324, ptr %49
  br label %201
325:
  %326 = icmp eq i64 %318, -9223372036854775808
  %327 = icmp eq i64 %319, -1
  %328 = and i1 %326, %327
  br i1 %328, label %331, label %329
329:
  %330 = srem i64 %318, %319
  store i64 %330, ptr %41
  br label %332
331:
  store i64 0, ptr %41
  br label %332
332:
  %333 = load i64, ptr %41
  %334 = load i64, ptr %j
  %335 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %333, i64 %334)
  %336 = extractvalue {i64, i1} %335, 1
  br i1 %336, label %353, label %337
337:
  %338 = extractvalue {i64, i1} %335, 0
  store i64 %338, ptr %42
  %339 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !45
  %340 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %339, i64 0, i32 3
  %341 = load ptr addrspace(1), ptr addrspace(1) %340, align 8
  %342 = bitcast ptr addrspace(1) %341 to ptr addrspace(1)
  %343 = load i64, ptr %42
  %344 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %343), !dbg !46
  %345 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %342, i64 0, i64 0
  store ptr addrspace(1) %344, ptr addrspace(1) %345
  %346 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %339, i64 0, i32 1
  store i64 1, ptr addrspace(1) %346
  %347 = bitcast ptr addrspace(1) %339 to ptr addrspace(1)
  %348 = getelementptr i8, ptr addrspace(1) %347, i64 864691128455135236
  store ptr addrspace(1) %348, ptr %43
  %349 = load ptr addrspace(1), ptr %43
  call void @_Bb02ioprintln(ptr addrspace(1) %349), !dbg !47
  store ptr addrspace(1) null, ptr %44
  %350 = load i64, ptr %j
  %351 = load i64, ptr %l
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %355, label %357
353:
  %354 = call ptr addrspace(1) @_bal_panic_construct(i64 6657), !dbg !7
  store ptr addrspace(1) %354, ptr %49
  br label %201
355:
  %356 = call ptr addrspace(1) @_bal_panic_construct(i64 6914), !dbg !7
  store ptr addrspace(1) %356, ptr %49
  br label %201
357:
  %358 = icmp eq i64 %350, -9223372036854775808
  %359 = icmp eq i64 %351, -1
  %360 = and i1 %358, %359
  br i1 %360, label %363, label %361
361:
  %362 = srem i64 %350, %351
  store i64 %362, ptr %45
  br label %364
363:
  store i64 0, ptr %45
  br label %364
364:
  %365 = load i64, ptr %45
  %366 = load i64, ptr %k
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %370
368:
  %369 = call ptr addrspace(1) @_bal_panic_construct(i64 6914), !dbg !7
  store ptr addrspace(1) %369, ptr %49
  br label %201
370:
  %371 = icmp eq i64 %365, -9223372036854775808
  %372 = icmp eq i64 %366, -1
  %373 = and i1 %371, %372
  br i1 %373, label %376, label %374
374:
  %375 = srem i64 %365, %366
  store i64 %375, ptr %46
  br label %377
376:
  store i64 0, ptr %46
  br label %377
377:
  %378 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %379 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %378, i64 0, i32 3
  %380 = load ptr addrspace(1), ptr addrspace(1) %379, align 8
  %381 = bitcast ptr addrspace(1) %380 to ptr addrspace(1)
  %382 = load i64, ptr %46
  %383 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %382), !dbg !49
  %384 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %381, i64 0, i64 0
  store ptr addrspace(1) %383, ptr addrspace(1) %384
  %385 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %378, i64 0, i32 1
  store i64 1, ptr addrspace(1) %385
  %386 = bitcast ptr addrspace(1) %378 to ptr addrspace(1)
  %387 = getelementptr i8, ptr addrspace(1) %386, i64 864691128455135236
  store ptr addrspace(1) %387, ptr %47
  %388 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %388), !dbg !50
  store ptr addrspace(1) null, ptr %48
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/op1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 13, scope: !5)
!10 = !DILocation(line: 5, column: 2, scope: !5)
!11 = !DILocation(line: 6, column: 13, scope: !5)
!12 = !DILocation(line: 6, column: 2, scope: !5)
!13 = !DILocation(line: 7, column: 13, scope: !5)
!14 = !DILocation(line: 7, column: 2, scope: !5)
!15 = !DILocation(line: 8, column: 13, scope: !5)
!16 = !DILocation(line: 8, column: 2, scope: !5)
!17 = !DILocation(line: 9, column: 13, scope: !5)
!18 = !DILocation(line: 9, column: 2, scope: !5)
!19 = !DILocation(line: 10, column: 13, scope: !5)
!20 = !DILocation(line: 10, column: 2, scope: !5)
!21 = !DILocation(line: 11, column: 13, scope: !5)
!22 = !DILocation(line: 11, column: 2, scope: !5)
!23 = !DILocation(line: 12, column: 13, scope: !5)
!24 = !DILocation(line: 12, column: 2, scope: !5)
!25 = !DILocation(line: 13, column: 13, scope: !5)
!26 = !DILocation(line: 13, column: 2, scope: !5)
!27 = !DILocation(line: 14, column: 13, scope: !5)
!28 = !DILocation(line: 14, column: 2, scope: !5)
!29 = !DILocation(line: 15, column: 14, scope: !5)
!30 = !DILocation(line: 15, column: 2, scope: !5)
!31 = !DILocation(line: 16, column: 13, scope: !5)
!32 = !DILocation(line: 16, column: 2, scope: !5)
!33 = !DILocation(line: 22, column: 13, scope: !5)
!34 = !DILocation(line: 22, column: 13, scope: !5)
!35 = !DILocation(line: 22, column: 2, scope: !5)
!36 = !DILocation(line: 23, column: 13, scope: !5)
!37 = !DILocation(line: 23, column: 13, scope: !5)
!38 = !DILocation(line: 23, column: 2, scope: !5)
!39 = !DILocation(line: 24, column: 13, scope: !5)
!40 = !DILocation(line: 24, column: 13, scope: !5)
!41 = !DILocation(line: 24, column: 2, scope: !5)
!42 = !DILocation(line: 25, column: 13, scope: !5)
!43 = !DILocation(line: 25, column: 13, scope: !5)
!44 = !DILocation(line: 25, column: 2, scope: !5)
!45 = !DILocation(line: 26, column: 13, scope: !5)
!46 = !DILocation(line: 26, column: 13, scope: !5)
!47 = !DILocation(line: 26, column: 2, scope: !5)
!48 = !DILocation(line: 27, column: 13, scope: !5)
!49 = !DILocation(line: 27, column: 13, scope: !5)
!50 = !DILocation(line: 27, column: 2, scope: !5)
!51 = !DILocation(line: 28, column: 0, scope: !5)
