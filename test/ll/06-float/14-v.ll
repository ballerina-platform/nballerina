@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"not-float\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare zeroext i1 @_bal_string_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
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
  %42 = alloca ptr addrspace(1)
  %43 = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca i8
  %47 = load ptr, ptr @_bal_stack_guard
  %48 = icmp ult ptr %46, %47
  br i1 %48, label %235, label %49
49:
  store double 0x7FF8000000000000, ptr %nan0
  store double 0x7FF8000000000000, ptr %nan1
  store double 0x7FF0000000000000, ptr %pInf
  store double 0xFFF0000000000000, ptr %nInf
  %50 = call ptr addrspace(1) @_B_eq(double 42.0, double 42.0), !dbg !15
  store ptr addrspace(1) %50, ptr %1
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load ptr addrspace(1), ptr %1
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %2
  %60 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !17
  store ptr addrspace(1) null, ptr %3
  %61 = call ptr addrspace(1) @_B_eq(double 1.0, double 2.0), !dbg !18
  store ptr addrspace(1) %61, ptr %4
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load ptr addrspace(1), ptr %4
  %67 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %66, ptr addrspace(1) %67
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %68
  %69 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %70 = getelementptr i8, ptr addrspace(1) %69, i64 864691128455135236
  store ptr addrspace(1) %70, ptr %5
  %71 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %71), !dbg !20
  store ptr addrspace(1) null, ptr %6
  %72 = call ptr addrspace(1) @_B_eq(double 0.0, double 0.0), !dbg !21
  store ptr addrspace(1) %72, ptr %7
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = load ptr addrspace(1), ptr %7
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %77, ptr addrspace(1) %78
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %79
  %80 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 864691128455135236
  store ptr addrspace(1) %81, ptr %8
  %82 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %82), !dbg !23
  store ptr addrspace(1) null, ptr %9
  %83 = call ptr addrspace(1) @_B_eq(double 0.0, double -0.0), !dbg !24
  store ptr addrspace(1) %83, ptr %10
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load ptr addrspace(1), ptr %10
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %11
  %93 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %94 = load double, ptr %nan0
  %95 = load double, ptr %nan1
  %96 = call ptr addrspace(1) @_B_eq(double %94, double %95), !dbg !27
  store ptr addrspace(1) %96, ptr %13
  %97 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 3
  %99 = load ptr addrspace(1), ptr addrspace(1) %98, align 8
  %100 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %101 = load ptr addrspace(1), ptr %13
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %14
  %106 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !29
  store ptr addrspace(1) null, ptr %15
  %107 = load double, ptr %nan0
  %108 = call ptr addrspace(1) @_B_eq(double %107, double 1.0), !dbg !30
  store ptr addrspace(1) %108, ptr %16
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = load ptr addrspace(1), ptr %16
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %17
  %118 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !32
  store ptr addrspace(1) null, ptr %18
  %119 = load double, ptr %nan0
  %120 = load double, ptr %nInf
  %121 = call ptr addrspace(1) @_B_eq(double %119, double %120), !dbg !33
  store ptr addrspace(1) %121, ptr %19
  %122 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %123 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 3
  %124 = load ptr addrspace(1), ptr addrspace(1) %123, align 8
  %125 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %126 = load ptr addrspace(1), ptr %19
  %127 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %125, i64 0, i64 0
  store ptr addrspace(1) %126, ptr addrspace(1) %127
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %122, i64 0, i32 1
  store i64 1, ptr addrspace(1) %128
  %129 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %130 = getelementptr i8, ptr addrspace(1) %129, i64 864691128455135236
  store ptr addrspace(1) %130, ptr %20
  %131 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %131), !dbg !35
  store ptr addrspace(1) null, ptr %21
  %132 = load double, ptr %pInf
  %133 = load double, ptr %nInf
  %134 = call ptr addrspace(1) @_B_eq(double %132, double %133), !dbg !36
  store ptr addrspace(1) %134, ptr %22
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load ptr addrspace(1), ptr %22
  %140 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %139, ptr addrspace(1) %140
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %141
  %142 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %143 = getelementptr i8, ptr addrspace(1) %142, i64 864691128455135236
  store ptr addrspace(1) %143, ptr %23
  %144 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %144), !dbg !38
  store ptr addrspace(1) null, ptr %24
  %145 = load double, ptr %nInf
  %146 = load double, ptr %pInf
  %147 = call ptr addrspace(1) @_B_eq(double %145, double %146), !dbg !39
  store ptr addrspace(1) %147, ptr %25
  %148 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %149 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %148, i64 0, i32 3
  %150 = load ptr addrspace(1), ptr addrspace(1) %149, align 8
  %151 = bitcast ptr addrspace(1) %150 to ptr addrspace(1)
  %152 = load ptr addrspace(1), ptr %25
  %153 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %151, i64 0, i64 0
  store ptr addrspace(1) %152, ptr addrspace(1) %153
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %148, i64 0, i32 1
  store i64 1, ptr addrspace(1) %154
  %155 = bitcast ptr addrspace(1) %148 to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 864691128455135236
  store ptr addrspace(1) %156, ptr %26
  %157 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %157), !dbg !41
  store ptr addrspace(1) null, ptr %27
  %158 = load double, ptr %pInf
  %159 = load double, ptr %pInf
  %160 = call ptr addrspace(1) @_B_eq(double %158, double %159), !dbg !42
  store ptr addrspace(1) %160, ptr %28
  %161 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %162 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 3
  %163 = load ptr addrspace(1), ptr addrspace(1) %162, align 8
  %164 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %165 = load ptr addrspace(1), ptr %28
  %166 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %164, i64 0, i64 0
  store ptr addrspace(1) %165, ptr addrspace(1) %166
  %167 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 1
  store i64 1, ptr addrspace(1) %167
  %168 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %169 = getelementptr i8, ptr addrspace(1) %168, i64 864691128455135236
  store ptr addrspace(1) %169, ptr %29
  %170 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %170), !dbg !44
  store ptr addrspace(1) null, ptr %30
  %171 = load double, ptr %nInf
  %172 = load double, ptr %nInf
  %173 = call ptr addrspace(1) @_B_eq(double %171, double %172), !dbg !45
  store ptr addrspace(1) %173, ptr %31
  %174 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !46
  %175 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %174, i64 0, i32 3
  %176 = load ptr addrspace(1), ptr addrspace(1) %175, align 8
  %177 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %178 = load ptr addrspace(1), ptr %31
  %179 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %177, i64 0, i64 0
  store ptr addrspace(1) %178, ptr addrspace(1) %179
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %174, i64 0, i32 1
  store i64 1, ptr addrspace(1) %180
  %181 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 864691128455135236
  store ptr addrspace(1) %182, ptr %32
  %183 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %183), !dbg !47
  store ptr addrspace(1) null, ptr %33
  %184 = call ptr addrspace(1) @_B_eqAF(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), double 1.0), !dbg !48
  store ptr addrspace(1) %184, ptr %34
  %185 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !49
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %185, i64 0, i32 3
  %187 = load ptr addrspace(1), ptr addrspace(1) %186, align 8
  %188 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %189 = load ptr addrspace(1), ptr %34
  %190 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %188, i64 0, i64 0
  store ptr addrspace(1) %189, ptr addrspace(1) %190
  %191 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %185, i64 0, i32 1
  store i64 1, ptr addrspace(1) %191
  %192 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %193 = getelementptr i8, ptr addrspace(1) %192, i64 864691128455135236
  store ptr addrspace(1) %193, ptr %35
  %194 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %194), !dbg !50
  store ptr addrspace(1) null, ptr %36
  %195 = and i64 72057594037927935, 1
  %196 = or i64 2449958197289549824, %195
  %197 = getelementptr i8, ptr addrspace(1) null, i64 %196
  %198 = call ptr addrspace(1) @_B_eqAF(ptr addrspace(1) %197, double 1.0), !dbg !51
  store ptr addrspace(1) %198, ptr %37
  %199 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !52
  %200 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %199, i64 0, i32 3
  %201 = load ptr addrspace(1), ptr addrspace(1) %200, align 8
  %202 = bitcast ptr addrspace(1) %201 to ptr addrspace(1)
  %203 = load ptr addrspace(1), ptr %37
  %204 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %202, i64 0, i64 0
  store ptr addrspace(1) %203, ptr addrspace(1) %204
  %205 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %199, i64 0, i32 1
  store i64 1, ptr addrspace(1) %205
  %206 = bitcast ptr addrspace(1) %199 to ptr addrspace(1)
  %207 = getelementptr i8, ptr addrspace(1) %206, i64 864691128455135236
  store ptr addrspace(1) %207, ptr %38
  %208 = load ptr addrspace(1), ptr %38
  call void @_Bb02ioprintln(ptr addrspace(1) %208), !dbg !53
  store ptr addrspace(1) null, ptr %39
  %209 = zext i1 0 to i64
  %210 = or i64 %209, 72057594037927936
  %211 = getelementptr i8, ptr addrspace(1) null, i64 %210
  %212 = call ptr addrspace(1) @_B_eqFA(double 0.0, ptr addrspace(1) %211), !dbg !54
  store ptr addrspace(1) %212, ptr %40
  %213 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !55
  %214 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %213, i64 0, i32 3
  %215 = load ptr addrspace(1), ptr addrspace(1) %214, align 8
  %216 = bitcast ptr addrspace(1) %215 to ptr addrspace(1)
  %217 = load ptr addrspace(1), ptr %40
  %218 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %216, i64 0, i64 0
  store ptr addrspace(1) %217, ptr addrspace(1) %218
  %219 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %213, i64 0, i32 1
  store i64 1, ptr addrspace(1) %219
  %220 = bitcast ptr addrspace(1) %213 to ptr addrspace(1)
  %221 = getelementptr i8, ptr addrspace(1) %220, i64 864691128455135236
  store ptr addrspace(1) %221, ptr %41
  %222 = load ptr addrspace(1), ptr %41
  call void @_Bb02ioprintln(ptr addrspace(1) %222), !dbg !56
  store ptr addrspace(1) null, ptr %42
  %223 = call ptr addrspace(1) @_bal_float_to_tagged(double 8.0), !dbg !57
  %224 = call ptr addrspace(1) @_B_eqFA(double 8.0, ptr addrspace(1) %223), !dbg !58
  store ptr addrspace(1) %224, ptr %43
  %225 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !59
  %226 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %225, i64 0, i32 3
  %227 = load ptr addrspace(1), ptr addrspace(1) %226, align 8
  %228 = bitcast ptr addrspace(1) %227 to ptr addrspace(1)
  %229 = load ptr addrspace(1), ptr %43
  %230 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %228, i64 0, i64 0
  store ptr addrspace(1) %229, ptr addrspace(1) %230
  %231 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %225, i64 0, i32 1
  store i64 1, ptr addrspace(1) %231
  %232 = bitcast ptr addrspace(1) %225 to ptr addrspace(1)
  %233 = getelementptr i8, ptr addrspace(1) %232, i64 864691128455135236
  store ptr addrspace(1) %233, ptr %44
  %234 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %234), !dbg !60
  store ptr addrspace(1) null, ptr %45
  ret void
235:
  %236 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %236), !dbg !14
  unreachable
}
define internal ptr addrspace(1) @_B_eq(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %b1 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %b2 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %28, label %9
9:
  store double %0, ptr %f1
  store double %1, ptr %f2
  %10 = load double, ptr %f1
  %11 = call ptr addrspace(1) @_bal_float_to_tagged(double %10), !dbg !63
  %12 = load double, ptr %f2
  %13 = call ptr addrspace(1) @_B_eqAF(ptr addrspace(1) %11, double %12), !dbg !64
  store ptr addrspace(1) %13, ptr %3
  %14 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %14, ptr %b1
  %15 = load double, ptr %f1
  %16 = load double, ptr %f2
  %17 = call ptr addrspace(1) @_bal_float_to_tagged(double %16), !dbg !65
  %18 = call ptr addrspace(1) @_B_eqFA(double %15, ptr addrspace(1) %17), !dbg !66
  store ptr addrspace(1) %18, ptr %4
  %19 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %19, ptr %b2
  %20 = load ptr addrspace(1), ptr %b1
  %21 = load ptr addrspace(1), ptr %b2
  %22 = call i1 @_bal_string_eq(ptr addrspace(1) %20, ptr addrspace(1) %21), !dbg !67
  %23 = xor i1 %22, 1
  store i1 %23, ptr %5
  %24 = load i1, ptr %5
  br i1 %24, label %25, label %26
25:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)
26:
  %27 = load ptr addrspace(1), ptr %b1
  ret ptr addrspace(1) %27
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 7428), !dbg !61
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !62
  unreachable
}
define internal ptr addrspace(1) @_B_eqAF(ptr addrspace(1) %0, double %1) !dbg !9 {
  %f1 = alloca ptr addrspace(1)
  %f2 = alloca double
  %eq = alloca i1
  %3 = alloca i1
  %neEq = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %21, label %9
9:
  store ptr addrspace(1) %0, ptr %f1
  store double %1, ptr %f2
  %10 = load ptr addrspace(1), ptr %f1
  %11 = load double, ptr %f2
  %12 = addrspacecast ptr addrspace(1) %10 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 216172782113783808
  br i1 %15, label %23, label %26
16:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)
17:
  %18 = load i1, ptr %eq
  br i1 %18, label %19, label %20
19:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848490100)
20:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187909657813350)
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 9732), !dbg !68
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !69
  unreachable
23:
  %24 = call double @_bal_tagged_to_float(ptr addrspace(1) %10), !dbg !70
  %25 = call i1 @_bal_float_eq(double %24, double %11), !dbg !71
  store i1 %25, ptr %3
  br label %27
26:
  store i1 0, ptr %3
  br label %27
27:
  %28 = load i1, ptr %3
  store i1 %28, ptr %eq
  %29 = load ptr addrspace(1), ptr %f1
  %30 = load double, ptr %f2
  %31 = addrspacecast ptr addrspace(1) %29 to ptr
  %32 = ptrtoint ptr %31 to i64
  %33 = and i64 %32, 2233785415175766016
  %34 = icmp eq i64 %33, 216172782113783808
  br i1 %34, label %35, label %39
35:
  %36 = call double @_bal_tagged_to_float(ptr addrspace(1) %29), !dbg !72
  %37 = call i1 @_bal_float_eq(double %36, double %30), !dbg !73
  %38 = xor i1 %37, 1
  store i1 %38, ptr %4
  br label %40
39:
  store i1 1, ptr %4
  br label %40
40:
  %41 = load i1, ptr %4
  store i1 %41, ptr %neEq
  %42 = load i1, ptr %eq
  %43 = load i1, ptr %neEq
  %44 = icmp eq i1 %42, %43
  store i1 %44, ptr %5
  %45 = load i1, ptr %5
  br i1 %45, label %16, label %17
}
define internal ptr addrspace(1) @_B_eqFA(double %0, ptr addrspace(1) %1) !dbg !11 {
  %f1 = alloca double
  %f2 = alloca ptr addrspace(1)
  %eq = alloca i1
  %3 = alloca i1
  %neEq = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %21, label %9
9:
  store double %0, ptr %f1
  store ptr addrspace(1) %1, ptr %f2
  %10 = load double, ptr %f1
  %11 = load ptr addrspace(1), ptr %f2
  %12 = addrspacecast ptr addrspace(1) %11 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 216172782113783808
  br i1 %15, label %23, label %26
16:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411)
17:
  %18 = load i1, ptr %eq
  br i1 %18, label %19, label %20
19:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848490100)
20:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187909657813350)
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 12804), !dbg !74
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !75
  unreachable
23:
  %24 = call double @_bal_tagged_to_float(ptr addrspace(1) %11), !dbg !76
  %25 = call i1 @_bal_float_eq(double %24, double %10), !dbg !77
  store i1 %25, ptr %3
  br label %27
26:
  store i1 0, ptr %3
  br label %27
27:
  %28 = load i1, ptr %3
  store i1 %28, ptr %eq
  %29 = load double, ptr %f1
  %30 = load ptr addrspace(1), ptr %f2
  %31 = addrspacecast ptr addrspace(1) %30 to ptr
  %32 = ptrtoint ptr %31 to i64
  %33 = and i64 %32, 2233785415175766016
  %34 = icmp eq i64 %33, 216172782113783808
  br i1 %34, label %35, label %39
35:
  %36 = call double @_bal_tagged_to_float(ptr addrspace(1) %30), !dbg !78
  %37 = call i1 @_bal_float_eq(double %36, double %29), !dbg !79
  %38 = xor i1 %37, 1
  store i1 %38, ptr %4
  br label %40
39:
  store i1 1, ptr %4
  br label %40
40:
  %41 = load i1, ptr %4
  store i1 %41, ptr %neEq
  %42 = load i1, ptr %eq
  %43 = load i1, ptr %neEq
  %44 = icmp eq i1 %42, %43
  store i1 %44, ptr %5
  %45 = load i1, ptr %5
  br i1 %45, label %16, label %17
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"eq", linkageName:"_B_eq", scope: !1, file: !1, line: 29, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"eqAF", linkageName:"_B_eqAF", scope: !1, file: !1, line: 38, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"eqFA", linkageName:"_B_eqFA", scope: !1, file: !1, line: 50, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 16, scope: !5)
!15 = !DILocation(line: 11, column: 15, scope: !5)
!16 = !DILocation(line: 11, column: 15, scope: !5)
!17 = !DILocation(line: 11, column: 4, scope: !5)
!18 = !DILocation(line: 12, column: 15, scope: !5)
!19 = !DILocation(line: 12, column: 15, scope: !5)
!20 = !DILocation(line: 12, column: 4, scope: !5)
!21 = !DILocation(line: 13, column: 15, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 15, scope: !5)
!26 = !DILocation(line: 14, column: 4, scope: !5)
!27 = !DILocation(line: 15, column: 15, scope: !5)
!28 = !DILocation(line: 15, column: 15, scope: !5)
!29 = !DILocation(line: 15, column: 4, scope: !5)
!30 = !DILocation(line: 16, column: 15, scope: !5)
!31 = !DILocation(line: 16, column: 15, scope: !5)
!32 = !DILocation(line: 16, column: 4, scope: !5)
!33 = !DILocation(line: 17, column: 15, scope: !5)
!34 = !DILocation(line: 17, column: 15, scope: !5)
!35 = !DILocation(line: 17, column: 4, scope: !5)
!36 = !DILocation(line: 18, column: 15, scope: !5)
!37 = !DILocation(line: 18, column: 15, scope: !5)
!38 = !DILocation(line: 18, column: 4, scope: !5)
!39 = !DILocation(line: 19, column: 15, scope: !5)
!40 = !DILocation(line: 19, column: 15, scope: !5)
!41 = !DILocation(line: 19, column: 4, scope: !5)
!42 = !DILocation(line: 20, column: 15, scope: !5)
!43 = !DILocation(line: 20, column: 15, scope: !5)
!44 = !DILocation(line: 20, column: 4, scope: !5)
!45 = !DILocation(line: 21, column: 15, scope: !5)
!46 = !DILocation(line: 21, column: 15, scope: !5)
!47 = !DILocation(line: 21, column: 4, scope: !5)
!48 = !DILocation(line: 23, column: 15, scope: !5)
!49 = !DILocation(line: 23, column: 15, scope: !5)
!50 = !DILocation(line: 23, column: 4, scope: !5)
!51 = !DILocation(line: 24, column: 15, scope: !5)
!52 = !DILocation(line: 24, column: 15, scope: !5)
!53 = !DILocation(line: 24, column: 4, scope: !5)
!54 = !DILocation(line: 25, column: 15, scope: !5)
!55 = !DILocation(line: 25, column: 15, scope: !5)
!56 = !DILocation(line: 25, column: 4, scope: !5)
!57 = !DILocation(line: 26, column: 15, scope: !5)
!58 = !DILocation(line: 26, column: 15, scope: !5)
!59 = !DILocation(line: 26, column: 15, scope: !5)
!60 = !DILocation(line: 26, column: 4, scope: !5)
!61 = !DILocation(line: 0, column: 0, scope: !7)
!62 = !DILocation(line: 29, column: 9, scope: !7)
!63 = !DILocation(line: 30, column: 16, scope: !7)
!64 = !DILocation(line: 30, column: 16, scope: !7)
!65 = !DILocation(line: 31, column: 16, scope: !7)
!66 = !DILocation(line: 31, column: 16, scope: !7)
!67 = !DILocation(line: 32, column: 10, scope: !7)
!68 = !DILocation(line: 0, column: 0, scope: !9)
!69 = !DILocation(line: 38, column: 9, scope: !9)
!70 = !DILocation(line: 39, column: 20, scope: !9)
!71 = !DILocation(line: 39, column: 20, scope: !9)
!72 = !DILocation(line: 40, column: 22, scope: !9)
!73 = !DILocation(line: 40, column: 22, scope: !9)
!74 = !DILocation(line: 0, column: 0, scope: !11)
!75 = !DILocation(line: 50, column: 9, scope: !11)
!76 = !DILocation(line: 51, column: 20, scope: !11)
!77 = !DILocation(line: 51, column: 20, scope: !11)
!78 = !DILocation(line: 52, column: 22, scope: !11)
!79 = !DILocation(line: 52, column: 22, scope: !11)
