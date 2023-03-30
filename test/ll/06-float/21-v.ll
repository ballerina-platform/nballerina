@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca double
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca double
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca double
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca double
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca double
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca double
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca double
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca double
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca double
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
  %45 = alloca ptr addrspace(1)
  %f1 = alloca double
  %46 = alloca double
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %f2 = alloca double
  %49 = alloca double
  %50 = alloca ptr addrspace(1)
  %51 = alloca ptr addrspace(1)
  %52 = alloca double
  %53 = alloca ptr addrspace(1)
  %54 = alloca ptr addrspace(1)
  %55 = alloca i8
  %56 = load ptr, ptr @_bal_stack_guard
  %57 = icmp ult ptr %55, %56
  br i1 %57, label %297, label %58
58:
  %59 = call double @_B_floatMul(double 3.0, double 2.0), !dbg !11
  store double %59, ptr %1
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load double, ptr %1
  %65 = call ptr addrspace(1) @_bal_float_to_tagged(double %64), !dbg !13
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %2
  %70 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %71 = call double @_B_floatMul(double -1.0, double 2.0), !dbg !15
  store double %71, ptr %4
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load double, ptr %4
  %77 = call ptr addrspace(1) @_bal_float_to_tagged(double %76), !dbg !17
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %77, ptr addrspace(1) %78
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %79
  %80 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 864691128455135236
  store ptr addrspace(1) %81, ptr %5
  %82 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %82), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %83 = call double @_B_floatMul(double 0.0, double -0.0), !dbg !19
  store double %83, ptr %7
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load double, ptr %7
  %89 = call ptr addrspace(1) @_bal_float_to_tagged(double %88), !dbg !21
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %8
  %94 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !22
  store ptr addrspace(1) null, ptr %9
  %95 = call double @_B_floatMul(double 0.0, double 0.0), !dbg !23
  store double %95, ptr %10
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = load double, ptr %10
  %101 = call ptr addrspace(1) @_bal_float_to_tagged(double %100), !dbg !25
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %11
  %106 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %107 = call double @_B_floatMul(double 0x7FF8000000000000, double 1.0), !dbg !27
  store double %107, ptr %13
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load double, ptr %13
  %113 = call ptr addrspace(1) @_bal_float_to_tagged(double %112), !dbg !29
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %14
  %118 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !30
  store ptr addrspace(1) null, ptr %15
  %119 = call double @_B_floatMul(double 0x7FF8000000000000, double 0x7FF8000000000000), !dbg !31
  store double %119, ptr %16
  %120 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %122 = load ptr addrspace(1), ptr addrspace(1) %121, align 8
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = load double, ptr %16
  %125 = call ptr addrspace(1) @_bal_float_to_tagged(double %124), !dbg !33
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %17
  %130 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !34
  store ptr addrspace(1) null, ptr %18
  %131 = call double @_B_floatMul(double 0x7FF0000000000000, double 20.0), !dbg !35
  store double %131, ptr %19
  %132 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %133 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %132, i64 0, i32 3
  %134 = load ptr addrspace(1), ptr addrspace(1) %133, align 8
  %135 = bitcast ptr addrspace(1) %134 to ptr addrspace(1)
  %136 = load double, ptr %19
  %137 = call ptr addrspace(1) @_bal_float_to_tagged(double %136), !dbg !37
  %138 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %135, i64 0, i64 0
  store ptr addrspace(1) %137, ptr addrspace(1) %138
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %132, i64 0, i32 1
  store i64 1, ptr addrspace(1) %139
  %140 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %141 = getelementptr i8, ptr addrspace(1) %140, i64 864691128455135236
  store ptr addrspace(1) %141, ptr %20
  %142 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %142), !dbg !38
  store ptr addrspace(1) null, ptr %21
  %143 = call double @_B_floatMul(double 0xFFF0000000000000, double 0x7FF0000000000000), !dbg !39
  store double %143, ptr %22
  %144 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 3
  %146 = load ptr addrspace(1), ptr addrspace(1) %145, align 8
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = load double, ptr %22
  %149 = call ptr addrspace(1) @_bal_float_to_tagged(double %148), !dbg !41
  %150 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %147, i64 0, i64 0
  store ptr addrspace(1) %149, ptr addrspace(1) %150
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 1
  store i64 1, ptr addrspace(1) %151
  %152 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %153 = getelementptr i8, ptr addrspace(1) %152, i64 864691128455135236
  store ptr addrspace(1) %153, ptr %23
  %154 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %154), !dbg !42
  store ptr addrspace(1) null, ptr %24
  %155 = call double @_B_floatMul(double 0xFFF0000000000000, double 0.0), !dbg !43
  store double %155, ptr %25
  %156 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %156, i64 0, i32 3
  %158 = load ptr addrspace(1), ptr addrspace(1) %157, align 8
  %159 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %160 = load double, ptr %25
  %161 = call ptr addrspace(1) @_bal_float_to_tagged(double %160), !dbg !45
  %162 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %159, i64 0, i64 0
  store ptr addrspace(1) %161, ptr addrspace(1) %162
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %156, i64 0, i32 1
  store i64 1, ptr addrspace(1) %163
  %164 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %165 = getelementptr i8, ptr addrspace(1) %164, i64 864691128455135236
  store ptr addrspace(1) %165, ptr %26
  %166 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %166), !dbg !46
  store ptr addrspace(1) null, ptr %27
  %167 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !47
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 3
  %169 = load ptr addrspace(1), ptr addrspace(1) %168, align 8
  %170 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %171 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !48
  %172 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %170, i64 0, i64 0
  store ptr addrspace(1) %171, ptr addrspace(1) %172
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 1
  store i64 1, ptr addrspace(1) %173
  %174 = bitcast ptr addrspace(1) %167 to ptr addrspace(1)
  %175 = getelementptr i8, ptr addrspace(1) %174, i64 864691128455135236
  store ptr addrspace(1) %175, ptr %28
  %176 = load ptr addrspace(1), ptr %28
  call void @_Bb02ioprintln(ptr addrspace(1) %176), !dbg !49
  store ptr addrspace(1) null, ptr %29
  %177 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !50
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 3
  %179 = load ptr addrspace(1), ptr addrspace(1) %178, align 8
  %180 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %181 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.5), !dbg !51
  %182 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %180, i64 0, i64 0
  store ptr addrspace(1) %181, ptr addrspace(1) %182
  %183 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 1
  store i64 1, ptr addrspace(1) %183
  %184 = bitcast ptr addrspace(1) %177 to ptr addrspace(1)
  %185 = getelementptr i8, ptr addrspace(1) %184, i64 864691128455135236
  store ptr addrspace(1) %185, ptr %30
  %186 = load ptr addrspace(1), ptr %30
  call void @_Bb02ioprintln(ptr addrspace(1) %186), !dbg !52
  store ptr addrspace(1) null, ptr %31
  %187 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !53
  %188 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %187, i64 0, i32 3
  %189 = load ptr addrspace(1), ptr addrspace(1) %188, align 8
  %190 = bitcast ptr addrspace(1) %189 to ptr addrspace(1)
  %191 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !54
  %192 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %190, i64 0, i64 0
  store ptr addrspace(1) %191, ptr addrspace(1) %192
  %193 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %187, i64 0, i32 1
  store i64 1, ptr addrspace(1) %193
  %194 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %195 = getelementptr i8, ptr addrspace(1) %194, i64 864691128455135236
  store ptr addrspace(1) %195, ptr %32
  %196 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %196), !dbg !55
  store ptr addrspace(1) null, ptr %33
  %197 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %198 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %197, i64 0, i32 3
  %199 = load ptr addrspace(1), ptr addrspace(1) %198, align 8
  %200 = bitcast ptr addrspace(1) %199 to ptr addrspace(1)
  %201 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !57
  %202 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %200, i64 0, i64 0
  store ptr addrspace(1) %201, ptr addrspace(1) %202
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %197, i64 0, i32 1
  store i64 1, ptr addrspace(1) %203
  %204 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %205 = getelementptr i8, ptr addrspace(1) %204, i64 864691128455135236
  store ptr addrspace(1) %205, ptr %34
  %206 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %206), !dbg !58
  store ptr addrspace(1) null, ptr %35
  %207 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !59
  %208 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 3
  %209 = load ptr addrspace(1), ptr addrspace(1) %208, align 8
  %210 = bitcast ptr addrspace(1) %209 to ptr addrspace(1)
  %211 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !60
  %212 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %210, i64 0, i64 0
  store ptr addrspace(1) %211, ptr addrspace(1) %212
  %213 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %207, i64 0, i32 1
  store i64 1, ptr addrspace(1) %213
  %214 = bitcast ptr addrspace(1) %207 to ptr addrspace(1)
  %215 = getelementptr i8, ptr addrspace(1) %214, i64 864691128455135236
  store ptr addrspace(1) %215, ptr %36
  %216 = load ptr addrspace(1), ptr %36
  call void @_Bb02ioprintln(ptr addrspace(1) %216), !dbg !61
  store ptr addrspace(1) null, ptr %37
  %217 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !62
  %218 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 3
  %219 = load ptr addrspace(1), ptr addrspace(1) %218, align 8
  %220 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %221 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !63
  %222 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %220, i64 0, i64 0
  store ptr addrspace(1) %221, ptr addrspace(1) %222
  %223 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 1
  store i64 1, ptr addrspace(1) %223
  %224 = bitcast ptr addrspace(1) %217 to ptr addrspace(1)
  %225 = getelementptr i8, ptr addrspace(1) %224, i64 864691128455135236
  store ptr addrspace(1) %225, ptr %38
  %226 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %226), !dbg !64
  store ptr addrspace(1) null, ptr %39
  %227 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !65
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %227, i64 0, i32 3
  %229 = load ptr addrspace(1), ptr addrspace(1) %228, align 8
  %230 = bitcast ptr addrspace(1) %229 to ptr addrspace(1)
  %231 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF0000000000000), !dbg !66
  %232 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %230, i64 0, i64 0
  store ptr addrspace(1) %231, ptr addrspace(1) %232
  %233 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %227, i64 0, i32 1
  store i64 1, ptr addrspace(1) %233
  %234 = bitcast ptr addrspace(1) %227 to ptr addrspace(1)
  %235 = getelementptr i8, ptr addrspace(1) %234, i64 864691128455135236
  store ptr addrspace(1) %235, ptr %40
  %236 = load ptr addrspace(1), ptr %40
  call void @_Bb02ioprintln(ptr addrspace(1) %236), !dbg !67
  store ptr addrspace(1) null, ptr %41
  %237 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !68
  %238 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %237, i64 0, i32 3
  %239 = load ptr addrspace(1), ptr addrspace(1) %238, align 8
  %240 = bitcast ptr addrspace(1) %239 to ptr addrspace(1)
  %241 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !69
  %242 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %240, i64 0, i64 0
  store ptr addrspace(1) %241, ptr addrspace(1) %242
  %243 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %237, i64 0, i32 1
  store i64 1, ptr addrspace(1) %243
  %244 = bitcast ptr addrspace(1) %237 to ptr addrspace(1)
  %245 = getelementptr i8, ptr addrspace(1) %244, i64 864691128455135236
  store ptr addrspace(1) %245, ptr %42
  %246 = load ptr addrspace(1), ptr %42
  call void @_Bb02ioprintln(ptr addrspace(1) %246), !dbg !70
  store ptr addrspace(1) null, ptr %43
  %247 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !71
  %248 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %247, i64 0, i32 3
  %249 = load ptr addrspace(1), ptr addrspace(1) %248, align 8
  %250 = bitcast ptr addrspace(1) %249 to ptr addrspace(1)
  %251 = call ptr addrspace(1) @_bal_float_to_tagged(double 0xFFF0000000000000), !dbg !72
  %252 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %250, i64 0, i64 0
  store ptr addrspace(1) %251, ptr addrspace(1) %252
  %253 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %247, i64 0, i32 1
  store i64 1, ptr addrspace(1) %253
  %254 = bitcast ptr addrspace(1) %247 to ptr addrspace(1)
  %255 = getelementptr i8, ptr addrspace(1) %254, i64 864691128455135236
  store ptr addrspace(1) %255, ptr %44
  %256 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %256), !dbg !73
  store ptr addrspace(1) null, ptr %45
  store double 2.0, ptr %f1
  %257 = load double, ptr %f1
  %258 = fdiv double 84.0, %257
  store double %258, ptr %46
  %259 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !74
  %260 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %259, i64 0, i32 3
  %261 = load ptr addrspace(1), ptr addrspace(1) %260, align 8
  %262 = bitcast ptr addrspace(1) %261 to ptr addrspace(1)
  %263 = load double, ptr %46
  %264 = call ptr addrspace(1) @_bal_float_to_tagged(double %263), !dbg !75
  %265 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %262, i64 0, i64 0
  store ptr addrspace(1) %264, ptr addrspace(1) %265
  %266 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %259, i64 0, i32 1
  store i64 1, ptr addrspace(1) %266
  %267 = bitcast ptr addrspace(1) %259 to ptr addrspace(1)
  %268 = getelementptr i8, ptr addrspace(1) %267, i64 864691128455135236
  store ptr addrspace(1) %268, ptr %47
  %269 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %269), !dbg !76
  store ptr addrspace(1) null, ptr %48
  store double 0x3FA823B9FECB0380, ptr %f2
  %270 = load double, ptr %f1
  %271 = load double, ptr %f2
  %272 = fdiv double %270, %271
  store double %272, ptr %49
  %273 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !77
  %274 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %273, i64 0, i32 3
  %275 = load ptr addrspace(1), ptr addrspace(1) %274, align 8
  %276 = bitcast ptr addrspace(1) %275 to ptr addrspace(1)
  %277 = load double, ptr %49
  %278 = call ptr addrspace(1) @_bal_float_to_tagged(double %277), !dbg !78
  %279 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %276, i64 0, i64 0
  store ptr addrspace(1) %278, ptr addrspace(1) %279
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %273, i64 0, i32 1
  store i64 1, ptr addrspace(1) %280
  %281 = bitcast ptr addrspace(1) %273 to ptr addrspace(1)
  %282 = getelementptr i8, ptr addrspace(1) %281, i64 864691128455135236
  store ptr addrspace(1) %282, ptr %50
  %283 = load ptr addrspace(1), ptr %50
  call void @_Bb02ioprintln(ptr addrspace(1) %283), !dbg !79
  store ptr addrspace(1) null, ptr %51
  store double 0xFFF0000000000000, ptr %f2
  %284 = load double, ptr %f2
  %285 = fdiv double %284, 2.0
  store double %285, ptr %52
  %286 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !80
  %287 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 3
  %288 = load ptr addrspace(1), ptr addrspace(1) %287, align 8
  %289 = bitcast ptr addrspace(1) %288 to ptr addrspace(1)
  %290 = load double, ptr %52
  %291 = call ptr addrspace(1) @_bal_float_to_tagged(double %290), !dbg !81
  %292 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %289, i64 0, i64 0
  store ptr addrspace(1) %291, ptr addrspace(1) %292
  %293 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 1
  store i64 1, ptr addrspace(1) %293
  %294 = bitcast ptr addrspace(1) %286 to ptr addrspace(1)
  %295 = getelementptr i8, ptr addrspace(1) %294, i64 864691128455135236
  store ptr addrspace(1) %295, ptr %53
  %296 = load ptr addrspace(1), ptr %53
  call void @_Bb02ioprintln(ptr addrspace(1) %296), !dbg !82
  store ptr addrspace(1) null, ptr %54
  ret void
297:
  %298 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %298), !dbg !10
  unreachable
}
define internal double @_B_floatMul(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca double
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store double %0, ptr %f1
  store double %1, ptr %f2
  %8 = load double, ptr %f1
  %9 = load double, ptr %f2
  %10 = fdiv double %8, %9
  store double %10, ptr %3
  %11 = load double, ptr %3
  ret double %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 8708), !dbg !83
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !84
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/21-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"floatMul", linkageName:"_B_floatMul", scope: !1, file: !1, line: 34, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 15, scope: !5)
!21 = !DILocation(line: 8, column: 15, scope: !5)
!22 = !DILocation(line: 8, column: 4, scope: !5)
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
!39 = !DILocation(line: 13, column: 15, scope: !5)
!40 = !DILocation(line: 13, column: 15, scope: !5)
!41 = !DILocation(line: 13, column: 15, scope: !5)
!42 = !DILocation(line: 13, column: 4, scope: !5)
!43 = !DILocation(line: 14, column: 15, scope: !5)
!44 = !DILocation(line: 14, column: 15, scope: !5)
!45 = !DILocation(line: 14, column: 15, scope: !5)
!46 = !DILocation(line: 14, column: 4, scope: !5)
!47 = !DILocation(line: 16, column: 15, scope: !5)
!48 = !DILocation(line: 16, column: 15, scope: !5)
!49 = !DILocation(line: 16, column: 4, scope: !5)
!50 = !DILocation(line: 17, column: 15, scope: !5)
!51 = !DILocation(line: 17, column: 15, scope: !5)
!52 = !DILocation(line: 17, column: 4, scope: !5)
!53 = !DILocation(line: 18, column: 15, scope: !5)
!54 = !DILocation(line: 18, column: 15, scope: !5)
!55 = !DILocation(line: 18, column: 4, scope: !5)
!56 = !DILocation(line: 19, column: 15, scope: !5)
!57 = !DILocation(line: 19, column: 15, scope: !5)
!58 = !DILocation(line: 19, column: 4, scope: !5)
!59 = !DILocation(line: 20, column: 15, scope: !5)
!60 = !DILocation(line: 20, column: 15, scope: !5)
!61 = !DILocation(line: 20, column: 4, scope: !5)
!62 = !DILocation(line: 21, column: 15, scope: !5)
!63 = !DILocation(line: 21, column: 15, scope: !5)
!64 = !DILocation(line: 21, column: 4, scope: !5)
!65 = !DILocation(line: 22, column: 15, scope: !5)
!66 = !DILocation(line: 22, column: 15, scope: !5)
!67 = !DILocation(line: 22, column: 4, scope: !5)
!68 = !DILocation(line: 23, column: 15, scope: !5)
!69 = !DILocation(line: 23, column: 15, scope: !5)
!70 = !DILocation(line: 23, column: 4, scope: !5)
!71 = !DILocation(line: 24, column: 15, scope: !5)
!72 = !DILocation(line: 24, column: 15, scope: !5)
!73 = !DILocation(line: 24, column: 4, scope: !5)
!74 = !DILocation(line: 27, column: 15, scope: !5)
!75 = !DILocation(line: 27, column: 15, scope: !5)
!76 = !DILocation(line: 27, column: 4, scope: !5)
!77 = !DILocation(line: 29, column: 15, scope: !5)
!78 = !DILocation(line: 29, column: 15, scope: !5)
!79 = !DILocation(line: 29, column: 4, scope: !5)
!80 = !DILocation(line: 31, column: 15, scope: !5)
!81 = !DILocation(line: 31, column: 15, scope: !5)
!82 = !DILocation(line: 31, column: 4, scope: !5)
!83 = !DILocation(line: 0, column: 0, scope: !7)
!84 = !DILocation(line: 34, column: 9, scope: !7)
