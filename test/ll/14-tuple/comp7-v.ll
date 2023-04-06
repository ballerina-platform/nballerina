@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
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
  br i1 %54, label %390, label %55
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
  %64 = call ptr addrspace(1) @_bal_float_to_tagged(double 5.0), !dbg !10
  %65 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 1
  store ptr addrspace(1) %64, ptr addrspace(1) %65
  %66 = and i64 72057594037927935, 1
  %67 = or i64 2449958197289549824, %66
  %68 = getelementptr i8, ptr addrspace(1) null, i64 %67
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 2
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 3, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %1
  %73 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %73, ptr %a
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 4), !dbg !11
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = and i64 72057594037927935, 0
  %79 = or i64 2449958197289549824, %78
  %80 = getelementptr i8, ptr addrspace(1) null, i64 %79
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = call ptr addrspace(1) @_bal_float_to_tagged(double 5.0), !dbg !12
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 1
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = and i64 72057594037927935, 1
  %85 = or i64 2449958197289549824, %84
  %86 = getelementptr i8, ptr addrspace(1) null, i64 %85
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 2
  store ptr addrspace(1) %86, ptr addrspace(1) %87
  %88 = and i64 72057594037927935, 2
  %89 = or i64 2449958197289549824, %88
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 3
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 4, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %2
  %95 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %95, ptr %b
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 4), !dbg !13
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = and i64 72057594037927935, 0
  %101 = or i64 2449958197289549824, %100
  %102 = getelementptr i8, ptr addrspace(1) null, i64 %101
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = call ptr addrspace(1) @_bal_float_to_tagged(double 5.0), !dbg !14
  %105 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 1
  store ptr addrspace(1) %104, ptr addrspace(1) %105
  %106 = and i64 72057594037927935, 1
  %107 = or i64 2449958197289549824, %106
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 2
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = and i64 72057594037927935, -1
  %111 = or i64 2449958197289549824, %110
  %112 = getelementptr i8, ptr addrspace(1) null, i64 %111
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 3
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 4, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %3
  %117 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %117, ptr %c
  %118 = load ptr addrspace(1), ptr %a
  %119 = load ptr addrspace(1), ptr %b
  %120 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %118, ptr addrspace(1) %119), !dbg !15
  %121 = icmp eq i64 %120, 0
  store i1 %121, ptr %4
  %122 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %123 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 3
  %124 = load ptr addrspace(1), ptr addrspace(1) %123, align 8
  %125 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %126 = load i1, ptr %4
  %127 = zext i1 %126 to i64
  %128 = or i64 %127, 72057594037927936
  %129 = getelementptr i8, ptr addrspace(1) null, i64 %128
  %130 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %125, i64 0, i64 0
  store ptr addrspace(1) %129, ptr addrspace(1) %130
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 1
  store i64 1, ptr addrspace(1) %131
  %132 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %133 = getelementptr i8, ptr addrspace(1) %132, i64 864691128455135236
  store ptr addrspace(1) %133, ptr %5
  %134 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %134), !dbg !17
  store ptr addrspace(1) null, ptr %6
  %135 = load ptr addrspace(1), ptr %a
  %136 = load ptr addrspace(1), ptr %b
  %137 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %135, ptr addrspace(1) %136), !dbg !18
  %138 = icmp ule i64 %137, 1
  store i1 %138, ptr %7
  %139 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = load i1, ptr %7
  %144 = zext i1 %143 to i64
  %145 = or i64 %144, 72057594037927936
  %146 = getelementptr i8, ptr addrspace(1) null, i64 %145
  %147 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %142, i64 0, i64 0
  store ptr addrspace(1) %146, ptr addrspace(1) %147
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 1
  store i64 1, ptr addrspace(1) %148
  %149 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %150 = getelementptr i8, ptr addrspace(1) %149, i64 864691128455135236
  store ptr addrspace(1) %150, ptr %8
  %151 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %151), !dbg !20
  store ptr addrspace(1) null, ptr %9
  %152 = load ptr addrspace(1), ptr %a
  %153 = load ptr addrspace(1), ptr %b
  %154 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %152, ptr addrspace(1) %153), !dbg !21
  %155 = icmp eq i64 %154, 2
  store i1 %155, ptr %10
  %156 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !22
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %156, i64 0, i32 3
  %158 = load ptr addrspace(1), ptr addrspace(1) %157, align 8
  %159 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %160 = load i1, ptr %10
  %161 = zext i1 %160 to i64
  %162 = or i64 %161, 72057594037927936
  %163 = getelementptr i8, ptr addrspace(1) null, i64 %162
  %164 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %159, i64 0, i64 0
  store ptr addrspace(1) %163, ptr addrspace(1) %164
  %165 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %156, i64 0, i32 1
  store i64 1, ptr addrspace(1) %165
  %166 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %167 = getelementptr i8, ptr addrspace(1) %166, i64 864691128455135236
  store ptr addrspace(1) %167, ptr %11
  %168 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %168), !dbg !23
  store ptr addrspace(1) null, ptr %12
  %169 = load ptr addrspace(1), ptr %a
  %170 = load ptr addrspace(1), ptr %b
  %171 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %169, ptr addrspace(1) %170), !dbg !24
  %172 = icmp sge i64 %171, 1
  store i1 %172, ptr %13
  %173 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !25
  %174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 3
  %175 = load ptr addrspace(1), ptr addrspace(1) %174, align 8
  %176 = bitcast ptr addrspace(1) %175 to ptr addrspace(1)
  %177 = load i1, ptr %13
  %178 = zext i1 %177 to i64
  %179 = or i64 %178, 72057594037927936
  %180 = getelementptr i8, ptr addrspace(1) null, i64 %179
  %181 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %176, i64 0, i64 0
  store ptr addrspace(1) %180, ptr addrspace(1) %181
  %182 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 1
  store i64 1, ptr addrspace(1) %182
  %183 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %184 = getelementptr i8, ptr addrspace(1) %183, i64 864691128455135236
  store ptr addrspace(1) %184, ptr %14
  %185 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %185), !dbg !26
  store ptr addrspace(1) null, ptr %15
  %186 = load ptr addrspace(1), ptr %b
  %187 = load ptr addrspace(1), ptr %a
  %188 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %186, ptr addrspace(1) %187), !dbg !27
  %189 = icmp eq i64 %188, 0
  store i1 %189, ptr %16
  %190 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !28
  %191 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %190, i64 0, i32 3
  %192 = load ptr addrspace(1), ptr addrspace(1) %191, align 8
  %193 = bitcast ptr addrspace(1) %192 to ptr addrspace(1)
  %194 = load i1, ptr %16
  %195 = zext i1 %194 to i64
  %196 = or i64 %195, 72057594037927936
  %197 = getelementptr i8, ptr addrspace(1) null, i64 %196
  %198 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %193, i64 0, i64 0
  store ptr addrspace(1) %197, ptr addrspace(1) %198
  %199 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %190, i64 0, i32 1
  store i64 1, ptr addrspace(1) %199
  %200 = bitcast ptr addrspace(1) %190 to ptr addrspace(1)
  %201 = getelementptr i8, ptr addrspace(1) %200, i64 864691128455135236
  store ptr addrspace(1) %201, ptr %17
  %202 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %202), !dbg !29
  store ptr addrspace(1) null, ptr %18
  %203 = load ptr addrspace(1), ptr %b
  %204 = load ptr addrspace(1), ptr %a
  %205 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %203, ptr addrspace(1) %204), !dbg !30
  %206 = icmp ule i64 %205, 1
  store i1 %206, ptr %19
  %207 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !31
  %208 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 3
  %209 = load ptr addrspace(1), ptr addrspace(1) %208, align 8
  %210 = bitcast ptr addrspace(1) %209 to ptr addrspace(1)
  %211 = load i1, ptr %19
  %212 = zext i1 %211 to i64
  %213 = or i64 %212, 72057594037927936
  %214 = getelementptr i8, ptr addrspace(1) null, i64 %213
  %215 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %210, i64 0, i64 0
  store ptr addrspace(1) %214, ptr addrspace(1) %215
  %216 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 1
  store i64 1, ptr addrspace(1) %216
  %217 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %218 = getelementptr i8, ptr addrspace(1) %217, i64 864691128455135236
  store ptr addrspace(1) %218, ptr %20
  %219 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %219), !dbg !32
  store ptr addrspace(1) null, ptr %21
  %220 = load ptr addrspace(1), ptr %b
  %221 = load ptr addrspace(1), ptr %a
  %222 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %220, ptr addrspace(1) %221), !dbg !33
  %223 = icmp eq i64 %222, 2
  store i1 %223, ptr %22
  %224 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !34
  %225 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %224, i64 0, i32 3
  %226 = load ptr addrspace(1), ptr addrspace(1) %225, align 8
  %227 = bitcast ptr addrspace(1) %226 to ptr addrspace(1)
  %228 = load i1, ptr %22
  %229 = zext i1 %228 to i64
  %230 = or i64 %229, 72057594037927936
  %231 = getelementptr i8, ptr addrspace(1) null, i64 %230
  %232 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %227, i64 0, i64 0
  store ptr addrspace(1) %231, ptr addrspace(1) %232
  %233 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %224, i64 0, i32 1
  store i64 1, ptr addrspace(1) %233
  %234 = bitcast ptr addrspace(1) %224 to ptr addrspace(1)
  %235 = getelementptr i8, ptr addrspace(1) %234, i64 864691128455135236
  store ptr addrspace(1) %235, ptr %23
  %236 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %236), !dbg !35
  store ptr addrspace(1) null, ptr %24
  %237 = load ptr addrspace(1), ptr %b
  %238 = load ptr addrspace(1), ptr %a
  %239 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %237, ptr addrspace(1) %238), !dbg !36
  %240 = icmp sge i64 %239, 1
  store i1 %240, ptr %25
  %241 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !37
  %242 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %241, i64 0, i32 3
  %243 = load ptr addrspace(1), ptr addrspace(1) %242, align 8
  %244 = bitcast ptr addrspace(1) %243 to ptr addrspace(1)
  %245 = load i1, ptr %25
  %246 = zext i1 %245 to i64
  %247 = or i64 %246, 72057594037927936
  %248 = getelementptr i8, ptr addrspace(1) null, i64 %247
  %249 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %244, i64 0, i64 0
  store ptr addrspace(1) %248, ptr addrspace(1) %249
  %250 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %241, i64 0, i32 1
  store i64 1, ptr addrspace(1) %250
  %251 = bitcast ptr addrspace(1) %241 to ptr addrspace(1)
  %252 = getelementptr i8, ptr addrspace(1) %251, i64 864691128455135236
  store ptr addrspace(1) %252, ptr %26
  %253 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %253), !dbg !38
  store ptr addrspace(1) null, ptr %27
  %254 = load ptr addrspace(1), ptr %a
  %255 = load ptr addrspace(1), ptr %c
  %256 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %254, ptr addrspace(1) %255), !dbg !39
  %257 = icmp eq i64 %256, 0
  store i1 %257, ptr %28
  %258 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !40
  %259 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 3
  %260 = load ptr addrspace(1), ptr addrspace(1) %259, align 8
  %261 = bitcast ptr addrspace(1) %260 to ptr addrspace(1)
  %262 = load i1, ptr %28
  %263 = zext i1 %262 to i64
  %264 = or i64 %263, 72057594037927936
  %265 = getelementptr i8, ptr addrspace(1) null, i64 %264
  %266 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %261, i64 0, i64 0
  store ptr addrspace(1) %265, ptr addrspace(1) %266
  %267 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 1
  store i64 1, ptr addrspace(1) %267
  %268 = bitcast ptr addrspace(1) %258 to ptr addrspace(1)
  %269 = getelementptr i8, ptr addrspace(1) %268, i64 864691128455135236
  store ptr addrspace(1) %269, ptr %29
  %270 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %270), !dbg !41
  store ptr addrspace(1) null, ptr %30
  %271 = load ptr addrspace(1), ptr %a
  %272 = load ptr addrspace(1), ptr %c
  %273 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %271, ptr addrspace(1) %272), !dbg !42
  %274 = icmp ule i64 %273, 1
  store i1 %274, ptr %31
  %275 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !43
  %276 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %275, i64 0, i32 3
  %277 = load ptr addrspace(1), ptr addrspace(1) %276, align 8
  %278 = bitcast ptr addrspace(1) %277 to ptr addrspace(1)
  %279 = load i1, ptr %31
  %280 = zext i1 %279 to i64
  %281 = or i64 %280, 72057594037927936
  %282 = getelementptr i8, ptr addrspace(1) null, i64 %281
  %283 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %278, i64 0, i64 0
  store ptr addrspace(1) %282, ptr addrspace(1) %283
  %284 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %275, i64 0, i32 1
  store i64 1, ptr addrspace(1) %284
  %285 = bitcast ptr addrspace(1) %275 to ptr addrspace(1)
  %286 = getelementptr i8, ptr addrspace(1) %285, i64 864691128455135236
  store ptr addrspace(1) %286, ptr %32
  %287 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %287), !dbg !44
  store ptr addrspace(1) null, ptr %33
  %288 = load ptr addrspace(1), ptr %a
  %289 = load ptr addrspace(1), ptr %c
  %290 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %288, ptr addrspace(1) %289), !dbg !45
  %291 = icmp eq i64 %290, 2
  store i1 %291, ptr %34
  %292 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !46
  %293 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %292, i64 0, i32 3
  %294 = load ptr addrspace(1), ptr addrspace(1) %293, align 8
  %295 = bitcast ptr addrspace(1) %294 to ptr addrspace(1)
  %296 = load i1, ptr %34
  %297 = zext i1 %296 to i64
  %298 = or i64 %297, 72057594037927936
  %299 = getelementptr i8, ptr addrspace(1) null, i64 %298
  %300 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %295, i64 0, i64 0
  store ptr addrspace(1) %299, ptr addrspace(1) %300
  %301 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %292, i64 0, i32 1
  store i64 1, ptr addrspace(1) %301
  %302 = bitcast ptr addrspace(1) %292 to ptr addrspace(1)
  %303 = getelementptr i8, ptr addrspace(1) %302, i64 864691128455135236
  store ptr addrspace(1) %303, ptr %35
  %304 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %304), !dbg !47
  store ptr addrspace(1) null, ptr %36
  %305 = load ptr addrspace(1), ptr %a
  %306 = load ptr addrspace(1), ptr %c
  %307 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %305, ptr addrspace(1) %306), !dbg !48
  %308 = icmp sge i64 %307, 1
  store i1 %308, ptr %37
  %309 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !49
  %310 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %309, i64 0, i32 3
  %311 = load ptr addrspace(1), ptr addrspace(1) %310, align 8
  %312 = bitcast ptr addrspace(1) %311 to ptr addrspace(1)
  %313 = load i1, ptr %37
  %314 = zext i1 %313 to i64
  %315 = or i64 %314, 72057594037927936
  %316 = getelementptr i8, ptr addrspace(1) null, i64 %315
  %317 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %312, i64 0, i64 0
  store ptr addrspace(1) %316, ptr addrspace(1) %317
  %318 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %309, i64 0, i32 1
  store i64 1, ptr addrspace(1) %318
  %319 = bitcast ptr addrspace(1) %309 to ptr addrspace(1)
  %320 = getelementptr i8, ptr addrspace(1) %319, i64 864691128455135236
  store ptr addrspace(1) %320, ptr %38
  %321 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %321), !dbg !50
  store ptr addrspace(1) null, ptr %39
  %322 = load ptr addrspace(1), ptr %c
  %323 = load ptr addrspace(1), ptr %a
  %324 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %322, ptr addrspace(1) %323), !dbg !51
  %325 = icmp eq i64 %324, 0
  store i1 %325, ptr %40
  %326 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !52
  %327 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %326, i64 0, i32 3
  %328 = load ptr addrspace(1), ptr addrspace(1) %327, align 8
  %329 = bitcast ptr addrspace(1) %328 to ptr addrspace(1)
  %330 = load i1, ptr %40
  %331 = zext i1 %330 to i64
  %332 = or i64 %331, 72057594037927936
  %333 = getelementptr i8, ptr addrspace(1) null, i64 %332
  %334 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %329, i64 0, i64 0
  store ptr addrspace(1) %333, ptr addrspace(1) %334
  %335 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %326, i64 0, i32 1
  store i64 1, ptr addrspace(1) %335
  %336 = bitcast ptr addrspace(1) %326 to ptr addrspace(1)
  %337 = getelementptr i8, ptr addrspace(1) %336, i64 864691128455135236
  store ptr addrspace(1) %337, ptr %41
  %338 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %338), !dbg !53
  store ptr addrspace(1) null, ptr %42
  %339 = load ptr addrspace(1), ptr %c
  %340 = load ptr addrspace(1), ptr %a
  %341 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %339, ptr addrspace(1) %340), !dbg !54
  %342 = icmp ule i64 %341, 1
  store i1 %342, ptr %43
  %343 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !55
  %344 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %343, i64 0, i32 3
  %345 = load ptr addrspace(1), ptr addrspace(1) %344, align 8
  %346 = bitcast ptr addrspace(1) %345 to ptr addrspace(1)
  %347 = load i1, ptr %43
  %348 = zext i1 %347 to i64
  %349 = or i64 %348, 72057594037927936
  %350 = getelementptr i8, ptr addrspace(1) null, i64 %349
  %351 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %346, i64 0, i64 0
  store ptr addrspace(1) %350, ptr addrspace(1) %351
  %352 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %343, i64 0, i32 1
  store i64 1, ptr addrspace(1) %352
  %353 = bitcast ptr addrspace(1) %343 to ptr addrspace(1)
  %354 = getelementptr i8, ptr addrspace(1) %353, i64 864691128455135236
  store ptr addrspace(1) %354, ptr %44
  %355 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %355), !dbg !56
  store ptr addrspace(1) null, ptr %45
  %356 = load ptr addrspace(1), ptr %c
  %357 = load ptr addrspace(1), ptr %a
  %358 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %356, ptr addrspace(1) %357), !dbg !57
  %359 = icmp eq i64 %358, 2
  store i1 %359, ptr %46
  %360 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !58
  %361 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %360, i64 0, i32 3
  %362 = load ptr addrspace(1), ptr addrspace(1) %361, align 8
  %363 = bitcast ptr addrspace(1) %362 to ptr addrspace(1)
  %364 = load i1, ptr %46
  %365 = zext i1 %364 to i64
  %366 = or i64 %365, 72057594037927936
  %367 = getelementptr i8, ptr addrspace(1) null, i64 %366
  %368 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %363, i64 0, i64 0
  store ptr addrspace(1) %367, ptr addrspace(1) %368
  %369 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %360, i64 0, i32 1
  store i64 1, ptr addrspace(1) %369
  %370 = bitcast ptr addrspace(1) %360 to ptr addrspace(1)
  %371 = getelementptr i8, ptr addrspace(1) %370, i64 864691128455135236
  store ptr addrspace(1) %371, ptr %47
  %372 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %372), !dbg !59
  store ptr addrspace(1) null, ptr %48
  %373 = load ptr addrspace(1), ptr %c
  %374 = load ptr addrspace(1), ptr %a
  %375 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %373, ptr addrspace(1) %374), !dbg !60
  %376 = icmp sge i64 %375, 1
  store i1 %376, ptr %49
  %377 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !61
  %378 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %377, i64 0, i32 3
  %379 = load ptr addrspace(1), ptr addrspace(1) %378, align 8
  %380 = bitcast ptr addrspace(1) %379 to ptr addrspace(1)
  %381 = load i1, ptr %49
  %382 = zext i1 %381 to i64
  %383 = or i64 %382, 72057594037927936
  %384 = getelementptr i8, ptr addrspace(1) null, i64 %383
  %385 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %380, i64 0, i64 0
  store ptr addrspace(1) %384, ptr addrspace(1) %385
  %386 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %377, i64 0, i32 1
  store i64 1, ptr addrspace(1) %386
  %387 = bitcast ptr addrspace(1) %377 to ptr addrspace(1)
  %388 = getelementptr i8, ptr addrspace(1) %387, i64 864691128455135236
  store ptr addrspace(1) %388, ptr %50
  %389 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %389), !dbg !62
  store ptr addrspace(1) null, ptr %51
  ret void
390:
  %391 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %391), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/comp7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 11, scope: !5)
!10 = !DILocation(line: 6, column: 11, scope: !5)
!11 = !DILocation(line: 7, column: 11, scope: !5)
!12 = !DILocation(line: 7, column: 11, scope: !5)
!13 = !DILocation(line: 8, column: 11, scope: !5)
!14 = !DILocation(line: 8, column: 11, scope: !5)
!15 = !DILocation(line: 10, column: 17, scope: !5)
!16 = !DILocation(line: 10, column: 15, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 11, column: 17, scope: !5)
!19 = !DILocation(line: 11, column: 15, scope: !5)
!20 = !DILocation(line: 11, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 17, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 13, column: 17, scope: !5)
!25 = !DILocation(line: 13, column: 15, scope: !5)
!26 = !DILocation(line: 13, column: 4, scope: !5)
!27 = !DILocation(line: 15, column: 17, scope: !5)
!28 = !DILocation(line: 15, column: 15, scope: !5)
!29 = !DILocation(line: 15, column: 4, scope: !5)
!30 = !DILocation(line: 16, column: 17, scope: !5)
!31 = !DILocation(line: 16, column: 15, scope: !5)
!32 = !DILocation(line: 16, column: 4, scope: !5)
!33 = !DILocation(line: 17, column: 17, scope: !5)
!34 = !DILocation(line: 17, column: 15, scope: !5)
!35 = !DILocation(line: 17, column: 4, scope: !5)
!36 = !DILocation(line: 18, column: 17, scope: !5)
!37 = !DILocation(line: 18, column: 15, scope: !5)
!38 = !DILocation(line: 18, column: 4, scope: !5)
!39 = !DILocation(line: 20, column: 17, scope: !5)
!40 = !DILocation(line: 20, column: 15, scope: !5)
!41 = !DILocation(line: 20, column: 4, scope: !5)
!42 = !DILocation(line: 21, column: 17, scope: !5)
!43 = !DILocation(line: 21, column: 15, scope: !5)
!44 = !DILocation(line: 21, column: 4, scope: !5)
!45 = !DILocation(line: 22, column: 17, scope: !5)
!46 = !DILocation(line: 22, column: 15, scope: !5)
!47 = !DILocation(line: 22, column: 4, scope: !5)
!48 = !DILocation(line: 23, column: 17, scope: !5)
!49 = !DILocation(line: 23, column: 15, scope: !5)
!50 = !DILocation(line: 23, column: 4, scope: !5)
!51 = !DILocation(line: 25, column: 17, scope: !5)
!52 = !DILocation(line: 25, column: 15, scope: !5)
!53 = !DILocation(line: 25, column: 4, scope: !5)
!54 = !DILocation(line: 26, column: 17, scope: !5)
!55 = !DILocation(line: 26, column: 15, scope: !5)
!56 = !DILocation(line: 26, column: 4, scope: !5)
!57 = !DILocation(line: 27, column: 17, scope: !5)
!58 = !DILocation(line: 27, column: 15, scope: !5)
!59 = !DILocation(line: 27, column: 4, scope: !5)
!60 = !DILocation(line: 28, column: 17, scope: !5)
!61 = !DILocation(line: 28, column: 15, scope: !5)
!62 = !DILocation(line: 28, column: 4, scope: !5)
