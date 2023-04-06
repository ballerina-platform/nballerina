@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_string_compare(ptr addrspace(1), ptr addrspace(1)) readonly
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
  br i1 %66, label %441, label %67
67:
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573430997601), ptr addrspace(1) %72
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431063137), ptr addrspace(1) %73
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 2
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570830529121), ptr addrspace(1) %74
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
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573430997601), ptr addrspace(1) %83
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %84
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 2
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570830529121), ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 3, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %2
  %89 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %89, ptr %b
  %90 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 3), !dbg !11
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 3
  %92 = load ptr addrspace(1), ptr addrspace(1) %91, align 8
  %93 = bitcast ptr addrspace(1) %92 to ptr addrspace(1)
  %94 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %93, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573430997601), ptr addrspace(1) %94
  %95 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %93, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %95
  %96 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %93, i64 0, i64 2
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432510840), ptr addrspace(1) %96
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 1
  store i64 3, ptr addrspace(1) %97
  %98 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %99 = getelementptr i8, ptr addrspace(1) %98, i64 864691128455135236
  store ptr addrspace(1) %99, ptr %3
  %100 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %100, ptr %c
  %101 = load ptr addrspace(1), ptr %b
  %102 = load ptr addrspace(1), ptr %b
  %103 = call i64 @_bal_array_string_compare(ptr addrspace(1) %101, ptr addrspace(1) %102), !dbg !12
  %104 = icmp eq i64 %103, 0
  store i1 %104, ptr %4
  %105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 3
  %107 = load ptr addrspace(1), ptr addrspace(1) %106, align 8
  %108 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %109 = load i1, ptr %4
  %110 = zext i1 %109 to i64
  %111 = or i64 %110, 72057594037927936
  %112 = getelementptr i8, ptr addrspace(1) null, i64 %111
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 0
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  store i64 1, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %5
  %117 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %117), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %118 = load ptr addrspace(1), ptr %b
  %119 = load ptr addrspace(1), ptr %b
  %120 = call i64 @_bal_array_string_compare(ptr addrspace(1) %118, ptr addrspace(1) %119), !dbg !15
  %121 = icmp ule i64 %120, 1
  store i1 %121, ptr %7
  %122 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %123 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 3
  %124 = load ptr addrspace(1), ptr addrspace(1) %123, align 8
  %125 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %126 = load i1, ptr %7
  %127 = zext i1 %126 to i64
  %128 = or i64 %127, 72057594037927936
  %129 = getelementptr i8, ptr addrspace(1) null, i64 %128
  %130 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %125, i64 0, i64 0
  store ptr addrspace(1) %129, ptr addrspace(1) %130
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 1
  store i64 1, ptr addrspace(1) %131
  %132 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %133 = getelementptr i8, ptr addrspace(1) %132, i64 864691128455135236
  store ptr addrspace(1) %133, ptr %8
  %134 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %134), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %135 = load ptr addrspace(1), ptr %b
  %136 = load ptr addrspace(1), ptr %b
  %137 = call i64 @_bal_array_string_compare(ptr addrspace(1) %135, ptr addrspace(1) %136), !dbg !18
  %138 = icmp eq i64 %137, 2
  store i1 %138, ptr %10
  %139 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 3
  %141 = load ptr addrspace(1), ptr addrspace(1) %140, align 8
  %142 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %143 = load i1, ptr %10
  %144 = zext i1 %143 to i64
  %145 = or i64 %144, 72057594037927936
  %146 = getelementptr i8, ptr addrspace(1) null, i64 %145
  %147 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %142, i64 0, i64 0
  store ptr addrspace(1) %146, ptr addrspace(1) %147
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %139, i64 0, i32 1
  store i64 1, ptr addrspace(1) %148
  %149 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %150 = getelementptr i8, ptr addrspace(1) %149, i64 864691128455135236
  store ptr addrspace(1) %150, ptr %11
  %151 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %151), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %152 = load ptr addrspace(1), ptr %b
  %153 = load ptr addrspace(1), ptr %b
  %154 = call i64 @_bal_array_string_compare(ptr addrspace(1) %152, ptr addrspace(1) %153), !dbg !21
  %155 = icmp sge i64 %154, 1
  store i1 %155, ptr %13
  %156 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !22
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %156, i64 0, i32 3
  %158 = load ptr addrspace(1), ptr addrspace(1) %157, align 8
  %159 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %160 = load i1, ptr %13
  %161 = zext i1 %160 to i64
  %162 = or i64 %161, 72057594037927936
  %163 = getelementptr i8, ptr addrspace(1) null, i64 %162
  %164 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %159, i64 0, i64 0
  store ptr addrspace(1) %163, ptr addrspace(1) %164
  %165 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %156, i64 0, i32 1
  store i64 1, ptr addrspace(1) %165
  %166 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %167 = getelementptr i8, ptr addrspace(1) %166, i64 864691128455135236
  store ptr addrspace(1) %167, ptr %14
  %168 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %168), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %169 = load ptr addrspace(1), ptr %a
  %170 = load ptr addrspace(1), ptr %b
  %171 = call i64 @_bal_array_string_compare(ptr addrspace(1) %169, ptr addrspace(1) %170), !dbg !24
  %172 = icmp eq i64 %171, 0
  store i1 %172, ptr %16
  %173 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !25
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
  %186 = load ptr addrspace(1), ptr %a
  %187 = load ptr addrspace(1), ptr %b
  %188 = call i64 @_bal_array_string_compare(ptr addrspace(1) %186, ptr addrspace(1) %187), !dbg !27
  %189 = icmp ule i64 %188, 1
  store i1 %189, ptr %19
  %190 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !28
  %191 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %190, i64 0, i32 3
  %192 = load ptr addrspace(1), ptr addrspace(1) %191, align 8
  %193 = bitcast ptr addrspace(1) %192 to ptr addrspace(1)
  %194 = load i1, ptr %19
  %195 = zext i1 %194 to i64
  %196 = or i64 %195, 72057594037927936
  %197 = getelementptr i8, ptr addrspace(1) null, i64 %196
  %198 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %193, i64 0, i64 0
  store ptr addrspace(1) %197, ptr addrspace(1) %198
  %199 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %190, i64 0, i32 1
  store i64 1, ptr addrspace(1) %199
  %200 = bitcast ptr addrspace(1) %190 to ptr addrspace(1)
  %201 = getelementptr i8, ptr addrspace(1) %200, i64 864691128455135236
  store ptr addrspace(1) %201, ptr %20
  %202 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %202), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %203 = load ptr addrspace(1), ptr %a
  %204 = load ptr addrspace(1), ptr %b
  %205 = call i64 @_bal_array_string_compare(ptr addrspace(1) %203, ptr addrspace(1) %204), !dbg !30
  %206 = icmp eq i64 %205, 2
  store i1 %206, ptr %22
  %207 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !31
  %208 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 3
  %209 = load ptr addrspace(1), ptr addrspace(1) %208, align 8
  %210 = bitcast ptr addrspace(1) %209 to ptr addrspace(1)
  %211 = load i1, ptr %22
  %212 = zext i1 %211 to i64
  %213 = or i64 %212, 72057594037927936
  %214 = getelementptr i8, ptr addrspace(1) null, i64 %213
  %215 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %210, i64 0, i64 0
  store ptr addrspace(1) %214, ptr addrspace(1) %215
  %216 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 1
  store i64 1, ptr addrspace(1) %216
  %217 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %218 = getelementptr i8, ptr addrspace(1) %217, i64 864691128455135236
  store ptr addrspace(1) %218, ptr %23
  %219 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %219), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %220 = load ptr addrspace(1), ptr %a
  %221 = load ptr addrspace(1), ptr %b
  %222 = call i64 @_bal_array_string_compare(ptr addrspace(1) %220, ptr addrspace(1) %221), !dbg !33
  %223 = icmp sge i64 %222, 1
  store i1 %223, ptr %25
  %224 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !34
  %225 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %224, i64 0, i32 3
  %226 = load ptr addrspace(1), ptr addrspace(1) %225, align 8
  %227 = bitcast ptr addrspace(1) %226 to ptr addrspace(1)
  %228 = load i1, ptr %25
  %229 = zext i1 %228 to i64
  %230 = or i64 %229, 72057594037927936
  %231 = getelementptr i8, ptr addrspace(1) null, i64 %230
  %232 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %227, i64 0, i64 0
  store ptr addrspace(1) %231, ptr addrspace(1) %232
  %233 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %224, i64 0, i32 1
  store i64 1, ptr addrspace(1) %233
  %234 = bitcast ptr addrspace(1) %224 to ptr addrspace(1)
  %235 = getelementptr i8, ptr addrspace(1) %234, i64 864691128455135236
  store ptr addrspace(1) %235, ptr %26
  %236 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %236), !dbg !35
  store ptr addrspace(1) null, ptr %27
  %237 = load ptr addrspace(1), ptr %b
  %238 = load ptr addrspace(1), ptr %a
  %239 = call i64 @_bal_array_string_compare(ptr addrspace(1) %237, ptr addrspace(1) %238), !dbg !36
  %240 = icmp eq i64 %239, 0
  store i1 %240, ptr %28
  %241 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !37
  %242 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %241, i64 0, i32 3
  %243 = load ptr addrspace(1), ptr addrspace(1) %242, align 8
  %244 = bitcast ptr addrspace(1) %243 to ptr addrspace(1)
  %245 = load i1, ptr %28
  %246 = zext i1 %245 to i64
  %247 = or i64 %246, 72057594037927936
  %248 = getelementptr i8, ptr addrspace(1) null, i64 %247
  %249 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %244, i64 0, i64 0
  store ptr addrspace(1) %248, ptr addrspace(1) %249
  %250 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %241, i64 0, i32 1
  store i64 1, ptr addrspace(1) %250
  %251 = bitcast ptr addrspace(1) %241 to ptr addrspace(1)
  %252 = getelementptr i8, ptr addrspace(1) %251, i64 864691128455135236
  store ptr addrspace(1) %252, ptr %29
  %253 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %253), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %254 = load ptr addrspace(1), ptr %b
  %255 = load ptr addrspace(1), ptr %a
  %256 = call i64 @_bal_array_string_compare(ptr addrspace(1) %254, ptr addrspace(1) %255), !dbg !39
  %257 = icmp ule i64 %256, 1
  store i1 %257, ptr %31
  %258 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !40
  %259 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 3
  %260 = load ptr addrspace(1), ptr addrspace(1) %259, align 8
  %261 = bitcast ptr addrspace(1) %260 to ptr addrspace(1)
  %262 = load i1, ptr %31
  %263 = zext i1 %262 to i64
  %264 = or i64 %263, 72057594037927936
  %265 = getelementptr i8, ptr addrspace(1) null, i64 %264
  %266 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %261, i64 0, i64 0
  store ptr addrspace(1) %265, ptr addrspace(1) %266
  %267 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 1
  store i64 1, ptr addrspace(1) %267
  %268 = bitcast ptr addrspace(1) %258 to ptr addrspace(1)
  %269 = getelementptr i8, ptr addrspace(1) %268, i64 864691128455135236
  store ptr addrspace(1) %269, ptr %32
  %270 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %270), !dbg !41
  store ptr addrspace(1) null, ptr %33
  %271 = load ptr addrspace(1), ptr %b
  %272 = load ptr addrspace(1), ptr %a
  %273 = call i64 @_bal_array_string_compare(ptr addrspace(1) %271, ptr addrspace(1) %272), !dbg !42
  %274 = icmp eq i64 %273, 2
  store i1 %274, ptr %34
  %275 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !43
  %276 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %275, i64 0, i32 3
  %277 = load ptr addrspace(1), ptr addrspace(1) %276, align 8
  %278 = bitcast ptr addrspace(1) %277 to ptr addrspace(1)
  %279 = load i1, ptr %34
  %280 = zext i1 %279 to i64
  %281 = or i64 %280, 72057594037927936
  %282 = getelementptr i8, ptr addrspace(1) null, i64 %281
  %283 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %278, i64 0, i64 0
  store ptr addrspace(1) %282, ptr addrspace(1) %283
  %284 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %275, i64 0, i32 1
  store i64 1, ptr addrspace(1) %284
  %285 = bitcast ptr addrspace(1) %275 to ptr addrspace(1)
  %286 = getelementptr i8, ptr addrspace(1) %285, i64 864691128455135236
  store ptr addrspace(1) %286, ptr %35
  %287 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %287), !dbg !44
  store ptr addrspace(1) null, ptr %36
  %288 = load ptr addrspace(1), ptr %b
  %289 = load ptr addrspace(1), ptr %a
  %290 = call i64 @_bal_array_string_compare(ptr addrspace(1) %288, ptr addrspace(1) %289), !dbg !45
  %291 = icmp sge i64 %290, 1
  store i1 %291, ptr %37
  %292 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !46
  %293 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %292, i64 0, i32 3
  %294 = load ptr addrspace(1), ptr addrspace(1) %293, align 8
  %295 = bitcast ptr addrspace(1) %294 to ptr addrspace(1)
  %296 = load i1, ptr %37
  %297 = zext i1 %296 to i64
  %298 = or i64 %297, 72057594037927936
  %299 = getelementptr i8, ptr addrspace(1) null, i64 %298
  %300 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %295, i64 0, i64 0
  store ptr addrspace(1) %299, ptr addrspace(1) %300
  %301 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %292, i64 0, i32 1
  store i64 1, ptr addrspace(1) %301
  %302 = bitcast ptr addrspace(1) %292 to ptr addrspace(1)
  %303 = getelementptr i8, ptr addrspace(1) %302, i64 864691128455135236
  store ptr addrspace(1) %303, ptr %38
  %304 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %304), !dbg !47
  store ptr addrspace(1) null, ptr %39
  %305 = load ptr addrspace(1), ptr %b
  %306 = load ptr addrspace(1), ptr %c
  %307 = call i64 @_bal_array_string_compare(ptr addrspace(1) %305, ptr addrspace(1) %306), !dbg !48
  %308 = icmp eq i64 %307, 0
  store i1 %308, ptr %40
  %309 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !49
  %310 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %309, i64 0, i32 3
  %311 = load ptr addrspace(1), ptr addrspace(1) %310, align 8
  %312 = bitcast ptr addrspace(1) %311 to ptr addrspace(1)
  %313 = load i1, ptr %40
  %314 = zext i1 %313 to i64
  %315 = or i64 %314, 72057594037927936
  %316 = getelementptr i8, ptr addrspace(1) null, i64 %315
  %317 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %312, i64 0, i64 0
  store ptr addrspace(1) %316, ptr addrspace(1) %317
  %318 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %309, i64 0, i32 1
  store i64 1, ptr addrspace(1) %318
  %319 = bitcast ptr addrspace(1) %309 to ptr addrspace(1)
  %320 = getelementptr i8, ptr addrspace(1) %319, i64 864691128455135236
  store ptr addrspace(1) %320, ptr %41
  %321 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %321), !dbg !50
  store ptr addrspace(1) null, ptr %42
  %322 = load ptr addrspace(1), ptr %b
  %323 = load ptr addrspace(1), ptr %c
  %324 = call i64 @_bal_array_string_compare(ptr addrspace(1) %322, ptr addrspace(1) %323), !dbg !51
  %325 = icmp ule i64 %324, 1
  store i1 %325, ptr %43
  %326 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !52
  %327 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %326, i64 0, i32 3
  %328 = load ptr addrspace(1), ptr addrspace(1) %327, align 8
  %329 = bitcast ptr addrspace(1) %328 to ptr addrspace(1)
  %330 = load i1, ptr %43
  %331 = zext i1 %330 to i64
  %332 = or i64 %331, 72057594037927936
  %333 = getelementptr i8, ptr addrspace(1) null, i64 %332
  %334 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %329, i64 0, i64 0
  store ptr addrspace(1) %333, ptr addrspace(1) %334
  %335 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %326, i64 0, i32 1
  store i64 1, ptr addrspace(1) %335
  %336 = bitcast ptr addrspace(1) %326 to ptr addrspace(1)
  %337 = getelementptr i8, ptr addrspace(1) %336, i64 864691128455135236
  store ptr addrspace(1) %337, ptr %44
  %338 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %338), !dbg !53
  store ptr addrspace(1) null, ptr %45
  %339 = load ptr addrspace(1), ptr %b
  %340 = load ptr addrspace(1), ptr %c
  %341 = call i64 @_bal_array_string_compare(ptr addrspace(1) %339, ptr addrspace(1) %340), !dbg !54
  %342 = icmp eq i64 %341, 2
  store i1 %342, ptr %46
  %343 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !55
  %344 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %343, i64 0, i32 3
  %345 = load ptr addrspace(1), ptr addrspace(1) %344, align 8
  %346 = bitcast ptr addrspace(1) %345 to ptr addrspace(1)
  %347 = load i1, ptr %46
  %348 = zext i1 %347 to i64
  %349 = or i64 %348, 72057594037927936
  %350 = getelementptr i8, ptr addrspace(1) null, i64 %349
  %351 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %346, i64 0, i64 0
  store ptr addrspace(1) %350, ptr addrspace(1) %351
  %352 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %343, i64 0, i32 1
  store i64 1, ptr addrspace(1) %352
  %353 = bitcast ptr addrspace(1) %343 to ptr addrspace(1)
  %354 = getelementptr i8, ptr addrspace(1) %353, i64 864691128455135236
  store ptr addrspace(1) %354, ptr %47
  %355 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %355), !dbg !56
  store ptr addrspace(1) null, ptr %48
  %356 = load ptr addrspace(1), ptr %b
  %357 = load ptr addrspace(1), ptr %c
  %358 = call i64 @_bal_array_string_compare(ptr addrspace(1) %356, ptr addrspace(1) %357), !dbg !57
  %359 = icmp sge i64 %358, 1
  store i1 %359, ptr %49
  %360 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !58
  %361 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %360, i64 0, i32 3
  %362 = load ptr addrspace(1), ptr addrspace(1) %361, align 8
  %363 = bitcast ptr addrspace(1) %362 to ptr addrspace(1)
  %364 = load i1, ptr %49
  %365 = zext i1 %364 to i64
  %366 = or i64 %365, 72057594037927936
  %367 = getelementptr i8, ptr addrspace(1) null, i64 %366
  %368 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %363, i64 0, i64 0
  store ptr addrspace(1) %367, ptr addrspace(1) %368
  %369 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %360, i64 0, i32 1
  store i64 1, ptr addrspace(1) %369
  %370 = bitcast ptr addrspace(1) %360 to ptr addrspace(1)
  %371 = getelementptr i8, ptr addrspace(1) %370, i64 864691128455135236
  store ptr addrspace(1) %371, ptr %50
  %372 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %372), !dbg !59
  store ptr addrspace(1) null, ptr %51
  %373 = load ptr addrspace(1), ptr %c
  %374 = load ptr addrspace(1), ptr %b
  %375 = call i64 @_bal_array_string_compare(ptr addrspace(1) %373, ptr addrspace(1) %374), !dbg !60
  %376 = icmp eq i64 %375, 0
  store i1 %376, ptr %52
  %377 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !61
  %378 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %377, i64 0, i32 3
  %379 = load ptr addrspace(1), ptr addrspace(1) %378, align 8
  %380 = bitcast ptr addrspace(1) %379 to ptr addrspace(1)
  %381 = load i1, ptr %52
  %382 = zext i1 %381 to i64
  %383 = or i64 %382, 72057594037927936
  %384 = getelementptr i8, ptr addrspace(1) null, i64 %383
  %385 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %380, i64 0, i64 0
  store ptr addrspace(1) %384, ptr addrspace(1) %385
  %386 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %377, i64 0, i32 1
  store i64 1, ptr addrspace(1) %386
  %387 = bitcast ptr addrspace(1) %377 to ptr addrspace(1)
  %388 = getelementptr i8, ptr addrspace(1) %387, i64 864691128455135236
  store ptr addrspace(1) %388, ptr %53
  %389 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %389), !dbg !62
  store ptr addrspace(1) null, ptr %54
  %390 = load ptr addrspace(1), ptr %c
  %391 = load ptr addrspace(1), ptr %b
  %392 = call i64 @_bal_array_string_compare(ptr addrspace(1) %390, ptr addrspace(1) %391), !dbg !63
  %393 = icmp ule i64 %392, 1
  store i1 %393, ptr %55
  %394 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !64
  %395 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %394, i64 0, i32 3
  %396 = load ptr addrspace(1), ptr addrspace(1) %395, align 8
  %397 = bitcast ptr addrspace(1) %396 to ptr addrspace(1)
  %398 = load i1, ptr %55
  %399 = zext i1 %398 to i64
  %400 = or i64 %399, 72057594037927936
  %401 = getelementptr i8, ptr addrspace(1) null, i64 %400
  %402 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %397, i64 0, i64 0
  store ptr addrspace(1) %401, ptr addrspace(1) %402
  %403 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %394, i64 0, i32 1
  store i64 1, ptr addrspace(1) %403
  %404 = bitcast ptr addrspace(1) %394 to ptr addrspace(1)
  %405 = getelementptr i8, ptr addrspace(1) %404, i64 864691128455135236
  store ptr addrspace(1) %405, ptr %56
  %406 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %406), !dbg !65
  store ptr addrspace(1) null, ptr %57
  %407 = load ptr addrspace(1), ptr %c
  %408 = load ptr addrspace(1), ptr %b
  %409 = call i64 @_bal_array_string_compare(ptr addrspace(1) %407, ptr addrspace(1) %408), !dbg !66
  %410 = icmp eq i64 %409, 2
  store i1 %410, ptr %58
  %411 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !67
  %412 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %411, i64 0, i32 3
  %413 = load ptr addrspace(1), ptr addrspace(1) %412, align 8
  %414 = bitcast ptr addrspace(1) %413 to ptr addrspace(1)
  %415 = load i1, ptr %58
  %416 = zext i1 %415 to i64
  %417 = or i64 %416, 72057594037927936
  %418 = getelementptr i8, ptr addrspace(1) null, i64 %417
  %419 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %414, i64 0, i64 0
  store ptr addrspace(1) %418, ptr addrspace(1) %419
  %420 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %411, i64 0, i32 1
  store i64 1, ptr addrspace(1) %420
  %421 = bitcast ptr addrspace(1) %411 to ptr addrspace(1)
  %422 = getelementptr i8, ptr addrspace(1) %421, i64 864691128455135236
  store ptr addrspace(1) %422, ptr %59
  %423 = load ptr addrspace(1), ptr %59
  call void @_Bb02ioprintln(ptr addrspace(1) %423), !dbg !68
  store ptr addrspace(1) null, ptr %60
  %424 = load ptr addrspace(1), ptr %c
  %425 = load ptr addrspace(1), ptr %b
  %426 = call i64 @_bal_array_string_compare(ptr addrspace(1) %424, ptr addrspace(1) %425), !dbg !69
  %427 = icmp sge i64 %426, 1
  store i1 %427, ptr %61
  %428 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !70
  %429 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %428, i64 0, i32 3
  %430 = load ptr addrspace(1), ptr addrspace(1) %429, align 8
  %431 = bitcast ptr addrspace(1) %430 to ptr addrspace(1)
  %432 = load i1, ptr %61
  %433 = zext i1 %432 to i64
  %434 = or i64 %433, 72057594037927936
  %435 = getelementptr i8, ptr addrspace(1) null, i64 %434
  %436 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %431, i64 0, i64 0
  store ptr addrspace(1) %435, ptr addrspace(1) %436
  %437 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %428, i64 0, i32 1
  store i64 1, ptr addrspace(1) %437
  %438 = bitcast ptr addrspace(1) %428 to ptr addrspace(1)
  %439 = getelementptr i8, ptr addrspace(1) %438, i64 864691128455135236
  store ptr addrspace(1) %439, ptr %62
  %440 = load ptr addrspace(1), ptr %62
  call void @_Bb02ioprintln(ptr addrspace(1) %440), !dbg !71
  store ptr addrspace(1) null, ptr %63
  ret void
441:
  %442 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %442), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/arr3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
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
