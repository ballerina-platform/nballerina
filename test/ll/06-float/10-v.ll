@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_float_eq(double, double) readonly
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
  %48 = alloca i8
  %49 = load ptr, ptr @_bal_stack_guard
  %50 = icmp ult ptr %48, %49
  br i1 %50, label %266, label %51
51:
  store double 0x7FF8000000000000, ptr %nan0
  store double 0x7FF8000000000000, ptr %nan1
  store double 0x7FF0000000000000, ptr %pInf
  store double 0xFFF0000000000000, ptr %nInf
  %52 = call ptr addrspace(1) @_B_eq(double 42.0, double 42.0), !dbg !11
  store ptr addrspace(1) %52, ptr %1
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = load ptr addrspace(1), ptr %1
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %2
  %62 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %63 = call ptr addrspace(1) @_B_eq(double 1.0, double 2.0), !dbg !14
  store ptr addrspace(1) %63, ptr %4
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load ptr addrspace(1), ptr %4
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %5
  %73 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %74 = call ptr addrspace(1) @_B_eq(double 0.0, double 0.0), !dbg !17
  store ptr addrspace(1) %74, ptr %7
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = load ptr addrspace(1), ptr %7
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %8
  %84 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %85 = call ptr addrspace(1) @_B_eq(double 0.0, double -0.0), !dbg !20
  store ptr addrspace(1) %85, ptr %10
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = load ptr addrspace(1), ptr %10
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %89, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %11
  %95 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %96 = load double, ptr %nan0
  %97 = load double, ptr %nan1
  %98 = call ptr addrspace(1) @_B_eq(double %96, double %97), !dbg !23
  store ptr addrspace(1) %98, ptr %13
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load ptr addrspace(1), ptr %13
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %14
  %108 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !25
  store ptr addrspace(1) null, ptr %15
  %109 = load double, ptr %nan0
  %110 = call ptr addrspace(1) @_B_eq(double %109, double 1.0), !dbg !26
  store ptr addrspace(1) %110, ptr %16
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = load ptr addrspace(1), ptr %16
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 1, ptr addrspace(1) %117
  %118 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 864691128455135236
  store ptr addrspace(1) %119, ptr %17
  %120 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %120), !dbg !28
  store ptr addrspace(1) null, ptr %18
  %121 = load double, ptr %nan0
  %122 = load double, ptr %nInf
  %123 = call ptr addrspace(1) @_B_eq(double %121, double %122), !dbg !29
  store ptr addrspace(1) %123, ptr %19
  %124 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %124, i64 0, i32 3
  %126 = load ptr addrspace(1), ptr addrspace(1) %125, align 8
  %127 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %128 = load ptr addrspace(1), ptr %19
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %127, i64 0, i64 0
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %124, i64 0, i32 1
  store i64 1, ptr addrspace(1) %130
  %131 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 864691128455135236
  store ptr addrspace(1) %132, ptr %20
  %133 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %133), !dbg !31
  store ptr addrspace(1) null, ptr %21
  %134 = load double, ptr %pInf
  %135 = load double, ptr %nInf
  %136 = call ptr addrspace(1) @_B_eq(double %134, double %135), !dbg !32
  store ptr addrspace(1) %136, ptr %22
  %137 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 3
  %139 = load ptr addrspace(1), ptr addrspace(1) %138, align 8
  %140 = bitcast ptr addrspace(1) %139 to ptr addrspace(1)
  %141 = load ptr addrspace(1), ptr %22
  %142 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %140, i64 0, i64 0
  store ptr addrspace(1) %141, ptr addrspace(1) %142
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %137, i64 0, i32 1
  store i64 1, ptr addrspace(1) %143
  %144 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 864691128455135236
  store ptr addrspace(1) %145, ptr %23
  %146 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %146), !dbg !34
  store ptr addrspace(1) null, ptr %24
  %147 = load double, ptr %nInf
  %148 = load double, ptr %pInf
  %149 = call ptr addrspace(1) @_B_eq(double %147, double %148), !dbg !35
  store ptr addrspace(1) %149, ptr %25
  %150 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 3
  %152 = load ptr addrspace(1), ptr addrspace(1) %151, align 8
  %153 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %154 = load ptr addrspace(1), ptr %25
  %155 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 0
  store ptr addrspace(1) %154, ptr addrspace(1) %155
  %156 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 1
  store i64 1, ptr addrspace(1) %156
  %157 = bitcast ptr addrspace(1) %150 to ptr addrspace(1)
  %158 = getelementptr i8, ptr addrspace(1) %157, i64 864691128455135236
  store ptr addrspace(1) %158, ptr %26
  %159 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %159), !dbg !37
  store ptr addrspace(1) null, ptr %27
  %160 = load double, ptr %pInf
  %161 = load double, ptr %pInf
  %162 = call ptr addrspace(1) @_B_eq(double %160, double %161), !dbg !38
  store ptr addrspace(1) %162, ptr %28
  %163 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !39
  %164 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 3
  %165 = load ptr addrspace(1), ptr addrspace(1) %164, align 8
  %166 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %167 = load ptr addrspace(1), ptr %28
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %166, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %29
  %172 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !40
  store ptr addrspace(1) null, ptr %30
  %173 = load double, ptr %nInf
  %174 = load double, ptr %nInf
  %175 = call ptr addrspace(1) @_B_eq(double %173, double %174), !dbg !41
  store ptr addrspace(1) %175, ptr %31
  %176 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !42
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 3
  %178 = load ptr addrspace(1), ptr addrspace(1) %177, align 8
  %179 = bitcast ptr addrspace(1) %178 to ptr addrspace(1)
  %180 = load ptr addrspace(1), ptr %31
  %181 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %179, i64 0, i64 0
  store ptr addrspace(1) %180, ptr addrspace(1) %181
  %182 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 1
  store i64 1, ptr addrspace(1) %182
  %183 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %184 = getelementptr i8, ptr addrspace(1) %183, i64 864691128455135236
  store ptr addrspace(1) %184, ptr %32
  %185 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %185), !dbg !43
  store ptr addrspace(1) null, ptr %33
  %186 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %187 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 3
  %188 = load ptr addrspace(1), ptr addrspace(1) %187, align 8
  %189 = bitcast ptr addrspace(1) %188 to ptr addrspace(1)
  %190 = zext i1 1 to i64
  %191 = or i64 %190, 72057594037927936
  %192 = getelementptr i8, ptr addrspace(1) null, i64 %191
  %193 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %189, i64 0, i64 0
  store ptr addrspace(1) %192, ptr addrspace(1) %193
  %194 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 1
  store i64 1, ptr addrspace(1) %194
  %195 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %196 = getelementptr i8, ptr addrspace(1) %195, i64 864691128455135236
  store ptr addrspace(1) %196, ptr %34
  %197 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %197), !dbg !45
  store ptr addrspace(1) null, ptr %35
  %198 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !46
  %199 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %198, i64 0, i32 3
  %200 = load ptr addrspace(1), ptr addrspace(1) %199, align 8
  %201 = bitcast ptr addrspace(1) %200 to ptr addrspace(1)
  %202 = zext i1 1 to i64
  %203 = or i64 %202, 72057594037927936
  %204 = getelementptr i8, ptr addrspace(1) null, i64 %203
  %205 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %201, i64 0, i64 0
  store ptr addrspace(1) %204, ptr addrspace(1) %205
  %206 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %198, i64 0, i32 1
  store i64 1, ptr addrspace(1) %206
  %207 = bitcast ptr addrspace(1) %198 to ptr addrspace(1)
  %208 = getelementptr i8, ptr addrspace(1) %207, i64 864691128455135236
  store ptr addrspace(1) %208, ptr %36
  %209 = load ptr addrspace(1), ptr %36
  call void @_Bb02ioprintln(ptr addrspace(1) %209), !dbg !47
  store ptr addrspace(1) null, ptr %37
  %210 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !48
  %211 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %210, i64 0, i32 3
  %212 = load ptr addrspace(1), ptr addrspace(1) %211, align 8
  %213 = bitcast ptr addrspace(1) %212 to ptr addrspace(1)
  %214 = zext i1 1 to i64
  %215 = or i64 %214, 72057594037927936
  %216 = getelementptr i8, ptr addrspace(1) null, i64 %215
  %217 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %213, i64 0, i64 0
  store ptr addrspace(1) %216, ptr addrspace(1) %217
  %218 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %210, i64 0, i32 1
  store i64 1, ptr addrspace(1) %218
  %219 = bitcast ptr addrspace(1) %210 to ptr addrspace(1)
  %220 = getelementptr i8, ptr addrspace(1) %219, i64 864691128455135236
  store ptr addrspace(1) %220, ptr %38
  %221 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %221), !dbg !49
  store ptr addrspace(1) null, ptr %39
  %222 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !50
  %223 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %222, i64 0, i32 3
  %224 = load ptr addrspace(1), ptr addrspace(1) %223, align 8
  %225 = bitcast ptr addrspace(1) %224 to ptr addrspace(1)
  %226 = zext i1 0 to i64
  %227 = or i64 %226, 72057594037927936
  %228 = getelementptr i8, ptr addrspace(1) null, i64 %227
  %229 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %225, i64 0, i64 0
  store ptr addrspace(1) %228, ptr addrspace(1) %229
  %230 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %222, i64 0, i32 1
  store i64 1, ptr addrspace(1) %230
  %231 = bitcast ptr addrspace(1) %222 to ptr addrspace(1)
  %232 = getelementptr i8, ptr addrspace(1) %231, i64 864691128455135236
  store ptr addrspace(1) %232, ptr %40
  %233 = load ptr addrspace(1), ptr %40
  call void @_Bb02ioprintln(ptr addrspace(1) %233), !dbg !51
  store ptr addrspace(1) null, ptr %41
  %234 = load double, ptr %nan0
  %235 = load double, ptr %nan1
  %236 = call i1 @_bal_float_eq(double %234, double %235), !dbg !52
  store i1 %236, ptr %42
  %237 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !53
  %238 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %237, i64 0, i32 3
  %239 = load ptr addrspace(1), ptr addrspace(1) %238, align 8
  %240 = bitcast ptr addrspace(1) %239 to ptr addrspace(1)
  %241 = load i1, ptr %42
  %242 = zext i1 %241 to i64
  %243 = or i64 %242, 72057594037927936
  %244 = getelementptr i8, ptr addrspace(1) null, i64 %243
  %245 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %240, i64 0, i64 0
  store ptr addrspace(1) %244, ptr addrspace(1) %245
  %246 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %237, i64 0, i32 1
  store i64 1, ptr addrspace(1) %246
  %247 = bitcast ptr addrspace(1) %237 to ptr addrspace(1)
  %248 = getelementptr i8, ptr addrspace(1) %247, i64 864691128455135236
  store ptr addrspace(1) %248, ptr %43
  %249 = load ptr addrspace(1), ptr %43
  call void @_Bb02ioprintln(ptr addrspace(1) %249), !dbg !54
  store ptr addrspace(1) null, ptr %44
  %250 = load double, ptr %pInf
  %251 = load double, ptr %nInf
  %252 = call i1 @_bal_float_eq(double %250, double %251), !dbg !55
  store i1 %252, ptr %45
  %253 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !56
  %254 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %253, i64 0, i32 3
  %255 = load ptr addrspace(1), ptr addrspace(1) %254, align 8
  %256 = bitcast ptr addrspace(1) %255 to ptr addrspace(1)
  %257 = load i1, ptr %45
  %258 = zext i1 %257 to i64
  %259 = or i64 %258, 72057594037927936
  %260 = getelementptr i8, ptr addrspace(1) null, i64 %259
  %261 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %256, i64 0, i64 0
  store ptr addrspace(1) %260, ptr addrspace(1) %261
  %262 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %253, i64 0, i32 1
  store i64 1, ptr addrspace(1) %262
  %263 = bitcast ptr addrspace(1) %253 to ptr addrspace(1)
  %264 = getelementptr i8, ptr addrspace(1) %263, i64 864691128455135236
  store ptr addrspace(1) %264, ptr %46
  %265 = load ptr addrspace(1), ptr %46
  call void @_Bb02ioprintln(ptr addrspace(1) %265), !dbg !57
  store ptr addrspace(1) null, ptr %47
  ret void
266:
  %267 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %267), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_eq(double %0, double %1) !dbg !7 {
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
  %12 = call i1 @_bal_float_eq(double %10, double %11), !dbg !60
  store i1 %12, ptr %3
  %13 = load i1, ptr %3
  store i1 %13, ptr %eq
  %14 = load double, ptr %f1
  %15 = load double, ptr %f2
  %16 = call i1 @_bal_float_eq(double %14, double %15), !dbg !61
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
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 7684), !dbg !58
  call void @_bal_panic(ptr addrspace(1) %30), !dbg !59
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"eq", linkageName:"_B_eq", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 10, column: 15, scope: !5)
!12 = !DILocation(line: 10, column: 15, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
!14 = !DILocation(line: 11, column: 15, scope: !5)
!15 = !DILocation(line: 11, column: 15, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
!17 = !DILocation(line: 12, column: 15, scope: !5)
!18 = !DILocation(line: 12, column: 15, scope: !5)
!19 = !DILocation(line: 12, column: 4, scope: !5)
!20 = !DILocation(line: 13, column: 15, scope: !5)
!21 = !DILocation(line: 13, column: 15, scope: !5)
!22 = !DILocation(line: 13, column: 4, scope: !5)
!23 = !DILocation(line: 14, column: 15, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 15, column: 15, scope: !5)
!27 = !DILocation(line: 15, column: 15, scope: !5)
!28 = !DILocation(line: 15, column: 4, scope: !5)
!29 = !DILocation(line: 16, column: 15, scope: !5)
!30 = !DILocation(line: 16, column: 15, scope: !5)
!31 = !DILocation(line: 16, column: 4, scope: !5)
!32 = !DILocation(line: 17, column: 15, scope: !5)
!33 = !DILocation(line: 17, column: 15, scope: !5)
!34 = !DILocation(line: 17, column: 4, scope: !5)
!35 = !DILocation(line: 18, column: 15, scope: !5)
!36 = !DILocation(line: 18, column: 15, scope: !5)
!37 = !DILocation(line: 18, column: 4, scope: !5)
!38 = !DILocation(line: 19, column: 15, scope: !5)
!39 = !DILocation(line: 19, column: 15, scope: !5)
!40 = !DILocation(line: 19, column: 4, scope: !5)
!41 = !DILocation(line: 20, column: 15, scope: !5)
!42 = !DILocation(line: 20, column: 15, scope: !5)
!43 = !DILocation(line: 20, column: 4, scope: !5)
!44 = !DILocation(line: 22, column: 15, scope: !5)
!45 = !DILocation(line: 22, column: 4, scope: !5)
!46 = !DILocation(line: 23, column: 15, scope: !5)
!47 = !DILocation(line: 23, column: 4, scope: !5)
!48 = !DILocation(line: 24, column: 15, scope: !5)
!49 = !DILocation(line: 24, column: 4, scope: !5)
!50 = !DILocation(line: 25, column: 15, scope: !5)
!51 = !DILocation(line: 25, column: 4, scope: !5)
!52 = !DILocation(line: 26, column: 20, scope: !5)
!53 = !DILocation(line: 26, column: 15, scope: !5)
!54 = !DILocation(line: 26, column: 4, scope: !5)
!55 = !DILocation(line: 27, column: 20, scope: !5)
!56 = !DILocation(line: 27, column: 15, scope: !5)
!57 = !DILocation(line: 27, column: 4, scope: !5)
!58 = !DILocation(line: 0, column: 0, scope: !7)
!59 = !DILocation(line: 30, column: 9, scope: !7)
!60 = !DILocation(line: 31, column: 20, scope: !7)
!61 = !DILocation(line: 32, column: 22, scope: !7)
