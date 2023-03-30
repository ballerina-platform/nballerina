@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
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
  br i1 %66, label %453, label %67
67:
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = getelementptr inbounds [0 x i64], ptr addrspace(1) %71, i64 0, i64 0
  store i64 1, ptr addrspace(1) %72
  %73 = getelementptr inbounds [0 x i64], ptr addrspace(1) %71, i64 0, i64 1
  store i64 2, ptr addrspace(1) %73
  %74 = getelementptr inbounds [0 x i64], ptr addrspace(1) %71, i64 0, i64 2
  store i64 3, ptr addrspace(1) %74
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
  %83 = and i64 72057594037927935, 1
  %84 = or i64 2449958197289549824, %83
  %85 = getelementptr i8, ptr addrspace(1) null, i64 %84
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %87
  %88 = and i64 72057594037927935, 3
  %89 = or i64 2449958197289549824, %88
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 2
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 3, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %2
  %95 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %95, ptr %b
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !11
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = and i64 72057594037927935, 1
  %101 = or i64 2449958197289549824, %100
  %102 = getelementptr i8, ptr addrspace(1) null, i64 %101
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %104
  %105 = and i64 72057594037927935, 4
  %106 = or i64 2449958197289549824, %105
  %107 = getelementptr i8, ptr addrspace(1) null, i64 %106
  %108 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 2
  store ptr addrspace(1) %107, ptr addrspace(1) %108
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 3, ptr addrspace(1) %109
  %110 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %111 = getelementptr i8, ptr addrspace(1) %110, i64 864691128455135236
  store ptr addrspace(1) %111, ptr %3
  %112 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %112, ptr %c
  %113 = load ptr addrspace(1), ptr %b
  %114 = load ptr addrspace(1), ptr %b
  %115 = call i64 @_bal_array_int_compare(ptr addrspace(1) %113, ptr addrspace(1) %114), !dbg !12
  %116 = icmp eq i64 %115, 0
  store i1 %116, ptr %4
  %117 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 3
  %119 = load ptr addrspace(1), ptr addrspace(1) %118, align 8
  %120 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %121 = load i1, ptr %4
  %122 = zext i1 %121 to i64
  %123 = or i64 %122, 72057594037927936
  %124 = getelementptr i8, ptr addrspace(1) null, i64 %123
  %125 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %120, i64 0, i64 0
  store ptr addrspace(1) %124, ptr addrspace(1) %125
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %117, i64 0, i32 1
  store i64 1, ptr addrspace(1) %126
  %127 = bitcast ptr addrspace(1) %117 to ptr addrspace(1)
  %128 = getelementptr i8, ptr addrspace(1) %127, i64 864691128455135236
  store ptr addrspace(1) %128, ptr %5
  %129 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %129), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %130 = load ptr addrspace(1), ptr %b
  %131 = load ptr addrspace(1), ptr %b
  %132 = call i64 @_bal_array_int_compare(ptr addrspace(1) %130, ptr addrspace(1) %131), !dbg !15
  %133 = icmp ule i64 %132, 1
  store i1 %133, ptr %7
  %134 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %134, i64 0, i32 3
  %136 = load ptr addrspace(1), ptr addrspace(1) %135, align 8
  %137 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %138 = load i1, ptr %7
  %139 = zext i1 %138 to i64
  %140 = or i64 %139, 72057594037927936
  %141 = getelementptr i8, ptr addrspace(1) null, i64 %140
  %142 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %137, i64 0, i64 0
  store ptr addrspace(1) %141, ptr addrspace(1) %142
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %134, i64 0, i32 1
  store i64 1, ptr addrspace(1) %143
  %144 = bitcast ptr addrspace(1) %134 to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 864691128455135236
  store ptr addrspace(1) %145, ptr %8
  %146 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %146), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %147 = load ptr addrspace(1), ptr %b
  %148 = load ptr addrspace(1), ptr %b
  %149 = call i64 @_bal_array_int_compare(ptr addrspace(1) %147, ptr addrspace(1) %148), !dbg !18
  %150 = icmp eq i64 %149, 2
  store i1 %150, ptr %10
  %151 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 3
  %153 = load ptr addrspace(1), ptr addrspace(1) %152, align 8
  %154 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %155 = load i1, ptr %10
  %156 = zext i1 %155 to i64
  %157 = or i64 %156, 72057594037927936
  %158 = getelementptr i8, ptr addrspace(1) null, i64 %157
  %159 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %154, i64 0, i64 0
  store ptr addrspace(1) %158, ptr addrspace(1) %159
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 1
  store i64 1, ptr addrspace(1) %160
  %161 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %162 = getelementptr i8, ptr addrspace(1) %161, i64 864691128455135236
  store ptr addrspace(1) %162, ptr %11
  %163 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %163), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %164 = load ptr addrspace(1), ptr %b
  %165 = load ptr addrspace(1), ptr %b
  %166 = call i64 @_bal_array_int_compare(ptr addrspace(1) %164, ptr addrspace(1) %165), !dbg !21
  %167 = icmp sge i64 %166, 1
  store i1 %167, ptr %13
  %168 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !22
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 3
  %170 = load ptr addrspace(1), ptr addrspace(1) %169, align 8
  %171 = bitcast ptr addrspace(1) %170 to ptr addrspace(1)
  %172 = load i1, ptr %13
  %173 = zext i1 %172 to i64
  %174 = or i64 %173, 72057594037927936
  %175 = getelementptr i8, ptr addrspace(1) null, i64 %174
  %176 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %171, i64 0, i64 0
  store ptr addrspace(1) %175, ptr addrspace(1) %176
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 1
  store i64 1, ptr addrspace(1) %177
  %178 = bitcast ptr addrspace(1) %168 to ptr addrspace(1)
  %179 = getelementptr i8, ptr addrspace(1) %178, i64 864691128455135236
  store ptr addrspace(1) %179, ptr %14
  %180 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %180), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %181 = load ptr addrspace(1), ptr %a
  %182 = load ptr addrspace(1), ptr %b
  %183 = call i64 @_bal_array_int_compare(ptr addrspace(1) %181, ptr addrspace(1) %182), !dbg !24
  %184 = icmp eq i64 %183, 0
  store i1 %184, ptr %16
  %185 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !25
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %185, i64 0, i32 3
  %187 = load ptr addrspace(1), ptr addrspace(1) %186, align 8
  %188 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %189 = load i1, ptr %16
  %190 = zext i1 %189 to i64
  %191 = or i64 %190, 72057594037927936
  %192 = getelementptr i8, ptr addrspace(1) null, i64 %191
  %193 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %188, i64 0, i64 0
  store ptr addrspace(1) %192, ptr addrspace(1) %193
  %194 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %185, i64 0, i32 1
  store i64 1, ptr addrspace(1) %194
  %195 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %196 = getelementptr i8, ptr addrspace(1) %195, i64 864691128455135236
  store ptr addrspace(1) %196, ptr %17
  %197 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %197), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %198 = load ptr addrspace(1), ptr %a
  %199 = load ptr addrspace(1), ptr %b
  %200 = call i64 @_bal_array_int_compare(ptr addrspace(1) %198, ptr addrspace(1) %199), !dbg !27
  %201 = icmp ule i64 %200, 1
  store i1 %201, ptr %19
  %202 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !28
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 3
  %204 = load ptr addrspace(1), ptr addrspace(1) %203, align 8
  %205 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %206 = load i1, ptr %19
  %207 = zext i1 %206 to i64
  %208 = or i64 %207, 72057594037927936
  %209 = getelementptr i8, ptr addrspace(1) null, i64 %208
  %210 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %205, i64 0, i64 0
  store ptr addrspace(1) %209, ptr addrspace(1) %210
  %211 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 1
  store i64 1, ptr addrspace(1) %211
  %212 = bitcast ptr addrspace(1) %202 to ptr addrspace(1)
  %213 = getelementptr i8, ptr addrspace(1) %212, i64 864691128455135236
  store ptr addrspace(1) %213, ptr %20
  %214 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %214), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %215 = load ptr addrspace(1), ptr %a
  %216 = load ptr addrspace(1), ptr %b
  %217 = call i64 @_bal_array_int_compare(ptr addrspace(1) %215, ptr addrspace(1) %216), !dbg !30
  %218 = icmp eq i64 %217, 2
  store i1 %218, ptr %22
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !31
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load i1, ptr %22
  %224 = zext i1 %223 to i64
  %225 = or i64 %224, 72057594037927936
  %226 = getelementptr i8, ptr addrspace(1) null, i64 %225
  %227 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %226, ptr addrspace(1) %227
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %228
  %229 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 864691128455135236
  store ptr addrspace(1) %230, ptr %23
  %231 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %231), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %232 = load ptr addrspace(1), ptr %a
  %233 = load ptr addrspace(1), ptr %b
  %234 = call i64 @_bal_array_int_compare(ptr addrspace(1) %232, ptr addrspace(1) %233), !dbg !33
  %235 = icmp sge i64 %234, 1
  store i1 %235, ptr %25
  %236 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !34
  %237 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %236, i64 0, i32 3
  %238 = load ptr addrspace(1), ptr addrspace(1) %237, align 8
  %239 = bitcast ptr addrspace(1) %238 to ptr addrspace(1)
  %240 = load i1, ptr %25
  %241 = zext i1 %240 to i64
  %242 = or i64 %241, 72057594037927936
  %243 = getelementptr i8, ptr addrspace(1) null, i64 %242
  %244 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %239, i64 0, i64 0
  store ptr addrspace(1) %243, ptr addrspace(1) %244
  %245 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %236, i64 0, i32 1
  store i64 1, ptr addrspace(1) %245
  %246 = bitcast ptr addrspace(1) %236 to ptr addrspace(1)
  %247 = getelementptr i8, ptr addrspace(1) %246, i64 864691128455135236
  store ptr addrspace(1) %247, ptr %26
  %248 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %248), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %249 = load ptr addrspace(1), ptr %b
  %250 = load ptr addrspace(1), ptr %a
  %251 = call i64 @_bal_array_int_compare(ptr addrspace(1) %249, ptr addrspace(1) %250), !dbg !36
  %252 = icmp eq i64 %251, 0
  store i1 %252, ptr %28
  %253 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !37
  %254 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %253, i64 0, i32 3
  %255 = load ptr addrspace(1), ptr addrspace(1) %254, align 8
  %256 = bitcast ptr addrspace(1) %255 to ptr addrspace(1)
  %257 = load i1, ptr %28
  %258 = zext i1 %257 to i64
  %259 = or i64 %258, 72057594037927936
  %260 = getelementptr i8, ptr addrspace(1) null, i64 %259
  %261 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %256, i64 0, i64 0
  store ptr addrspace(1) %260, ptr addrspace(1) %261
  %262 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %253, i64 0, i32 1
  store i64 1, ptr addrspace(1) %262
  %263 = bitcast ptr addrspace(1) %253 to ptr addrspace(1)
  %264 = getelementptr i8, ptr addrspace(1) %263, i64 864691128455135236
  store ptr addrspace(1) %264, ptr %29
  %265 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %265), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %266 = load ptr addrspace(1), ptr %b
  %267 = load ptr addrspace(1), ptr %a
  %268 = call i64 @_bal_array_int_compare(ptr addrspace(1) %266, ptr addrspace(1) %267), !dbg !39
  %269 = icmp ule i64 %268, 1
  store i1 %269, ptr %31
  %270 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !40
  %271 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %270, i64 0, i32 3
  %272 = load ptr addrspace(1), ptr addrspace(1) %271, align 8
  %273 = bitcast ptr addrspace(1) %272 to ptr addrspace(1)
  %274 = load i1, ptr %31
  %275 = zext i1 %274 to i64
  %276 = or i64 %275, 72057594037927936
  %277 = getelementptr i8, ptr addrspace(1) null, i64 %276
  %278 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %273, i64 0, i64 0
  store ptr addrspace(1) %277, ptr addrspace(1) %278
  %279 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %270, i64 0, i32 1
  store i64 1, ptr addrspace(1) %279
  %280 = bitcast ptr addrspace(1) %270 to ptr addrspace(1)
  %281 = getelementptr i8, ptr addrspace(1) %280, i64 864691128455135236
  store ptr addrspace(1) %281, ptr %32
  %282 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %282), !dbg !41
  store ptr addrspace(1) null, ptr %33
  %283 = load ptr addrspace(1), ptr %b
  %284 = load ptr addrspace(1), ptr %a
  %285 = call i64 @_bal_array_int_compare(ptr addrspace(1) %283, ptr addrspace(1) %284), !dbg !42
  %286 = icmp eq i64 %285, 2
  store i1 %286, ptr %34
  %287 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !43
  %288 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %287, i64 0, i32 3
  %289 = load ptr addrspace(1), ptr addrspace(1) %288, align 8
  %290 = bitcast ptr addrspace(1) %289 to ptr addrspace(1)
  %291 = load i1, ptr %34
  %292 = zext i1 %291 to i64
  %293 = or i64 %292, 72057594037927936
  %294 = getelementptr i8, ptr addrspace(1) null, i64 %293
  %295 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %290, i64 0, i64 0
  store ptr addrspace(1) %294, ptr addrspace(1) %295
  %296 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %287, i64 0, i32 1
  store i64 1, ptr addrspace(1) %296
  %297 = bitcast ptr addrspace(1) %287 to ptr addrspace(1)
  %298 = getelementptr i8, ptr addrspace(1) %297, i64 864691128455135236
  store ptr addrspace(1) %298, ptr %35
  %299 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %299), !dbg !44
  store ptr addrspace(1) null, ptr %36
  %300 = load ptr addrspace(1), ptr %b
  %301 = load ptr addrspace(1), ptr %a
  %302 = call i64 @_bal_array_int_compare(ptr addrspace(1) %300, ptr addrspace(1) %301), !dbg !45
  %303 = icmp sge i64 %302, 1
  store i1 %303, ptr %37
  %304 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !46
  %305 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %304, i64 0, i32 3
  %306 = load ptr addrspace(1), ptr addrspace(1) %305, align 8
  %307 = bitcast ptr addrspace(1) %306 to ptr addrspace(1)
  %308 = load i1, ptr %37
  %309 = zext i1 %308 to i64
  %310 = or i64 %309, 72057594037927936
  %311 = getelementptr i8, ptr addrspace(1) null, i64 %310
  %312 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %307, i64 0, i64 0
  store ptr addrspace(1) %311, ptr addrspace(1) %312
  %313 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %304, i64 0, i32 1
  store i64 1, ptr addrspace(1) %313
  %314 = bitcast ptr addrspace(1) %304 to ptr addrspace(1)
  %315 = getelementptr i8, ptr addrspace(1) %314, i64 864691128455135236
  store ptr addrspace(1) %315, ptr %38
  %316 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %316), !dbg !47
  store ptr addrspace(1) null, ptr %39
  %317 = load ptr addrspace(1), ptr %b
  %318 = load ptr addrspace(1), ptr %c
  %319 = call i64 @_bal_array_int_compare(ptr addrspace(1) %317, ptr addrspace(1) %318), !dbg !48
  %320 = icmp eq i64 %319, 0
  store i1 %320, ptr %40
  %321 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !49
  %322 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %321, i64 0, i32 3
  %323 = load ptr addrspace(1), ptr addrspace(1) %322, align 8
  %324 = bitcast ptr addrspace(1) %323 to ptr addrspace(1)
  %325 = load i1, ptr %40
  %326 = zext i1 %325 to i64
  %327 = or i64 %326, 72057594037927936
  %328 = getelementptr i8, ptr addrspace(1) null, i64 %327
  %329 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %324, i64 0, i64 0
  store ptr addrspace(1) %328, ptr addrspace(1) %329
  %330 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %321, i64 0, i32 1
  store i64 1, ptr addrspace(1) %330
  %331 = bitcast ptr addrspace(1) %321 to ptr addrspace(1)
  %332 = getelementptr i8, ptr addrspace(1) %331, i64 864691128455135236
  store ptr addrspace(1) %332, ptr %41
  %333 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %333), !dbg !50
  store ptr addrspace(1) null, ptr %42
  %334 = load ptr addrspace(1), ptr %b
  %335 = load ptr addrspace(1), ptr %c
  %336 = call i64 @_bal_array_int_compare(ptr addrspace(1) %334, ptr addrspace(1) %335), !dbg !51
  %337 = icmp ule i64 %336, 1
  store i1 %337, ptr %43
  %338 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !52
  %339 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %338, i64 0, i32 3
  %340 = load ptr addrspace(1), ptr addrspace(1) %339, align 8
  %341 = bitcast ptr addrspace(1) %340 to ptr addrspace(1)
  %342 = load i1, ptr %43
  %343 = zext i1 %342 to i64
  %344 = or i64 %343, 72057594037927936
  %345 = getelementptr i8, ptr addrspace(1) null, i64 %344
  %346 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %341, i64 0, i64 0
  store ptr addrspace(1) %345, ptr addrspace(1) %346
  %347 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %338, i64 0, i32 1
  store i64 1, ptr addrspace(1) %347
  %348 = bitcast ptr addrspace(1) %338 to ptr addrspace(1)
  %349 = getelementptr i8, ptr addrspace(1) %348, i64 864691128455135236
  store ptr addrspace(1) %349, ptr %44
  %350 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %350), !dbg !53
  store ptr addrspace(1) null, ptr %45
  %351 = load ptr addrspace(1), ptr %b
  %352 = load ptr addrspace(1), ptr %c
  %353 = call i64 @_bal_array_int_compare(ptr addrspace(1) %351, ptr addrspace(1) %352), !dbg !54
  %354 = icmp eq i64 %353, 2
  store i1 %354, ptr %46
  %355 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !55
  %356 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %355, i64 0, i32 3
  %357 = load ptr addrspace(1), ptr addrspace(1) %356, align 8
  %358 = bitcast ptr addrspace(1) %357 to ptr addrspace(1)
  %359 = load i1, ptr %46
  %360 = zext i1 %359 to i64
  %361 = or i64 %360, 72057594037927936
  %362 = getelementptr i8, ptr addrspace(1) null, i64 %361
  %363 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %358, i64 0, i64 0
  store ptr addrspace(1) %362, ptr addrspace(1) %363
  %364 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %355, i64 0, i32 1
  store i64 1, ptr addrspace(1) %364
  %365 = bitcast ptr addrspace(1) %355 to ptr addrspace(1)
  %366 = getelementptr i8, ptr addrspace(1) %365, i64 864691128455135236
  store ptr addrspace(1) %366, ptr %47
  %367 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %367), !dbg !56
  store ptr addrspace(1) null, ptr %48
  %368 = load ptr addrspace(1), ptr %b
  %369 = load ptr addrspace(1), ptr %c
  %370 = call i64 @_bal_array_int_compare(ptr addrspace(1) %368, ptr addrspace(1) %369), !dbg !57
  %371 = icmp sge i64 %370, 1
  store i1 %371, ptr %49
  %372 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !58
  %373 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %372, i64 0, i32 3
  %374 = load ptr addrspace(1), ptr addrspace(1) %373, align 8
  %375 = bitcast ptr addrspace(1) %374 to ptr addrspace(1)
  %376 = load i1, ptr %49
  %377 = zext i1 %376 to i64
  %378 = or i64 %377, 72057594037927936
  %379 = getelementptr i8, ptr addrspace(1) null, i64 %378
  %380 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %375, i64 0, i64 0
  store ptr addrspace(1) %379, ptr addrspace(1) %380
  %381 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %372, i64 0, i32 1
  store i64 1, ptr addrspace(1) %381
  %382 = bitcast ptr addrspace(1) %372 to ptr addrspace(1)
  %383 = getelementptr i8, ptr addrspace(1) %382, i64 864691128455135236
  store ptr addrspace(1) %383, ptr %50
  %384 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %384), !dbg !59
  store ptr addrspace(1) null, ptr %51
  %385 = load ptr addrspace(1), ptr %c
  %386 = load ptr addrspace(1), ptr %b
  %387 = call i64 @_bal_array_int_compare(ptr addrspace(1) %385, ptr addrspace(1) %386), !dbg !60
  %388 = icmp eq i64 %387, 0
  store i1 %388, ptr %52
  %389 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !61
  %390 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %389, i64 0, i32 3
  %391 = load ptr addrspace(1), ptr addrspace(1) %390, align 8
  %392 = bitcast ptr addrspace(1) %391 to ptr addrspace(1)
  %393 = load i1, ptr %52
  %394 = zext i1 %393 to i64
  %395 = or i64 %394, 72057594037927936
  %396 = getelementptr i8, ptr addrspace(1) null, i64 %395
  %397 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %392, i64 0, i64 0
  store ptr addrspace(1) %396, ptr addrspace(1) %397
  %398 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %389, i64 0, i32 1
  store i64 1, ptr addrspace(1) %398
  %399 = bitcast ptr addrspace(1) %389 to ptr addrspace(1)
  %400 = getelementptr i8, ptr addrspace(1) %399, i64 864691128455135236
  store ptr addrspace(1) %400, ptr %53
  %401 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %401), !dbg !62
  store ptr addrspace(1) null, ptr %54
  %402 = load ptr addrspace(1), ptr %c
  %403 = load ptr addrspace(1), ptr %b
  %404 = call i64 @_bal_array_int_compare(ptr addrspace(1) %402, ptr addrspace(1) %403), !dbg !63
  %405 = icmp ule i64 %404, 1
  store i1 %405, ptr %55
  %406 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !64
  %407 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %406, i64 0, i32 3
  %408 = load ptr addrspace(1), ptr addrspace(1) %407, align 8
  %409 = bitcast ptr addrspace(1) %408 to ptr addrspace(1)
  %410 = load i1, ptr %55
  %411 = zext i1 %410 to i64
  %412 = or i64 %411, 72057594037927936
  %413 = getelementptr i8, ptr addrspace(1) null, i64 %412
  %414 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %409, i64 0, i64 0
  store ptr addrspace(1) %413, ptr addrspace(1) %414
  %415 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %406, i64 0, i32 1
  store i64 1, ptr addrspace(1) %415
  %416 = bitcast ptr addrspace(1) %406 to ptr addrspace(1)
  %417 = getelementptr i8, ptr addrspace(1) %416, i64 864691128455135236
  store ptr addrspace(1) %417, ptr %56
  %418 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %418), !dbg !65
  store ptr addrspace(1) null, ptr %57
  %419 = load ptr addrspace(1), ptr %c
  %420 = load ptr addrspace(1), ptr %b
  %421 = call i64 @_bal_array_int_compare(ptr addrspace(1) %419, ptr addrspace(1) %420), !dbg !66
  %422 = icmp eq i64 %421, 2
  store i1 %422, ptr %58
  %423 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !67
  %424 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %423, i64 0, i32 3
  %425 = load ptr addrspace(1), ptr addrspace(1) %424, align 8
  %426 = bitcast ptr addrspace(1) %425 to ptr addrspace(1)
  %427 = load i1, ptr %58
  %428 = zext i1 %427 to i64
  %429 = or i64 %428, 72057594037927936
  %430 = getelementptr i8, ptr addrspace(1) null, i64 %429
  %431 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %426, i64 0, i64 0
  store ptr addrspace(1) %430, ptr addrspace(1) %431
  %432 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %423, i64 0, i32 1
  store i64 1, ptr addrspace(1) %432
  %433 = bitcast ptr addrspace(1) %423 to ptr addrspace(1)
  %434 = getelementptr i8, ptr addrspace(1) %433, i64 864691128455135236
  store ptr addrspace(1) %434, ptr %59
  %435 = load ptr addrspace(1), ptr %59
  call void @_Bb02ioprintln(ptr addrspace(1) %435), !dbg !68
  store ptr addrspace(1) null, ptr %60
  %436 = load ptr addrspace(1), ptr %c
  %437 = load ptr addrspace(1), ptr %b
  %438 = call i64 @_bal_array_int_compare(ptr addrspace(1) %436, ptr addrspace(1) %437), !dbg !69
  %439 = icmp sge i64 %438, 1
  store i1 %439, ptr %61
  %440 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !70
  %441 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %440, i64 0, i32 3
  %442 = load ptr addrspace(1), ptr addrspace(1) %441, align 8
  %443 = bitcast ptr addrspace(1) %442 to ptr addrspace(1)
  %444 = load i1, ptr %61
  %445 = zext i1 %444 to i64
  %446 = or i64 %445, 72057594037927936
  %447 = getelementptr i8, ptr addrspace(1) null, i64 %446
  %448 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %443, i64 0, i64 0
  store ptr addrspace(1) %447, ptr addrspace(1) %448
  %449 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %440, i64 0, i32 1
  store i64 1, ptr addrspace(1) %449
  %450 = bitcast ptr addrspace(1) %440 to ptr addrspace(1)
  %451 = getelementptr i8, ptr addrspace(1) %450, i64 864691128455135236
  store ptr addrspace(1) %451, ptr %62
  %452 = load ptr addrspace(1), ptr %62
  call void @_Bb02ioprintln(ptr addrspace(1) %452), !dbg !71
  store ptr addrspace(1) null, ptr %63
  ret void
453:
  %454 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %454), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/arr1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 11, scope: !5)
!10 = !DILocation(line: 5, column: 12, scope: !5)
!11 = !DILocation(line: 6, column: 12, scope: !5)
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
