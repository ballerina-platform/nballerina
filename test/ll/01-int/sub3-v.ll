@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
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
  %46 = alloca i64
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca i64
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca i64
  %53 = alloca ptr addrspace(1)
  %54 = alloca ptr addrspace(1)
  %55 = alloca i64
  %56 = alloca ptr addrspace(1)
  %57 = alloca ptr addrspace(1)
  %58 = alloca i8
  %59 = load ptr, ptr @_bal_stack_guard
  %60 = icmp ult ptr %58, %59
  br i1 %60, label %290, label %61
61:
  %62 = call i64 @_B_sub(i64 9223372036854775806, i64 9223372036854775806), !dbg !11
  store i64 %62, ptr %1
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load i64, ptr %1
  %68 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %67), !dbg !13
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %2
  %73 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %74 = call i64 @_B_sub(i64 1, i64 9223372036854775806), !dbg !15
  store i64 %74, ptr %4
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = load i64, ptr %4
  %80 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %79), !dbg !17
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %5
  %85 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %85), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %86 = call i64 @_B_sub(i64 0, i64 9223372036854775806), !dbg !19
  store i64 %86, ptr %7
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = load i64, ptr %7
  %92 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %91), !dbg !21
  %93 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %92, ptr addrspace(1) %93
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 1, ptr addrspace(1) %94
  %95 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %96 = getelementptr i8, ptr addrspace(1) %95, i64 864691128455135236
  store ptr addrspace(1) %96, ptr %8
  %97 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %97), !dbg !22
  store ptr addrspace(1) null, ptr %9
  %98 = call i64 @_B_sub(i64 9223372036854775806, i64 1), !dbg !23
  store i64 %98, ptr %10
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load i64, ptr %10
  %104 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %103), !dbg !25
  %105 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %104, ptr addrspace(1) %105
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %106
  %107 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %108 = getelementptr i8, ptr addrspace(1) %107, i64 864691128455135236
  store ptr addrspace(1) %108, ptr %11
  %109 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %109), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %110 = call i64 @_B_sub(i64 1, i64 1), !dbg !27
  store i64 %110, ptr %13
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = load i64, ptr %13
  %116 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %115), !dbg !29
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %14
  %121 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %121), !dbg !30
  store ptr addrspace(1) null, ptr %15
  %122 = call i64 @_B_sub(i64 0, i64 1), !dbg !31
  store i64 %122, ptr %16
  %123 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %124 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 3
  %125 = load ptr addrspace(1), ptr addrspace(1) %124, align 8
  %126 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %127 = load i64, ptr %16
  %128 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %127), !dbg !33
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %126, i64 0, i64 0
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %123, i64 0, i32 1
  store i64 1, ptr addrspace(1) %130
  %131 = bitcast ptr addrspace(1) %123 to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 864691128455135236
  store ptr addrspace(1) %132, ptr %17
  %133 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %133), !dbg !34
  store ptr addrspace(1) null, ptr %18
  %134 = call i64 @_B_sub(i64 -1, i64 -1), !dbg !35
  store i64 %134, ptr %19
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load i64, ptr %19
  %140 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %139), !dbg !37
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %142
  %143 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %144 = getelementptr i8, ptr addrspace(1) %143, i64 864691128455135236
  store ptr addrspace(1) %144, ptr %20
  %145 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %145), !dbg !38
  store ptr addrspace(1) null, ptr %21
  %146 = call i64 @_B_sub(i64 9223372036854775806, i64 0), !dbg !39
  store i64 %146, ptr %22
  %147 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = load i64, ptr %22
  %152 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %151), !dbg !41
  %153 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 0
  store ptr addrspace(1) %152, ptr addrspace(1) %153
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 1
  store i64 1, ptr addrspace(1) %154
  %155 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 864691128455135236
  store ptr addrspace(1) %156, ptr %23
  %157 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %157), !dbg !42
  store ptr addrspace(1) null, ptr %24
  %158 = call i64 @_B_sub(i64 1, i64 0), !dbg !43
  store i64 %158, ptr %25
  %159 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 3
  %161 = load ptr addrspace(1), ptr addrspace(1) %160, align 8
  %162 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %163 = load i64, ptr %25
  %164 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %163), !dbg !45
  %165 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %162, i64 0, i64 0
  store ptr addrspace(1) %164, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 1
  store i64 1, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %26
  %169 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %169), !dbg !46
  store ptr addrspace(1) null, ptr %27
  %170 = call i64 @_B_sub(i64 0, i64 0), !dbg !47
  store i64 %170, ptr %28
  %171 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 3
  %173 = load ptr addrspace(1), ptr addrspace(1) %172, align 8
  %174 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %175 = load i64, ptr %28
  %176 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %175), !dbg !49
  %177 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %174, i64 0, i64 0
  store ptr addrspace(1) %176, ptr addrspace(1) %177
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %171, i64 0, i32 1
  store i64 1, ptr addrspace(1) %178
  %179 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %180 = getelementptr i8, ptr addrspace(1) %179, i64 864691128455135236
  store ptr addrspace(1) %180, ptr %29
  %181 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %181), !dbg !50
  store ptr addrspace(1) null, ptr %30
  %182 = call i64 @_B_sub(i64 -1, i64 0), !dbg !51
  store i64 %182, ptr %31
  %183 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !52
  %184 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 3
  %185 = load ptr addrspace(1), ptr addrspace(1) %184, align 8
  %186 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %187 = load i64, ptr %31
  %188 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %187), !dbg !53
  %189 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %186, i64 0, i64 0
  store ptr addrspace(1) %188, ptr addrspace(1) %189
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %183, i64 0, i32 1
  store i64 1, ptr addrspace(1) %190
  %191 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %192 = getelementptr i8, ptr addrspace(1) %191, i64 864691128455135236
  store ptr addrspace(1) %192, ptr %32
  %193 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %193), !dbg !54
  store ptr addrspace(1) null, ptr %33
  %194 = call i64 @_B_sub(i64 -9223372036854775806, i64 0), !dbg !55
  store i64 %194, ptr %34
  %195 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 3
  %197 = load ptr addrspace(1), ptr addrspace(1) %196, align 8
  %198 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %199 = load i64, ptr %34
  %200 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %199), !dbg !57
  %201 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %198, i64 0, i64 0
  store ptr addrspace(1) %200, ptr addrspace(1) %201
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 1
  store i64 1, ptr addrspace(1) %202
  %203 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %204 = getelementptr i8, ptr addrspace(1) %203, i64 864691128455135236
  store ptr addrspace(1) %204, ptr %35
  %205 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %205), !dbg !58
  store ptr addrspace(1) null, ptr %36
  %206 = call i64 @_B_sub(i64 9223372036854775806, i64 -1), !dbg !59
  store i64 %206, ptr %37
  %207 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !60
  %208 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 3
  %209 = load ptr addrspace(1), ptr addrspace(1) %208, align 8
  %210 = bitcast ptr addrspace(1) %209 to ptr addrspace(1)
  %211 = load i64, ptr %37
  %212 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %211), !dbg !61
  %213 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %210, i64 0, i64 0
  store ptr addrspace(1) %212, ptr addrspace(1) %213
  %214 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 1
  store i64 1, ptr addrspace(1) %214
  %215 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %216 = getelementptr i8, ptr addrspace(1) %215, i64 864691128455135236
  store ptr addrspace(1) %216, ptr %38
  %217 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %217), !dbg !62
  store ptr addrspace(1) null, ptr %39
  %218 = call i64 @_B_sub(i64 1, i64 -1), !dbg !63
  store i64 %218, ptr %40
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !64
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load i64, ptr %40
  %224 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %223), !dbg !65
  %225 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %224, ptr addrspace(1) %225
  %226 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %226
  %227 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %228 = getelementptr i8, ptr addrspace(1) %227, i64 864691128455135236
  store ptr addrspace(1) %228, ptr %41
  %229 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %229), !dbg !66
  store ptr addrspace(1) null, ptr %42
  %230 = call i64 @_B_sub(i64 0, i64 -1), !dbg !67
  store i64 %230, ptr %43
  %231 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !68
  %232 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %231, i64 0, i32 3
  %233 = load ptr addrspace(1), ptr addrspace(1) %232, align 8
  %234 = bitcast ptr addrspace(1) %233 to ptr addrspace(1)
  %235 = load i64, ptr %43
  %236 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %235), !dbg !69
  %237 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %234, i64 0, i64 0
  store ptr addrspace(1) %236, ptr addrspace(1) %237
  %238 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %231, i64 0, i32 1
  store i64 1, ptr addrspace(1) %238
  %239 = bitcast ptr addrspace(1) %231 to ptr addrspace(1)
  %240 = getelementptr i8, ptr addrspace(1) %239, i64 864691128455135236
  store ptr addrspace(1) %240, ptr %44
  %241 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %241), !dbg !70
  store ptr addrspace(1) null, ptr %45
  %242 = call i64 @_B_sub(i64 -1, i64 1), !dbg !71
  store i64 %242, ptr %46
  %243 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !72
  %244 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 3
  %245 = load ptr addrspace(1), ptr addrspace(1) %244, align 8
  %246 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %247 = load i64, ptr %46
  %248 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %247), !dbg !73
  %249 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %246, i64 0, i64 0
  store ptr addrspace(1) %248, ptr addrspace(1) %249
  %250 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %243, i64 0, i32 1
  store i64 1, ptr addrspace(1) %250
  %251 = bitcast ptr addrspace(1) %243 to ptr addrspace(1)
  %252 = getelementptr i8, ptr addrspace(1) %251, i64 864691128455135236
  store ptr addrspace(1) %252, ptr %47
  %253 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %253), !dbg !74
  store ptr addrspace(1) null, ptr %48
  %254 = call i64 @_B_sub(i64 9223372036854775806, i64 9223372036854775806), !dbg !75
  store i64 %254, ptr %49
  %255 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !76
  %256 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %255, i64 0, i32 3
  %257 = load ptr addrspace(1), ptr addrspace(1) %256, align 8
  %258 = bitcast ptr addrspace(1) %257 to ptr addrspace(1)
  %259 = load i64, ptr %49
  %260 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %259), !dbg !77
  %261 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %258, i64 0, i64 0
  store ptr addrspace(1) %260, ptr addrspace(1) %261
  %262 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %255, i64 0, i32 1
  store i64 1, ptr addrspace(1) %262
  %263 = bitcast ptr addrspace(1) %255 to ptr addrspace(1)
  %264 = getelementptr i8, ptr addrspace(1) %263, i64 864691128455135236
  store ptr addrspace(1) %264, ptr %50
  %265 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %265), !dbg !78
  store ptr addrspace(1) null, ptr %51
  %266 = call i64 @_B_sub(i64 1, i64 9223372036854775806), !dbg !79
  store i64 %266, ptr %52
  %267 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !80
  %268 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %267, i64 0, i32 3
  %269 = load ptr addrspace(1), ptr addrspace(1) %268, align 8
  %270 = bitcast ptr addrspace(1) %269 to ptr addrspace(1)
  %271 = load i64, ptr %52
  %272 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %271), !dbg !81
  %273 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %270, i64 0, i64 0
  store ptr addrspace(1) %272, ptr addrspace(1) %273
  %274 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %267, i64 0, i32 1
  store i64 1, ptr addrspace(1) %274
  %275 = bitcast ptr addrspace(1) %267 to ptr addrspace(1)
  %276 = getelementptr i8, ptr addrspace(1) %275, i64 864691128455135236
  store ptr addrspace(1) %276, ptr %53
  %277 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %277), !dbg !82
  store ptr addrspace(1) null, ptr %54
  %278 = call i64 @_B_sub(i64 0, i64 9223372036854775806), !dbg !83
  store i64 %278, ptr %55
  %279 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !84
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 3
  %281 = load ptr addrspace(1), ptr addrspace(1) %280, align 8
  %282 = bitcast ptr addrspace(1) %281 to ptr addrspace(1)
  %283 = load i64, ptr %55
  %284 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %283), !dbg !85
  %285 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %282, i64 0, i64 0
  store ptr addrspace(1) %284, ptr addrspace(1) %285
  %286 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %279, i64 0, i32 1
  store i64 1, ptr addrspace(1) %286
  %287 = bitcast ptr addrspace(1) %279 to ptr addrspace(1)
  %288 = getelementptr i8, ptr addrspace(1) %287, i64 864691128455135236
  store ptr addrspace(1) %288, ptr %56
  %289 = load ptr addrspace(1), ptr %56
  call void @_Bb02ioprintln(ptr addrspace(1) %289), !dbg !86
  store ptr addrspace(1) null, ptr %57
  ret void
290:
  %291 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %291), !dbg !10
  unreachable
}
define internal i64 @_B_sub(i64 %0, i64 %1) !dbg !7 {
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
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !89
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 7684), !dbg !87
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !88
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 7937), !dbg !87
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/sub3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"sub", linkageName:"_B_sub", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
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
!35 = !DILocation(line: 12, column: 15, scope: !5)
!36 = !DILocation(line: 12, column: 15, scope: !5)
!37 = !DILocation(line: 12, column: 15, scope: !5)
!38 = !DILocation(line: 12, column: 4, scope: !5)
!39 = !DILocation(line: 14, column: 15, scope: !5)
!40 = !DILocation(line: 14, column: 15, scope: !5)
!41 = !DILocation(line: 14, column: 15, scope: !5)
!42 = !DILocation(line: 14, column: 4, scope: !5)
!43 = !DILocation(line: 15, column: 15, scope: !5)
!44 = !DILocation(line: 15, column: 15, scope: !5)
!45 = !DILocation(line: 15, column: 15, scope: !5)
!46 = !DILocation(line: 15, column: 4, scope: !5)
!47 = !DILocation(line: 16, column: 15, scope: !5)
!48 = !DILocation(line: 16, column: 15, scope: !5)
!49 = !DILocation(line: 16, column: 15, scope: !5)
!50 = !DILocation(line: 16, column: 4, scope: !5)
!51 = !DILocation(line: 17, column: 15, scope: !5)
!52 = !DILocation(line: 17, column: 15, scope: !5)
!53 = !DILocation(line: 17, column: 15, scope: !5)
!54 = !DILocation(line: 17, column: 4, scope: !5)
!55 = !DILocation(line: 18, column: 15, scope: !5)
!56 = !DILocation(line: 18, column: 15, scope: !5)
!57 = !DILocation(line: 18, column: 15, scope: !5)
!58 = !DILocation(line: 18, column: 4, scope: !5)
!59 = !DILocation(line: 20, column: 15, scope: !5)
!60 = !DILocation(line: 20, column: 15, scope: !5)
!61 = !DILocation(line: 20, column: 15, scope: !5)
!62 = !DILocation(line: 20, column: 4, scope: !5)
!63 = !DILocation(line: 21, column: 15, scope: !5)
!64 = !DILocation(line: 21, column: 15, scope: !5)
!65 = !DILocation(line: 21, column: 15, scope: !5)
!66 = !DILocation(line: 21, column: 4, scope: !5)
!67 = !DILocation(line: 22, column: 15, scope: !5)
!68 = !DILocation(line: 22, column: 15, scope: !5)
!69 = !DILocation(line: 22, column: 15, scope: !5)
!70 = !DILocation(line: 22, column: 4, scope: !5)
!71 = !DILocation(line: 23, column: 15, scope: !5)
!72 = !DILocation(line: 23, column: 15, scope: !5)
!73 = !DILocation(line: 23, column: 15, scope: !5)
!74 = !DILocation(line: 23, column: 4, scope: !5)
!75 = !DILocation(line: 25, column: 15, scope: !5)
!76 = !DILocation(line: 25, column: 15, scope: !5)
!77 = !DILocation(line: 25, column: 15, scope: !5)
!78 = !DILocation(line: 25, column: 4, scope: !5)
!79 = !DILocation(line: 26, column: 15, scope: !5)
!80 = !DILocation(line: 26, column: 15, scope: !5)
!81 = !DILocation(line: 26, column: 15, scope: !5)
!82 = !DILocation(line: 26, column: 4, scope: !5)
!83 = !DILocation(line: 27, column: 15, scope: !5)
!84 = !DILocation(line: 27, column: 15, scope: !5)
!85 = !DILocation(line: 27, column: 15, scope: !5)
!86 = !DILocation(line: 27, column: 4, scope: !5)
!87 = !DILocation(line: 0, column: 0, scope: !7)
!88 = !DILocation(line: 30, column: 9, scope: !7)
!89 = !DILocation(line: 32, column: 0, scope: !7)
