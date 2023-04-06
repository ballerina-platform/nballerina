@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
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
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca ptr addrspace(1)
  %38 = alloca ptr addrspace(1)
  %39 = alloca i8
  %40 = load ptr, ptr @_bal_stack_guard
  %41 = icmp ult ptr %39, %40
  br i1 %41, label %255, label %42
42:
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = and i64 72057594037927935, 0
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %1
  %54 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = call ptr addrspace(1) @_bal_int_to_tagged(i64 -9223372036854775805), !dbg !12
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %3
  %64 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %64), !dbg !13
  store ptr addrspace(1) null, ptr %4
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = call ptr addrspace(1) @_bal_int_to_tagged(i64 -9223372036854775806), !dbg !15
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %5
  %74 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775805), !dbg !18
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %7
  %84 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !19
  store ptr addrspace(1) null, ptr %8
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 3
  %87 = load ptr addrspace(1), ptr addrspace(1) %86, align 8
  %88 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %89 = and i64 72057594037927935, 0
  %90 = or i64 2449958197289549824, %89
  %91 = getelementptr i8, ptr addrspace(1) null, i64 %90
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %88, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %9
  %96 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !21
  store ptr addrspace(1) null, ptr %10
  %97 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 3
  %99 = load ptr addrspace(1), ptr addrspace(1) %98, align 8
  %100 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %101 = and i64 72057594037927935, -1
  %102 = or i64 2449958197289549824, %101
  %103 = getelementptr i8, ptr addrspace(1) null, i64 %102
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %11
  %108 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !23
  store ptr addrspace(1) null, ptr %12
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = and i64 72057594037927935, -2
  %114 = or i64 2449958197289549824, %113
  %115 = getelementptr i8, ptr addrspace(1) null, i64 %114
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 1, ptr addrspace(1) %117
  %118 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 864691128455135236
  store ptr addrspace(1) %119, ptr %13
  %120 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %120), !dbg !25
  store ptr addrspace(1) null, ptr %14
  %121 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 3
  %123 = load ptr addrspace(1), ptr addrspace(1) %122, align 8
  %124 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %125 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775806), !dbg !27
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %124, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %15
  %130 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !28
  store ptr addrspace(1) null, ptr %16
  %131 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %131, i64 0, i32 3
  %133 = load ptr addrspace(1), ptr addrspace(1) %132, align 8
  %134 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %135 = and i64 72057594037927935, 1
  %136 = or i64 2449958197289549824, %135
  %137 = getelementptr i8, ptr addrspace(1) null, i64 %136
  %138 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %134, i64 0, i64 0
  store ptr addrspace(1) %137, ptr addrspace(1) %138
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %131, i64 0, i32 1
  store i64 1, ptr addrspace(1) %139
  %140 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %141 = getelementptr i8, ptr addrspace(1) %140, i64 864691128455135236
  store ptr addrspace(1) %141, ptr %17
  %142 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %142), !dbg !30
  store ptr addrspace(1) null, ptr %18
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = and i64 72057594037927935, 0
  %148 = or i64 2449958197289549824, %147
  %149 = getelementptr i8, ptr addrspace(1) null, i64 %148
  %150 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) %149, ptr addrspace(1) %150
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %151
  %152 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %153 = getelementptr i8, ptr addrspace(1) %152, i64 864691128455135236
  store ptr addrspace(1) %153, ptr %19
  %154 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %154), !dbg !32
  store ptr addrspace(1) null, ptr %20
  %155 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %156 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %155, i64 0, i32 3
  %157 = load ptr addrspace(1), ptr addrspace(1) %156, align 8
  %158 = bitcast ptr addrspace(1) %157 to ptr addrspace(1)
  %159 = and i64 72057594037927935, -1
  %160 = or i64 2449958197289549824, %159
  %161 = getelementptr i8, ptr addrspace(1) null, i64 %160
  %162 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %158, i64 0, i64 0
  store ptr addrspace(1) %161, ptr addrspace(1) %162
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %155, i64 0, i32 1
  store i64 1, ptr addrspace(1) %163
  %164 = bitcast ptr addrspace(1) %155 to ptr addrspace(1)
  %165 = getelementptr i8, ptr addrspace(1) %164, i64 864691128455135236
  store ptr addrspace(1) %165, ptr %21
  %166 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %166), !dbg !34
  store ptr addrspace(1) null, ptr %22
  %167 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !35
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 3
  %169 = load ptr addrspace(1), ptr addrspace(1) %168, align 8
  %170 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %171 = call ptr addrspace(1) @_bal_int_to_tagged(i64 -9223372036854775806), !dbg !36
  %172 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %170, i64 0, i64 0
  store ptr addrspace(1) %171, ptr addrspace(1) %172
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 1
  store i64 1, ptr addrspace(1) %173
  %174 = bitcast ptr addrspace(1) %167 to ptr addrspace(1)
  %175 = getelementptr i8, ptr addrspace(1) %174, i64 864691128455135236
  store ptr addrspace(1) %175, ptr %23
  %176 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %176), !dbg !37
  store ptr addrspace(1) null, ptr %24
  %177 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !38
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 3
  %179 = load ptr addrspace(1), ptr addrspace(1) %178, align 8
  %180 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %181 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !39
  %182 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %180, i64 0, i64 0
  store ptr addrspace(1) %181, ptr addrspace(1) %182
  %183 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 1
  store i64 1, ptr addrspace(1) %183
  %184 = bitcast ptr addrspace(1) %177 to ptr addrspace(1)
  %185 = getelementptr i8, ptr addrspace(1) %184, i64 864691128455135236
  store ptr addrspace(1) %185, ptr %25
  %186 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %186), !dbg !40
  store ptr addrspace(1) null, ptr %26
  %187 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !41
  %188 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %187, i64 0, i32 3
  %189 = load ptr addrspace(1), ptr addrspace(1) %188, align 8
  %190 = bitcast ptr addrspace(1) %189 to ptr addrspace(1)
  %191 = and i64 72057594037927935, 2
  %192 = or i64 2449958197289549824, %191
  %193 = getelementptr i8, ptr addrspace(1) null, i64 %192
  %194 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %190, i64 0, i64 0
  store ptr addrspace(1) %193, ptr addrspace(1) %194
  %195 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %187, i64 0, i32 1
  store i64 1, ptr addrspace(1) %195
  %196 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %197 = getelementptr i8, ptr addrspace(1) %196, i64 864691128455135236
  store ptr addrspace(1) %197, ptr %27
  %198 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %198), !dbg !42
  store ptr addrspace(1) null, ptr %28
  %199 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %200 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %199, i64 0, i32 3
  %201 = load ptr addrspace(1), ptr addrspace(1) %200, align 8
  %202 = bitcast ptr addrspace(1) %201 to ptr addrspace(1)
  %203 = and i64 72057594037927935, 1
  %204 = or i64 2449958197289549824, %203
  %205 = getelementptr i8, ptr addrspace(1) null, i64 %204
  %206 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %202, i64 0, i64 0
  store ptr addrspace(1) %205, ptr addrspace(1) %206
  %207 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %199, i64 0, i32 1
  store i64 1, ptr addrspace(1) %207
  %208 = bitcast ptr addrspace(1) %199 to ptr addrspace(1)
  %209 = getelementptr i8, ptr addrspace(1) %208, i64 864691128455135236
  store ptr addrspace(1) %209, ptr %29
  %210 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %210), !dbg !44
  store ptr addrspace(1) null, ptr %30
  %211 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !45
  %212 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %211, i64 0, i32 3
  %213 = load ptr addrspace(1), ptr addrspace(1) %212, align 8
  %214 = bitcast ptr addrspace(1) %213 to ptr addrspace(1)
  %215 = and i64 72057594037927935, 0
  %216 = or i64 2449958197289549824, %215
  %217 = getelementptr i8, ptr addrspace(1) null, i64 %216
  %218 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %214, i64 0, i64 0
  store ptr addrspace(1) %217, ptr addrspace(1) %218
  %219 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %211, i64 0, i32 1
  store i64 1, ptr addrspace(1) %219
  %220 = bitcast ptr addrspace(1) %211 to ptr addrspace(1)
  %221 = getelementptr i8, ptr addrspace(1) %220, i64 864691128455135236
  store ptr addrspace(1) %221, ptr %31
  %222 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %222), !dbg !46
  store ptr addrspace(1) null, ptr %32
  %223 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !47
  %224 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %223, i64 0, i32 3
  %225 = load ptr addrspace(1), ptr addrspace(1) %224, align 8
  %226 = bitcast ptr addrspace(1) %225 to ptr addrspace(1)
  %227 = and i64 72057594037927935, 0
  %228 = or i64 2449958197289549824, %227
  %229 = getelementptr i8, ptr addrspace(1) null, i64 %228
  %230 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %226, i64 0, i64 0
  store ptr addrspace(1) %229, ptr addrspace(1) %230
  %231 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %223, i64 0, i32 1
  store i64 1, ptr addrspace(1) %231
  %232 = bitcast ptr addrspace(1) %223 to ptr addrspace(1)
  %233 = getelementptr i8, ptr addrspace(1) %232, i64 864691128455135236
  store ptr addrspace(1) %233, ptr %33
  %234 = load ptr addrspace(1), ptr %33
  call void @_Bb02ioprintln(ptr addrspace(1) %234), !dbg !48
  store ptr addrspace(1) null, ptr %34
  %235 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !49
  %236 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %235, i64 0, i32 3
  %237 = load ptr addrspace(1), ptr addrspace(1) %236, align 8
  %238 = bitcast ptr addrspace(1) %237 to ptr addrspace(1)
  %239 = call ptr addrspace(1) @_bal_int_to_tagged(i64 -9223372036854775805), !dbg !50
  %240 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %238, i64 0, i64 0
  store ptr addrspace(1) %239, ptr addrspace(1) %240
  %241 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %235, i64 0, i32 1
  store i64 1, ptr addrspace(1) %241
  %242 = bitcast ptr addrspace(1) %235 to ptr addrspace(1)
  %243 = getelementptr i8, ptr addrspace(1) %242, i64 864691128455135236
  store ptr addrspace(1) %243, ptr %35
  %244 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %244), !dbg !51
  store ptr addrspace(1) null, ptr %36
  %245 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !52
  %246 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 3
  %247 = load ptr addrspace(1), ptr addrspace(1) %246, align 8
  %248 = bitcast ptr addrspace(1) %247 to ptr addrspace(1)
  %249 = call ptr addrspace(1) @_bal_int_to_tagged(i64 -9223372036854775806), !dbg !53
  %250 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %248, i64 0, i64 0
  store ptr addrspace(1) %249, ptr addrspace(1) %250
  %251 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 1
  store i64 1, ptr addrspace(1) %251
  %252 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %253 = getelementptr i8, ptr addrspace(1) %252, i64 864691128455135236
  store ptr addrspace(1) %253, ptr %37
  %254 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %254), !dbg !54
  store ptr addrspace(1) null, ptr %38
  ret void
255:
  %256 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %256), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/sub2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 12, scope: !5)
!10 = !DILocation(line: 4, column: 1, scope: !5)
!11 = !DILocation(line: 5, column: 12, scope: !5)
!12 = !DILocation(line: 5, column: 12, scope: !5)
!13 = !DILocation(line: 5, column: 1, scope: !5)
!14 = !DILocation(line: 6, column: 12, scope: !5)
!15 = !DILocation(line: 6, column: 12, scope: !5)
!16 = !DILocation(line: 6, column: 1, scope: !5)
!17 = !DILocation(line: 8, column: 12, scope: !5)
!18 = !DILocation(line: 8, column: 12, scope: !5)
!19 = !DILocation(line: 8, column: 1, scope: !5)
!20 = !DILocation(line: 9, column: 12, scope: !5)
!21 = !DILocation(line: 9, column: 1, scope: !5)
!22 = !DILocation(line: 10, column: 12, scope: !5)
!23 = !DILocation(line: 10, column: 1, scope: !5)
!24 = !DILocation(line: 11, column: 12, scope: !5)
!25 = !DILocation(line: 11, column: 1, scope: !5)
!26 = !DILocation(line: 13, column: 12, scope: !5)
!27 = !DILocation(line: 13, column: 12, scope: !5)
!28 = !DILocation(line: 13, column: 1, scope: !5)
!29 = !DILocation(line: 14, column: 12, scope: !5)
!30 = !DILocation(line: 14, column: 1, scope: !5)
!31 = !DILocation(line: 15, column: 12, scope: !5)
!32 = !DILocation(line: 15, column: 1, scope: !5)
!33 = !DILocation(line: 16, column: 12, scope: !5)
!34 = !DILocation(line: 16, column: 1, scope: !5)
!35 = !DILocation(line: 17, column: 12, scope: !5)
!36 = !DILocation(line: 17, column: 12, scope: !5)
!37 = !DILocation(line: 17, column: 1, scope: !5)
!38 = !DILocation(line: 19, column: 12, scope: !5)
!39 = !DILocation(line: 19, column: 12, scope: !5)
!40 = !DILocation(line: 19, column: 1, scope: !5)
!41 = !DILocation(line: 20, column: 12, scope: !5)
!42 = !DILocation(line: 20, column: 1, scope: !5)
!43 = !DILocation(line: 21, column: 12, scope: !5)
!44 = !DILocation(line: 21, column: 1, scope: !5)
!45 = !DILocation(line: 22, column: 12, scope: !5)
!46 = !DILocation(line: 22, column: 1, scope: !5)
!47 = !DILocation(line: 24, column: 12, scope: !5)
!48 = !DILocation(line: 24, column: 1, scope: !5)
!49 = !DILocation(line: 25, column: 12, scope: !5)
!50 = !DILocation(line: 25, column: 12, scope: !5)
!51 = !DILocation(line: 25, column: 1, scope: !5)
!52 = !DILocation(line: 26, column: 12, scope: !5)
!53 = !DILocation(line: 26, column: 12, scope: !5)
!54 = !DILocation(line: 26, column: 1, scope: !5)
