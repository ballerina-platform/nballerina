@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i64
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i64
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i64
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca i64
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i64
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i64
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca i64
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca i64
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca i8
  %47 = load ptr, ptr @_bal_stack_guard
  %48 = icmp ult ptr %46, %47
  br i1 %48, label %230, label %49
49:
  %50 = call i64 @_B_mul(i64 9223372036854775806, i64 1), !dbg !11
  store i64 %50, ptr %1
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load i64, ptr %1
  %56 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %55), !dbg !13
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %2
  %61 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %61), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %62 = call i64 @_B_mul(i64 9223372036854775806, i64 0), !dbg !15
  store i64 %62, ptr %4
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load i64, ptr %4
  %68 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %67), !dbg !17
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %5
  %73 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %74 = call i64 @_B_mul(i64 9223372036854775806, i64 -1), !dbg !19
  store i64 %74, ptr %7
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = load i64, ptr %7
  %80 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %79), !dbg !21
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %8
  %85 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %85), !dbg !22
  store ptr addrspace(1) null, ptr %9
  %86 = call i64 @_B_mul(i64 1, i64 1), !dbg !23
  store i64 %86, ptr %10
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = load i64, ptr %10
  %92 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %91), !dbg !25
  %93 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %92, ptr addrspace(1) %93
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 1, ptr addrspace(1) %94
  %95 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %96 = getelementptr i8, ptr addrspace(1) %95, i64 864691128455135236
  store ptr addrspace(1) %96, ptr %11
  %97 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %97), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %98 = call i64 @_B_mul(i64 1, i64 0), !dbg !27
  store i64 %98, ptr %13
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load i64, ptr %13
  %104 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %103), !dbg !29
  %105 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %104, ptr addrspace(1) %105
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %106
  %107 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %108 = getelementptr i8, ptr addrspace(1) %107, i64 864691128455135236
  store ptr addrspace(1) %108, ptr %14
  %109 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %109), !dbg !30
  store ptr addrspace(1) null, ptr %15
  %110 = call i64 @_B_mul(i64 1, i64 -1), !dbg !31
  store i64 %110, ptr %16
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = load i64, ptr %16
  %116 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %115), !dbg !33
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %17
  %121 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %121), !dbg !34
  store ptr addrspace(1) null, ptr %18
  %122 = call i64 @_B_mul(i64 0, i64 1), !dbg !35
  store i64 %122, ptr %19
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load i64, ptr %19
  %128 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %127), !dbg !37
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %130
  %131 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 864691128455135236
  store ptr addrspace(1) %132, ptr %20
  %133 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %133), !dbg !38
  store ptr addrspace(1) null, ptr %21
  %134 = call i64 @_B_mul(i64 0, i64 0), !dbg !39
  store i64 %134, ptr %22
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load i64, ptr %22
  %140 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %139), !dbg !41
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %142
  %143 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %144 = getelementptr i8, ptr addrspace(1) %143, i64 864691128455135236
  store ptr addrspace(1) %144, ptr %23
  %145 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %145), !dbg !42
  store ptr addrspace(1) null, ptr %24
  %146 = call i64 @_B_mul(i64 0, i64 -1), !dbg !43
  store i64 %146, ptr %25
  %147 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = load i64, ptr %25
  %152 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %151), !dbg !45
  %153 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 0
  store ptr addrspace(1) %152, ptr addrspace(1) %153
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 1
  store i64 1, ptr addrspace(1) %154
  %155 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 864691128455135236
  store ptr addrspace(1) %156, ptr %26
  %157 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %157), !dbg !46
  store ptr addrspace(1) null, ptr %27
  %158 = call i64 @_B_mul(i64 -1, i64 1), !dbg !47
  store i64 %158, ptr %28
  %159 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 3
  %161 = load ptr addrspace(1), ptr addrspace(1) %160, align 8
  %162 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %163 = load i64, ptr %28
  %164 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %163), !dbg !49
  %165 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %162, i64 0, i64 0
  store ptr addrspace(1) %164, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 1
  store i64 1, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %29
  %169 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %169), !dbg !50
  store ptr addrspace(1) null, ptr %30
  %170 = call i64 @_B_mul(i64 -1, i64 0), !dbg !51
  store i64 %170, ptr %31
  %171 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !52
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 3
  %173 = load ptr addrspace(1), ptr addrspace(1) %172, align 8
  %174 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %175 = load i64, ptr %31
  %176 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %175), !dbg !53
  %177 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %174, i64 0, i64 0
  store ptr addrspace(1) %176, ptr addrspace(1) %177
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 1
  store i64 1, ptr addrspace(1) %178
  %179 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %180 = getelementptr i8, ptr addrspace(1) %179, i64 864691128455135236
  store ptr addrspace(1) %180, ptr %32
  %181 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %181), !dbg !54
  store ptr addrspace(1) null, ptr %33
  %182 = call i64 @_B_mul(i64 -1, i64 -1), !dbg !55
  store i64 %182, ptr %34
  %183 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %184 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 3
  %185 = load ptr addrspace(1), ptr addrspace(1) %184, align 8
  %186 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %187 = load i64, ptr %34
  %188 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %187), !dbg !57
  %189 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %186, i64 0, i64 0
  store ptr addrspace(1) %188, ptr addrspace(1) %189
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 1
  store i64 1, ptr addrspace(1) %190
  %191 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %192 = getelementptr i8, ptr addrspace(1) %191, i64 864691128455135236
  store ptr addrspace(1) %192, ptr %35
  %193 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %193), !dbg !58
  store ptr addrspace(1) null, ptr %36
  %194 = call i64 @_B_mul(i64 -9223372036854775806, i64 1), !dbg !59
  store i64 %194, ptr %37
  %195 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !60
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 3
  %197 = load ptr addrspace(1), ptr addrspace(1) %196, align 8
  %198 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %199 = load i64, ptr %37
  %200 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %199), !dbg !61
  %201 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %198, i64 0, i64 0
  store ptr addrspace(1) %200, ptr addrspace(1) %201
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 1
  store i64 1, ptr addrspace(1) %202
  %203 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %204 = getelementptr i8, ptr addrspace(1) %203, i64 864691128455135236
  store ptr addrspace(1) %204, ptr %38
  %205 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %205), !dbg !62
  store ptr addrspace(1) null, ptr %39
  %206 = call i64 @_B_mul(i64 -9223372036854775806, i64 0), !dbg !63
  store i64 %206, ptr %40
  %207 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !64
  %208 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 3
  %209 = load ptr addrspace(1), ptr addrspace(1) %208, align 8
  %210 = bitcast ptr addrspace(1) %209 to ptr addrspace(1)
  %211 = load i64, ptr %40
  %212 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %211), !dbg !65
  %213 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %210, i64 0, i64 0
  store ptr addrspace(1) %212, ptr addrspace(1) %213
  %214 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 1
  store i64 1, ptr addrspace(1) %214
  %215 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %216 = getelementptr i8, ptr addrspace(1) %215, i64 864691128455135236
  store ptr addrspace(1) %216, ptr %41
  %217 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %217), !dbg !66
  store ptr addrspace(1) null, ptr %42
  %218 = call i64 @_B_mul(i64 -9223372036854775806, i64 -1), !dbg !67
  store i64 %218, ptr %43
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !68
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load i64, ptr %43
  %224 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %223), !dbg !69
  %225 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %224, ptr addrspace(1) %225
  %226 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %226
  %227 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %228 = getelementptr i8, ptr addrspace(1) %227, i64 864691128455135236
  store ptr addrspace(1) %228, ptr %44
  %229 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %229), !dbg !70
  store ptr addrspace(1) null, ptr %45
  ret void
230:
  %231 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %231), !dbg !10
  unreachable
}
define internal i64 @_B_mul(i64 %0, i64 %1) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  %9 = load i64, ptr %a
  %10 = load i64, ptr %b
  %11 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !73
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 6660), !dbg !71
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !72
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 6913), !dbg !71
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/mul3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mul", linkageName:"_B_mul", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 15, scope: !5)
!18 = !DILocation(line: 6, column: 4, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 15, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 4, scope: !5)
!23 = !DILocation(line: 9, column: 15, scope: !5)
!24 = !DILocation(line: 9, column: 15, scope: !5)
!25 = !DILocation(line: 9, column: 15, scope: !5)
!26 = !DILocation(line: 9, column: 4, scope: !5)
!27 = !DILocation(line: 10, column: 15, scope: !5)
!28 = !DILocation(line: 10, column: 15, scope: !5)
!29 = !DILocation(line: 10, column: 15, scope: !5)
!30 = !DILocation(line: 10, column: 4, scope: !5)
!31 = !DILocation(line: 11, column: 15, scope: !5)
!32 = !DILocation(line: 11, column: 15, scope: !5)
!33 = !DILocation(line: 11, column: 15, scope: !5)
!34 = !DILocation(line: 11, column: 4, scope: !5)
!35 = !DILocation(line: 13, column: 15, scope: !5)
!36 = !DILocation(line: 13, column: 15, scope: !5)
!37 = !DILocation(line: 13, column: 15, scope: !5)
!38 = !DILocation(line: 13, column: 4, scope: !5)
!39 = !DILocation(line: 14, column: 15, scope: !5)
!40 = !DILocation(line: 14, column: 15, scope: !5)
!41 = !DILocation(line: 14, column: 15, scope: !5)
!42 = !DILocation(line: 14, column: 4, scope: !5)
!43 = !DILocation(line: 15, column: 15, scope: !5)
!44 = !DILocation(line: 15, column: 15, scope: !5)
!45 = !DILocation(line: 15, column: 15, scope: !5)
!46 = !DILocation(line: 15, column: 4, scope: !5)
!47 = !DILocation(line: 17, column: 15, scope: !5)
!48 = !DILocation(line: 17, column: 15, scope: !5)
!49 = !DILocation(line: 17, column: 15, scope: !5)
!50 = !DILocation(line: 17, column: 4, scope: !5)
!51 = !DILocation(line: 18, column: 15, scope: !5)
!52 = !DILocation(line: 18, column: 15, scope: !5)
!53 = !DILocation(line: 18, column: 15, scope: !5)
!54 = !DILocation(line: 18, column: 4, scope: !5)
!55 = !DILocation(line: 19, column: 15, scope: !5)
!56 = !DILocation(line: 19, column: 15, scope: !5)
!57 = !DILocation(line: 19, column: 15, scope: !5)
!58 = !DILocation(line: 19, column: 4, scope: !5)
!59 = !DILocation(line: 21, column: 15, scope: !5)
!60 = !DILocation(line: 21, column: 15, scope: !5)
!61 = !DILocation(line: 21, column: 15, scope: !5)
!62 = !DILocation(line: 21, column: 4, scope: !5)
!63 = !DILocation(line: 22, column: 15, scope: !5)
!64 = !DILocation(line: 22, column: 15, scope: !5)
!65 = !DILocation(line: 22, column: 15, scope: !5)
!66 = !DILocation(line: 22, column: 4, scope: !5)
!67 = !DILocation(line: 23, column: 15, scope: !5)
!68 = !DILocation(line: 23, column: 15, scope: !5)
!69 = !DILocation(line: 23, column: 15, scope: !5)
!70 = !DILocation(line: 23, column: 4, scope: !5)
!71 = !DILocation(line: 0, column: 0, scope: !7)
!72 = !DILocation(line: 26, column: 9, scope: !7)
!73 = !DILocation(line: 28, column: 0, scope: !7)
