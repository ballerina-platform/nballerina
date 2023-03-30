@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
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
  %28 = alloca i8
  %29 = load ptr, ptr @_bal_stack_guard
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %235, label %31
31:
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = load ptr addrspace(1), ptr %1
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %2
  %44 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = zext i1 1 to i64
  %50 = or i64 %49, 72057594037927936
  %51 = getelementptr i8, ptr addrspace(1) null, i64 %50
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %4
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load ptr addrspace(1), ptr %4
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %5
  %65 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %7
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = load ptr addrspace(1), ptr %7
  %79 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %78, ptr addrspace(1) %79
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %80
  %81 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %82 = getelementptr i8, ptr addrspace(1) %81, i64 864691128455135236
  store ptr addrspace(1) %82, ptr %8
  %83 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %83), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = and i64 72057594037927935, -17
  %89 = or i64 2449958197289549824, %88
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %10
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = load ptr addrspace(1), ptr %10
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %99, ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %11
  %104 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %104), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !21
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
  %114 = and i64 72057594037927935, 43
  %115 = or i64 2449958197289549824, %114
  %116 = getelementptr i8, ptr addrspace(1) null, i64 %115
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 2
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  store i64 3, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %13
  %121 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 3
  %123 = load ptr addrspace(1), ptr addrspace(1) %122, align 8
  %124 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %125 = load ptr addrspace(1), ptr %13
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %124, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %14
  %130 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %131 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !24
  %132 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %133 = getelementptr i8, ptr addrspace(1) %132, i64 864691128455135236
  store ptr addrspace(1) %133, ptr %16
  %134 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %134, i64 0, i32 3
  %136 = load ptr addrspace(1), ptr addrspace(1) %135, align 8
  %137 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %138 = load ptr addrspace(1), ptr %16
  %139 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %137, i64 0, i64 0
  store ptr addrspace(1) %138, ptr addrspace(1) %139
  %140 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %134, i64 0, i32 1
  store i64 1, ptr addrspace(1) %140
  %141 = bitcast ptr addrspace(1) %134 to ptr addrspace(1)
  %142 = getelementptr i8, ptr addrspace(1) %141, i64 864691128455135236
  store ptr addrspace(1) %142, ptr %17
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = load ptr addrspace(1), ptr %17
  %148 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) %147, ptr addrspace(1) %148
  %149 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %149
  %150 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %151 = getelementptr i8, ptr addrspace(1) %150, i64 864691128455135236
  store ptr addrspace(1) %151, ptr %18
  %152 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 3
  %154 = load ptr addrspace(1), ptr addrspace(1) %153, align 8
  %155 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %156 = load ptr addrspace(1), ptr %18
  %157 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %155, i64 0, i64 0
  store ptr addrspace(1) %156, ptr addrspace(1) %157
  %158 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 1
  store i64 1, ptr addrspace(1) %158
  %159 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %160 = getelementptr i8, ptr addrspace(1) %159, i64 864691128455135236
  store ptr addrspace(1) %160, ptr %19
  %161 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %162 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 3
  %163 = load ptr addrspace(1), ptr addrspace(1) %162, align 8
  %164 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %165 = load ptr addrspace(1), ptr %19
  %166 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %164, i64 0, i64 0
  store ptr addrspace(1) %165, ptr addrspace(1) %166
  %167 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 1
  store i64 1, ptr addrspace(1) %167
  %168 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %169 = getelementptr i8, ptr addrspace(1) %168, i64 864691128455135236
  store ptr addrspace(1) %169, ptr %20
  %170 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %171 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %170, i64 0, i32 3
  %172 = load ptr addrspace(1), ptr addrspace(1) %171, align 8
  %173 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %174 = load ptr addrspace(1), ptr %20
  %175 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %173, i64 0, i64 0
  store ptr addrspace(1) %174, ptr addrspace(1) %175
  %176 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %170, i64 0, i32 1
  store i64 1, ptr addrspace(1) %176
  %177 = bitcast ptr addrspace(1) %170 to ptr addrspace(1)
  %178 = getelementptr i8, ptr addrspace(1) %177, i64 864691128455135236
  store ptr addrspace(1) %178, ptr %21
  %179 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 3
  %181 = load ptr addrspace(1), ptr addrspace(1) %180, align 8
  %182 = bitcast ptr addrspace(1) %181 to ptr addrspace(1)
  %183 = load ptr addrspace(1), ptr %21
  %184 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %182, i64 0, i64 0
  store ptr addrspace(1) %183, ptr addrspace(1) %184
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 1
  store i64 1, ptr addrspace(1) %185
  %186 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %187 = getelementptr i8, ptr addrspace(1) %186, i64 864691128455135236
  store ptr addrspace(1) %187, ptr %22
  %188 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %188), !dbg !31
  store ptr addrspace(1) null, ptr %23
  %189 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !32
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %189, i64 0, i32 3
  %191 = load ptr addrspace(1), ptr addrspace(1) %190, align 8
  %192 = bitcast ptr addrspace(1) %191 to ptr addrspace(1)
  %193 = and i64 72057594037927935, 1
  %194 = or i64 2449958197289549824, %193
  %195 = getelementptr i8, ptr addrspace(1) null, i64 %194
  %196 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %192, i64 0, i64 0
  store ptr addrspace(1) %195, ptr addrspace(1) %196
  %197 = zext i1 1 to i64
  %198 = or i64 %197, 72057594037927936
  %199 = getelementptr i8, ptr addrspace(1) null, i64 %198
  %200 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %192, i64 0, i64 1
  store ptr addrspace(1) %199, ptr addrspace(1) %200
  %201 = and i64 72057594037927935, 21
  %202 = or i64 2449958197289549824, %201
  %203 = getelementptr i8, ptr addrspace(1) null, i64 %202
  %204 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %192, i64 0, i64 2
  store ptr addrspace(1) %203, ptr addrspace(1) %204
  %205 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %189, i64 0, i32 1
  store i64 3, ptr addrspace(1) %205
  %206 = bitcast ptr addrspace(1) %189 to ptr addrspace(1)
  %207 = getelementptr i8, ptr addrspace(1) %206, i64 864691128455135236
  store ptr addrspace(1) %207, ptr %24
  %208 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !33
  %209 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %208, i64 0, i32 3
  %210 = load ptr addrspace(1), ptr addrspace(1) %209, align 8
  %211 = bitcast ptr addrspace(1) %210 to ptr addrspace(1)
  %212 = zext i1 0 to i64
  %213 = or i64 %212, 72057594037927936
  %214 = getelementptr i8, ptr addrspace(1) null, i64 %213
  %215 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %211, i64 0, i64 0
  store ptr addrspace(1) %214, ptr addrspace(1) %215
  %216 = load ptr addrspace(1), ptr %24
  %217 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %211, i64 0, i64 1
  store ptr addrspace(1) %216, ptr addrspace(1) %217
  %218 = and i64 72057594037927935, 0
  %219 = or i64 2449958197289549824, %218
  %220 = getelementptr i8, ptr addrspace(1) null, i64 %219
  %221 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %211, i64 0, i64 2
  store ptr addrspace(1) %220, ptr addrspace(1) %221
  %222 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %208, i64 0, i32 1
  store i64 3, ptr addrspace(1) %222
  %223 = bitcast ptr addrspace(1) %208 to ptr addrspace(1)
  %224 = getelementptr i8, ptr addrspace(1) %223, i64 864691128455135236
  store ptr addrspace(1) %224, ptr %25
  %225 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %226 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %225, i64 0, i32 3
  %227 = load ptr addrspace(1), ptr addrspace(1) %226, align 8
  %228 = bitcast ptr addrspace(1) %227 to ptr addrspace(1)
  %229 = load ptr addrspace(1), ptr %25
  %230 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %228, i64 0, i64 0
  store ptr addrspace(1) %229, ptr addrspace(1) %230
  %231 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %225, i64 0, i32 1
  store i64 1, ptr addrspace(1) %231
  %232 = bitcast ptr addrspace(1) %225 to ptr addrspace(1)
  %233 = getelementptr i8, ptr addrspace(1) %232, i64 864691128455135236
  store ptr addrspace(1) %233, ptr %26
  %234 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %234), !dbg !35
  store ptr addrspace(1) null, ptr %27
  ret void
235:
  %236 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %236), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 15, scope: !5)
!23 = !DILocation(line: 9, column: 4, scope: !5)
!24 = !DILocation(line: 10, column: 20, scope: !5)
!25 = !DILocation(line: 10, column: 19, scope: !5)
!26 = !DILocation(line: 10, column: 18, scope: !5)
!27 = !DILocation(line: 10, column: 17, scope: !5)
!28 = !DILocation(line: 10, column: 16, scope: !5)
!29 = !DILocation(line: 10, column: 15, scope: !5)
!30 = !DILocation(line: 10, column: 15, scope: !5)
!31 = !DILocation(line: 10, column: 4, scope: !5)
!32 = !DILocation(line: 11, column: 23, scope: !5)
!33 = !DILocation(line: 11, column: 15, scope: !5)
!34 = !DILocation(line: 11, column: 15, scope: !5)
!35 = !DILocation(line: 11, column: 4, scope: !5)
