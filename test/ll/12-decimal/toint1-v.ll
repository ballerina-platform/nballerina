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
  %39 = alloca ptr addrspace(1)
  %40 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %45 = alloca i8
  %46 = load ptr, ptr @_bal_stack_guard
  %47 = icmp ult ptr %45, %46
  br i1 %47, label %303, label %48
48:
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 3
  %51 = load ptr addrspace(1), ptr addrspace(1) %50, align 8
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = and i64 72057594037927935, 1
  %54 = or i64 2449958197289549824, %53
  %55 = getelementptr i8, ptr addrspace(1) null, i64 %54
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %52, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %1
  %60 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = and i64 72057594037927935, 0
  %66 = or i64 2449958197289549824, %65
  %67 = getelementptr i8, ptr addrspace(1) null, i64 %66
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %64, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %3
  %72 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = and i64 72057594037927935, -1
  %78 = or i64 2449958197289549824, %77
  %79 = getelementptr i8, ptr addrspace(1) null, i64 %78
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %5
  %84 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
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
  store ptr addrspace(1) %95, ptr %7
  %96 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %97 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 3
  %99 = load ptr addrspace(1), ptr addrspace(1) %98, align 8
  %100 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %101 = and i64 72057594037927935, 2
  %102 = or i64 2449958197289549824, %101
  %103 = getelementptr i8, ptr addrspace(1) null, i64 %102
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %9
  %108 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = and i64 72057594037927935, 2
  %114 = or i64 2449958197289549824, %113
  %115 = getelementptr i8, ptr addrspace(1) null, i64 %114
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 1, ptr addrspace(1) %117
  %118 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 864691128455135236
  store ptr addrspace(1) %119, ptr %11
  %120 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %120), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %121 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 3
  %123 = load ptr addrspace(1), ptr addrspace(1) %122, align 8
  %124 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %125 = and i64 72057594037927935, 0
  %126 = or i64 2449958197289549824, %125
  %127 = getelementptr i8, ptr addrspace(1) null, i64 %126
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %124, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %13
  %132 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %133 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 3
  %135 = load ptr addrspace(1), ptr addrspace(1) %134, align 8
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = and i64 72057594037927935, -2
  %138 = or i64 2449958197289549824, %137
  %139 = getelementptr i8, ptr addrspace(1) null, i64 %138
  %140 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 0
  store ptr addrspace(1) %139, ptr addrspace(1) %140
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  store i64 1, ptr addrspace(1) %141
  %142 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %143 = getelementptr i8, ptr addrspace(1) %142, i64 864691128455135236
  store ptr addrspace(1) %143, ptr %15
  %144 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %144), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %145 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 3
  %147 = load ptr addrspace(1), ptr addrspace(1) %146, align 8
  %148 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %149 = and i64 72057594037927935, -2
  %150 = or i64 2449958197289549824, %149
  %151 = getelementptr i8, ptr addrspace(1) null, i64 %150
  %152 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %148, i64 0, i64 0
  store ptr addrspace(1) %151, ptr addrspace(1) %152
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 1
  store i64 1, ptr addrspace(1) %153
  %154 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %155 = getelementptr i8, ptr addrspace(1) %154, i64 864691128455135236
  store ptr addrspace(1) %155, ptr %17
  %156 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %156), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %157 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %158 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %157, i64 0, i32 3
  %159 = load ptr addrspace(1), ptr addrspace(1) %158, align 8
  %160 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %161 = and i64 72057594037927935, 100
  %162 = or i64 2449958197289549824, %161
  %163 = getelementptr i8, ptr addrspace(1) null, i64 %162
  %164 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %160, i64 0, i64 0
  store ptr addrspace(1) %163, ptr addrspace(1) %164
  %165 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %157, i64 0, i32 1
  store i64 1, ptr addrspace(1) %165
  %166 = bitcast ptr addrspace(1) %157 to ptr addrspace(1)
  %167 = getelementptr i8, ptr addrspace(1) %166, i64 864691128455135236
  store ptr addrspace(1) %167, ptr %19
  %168 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %168), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %169 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %170 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %169, i64 0, i32 3
  %171 = load ptr addrspace(1), ptr addrspace(1) %170, align 8
  %172 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %173 = and i64 72057594037927935, 150
  %174 = or i64 2449958197289549824, %173
  %175 = getelementptr i8, ptr addrspace(1) null, i64 %174
  %176 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %172, i64 0, i64 0
  store ptr addrspace(1) %175, ptr addrspace(1) %176
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %169, i64 0, i32 1
  store i64 1, ptr addrspace(1) %177
  %178 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %179 = getelementptr i8, ptr addrspace(1) %178, i64 864691128455135236
  store ptr addrspace(1) %179, ptr %21
  %180 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %180), !dbg !30
  store ptr addrspace(1) null, ptr %22
  %181 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %182 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %181, i64 0, i32 3
  %183 = load ptr addrspace(1), ptr addrspace(1) %182, align 8
  %184 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %185 = and i64 72057594037927935, -150
  %186 = or i64 2449958197289549824, %185
  %187 = getelementptr i8, ptr addrspace(1) null, i64 %186
  %188 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %184, i64 0, i64 0
  store ptr addrspace(1) %187, ptr addrspace(1) %188
  %189 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %181, i64 0, i32 1
  store i64 1, ptr addrspace(1) %189
  %190 = bitcast ptr addrspace(1) %181 to ptr addrspace(1)
  %191 = getelementptr i8, ptr addrspace(1) %190, i64 864691128455135236
  store ptr addrspace(1) %191, ptr %23
  %192 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %192), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %193 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %194 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %193, i64 0, i32 3
  %195 = load ptr addrspace(1), ptr addrspace(1) %194, align 8
  %196 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %197 = and i64 72057594037927935, 151
  %198 = or i64 2449958197289549824, %197
  %199 = getelementptr i8, ptr addrspace(1) null, i64 %198
  %200 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %196, i64 0, i64 0
  store ptr addrspace(1) %199, ptr addrspace(1) %200
  %201 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %193, i64 0, i32 1
  store i64 1, ptr addrspace(1) %201
  %202 = bitcast ptr addrspace(1) %193 to ptr addrspace(1)
  %203 = getelementptr i8, ptr addrspace(1) %202, i64 864691128455135236
  store ptr addrspace(1) %203, ptr %25
  %204 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %204), !dbg !34
  store ptr addrspace(1) null, ptr %26
  %205 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !35
  %206 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %205, i64 0, i32 3
  %207 = load ptr addrspace(1), ptr addrspace(1) %206, align 8
  %208 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %209 = and i64 72057594037927935, 151
  %210 = or i64 2449958197289549824, %209
  %211 = getelementptr i8, ptr addrspace(1) null, i64 %210
  %212 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %208, i64 0, i64 0
  store ptr addrspace(1) %211, ptr addrspace(1) %212
  %213 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %205, i64 0, i32 1
  store i64 1, ptr addrspace(1) %213
  %214 = bitcast ptr addrspace(1) %205 to ptr addrspace(1)
  %215 = getelementptr i8, ptr addrspace(1) %214, i64 864691128455135236
  store ptr addrspace(1) %215, ptr %27
  %216 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %216), !dbg !36
  store ptr addrspace(1) null, ptr %28
  %217 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %218 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 3
  %219 = load ptr addrspace(1), ptr addrspace(1) %218, align 8
  %220 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %221 = and i64 72057594037927935, 152
  %222 = or i64 2449958197289549824, %221
  %223 = getelementptr i8, ptr addrspace(1) null, i64 %222
  %224 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %220, i64 0, i64 0
  store ptr addrspace(1) %223, ptr addrspace(1) %224
  %225 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 1
  store i64 1, ptr addrspace(1) %225
  %226 = bitcast ptr addrspace(1) %217 to ptr addrspace(1)
  %227 = getelementptr i8, ptr addrspace(1) %226, i64 864691128455135236
  store ptr addrspace(1) %227, ptr %29
  %228 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %228), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %229 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !39
  %230 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %229, i64 0, i32 3
  %231 = load ptr addrspace(1), ptr addrspace(1) %230, align 8
  %232 = bitcast ptr addrspace(1) %231 to ptr addrspace(1)
  %233 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !40
  %234 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %232, i64 0, i64 0
  store ptr addrspace(1) %233, ptr addrspace(1) %234
  %235 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %229, i64 0, i32 1
  store i64 1, ptr addrspace(1) %235
  %236 = bitcast ptr addrspace(1) %229 to ptr addrspace(1)
  %237 = getelementptr i8, ptr addrspace(1) %236, i64 864691128455135236
  store ptr addrspace(1) %237, ptr %31
  %238 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %238), !dbg !41
  store ptr addrspace(1) null, ptr %32
  %239 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !42
  %240 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %239, i64 0, i32 3
  %241 = load ptr addrspace(1), ptr addrspace(1) %240, align 8
  %242 = bitcast ptr addrspace(1) %241 to ptr addrspace(1)
  %243 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !43
  %244 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %242, i64 0, i64 0
  store ptr addrspace(1) %243, ptr addrspace(1) %244
  %245 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %239, i64 0, i32 1
  store i64 1, ptr addrspace(1) %245
  %246 = bitcast ptr addrspace(1) %239 to ptr addrspace(1)
  %247 = getelementptr i8, ptr addrspace(1) %246, i64 864691128455135236
  store ptr addrspace(1) %247, ptr %33
  %248 = load ptr addrspace(1), ptr %33
  call void @_Bb02ioprintln(ptr addrspace(1) %248), !dbg !44
  store ptr addrspace(1) null, ptr %34
  %249 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !45
  %250 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %249, i64 0, i32 3
  %251 = load ptr addrspace(1), ptr addrspace(1) %250, align 8
  %252 = bitcast ptr addrspace(1) %251 to ptr addrspace(1)
  %253 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !46
  %254 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %252, i64 0, i64 0
  store ptr addrspace(1) %253, ptr addrspace(1) %254
  %255 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %249, i64 0, i32 1
  store i64 1, ptr addrspace(1) %255
  %256 = bitcast ptr addrspace(1) %249 to ptr addrspace(1)
  %257 = getelementptr i8, ptr addrspace(1) %256, i64 864691128455135236
  store ptr addrspace(1) %257, ptr %35
  %258 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %258), !dbg !47
  store ptr addrspace(1) null, ptr %36
  %259 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %260 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %259, i64 0, i32 3
  %261 = load ptr addrspace(1), ptr addrspace(1) %260, align 8
  %262 = bitcast ptr addrspace(1) %261 to ptr addrspace(1)
  %263 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !49
  %264 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %262, i64 0, i64 0
  store ptr addrspace(1) %263, ptr addrspace(1) %264
  %265 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %259, i64 0, i32 1
  store i64 1, ptr addrspace(1) %265
  %266 = bitcast ptr addrspace(1) %259 to ptr addrspace(1)
  %267 = getelementptr i8, ptr addrspace(1) %266, i64 864691128455135236
  store ptr addrspace(1) %267, ptr %37
  %268 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %268), !dbg !50
  store ptr addrspace(1) null, ptr %38
  %269 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !51
  %270 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %269, i64 0, i32 3
  %271 = load ptr addrspace(1), ptr addrspace(1) %270, align 8
  %272 = bitcast ptr addrspace(1) %271 to ptr addrspace(1)
  %273 = call ptr addrspace(1) @_bal_int_to_tagged(i64 9223372036854775807), !dbg !52
  %274 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %272, i64 0, i64 0
  store ptr addrspace(1) %273, ptr addrspace(1) %274
  %275 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %269, i64 0, i32 1
  store i64 1, ptr addrspace(1) %275
  %276 = bitcast ptr addrspace(1) %269 to ptr addrspace(1)
  %277 = getelementptr i8, ptr addrspace(1) %276, i64 864691128455135236
  store ptr addrspace(1) %277, ptr %39
  %278 = load ptr addrspace(1), ptr %39
  call void @_Bb02ioprintln(ptr addrspace(1) %278), !dbg !53
  store ptr addrspace(1) null, ptr %40
  %279 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !54
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 3
  %281 = load ptr addrspace(1), ptr addrspace(1) %280, align 8
  %282 = bitcast ptr addrspace(1) %281 to ptr addrspace(1)
  %283 = and i64 72057594037927935, 0
  %284 = or i64 2449958197289549824, %283
  %285 = getelementptr i8, ptr addrspace(1) null, i64 %284
  %286 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %282, i64 0, i64 0
  store ptr addrspace(1) %285, ptr addrspace(1) %286
  %287 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 1
  store i64 1, ptr addrspace(1) %287
  %288 = bitcast ptr addrspace(1) %279 to ptr addrspace(1)
  %289 = getelementptr i8, ptr addrspace(1) %288, i64 864691128455135236
  store ptr addrspace(1) %289, ptr %41
  %290 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %290), !dbg !55
  store ptr addrspace(1) null, ptr %42
  %291 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %292 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %291, i64 0, i32 3
  %293 = load ptr addrspace(1), ptr addrspace(1) %292, align 8
  %294 = bitcast ptr addrspace(1) %293 to ptr addrspace(1)
  %295 = and i64 72057594037927935, 0
  %296 = or i64 2449958197289549824, %295
  %297 = getelementptr i8, ptr addrspace(1) null, i64 %296
  %298 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %294, i64 0, i64 0
  store ptr addrspace(1) %297, ptr addrspace(1) %298
  %299 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %291, i64 0, i32 1
  store i64 1, ptr addrspace(1) %299
  %300 = bitcast ptr addrspace(1) %291 to ptr addrspace(1)
  %301 = getelementptr i8, ptr addrspace(1) %300, i64 864691128455135236
  store ptr addrspace(1) %301, ptr %43
  %302 = load ptr addrspace(1), ptr %43
  call void @_Bb02ioprintln(ptr addrspace(1) %302), !dbg !57
  store ptr addrspace(1) null, ptr %44
  ret void
303:
  %304 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %304), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/toint1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 15, scope: !5)
!10 = !DILocation(line: 3, column: 4, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 11, column: 15, scope: !5)
!26 = !DILocation(line: 11, column: 4, scope: !5)
!27 = !DILocation(line: 12, column: 15, scope: !5)
!28 = !DILocation(line: 12, column: 4, scope: !5)
!29 = !DILocation(line: 13, column: 15, scope: !5)
!30 = !DILocation(line: 13, column: 4, scope: !5)
!31 = !DILocation(line: 14, column: 15, scope: !5)
!32 = !DILocation(line: 14, column: 4, scope: !5)
!33 = !DILocation(line: 15, column: 15, scope: !5)
!34 = !DILocation(line: 15, column: 4, scope: !5)
!35 = !DILocation(line: 16, column: 15, scope: !5)
!36 = !DILocation(line: 16, column: 4, scope: !5)
!37 = !DILocation(line: 17, column: 15, scope: !5)
!38 = !DILocation(line: 17, column: 4, scope: !5)
!39 = !DILocation(line: 18, column: 15, scope: !5)
!40 = !DILocation(line: 18, column: 15, scope: !5)
!41 = !DILocation(line: 18, column: 4, scope: !5)
!42 = !DILocation(line: 19, column: 15, scope: !5)
!43 = !DILocation(line: 19, column: 15, scope: !5)
!44 = !DILocation(line: 19, column: 4, scope: !5)
!45 = !DILocation(line: 20, column: 15, scope: !5)
!46 = !DILocation(line: 20, column: 15, scope: !5)
!47 = !DILocation(line: 20, column: 4, scope: !5)
!48 = !DILocation(line: 21, column: 15, scope: !5)
!49 = !DILocation(line: 21, column: 15, scope: !5)
!50 = !DILocation(line: 21, column: 4, scope: !5)
!51 = !DILocation(line: 22, column: 15, scope: !5)
!52 = !DILocation(line: 22, column: 15, scope: !5)
!53 = !DILocation(line: 22, column: 4, scope: !5)
!54 = !DILocation(line: 23, column: 15, scope: !5)
!55 = !DILocation(line: 23, column: 4, scope: !5)
!56 = !DILocation(line: 24, column: 15, scope: !5)
!57 = !DILocation(line: 24, column: 4, scope: !5)
