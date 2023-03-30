@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_float_exact_eq(double, double) readonly
define void @_B04rootmain() !dbg !5 {
  %nan0 = alloca double
  %nan1 = alloca double
  %pInf = alloca double
  %nInf = alloca double
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
  %42 = alloca i1
  %43 = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %45 = alloca i1
  %46 = alloca ptr addrspace(1)
  %47 = alloca ptr addrspace(1)
  %48 = alloca i1
  %49 = alloca ptr addrspace(1)
  %50 = alloca ptr addrspace(1)
  %51 = alloca i8
  %52 = load ptr, ptr @_bal_stack_guard
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %287, label %54
54:
  store double 0x7FF8000000000000, ptr %nan0
  store double 0x7FF8000000000000, ptr %nan1
  store double 0x7FF0000000000000, ptr %pInf
  store double 0xFFF0000000000000, ptr %nInf
  %55 = call ptr addrspace(1) @_B_exactEq(double 42.0, double 42.0), !dbg !11
  store ptr addrspace(1) %55, ptr %1
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load ptr addrspace(1), ptr %1
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %2
  %65 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %66 = call ptr addrspace(1) @_B_exactEq(double 1.0, double 2.0), !dbg !14
  store ptr addrspace(1) %66, ptr %4
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = load ptr addrspace(1), ptr %4
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %5
  %76 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %77 = call ptr addrspace(1) @_B_exactEq(double 0.0, double 0.0), !dbg !17
  store ptr addrspace(1) %77, ptr %7
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = load ptr addrspace(1), ptr %7
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %8
  %87 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %88 = call ptr addrspace(1) @_B_exactEq(double 0.0, double -0.0), !dbg !20
  store ptr addrspace(1) %88, ptr %10
  %89 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 3
  %91 = load ptr addrspace(1), ptr addrspace(1) %90, align 8
  %92 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %93 = load ptr addrspace(1), ptr %10
  %94 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %92, i64 0, i64 0
  store ptr addrspace(1) %93, ptr addrspace(1) %94
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 1
  store i64 1, ptr addrspace(1) %95
  %96 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %97 = getelementptr i8, ptr addrspace(1) %96, i64 864691128455135236
  store ptr addrspace(1) %97, ptr %11
  %98 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %98), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %99 = load double, ptr %nan0
  %100 = load double, ptr %nan1
  %101 = call ptr addrspace(1) @_B_exactEq(double %99, double %100), !dbg !23
  store ptr addrspace(1) %101, ptr %13
  %102 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 3
  %104 = load ptr addrspace(1), ptr addrspace(1) %103, align 8
  %105 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %106 = load ptr addrspace(1), ptr %13
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %105, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %14
  %111 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !25
  store ptr addrspace(1) null, ptr %15
  %112 = load double, ptr %nan0
  %113 = call ptr addrspace(1) @_B_exactEq(double %112, double 1.0), !dbg !26
  store ptr addrspace(1) %113, ptr %16
  %114 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 3
  %116 = load ptr addrspace(1), ptr addrspace(1) %115, align 8
  %117 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %118 = load ptr addrspace(1), ptr %16
  %119 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %117, i64 0, i64 0
  store ptr addrspace(1) %118, ptr addrspace(1) %119
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 1
  store i64 1, ptr addrspace(1) %120
  %121 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %122 = getelementptr i8, ptr addrspace(1) %121, i64 864691128455135236
  store ptr addrspace(1) %122, ptr %17
  %123 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %123), !dbg !28
  store ptr addrspace(1) null, ptr %18
  %124 = load double, ptr %nan0
  %125 = load double, ptr %nInf
  %126 = call ptr addrspace(1) @_B_exactEq(double %124, double %125), !dbg !29
  store ptr addrspace(1) %126, ptr %19
  %127 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 3
  %129 = load ptr addrspace(1), ptr addrspace(1) %128, align 8
  %130 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %131 = load ptr addrspace(1), ptr %19
  %132 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %130, i64 0, i64 0
  store ptr addrspace(1) %131, ptr addrspace(1) %132
  %133 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 1
  store i64 1, ptr addrspace(1) %133
  %134 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %135 = getelementptr i8, ptr addrspace(1) %134, i64 864691128455135236
  store ptr addrspace(1) %135, ptr %20
  %136 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %136), !dbg !31
  store ptr addrspace(1) null, ptr %21
  %137 = load double, ptr %pInf
  %138 = load double, ptr %nInf
  %139 = call ptr addrspace(1) @_B_exactEq(double %137, double %138), !dbg !32
  store ptr addrspace(1) %139, ptr %22
  %140 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 3
  %142 = load ptr addrspace(1), ptr addrspace(1) %141, align 8
  %143 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %144 = load ptr addrspace(1), ptr %22
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %143, i64 0, i64 0
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 1
  store i64 1, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %23
  %149 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %149), !dbg !34
  store ptr addrspace(1) null, ptr %24
  %150 = load double, ptr %nInf
  %151 = load double, ptr %pInf
  %152 = call ptr addrspace(1) @_B_exactEq(double %150, double %151), !dbg !35
  store ptr addrspace(1) %152, ptr %25
  %153 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %153, i64 0, i32 3
  %155 = load ptr addrspace(1), ptr addrspace(1) %154, align 8
  %156 = bitcast ptr addrspace(1) %155 to ptr addrspace(1)
  %157 = load ptr addrspace(1), ptr %25
  %158 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %156, i64 0, i64 0
  store ptr addrspace(1) %157, ptr addrspace(1) %158
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %153, i64 0, i32 1
  store i64 1, ptr addrspace(1) %159
  %160 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %161 = getelementptr i8, ptr addrspace(1) %160, i64 864691128455135236
  store ptr addrspace(1) %161, ptr %26
  %162 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %162), !dbg !37
  store ptr addrspace(1) null, ptr %27
  %163 = load double, ptr %pInf
  %164 = load double, ptr %pInf
  %165 = call ptr addrspace(1) @_B_exactEq(double %163, double %164), !dbg !38
  store ptr addrspace(1) %165, ptr %28
  %166 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !39
  %167 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %166, i64 0, i32 3
  %168 = load ptr addrspace(1), ptr addrspace(1) %167, align 8
  %169 = bitcast ptr addrspace(1) %168 to ptr addrspace(1)
  %170 = load ptr addrspace(1), ptr %28
  %171 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %169, i64 0, i64 0
  store ptr addrspace(1) %170, ptr addrspace(1) %171
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %166, i64 0, i32 1
  store i64 1, ptr addrspace(1) %172
  %173 = bitcast ptr addrspace(1) %166 to ptr addrspace(1)
  %174 = getelementptr i8, ptr addrspace(1) %173, i64 864691128455135236
  store ptr addrspace(1) %174, ptr %29
  %175 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %175), !dbg !40
  store ptr addrspace(1) null, ptr %30
  %176 = load double, ptr %nInf
  %177 = load double, ptr %nInf
  %178 = call ptr addrspace(1) @_B_exactEq(double %176, double %177), !dbg !41
  store ptr addrspace(1) %178, ptr %31
  %179 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !42
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 3
  %181 = load ptr addrspace(1), ptr addrspace(1) %180, align 8
  %182 = bitcast ptr addrspace(1) %181 to ptr addrspace(1)
  %183 = load ptr addrspace(1), ptr %31
  %184 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %182, i64 0, i64 0
  store ptr addrspace(1) %183, ptr addrspace(1) %184
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 1
  store i64 1, ptr addrspace(1) %185
  %186 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %187 = getelementptr i8, ptr addrspace(1) %186, i64 864691128455135236
  store ptr addrspace(1) %187, ptr %32
  %188 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %188), !dbg !43
  store ptr addrspace(1) null, ptr %33
  %189 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %189, i64 0, i32 3
  %191 = load ptr addrspace(1), ptr addrspace(1) %190, align 8
  %192 = bitcast ptr addrspace(1) %191 to ptr addrspace(1)
  %193 = zext i1 1 to i64
  %194 = or i64 %193, 72057594037927936
  %195 = getelementptr i8, ptr addrspace(1) null, i64 %194
  %196 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %192, i64 0, i64 0
  store ptr addrspace(1) %195, ptr addrspace(1) %196
  %197 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %189, i64 0, i32 1
  store i64 1, ptr addrspace(1) %197
  %198 = bitcast ptr addrspace(1) %189 to ptr addrspace(1)
  %199 = getelementptr i8, ptr addrspace(1) %198, i64 864691128455135236
  store ptr addrspace(1) %199, ptr %34
  %200 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %200), !dbg !45
  store ptr addrspace(1) null, ptr %35
  %201 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !46
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %201, i64 0, i32 3
  %203 = load ptr addrspace(1), ptr addrspace(1) %202, align 8
  %204 = bitcast ptr addrspace(1) %203 to ptr addrspace(1)
  %205 = zext i1 1 to i64
  %206 = or i64 %205, 72057594037927936
  %207 = getelementptr i8, ptr addrspace(1) null, i64 %206
  %208 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %204, i64 0, i64 0
  store ptr addrspace(1) %207, ptr addrspace(1) %208
  %209 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %201, i64 0, i32 1
  store i64 1, ptr addrspace(1) %209
  %210 = bitcast ptr addrspace(1) %201 to ptr addrspace(1)
  %211 = getelementptr i8, ptr addrspace(1) %210, i64 864691128455135236
  store ptr addrspace(1) %211, ptr %36
  %212 = load ptr addrspace(1), ptr %36
  call void @_Bb02ioprintln(ptr addrspace(1) %212), !dbg !47
  store ptr addrspace(1) null, ptr %37
  %213 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %214 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %213, i64 0, i32 3
  %215 = load ptr addrspace(1), ptr addrspace(1) %214, align 8
  %216 = bitcast ptr addrspace(1) %215 to ptr addrspace(1)
  %217 = zext i1 0 to i64
  %218 = or i64 %217, 72057594037927936
  %219 = getelementptr i8, ptr addrspace(1) null, i64 %218
  %220 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %216, i64 0, i64 0
  store ptr addrspace(1) %219, ptr addrspace(1) %220
  %221 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %213, i64 0, i32 1
  store i64 1, ptr addrspace(1) %221
  %222 = bitcast ptr addrspace(1) %213 to ptr addrspace(1)
  %223 = getelementptr i8, ptr addrspace(1) %222, i64 864691128455135236
  store ptr addrspace(1) %223, ptr %38
  %224 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %224), !dbg !49
  store ptr addrspace(1) null, ptr %39
  %225 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !50
  %226 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %225, i64 0, i32 3
  %227 = load ptr addrspace(1), ptr addrspace(1) %226, align 8
  %228 = bitcast ptr addrspace(1) %227 to ptr addrspace(1)
  %229 = zext i1 1 to i64
  %230 = or i64 %229, 72057594037927936
  %231 = getelementptr i8, ptr addrspace(1) null, i64 %230
  %232 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %228, i64 0, i64 0
  store ptr addrspace(1) %231, ptr addrspace(1) %232
  %233 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %225, i64 0, i32 1
  store i64 1, ptr addrspace(1) %233
  %234 = bitcast ptr addrspace(1) %225 to ptr addrspace(1)
  %235 = getelementptr i8, ptr addrspace(1) %234, i64 864691128455135236
  store ptr addrspace(1) %235, ptr %40
  %236 = load ptr addrspace(1), ptr %40
  call void @_Bb02ioprintln(ptr addrspace(1) %236), !dbg !51
  store ptr addrspace(1) null, ptr %41
  %237 = load double, ptr %nan0
  %238 = load double, ptr %nan1
  %239 = call i1 @_bal_float_exact_eq(double %237, double %238), !dbg !52
  store i1 %239, ptr %42
  %240 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !53
  %241 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %240, i64 0, i32 3
  %242 = load ptr addrspace(1), ptr addrspace(1) %241, align 8
  %243 = bitcast ptr addrspace(1) %242 to ptr addrspace(1)
  %244 = load i1, ptr %42
  %245 = zext i1 %244 to i64
  %246 = or i64 %245, 72057594037927936
  %247 = getelementptr i8, ptr addrspace(1) null, i64 %246
  %248 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %243, i64 0, i64 0
  store ptr addrspace(1) %247, ptr addrspace(1) %248
  %249 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %240, i64 0, i32 1
  store i64 1, ptr addrspace(1) %249
  %250 = bitcast ptr addrspace(1) %240 to ptr addrspace(1)
  %251 = getelementptr i8, ptr addrspace(1) %250, i64 864691128455135236
  store ptr addrspace(1) %251, ptr %43
  %252 = load ptr addrspace(1), ptr %43
  call void @_Bb02ioprintln(ptr addrspace(1) %252), !dbg !54
  store ptr addrspace(1) null, ptr %44
  %253 = load double, ptr %nan0
  %254 = load double, ptr %nan1
  %255 = call i1 @_bal_float_exact_eq(double %253, double %254), !dbg !55
  %256 = xor i1 %255, 1
  store i1 %256, ptr %45
  %257 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %258 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %257, i64 0, i32 3
  %259 = load ptr addrspace(1), ptr addrspace(1) %258, align 8
  %260 = bitcast ptr addrspace(1) %259 to ptr addrspace(1)
  %261 = load i1, ptr %45
  %262 = zext i1 %261 to i64
  %263 = or i64 %262, 72057594037927936
  %264 = getelementptr i8, ptr addrspace(1) null, i64 %263
  %265 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %260, i64 0, i64 0
  store ptr addrspace(1) %264, ptr addrspace(1) %265
  %266 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %257, i64 0, i32 1
  store i64 1, ptr addrspace(1) %266
  %267 = bitcast ptr addrspace(1) %257 to ptr addrspace(1)
  %268 = getelementptr i8, ptr addrspace(1) %267, i64 864691128455135236
  store ptr addrspace(1) %268, ptr %46
  %269 = load ptr addrspace(1), ptr %46
  call void @_Bb02ioprintln(ptr addrspace(1) %269), !dbg !57
  store ptr addrspace(1) null, ptr %47
  %270 = load double, ptr %pInf
  %271 = load double, ptr %nInf
  %272 = call i1 @_bal_float_exact_eq(double %270, double %271), !dbg !58
  %273 = xor i1 %272, 1
  store i1 %273, ptr %48
  %274 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !59
  %275 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %274, i64 0, i32 3
  %276 = load ptr addrspace(1), ptr addrspace(1) %275, align 8
  %277 = bitcast ptr addrspace(1) %276 to ptr addrspace(1)
  %278 = load i1, ptr %48
  %279 = zext i1 %278 to i64
  %280 = or i64 %279, 72057594037927936
  %281 = getelementptr i8, ptr addrspace(1) null, i64 %280
  %282 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %277, i64 0, i64 0
  store ptr addrspace(1) %281, ptr addrspace(1) %282
  %283 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %274, i64 0, i32 1
  store i64 1, ptr addrspace(1) %283
  %284 = bitcast ptr addrspace(1) %274 to ptr addrspace(1)
  %285 = getelementptr i8, ptr addrspace(1) %284, i64 864691128455135236
  store ptr addrspace(1) %285, ptr %49
  %286 = load ptr addrspace(1), ptr %49
  call void @_Bb02ioprintln(ptr addrspace(1) %286), !dbg !60
  store ptr addrspace(1) null, ptr %50
  ret void
287:
  %288 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %288), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_exactEq(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %eq = alloca i1
  %3 = alloca i1
  %neEq = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %29, label %9
9:
  store double %0, ptr %f1
  store double %1, ptr %f2
  %10 = load double, ptr %f1
  %11 = load double, ptr %f2
  %12 = call i1 @_bal_float_exact_eq(double %10, double %11), !dbg !63
  store i1 %12, ptr %3
  %13 = load i1, ptr %3
  store i1 %13, ptr %eq
  %14 = load double, ptr %f1
  %15 = load double, ptr %f2
  %16 = call i1 @_bal_float_exact_eq(double %14, double %15), !dbg !64
  %17 = xor i1 %16, 1
  store i1 %17, ptr %4
  %18 = load i1, ptr %4
  store i1 %18, ptr %neEq
  %19 = load i1, ptr %eq
  %20 = load i1, ptr %neEq
  %21 = icmp eq i1 %19, %20
  store i1 %21, ptr %5
  %22 = load i1, ptr %5
  br i1 %22, label %23, label %24
23:
  ret ptr addrspace(1) null
24:
  %25 = load i1, ptr %eq
  %26 = zext i1 %25 to i64
  %27 = or i64 %26, 72057594037927936
  %28 = getelementptr i8, ptr addrspace(1) null, i64 %27
  ret ptr addrspace(1) %28
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 8196), !dbg !61
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !62
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"exactEq", linkageName:"_B_exactEq", scope: !1, file: !1, line: 32, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 16, scope: !5)
!11 = !DILocation(line: 11, column: 15, scope: !5)
!12 = !DILocation(line: 11, column: 15, scope: !5)
!13 = !DILocation(line: 11, column: 4, scope: !5)
!14 = !DILocation(line: 12, column: 15, scope: !5)
!15 = !DILocation(line: 12, column: 15, scope: !5)
!16 = !DILocation(line: 12, column: 4, scope: !5)
!17 = !DILocation(line: 13, column: 15, scope: !5)
!18 = !DILocation(line: 13, column: 15, scope: !5)
!19 = !DILocation(line: 13, column: 4, scope: !5)
!20 = !DILocation(line: 14, column: 15, scope: !5)
!21 = !DILocation(line: 14, column: 15, scope: !5)
!22 = !DILocation(line: 14, column: 4, scope: !5)
!23 = !DILocation(line: 15, column: 15, scope: !5)
!24 = !DILocation(line: 15, column: 15, scope: !5)
!25 = !DILocation(line: 15, column: 4, scope: !5)
!26 = !DILocation(line: 16, column: 15, scope: !5)
!27 = !DILocation(line: 16, column: 15, scope: !5)
!28 = !DILocation(line: 16, column: 4, scope: !5)
!29 = !DILocation(line: 17, column: 15, scope: !5)
!30 = !DILocation(line: 17, column: 15, scope: !5)
!31 = !DILocation(line: 17, column: 4, scope: !5)
!32 = !DILocation(line: 18, column: 15, scope: !5)
!33 = !DILocation(line: 18, column: 15, scope: !5)
!34 = !DILocation(line: 18, column: 4, scope: !5)
!35 = !DILocation(line: 19, column: 15, scope: !5)
!36 = !DILocation(line: 19, column: 15, scope: !5)
!37 = !DILocation(line: 19, column: 4, scope: !5)
!38 = !DILocation(line: 20, column: 15, scope: !5)
!39 = !DILocation(line: 20, column: 15, scope: !5)
!40 = !DILocation(line: 20, column: 4, scope: !5)
!41 = !DILocation(line: 21, column: 15, scope: !5)
!42 = !DILocation(line: 21, column: 15, scope: !5)
!43 = !DILocation(line: 21, column: 4, scope: !5)
!44 = !DILocation(line: 23, column: 15, scope: !5)
!45 = !DILocation(line: 23, column: 4, scope: !5)
!46 = !DILocation(line: 24, column: 15, scope: !5)
!47 = !DILocation(line: 24, column: 4, scope: !5)
!48 = !DILocation(line: 25, column: 15, scope: !5)
!49 = !DILocation(line: 25, column: 4, scope: !5)
!50 = !DILocation(line: 26, column: 15, scope: !5)
!51 = !DILocation(line: 26, column: 4, scope: !5)
!52 = !DILocation(line: 27, column: 20, scope: !5)
!53 = !DILocation(line: 27, column: 15, scope: !5)
!54 = !DILocation(line: 27, column: 4, scope: !5)
!55 = !DILocation(line: 28, column: 20, scope: !5)
!56 = !DILocation(line: 28, column: 15, scope: !5)
!57 = !DILocation(line: 28, column: 4, scope: !5)
!58 = !DILocation(line: 29, column: 20, scope: !5)
!59 = !DILocation(line: 29, column: 15, scope: !5)
!60 = !DILocation(line: 29, column: 4, scope: !5)
!61 = !DILocation(line: 0, column: 0, scope: !7)
!62 = !DILocation(line: 32, column: 9, scope: !7)
!63 = !DILocation(line: 33, column: 20, scope: !7)
!64 = !DILocation(line: 34, column: 22, scope: !7)
