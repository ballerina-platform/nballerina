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
  %28 = alloca double
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
  %46 = alloca ptr addrspace(1)
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca ptr addrspace(1)
  %50 = alloca ptr addrspace(1)
  %f1 = alloca double
  %51 = alloca double
  %52 = alloca ptr addrspace(1)
  %53 = alloca ptr addrspace(1)
  %f2 = alloca double
  %54 = alloca double
  %55 = alloca ptr addrspace(1)
  %56 = alloca ptr addrspace(1)
  %57 = alloca double
  %58 = alloca ptr addrspace(1)
  %59 = alloca ptr addrspace(1)
  %60 = alloca i8
  %61 = load ptr, ptr @_bal_stack_guard
  %62 = icmp ult ptr %60, %61
  br i1 %62, label %324, label %63
63:
  %64 = call double @_B_floatSub(double 1.0, double 2.0), !dbg !11
  store double %64, ptr %1
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = load double, ptr %1
  %70 = call ptr addrspace(1) @_bal_float_to_tagged(double %69), !dbg !13
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %2
  %75 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %75), !dbg !14
  store ptr addrspace(1) null, ptr %3
  %76 = call double @_B_floatSub(double 1.0, double 1.0), !dbg !15
  store double %76, ptr %4
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load double, ptr %4
  %82 = call ptr addrspace(1) @_bal_float_to_tagged(double %81), !dbg !17
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %5
  %87 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %88 = call double @_B_floatSub(double 0.0, double -0.0), !dbg !19
  store double %88, ptr %7
  %89 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 3
  %91 = load ptr addrspace(1), ptr addrspace(1) %90, align 8
  %92 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %93 = load double, ptr %7
  %94 = call ptr addrspace(1) @_bal_float_to_tagged(double %93), !dbg !21
  %95 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %92, i64 0, i64 0
  store ptr addrspace(1) %94, ptr addrspace(1) %95
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 1
  store i64 1, ptr addrspace(1) %96
  %97 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %98 = getelementptr i8, ptr addrspace(1) %97, i64 864691128455135236
  store ptr addrspace(1) %98, ptr %8
  %99 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %99), !dbg !22
  store ptr addrspace(1) null, ptr %9
  %100 = call double @_B_floatSub(double -0.0, double 0.0), !dbg !23
  store double %100, ptr %10
  %101 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 3
  %103 = load ptr addrspace(1), ptr addrspace(1) %102, align 8
  %104 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %105 = load double, ptr %10
  %106 = call ptr addrspace(1) @_bal_float_to_tagged(double %105), !dbg !25
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %104, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %11
  %111 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %112 = call double @_B_floatSub(double 0.0, double 0.0), !dbg !27
  store double %112, ptr %13
  %113 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 3
  %115 = load ptr addrspace(1), ptr addrspace(1) %114, align 8
  %116 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %117 = load double, ptr %13
  %118 = call ptr addrspace(1) @_bal_float_to_tagged(double %117), !dbg !29
  %119 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %116, i64 0, i64 0
  store ptr addrspace(1) %118, ptr addrspace(1) %119
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %113, i64 0, i32 1
  store i64 1, ptr addrspace(1) %120
  %121 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %122 = getelementptr i8, ptr addrspace(1) %121, i64 864691128455135236
  store ptr addrspace(1) %122, ptr %14
  %123 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %123), !dbg !30
  store ptr addrspace(1) null, ptr %15
  %124 = call double @_B_floatSub(double 0x7FF8000000000000, double 1.0), !dbg !31
  store double %124, ptr %16
  %125 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 3
  %127 = load ptr addrspace(1), ptr addrspace(1) %126, align 8
  %128 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %129 = load double, ptr %16
  %130 = call ptr addrspace(1) @_bal_float_to_tagged(double %129), !dbg !33
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %128, i64 0, i64 0
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 1
  store i64 1, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %17
  %135 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %135), !dbg !34
  store ptr addrspace(1) null, ptr %18
  %136 = call double @_B_floatSub(double 0x7FF8000000000000, double 0x7FF8000000000000), !dbg !35
  store double %136, ptr %19
  %137 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 3
  %139 = load ptr addrspace(1), ptr addrspace(1) %138, align 8
  %140 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %141 = load double, ptr %19
  %142 = call ptr addrspace(1) @_bal_float_to_tagged(double %141), !dbg !37
  %143 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %140, i64 0, i64 0
  store ptr addrspace(1) %142, ptr addrspace(1) %143
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 1
  store i64 1, ptr addrspace(1) %144
  %145 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %146 = getelementptr i8, ptr addrspace(1) %145, i64 864691128455135236
  store ptr addrspace(1) %146, ptr %20
  %147 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %147), !dbg !38
  store ptr addrspace(1) null, ptr %21
  %148 = call double @_B_floatSub(double 0x7FF0000000000000, double 20.0), !dbg !39
  store double %148, ptr %22
  %149 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 3
  %151 = load ptr addrspace(1), ptr addrspace(1) %150, align 8
  %152 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %153 = load double, ptr %22
  %154 = call ptr addrspace(1) @_bal_float_to_tagged(double %153), !dbg !41
  %155 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %152, i64 0, i64 0
  store ptr addrspace(1) %154, ptr addrspace(1) %155
  %156 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 1
  store i64 1, ptr addrspace(1) %156
  %157 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %158 = getelementptr i8, ptr addrspace(1) %157, i64 864691128455135236
  store ptr addrspace(1) %158, ptr %23
  %159 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %159), !dbg !42
  store ptr addrspace(1) null, ptr %24
  %160 = call double @_B_floatSub(double 0xFFF0000000000000, double 0x7FF0000000000000), !dbg !43
  store double %160, ptr %25
  %161 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %162 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 3
  %163 = load ptr addrspace(1), ptr addrspace(1) %162, align 8
  %164 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %165 = load double, ptr %25
  %166 = call ptr addrspace(1) @_bal_float_to_tagged(double %165), !dbg !45
  %167 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %164, i64 0, i64 0
  store ptr addrspace(1) %166, ptr addrspace(1) %167
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 1
  store i64 1, ptr addrspace(1) %168
  %169 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %170 = getelementptr i8, ptr addrspace(1) %169, i64 864691128455135236
  store ptr addrspace(1) %170, ptr %26
  %171 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %171), !dbg !46
  store ptr addrspace(1) null, ptr %27
  %172 = call double @_B_floatSub(double 0xFFF0000000000000, double 100.0), !dbg !47
  store double %172, ptr %28
  %173 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 3
  %175 = load ptr addrspace(1), ptr addrspace(1) %174, align 8
  %176 = bitcast ptr addrspace(1) %175 to ptr addrspace(1)
  %177 = load double, ptr %28
  %178 = call ptr addrspace(1) @_bal_float_to_tagged(double %177), !dbg !49
  %179 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %176, i64 0, i64 0
  store ptr addrspace(1) %178, ptr addrspace(1) %179
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 1
  store i64 1, ptr addrspace(1) %180
  %181 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 864691128455135236
  store ptr addrspace(1) %182, ptr %29
  %183 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %183), !dbg !50
  store ptr addrspace(1) null, ptr %30
  %184 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !51
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 3
  %186 = load ptr addrspace(1), ptr addrspace(1) %185, align 8
  %187 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %188 = call ptr addrspace(1) @_bal_float_to_tagged(double -1.0), !dbg !52
  %189 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %187, i64 0, i64 0
  store ptr addrspace(1) %188, ptr addrspace(1) %189
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 1
  store i64 1, ptr addrspace(1) %190
  %191 = bitcast ptr addrspace(1) %184 to ptr addrspace(1)
  %192 = getelementptr i8, ptr addrspace(1) %191, i64 864691128455135236
  store ptr addrspace(1) %192, ptr %31
  %193 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %193), !dbg !53
  store ptr addrspace(1) null, ptr %32
  %194 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !54
  %195 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 3
  %196 = load ptr addrspace(1), ptr addrspace(1) %195, align 8
  %197 = bitcast ptr addrspace(1) %196 to ptr addrspace(1)
  %198 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !55
  %199 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %197, i64 0, i64 0
  store ptr addrspace(1) %198, ptr addrspace(1) %199
  %200 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 1
  store i64 1, ptr addrspace(1) %200
  %201 = bitcast ptr addrspace(1) %194 to ptr addrspace(1)
  %202 = getelementptr i8, ptr addrspace(1) %201, i64 864691128455135236
  store ptr addrspace(1) %202, ptr %33
  %203 = load ptr addrspace(1), ptr %33
  call void @_Bb02ioprintln(ptr addrspace(1) %203), !dbg !56
  store ptr addrspace(1) null, ptr %34
  %204 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !57
  %205 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %204, i64 0, i32 3
  %206 = load ptr addrspace(1), ptr addrspace(1) %205, align 8
  %207 = bitcast ptr addrspace(1) %206 to ptr addrspace(1)
  %208 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !58
  %209 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %207, i64 0, i64 0
  store ptr addrspace(1) %208, ptr addrspace(1) %209
  %210 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %204, i64 0, i32 1
  store i64 1, ptr addrspace(1) %210
  %211 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %212 = getelementptr i8, ptr addrspace(1) %211, i64 864691128455135236
  store ptr addrspace(1) %212, ptr %35
  %213 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %213), !dbg !59
  store ptr addrspace(1) null, ptr %36
  %214 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !60
  %215 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %214, i64 0, i32 3
  %216 = load ptr addrspace(1), ptr addrspace(1) %215, align 8
  %217 = bitcast ptr addrspace(1) %216 to ptr addrspace(1)
  %218 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.0), !dbg !61
  %219 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %217, i64 0, i64 0
  store ptr addrspace(1) %218, ptr addrspace(1) %219
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %214, i64 0, i32 1
  store i64 1, ptr addrspace(1) %220
  %221 = bitcast ptr addrspace(1) %214 to ptr addrspace(1)
  %222 = getelementptr i8, ptr addrspace(1) %221, i64 864691128455135236
  store ptr addrspace(1) %222, ptr %37
  %223 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %223), !dbg !62
  store ptr addrspace(1) null, ptr %38
  %224 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !63
  %225 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %224, i64 0, i32 3
  %226 = load ptr addrspace(1), ptr addrspace(1) %225, align 8
  %227 = bitcast ptr addrspace(1) %226 to ptr addrspace(1)
  %228 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !64
  %229 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %227, i64 0, i64 0
  store ptr addrspace(1) %228, ptr addrspace(1) %229
  %230 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %224, i64 0, i32 1
  store i64 1, ptr addrspace(1) %230
  %231 = bitcast ptr addrspace(1) %224 to ptr addrspace(1)
  %232 = getelementptr i8, ptr addrspace(1) %231, i64 864691128455135236
  store ptr addrspace(1) %232, ptr %39
  %233 = load ptr addrspace(1), ptr %39
  call void @_Bb02ioprintln(ptr addrspace(1) %233), !dbg !65
  store ptr addrspace(1) null, ptr %40
  %234 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !66
  %235 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %234, i64 0, i32 3
  %236 = load ptr addrspace(1), ptr addrspace(1) %235, align 8
  %237 = bitcast ptr addrspace(1) %236 to ptr addrspace(1)
  %238 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !67
  %239 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %237, i64 0, i64 0
  store ptr addrspace(1) %238, ptr addrspace(1) %239
  %240 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %234, i64 0, i32 1
  store i64 1, ptr addrspace(1) %240
  %241 = bitcast ptr addrspace(1) %234 to ptr addrspace(1)
  %242 = getelementptr i8, ptr addrspace(1) %241, i64 864691128455135236
  store ptr addrspace(1) %242, ptr %41
  %243 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %243), !dbg !68
  store ptr addrspace(1) null, ptr %42
  %244 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !69
  %245 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %244, i64 0, i32 3
  %246 = load ptr addrspace(1), ptr addrspace(1) %245, align 8
  %247 = bitcast ptr addrspace(1) %246 to ptr addrspace(1)
  %248 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !70
  %249 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %247, i64 0, i64 0
  store ptr addrspace(1) %248, ptr addrspace(1) %249
  %250 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %244, i64 0, i32 1
  store i64 1, ptr addrspace(1) %250
  %251 = bitcast ptr addrspace(1) %244 to ptr addrspace(1)
  %252 = getelementptr i8, ptr addrspace(1) %251, i64 864691128455135236
  store ptr addrspace(1) %252, ptr %43
  %253 = load ptr addrspace(1), ptr %43
  call void @_Bb02ioprintln(ptr addrspace(1) %253), !dbg !71
  store ptr addrspace(1) null, ptr %44
  %254 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !72
  %255 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %254, i64 0, i32 3
  %256 = load ptr addrspace(1), ptr addrspace(1) %255, align 8
  %257 = bitcast ptr addrspace(1) %256 to ptr addrspace(1)
  %258 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF0000000000000), !dbg !73
  %259 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %257, i64 0, i64 0
  store ptr addrspace(1) %258, ptr addrspace(1) %259
  %260 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %254, i64 0, i32 1
  store i64 1, ptr addrspace(1) %260
  %261 = bitcast ptr addrspace(1) %254 to ptr addrspace(1)
  %262 = getelementptr i8, ptr addrspace(1) %261, i64 864691128455135236
  store ptr addrspace(1) %262, ptr %45
  %263 = load ptr addrspace(1), ptr %45
  call void @_Bb02ioprintln(ptr addrspace(1) %263), !dbg !74
  store ptr addrspace(1) null, ptr %46
  %264 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !75
  %265 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %264, i64 0, i32 3
  %266 = load ptr addrspace(1), ptr addrspace(1) %265, align 8
  %267 = bitcast ptr addrspace(1) %266 to ptr addrspace(1)
  %268 = call ptr addrspace(1) @_bal_float_to_tagged(double 0xFFF0000000000000), !dbg !76
  %269 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %267, i64 0, i64 0
  store ptr addrspace(1) %268, ptr addrspace(1) %269
  %270 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %264, i64 0, i32 1
  store i64 1, ptr addrspace(1) %270
  %271 = bitcast ptr addrspace(1) %264 to ptr addrspace(1)
  %272 = getelementptr i8, ptr addrspace(1) %271, i64 864691128455135236
  store ptr addrspace(1) %272, ptr %47
  %273 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %273), !dbg !77
  store ptr addrspace(1) null, ptr %48
  %274 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !78
  %275 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %274, i64 0, i32 3
  %276 = load ptr addrspace(1), ptr addrspace(1) %275, align 8
  %277 = bitcast ptr addrspace(1) %276 to ptr addrspace(1)
  %278 = call ptr addrspace(1) @_bal_float_to_tagged(double 0xFFF0000000000000), !dbg !79
  %279 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %277, i64 0, i64 0
  store ptr addrspace(1) %278, ptr addrspace(1) %279
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %274, i64 0, i32 1
  store i64 1, ptr addrspace(1) %280
  %281 = bitcast ptr addrspace(1) %274 to ptr addrspace(1)
  %282 = getelementptr i8, ptr addrspace(1) %281, i64 864691128455135236
  store ptr addrspace(1) %282, ptr %49
  %283 = load ptr addrspace(1), ptr %49
  call void @_Bb02ioprintln(ptr addrspace(1) %283), !dbg !80
  store ptr addrspace(1) null, ptr %50
  store double 4.0, ptr %f1
  %284 = load double, ptr %f1
  %285 = fsub double 46.0, %284
  store double %285, ptr %51
  %286 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !81
  %287 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 3
  %288 = load ptr addrspace(1), ptr addrspace(1) %287, align 8
  %289 = bitcast ptr addrspace(1) %288 to ptr addrspace(1)
  %290 = load double, ptr %51
  %291 = call ptr addrspace(1) @_bal_float_to_tagged(double %290), !dbg !82
  %292 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %289, i64 0, i64 0
  store ptr addrspace(1) %291, ptr addrspace(1) %292
  %293 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %286, i64 0, i32 1
  store i64 1, ptr addrspace(1) %293
  %294 = bitcast ptr addrspace(1) %286 to ptr addrspace(1)
  %295 = getelementptr i8, ptr addrspace(1) %294, i64 864691128455135236
  store ptr addrspace(1) %295, ptr %52
  %296 = load ptr addrspace(1), ptr %52
  call void @_Bb02ioprintln(ptr addrspace(1) %296), !dbg !83
  store ptr addrspace(1) null, ptr %53
  store double 46.42, ptr %f2
  %297 = load double, ptr %f1
  %298 = load double, ptr %f2
  %299 = fsub double %297, %298
  store double %299, ptr %54
  %300 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !84
  %301 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %300, i64 0, i32 3
  %302 = load ptr addrspace(1), ptr addrspace(1) %301, align 8
  %303 = bitcast ptr addrspace(1) %302 to ptr addrspace(1)
  %304 = load double, ptr %54
  %305 = call ptr addrspace(1) @_bal_float_to_tagged(double %304), !dbg !85
  %306 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %303, i64 0, i64 0
  store ptr addrspace(1) %305, ptr addrspace(1) %306
  %307 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %300, i64 0, i32 1
  store i64 1, ptr addrspace(1) %307
  %308 = bitcast ptr addrspace(1) %300 to ptr addrspace(1)
  %309 = getelementptr i8, ptr addrspace(1) %308, i64 864691128455135236
  store ptr addrspace(1) %309, ptr %55
  %310 = load ptr addrspace(1), ptr %55
  call void @_Bb02ioprintln(ptr addrspace(1) %310), !dbg !86
  store ptr addrspace(1) null, ptr %56
  store double 0xFFF0000000000000, ptr %f2
  %311 = load double, ptr %f2
  %312 = fsub double %311, 2.0
  store double %312, ptr %57
  %313 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !87
  %314 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %313, i64 0, i32 3
  %315 = load ptr addrspace(1), ptr addrspace(1) %314, align 8
  %316 = bitcast ptr addrspace(1) %315 to ptr addrspace(1)
  %317 = load double, ptr %57
  %318 = call ptr addrspace(1) @_bal_float_to_tagged(double %317), !dbg !88
  %319 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %316, i64 0, i64 0
  store ptr addrspace(1) %318, ptr addrspace(1) %319
  %320 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %313, i64 0, i32 1
  store i64 1, ptr addrspace(1) %320
  %321 = bitcast ptr addrspace(1) %313 to ptr addrspace(1)
  %322 = getelementptr i8, ptr addrspace(1) %321, i64 864691128455135236
  store ptr addrspace(1) %322, ptr %58
  %323 = load ptr addrspace(1), ptr %58
  call void @_Bb02ioprintln(ptr addrspace(1) %323), !dbg !89
  store ptr addrspace(1) null, ptr %59
  ret void
324:
  %325 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %325), !dbg !10
  unreachable
}
define internal double @_B_floatSub(double %0, double %1) !dbg !7 {
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
  %10 = fsub double %8, %9
  store double %10, ptr %3
  %11 = load double, ptr %3
  ret double %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 9220), !dbg !90
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !91
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/19-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"floatSub", linkageName:"_B_floatSub", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
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
!47 = !DILocation(line: 15, column: 15, scope: !5)
!48 = !DILocation(line: 15, column: 15, scope: !5)
!49 = !DILocation(line: 15, column: 15, scope: !5)
!50 = !DILocation(line: 15, column: 4, scope: !5)
!51 = !DILocation(line: 17, column: 15, scope: !5)
!52 = !DILocation(line: 17, column: 15, scope: !5)
!53 = !DILocation(line: 17, column: 4, scope: !5)
!54 = !DILocation(line: 18, column: 15, scope: !5)
!55 = !DILocation(line: 18, column: 15, scope: !5)
!56 = !DILocation(line: 18, column: 4, scope: !5)
!57 = !DILocation(line: 19, column: 15, scope: !5)
!58 = !DILocation(line: 19, column: 15, scope: !5)
!59 = !DILocation(line: 19, column: 4, scope: !5)
!60 = !DILocation(line: 20, column: 15, scope: !5)
!61 = !DILocation(line: 20, column: 15, scope: !5)
!62 = !DILocation(line: 20, column: 4, scope: !5)
!63 = !DILocation(line: 21, column: 15, scope: !5)
!64 = !DILocation(line: 21, column: 15, scope: !5)
!65 = !DILocation(line: 21, column: 4, scope: !5)
!66 = !DILocation(line: 22, column: 15, scope: !5)
!67 = !DILocation(line: 22, column: 15, scope: !5)
!68 = !DILocation(line: 22, column: 4, scope: !5)
!69 = !DILocation(line: 23, column: 15, scope: !5)
!70 = !DILocation(line: 23, column: 15, scope: !5)
!71 = !DILocation(line: 23, column: 4, scope: !5)
!72 = !DILocation(line: 24, column: 15, scope: !5)
!73 = !DILocation(line: 24, column: 15, scope: !5)
!74 = !DILocation(line: 24, column: 4, scope: !5)
!75 = !DILocation(line: 25, column: 15, scope: !5)
!76 = !DILocation(line: 25, column: 15, scope: !5)
!77 = !DILocation(line: 25, column: 4, scope: !5)
!78 = !DILocation(line: 26, column: 15, scope: !5)
!79 = !DILocation(line: 26, column: 15, scope: !5)
!80 = !DILocation(line: 26, column: 4, scope: !5)
!81 = !DILocation(line: 29, column: 15, scope: !5)
!82 = !DILocation(line: 29, column: 15, scope: !5)
!83 = !DILocation(line: 29, column: 4, scope: !5)
!84 = !DILocation(line: 31, column: 15, scope: !5)
!85 = !DILocation(line: 31, column: 15, scope: !5)
!86 = !DILocation(line: 31, column: 4, scope: !5)
!87 = !DILocation(line: 33, column: 15, scope: !5)
!88 = !DILocation(line: 33, column: 15, scope: !5)
!89 = !DILocation(line: 33, column: 4, scope: !5)
!90 = !DILocation(line: 0, column: 0, scope: !7)
!91 = !DILocation(line: 36, column: 9, scope: !7)
