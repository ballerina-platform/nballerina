@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i64} @_bal_decimal_from_float(double) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %f = alloca double
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
  %35 = alloca i8
  %36 = load ptr, ptr @_bal_stack_guard
  %37 = icmp ult ptr %35, %36
  br i1 %37, label %45, label %38
38:
  store double 0.0, ptr %f
  %39 = load double, ptr %f
  %40 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %39), !dbg !9
  %41 = extractvalue {ptr addrspace(1), i64} %40, 1
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %63, label %47
43:
  %44 = load ptr addrspace(1), ptr %34
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !42
  unreachable
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !8
  unreachable
47:
  %48 = extractvalue {ptr addrspace(1), i64} %40, 0
  store ptr addrspace(1) %48, ptr %1
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 3
  %51 = load ptr addrspace(1), ptr addrspace(1) %50, align 8
  %52 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %53 = load ptr addrspace(1), ptr %1
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %52, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %49, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %2
  %58 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !11
  store ptr addrspace(1) null, ptr %3
  store double 1.0, ptr %f
  %59 = load double, ptr %f
  %60 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %59), !dbg !12
  %61 = extractvalue {ptr addrspace(1), i64} %60, 1
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %82, label %66
63:
  %64 = or i64 %41, 1024
  %65 = call ptr addrspace(1) @_bal_panic_construct(i64 %64), !dbg !7
  store ptr addrspace(1) %65, ptr %34
  br label %43
66:
  %67 = extractvalue {ptr addrspace(1), i64} %60, 0
  store ptr addrspace(1) %67, ptr %4
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = load ptr addrspace(1), ptr %4
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  store i64 1, ptr addrspace(1) %74
  %75 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 864691128455135236
  store ptr addrspace(1) %76, ptr %5
  %77 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %77), !dbg !14
  store ptr addrspace(1) null, ptr %6
  store double 1.0, ptr %f
  %78 = load double, ptr %f
  %79 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %78), !dbg !15
  %80 = extractvalue {ptr addrspace(1), i64} %79, 1
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %101, label %85
82:
  %83 = or i64 %61, 1536
  %84 = call ptr addrspace(1) @_bal_panic_construct(i64 %83), !dbg !7
  store ptr addrspace(1) %84, ptr %34
  br label %43
85:
  %86 = extractvalue {ptr addrspace(1), i64} %79, 0
  store ptr addrspace(1) %86, ptr %7
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = load ptr addrspace(1), ptr %7
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %8
  %96 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !17
  store ptr addrspace(1) null, ptr %9
  store double 0x41D26580B4C00000, ptr %f
  %97 = load double, ptr %f
  %98 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %97), !dbg !18
  %99 = extractvalue {ptr addrspace(1), i64} %98, 1
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %120, label %104
101:
  %102 = or i64 %80, 2048
  %103 = call ptr addrspace(1) @_bal_panic_construct(i64 %102), !dbg !7
  store ptr addrspace(1) %103, ptr %34
  br label %43
104:
  %105 = extractvalue {ptr addrspace(1), i64} %98, 0
  store ptr addrspace(1) %105, ptr %10
  %106 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 3
  %108 = load ptr addrspace(1), ptr addrspace(1) %107, align 8
  %109 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %110 = load ptr addrspace(1), ptr %10
  %111 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %109, i64 0, i64 0
  store ptr addrspace(1) %110, ptr addrspace(1) %111
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 1
  store i64 1, ptr addrspace(1) %112
  %113 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %114 = getelementptr i8, ptr addrspace(1) %113, i64 864691128455135236
  store ptr addrspace(1) %114, ptr %11
  %115 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %115), !dbg !20
  store ptr addrspace(1) null, ptr %12
  store double 0x43118B54F22AEB00, ptr %f
  %116 = load double, ptr %f
  %117 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %116), !dbg !21
  %118 = extractvalue {ptr addrspace(1), i64} %117, 1
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %139, label %123
120:
  %121 = or i64 %99, 2560
  %122 = call ptr addrspace(1) @_bal_panic_construct(i64 %121), !dbg !7
  store ptr addrspace(1) %122, ptr %34
  br label %43
123:
  %124 = extractvalue {ptr addrspace(1), i64} %117, 0
  store ptr addrspace(1) %124, ptr %13
  %125 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 3
  %127 = load ptr addrspace(1), ptr addrspace(1) %126, align 8
  %128 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %129 = load ptr addrspace(1), ptr %13
  %130 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %128, i64 0, i64 0
  store ptr addrspace(1) %129, ptr addrspace(1) %130
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 1
  store i64 1, ptr addrspace(1) %131
  %132 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %133 = getelementptr i8, ptr addrspace(1) %132, i64 864691128455135236
  store ptr addrspace(1) %133, ptr %14
  %134 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %134), !dbg !23
  store ptr addrspace(1) null, ptr %15
  store double 0x43118B54F22AEB00, ptr %f
  %135 = load double, ptr %f
  %136 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %135), !dbg !24
  %137 = extractvalue {ptr addrspace(1), i64} %136, 1
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %158, label %142
139:
  %140 = or i64 %118, 3072
  %141 = call ptr addrspace(1) @_bal_panic_construct(i64 %140), !dbg !7
  store ptr addrspace(1) %141, ptr %34
  br label %43
142:
  %143 = extractvalue {ptr addrspace(1), i64} %136, 0
  store ptr addrspace(1) %143, ptr %16
  %144 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 3
  %146 = load ptr addrspace(1), ptr addrspace(1) %145, align 8
  %147 = bitcast ptr addrspace(1) %146 to ptr addrspace(1)
  %148 = load ptr addrspace(1), ptr %16
  %149 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %147, i64 0, i64 0
  store ptr addrspace(1) %148, ptr addrspace(1) %149
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %144, i64 0, i32 1
  store i64 1, ptr addrspace(1) %150
  %151 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %152 = getelementptr i8, ptr addrspace(1) %151, i64 864691128455135236
  store ptr addrspace(1) %152, ptr %17
  %153 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %153), !dbg !26
  store ptr addrspace(1) null, ptr %18
  store double 0x43118B54F22AEB04, ptr %f
  %154 = load double, ptr %f
  %155 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %154), !dbg !27
  %156 = extractvalue {ptr addrspace(1), i64} %155, 1
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %177, label %161
158:
  %159 = or i64 %137, 3584
  %160 = call ptr addrspace(1) @_bal_panic_construct(i64 %159), !dbg !7
  store ptr addrspace(1) %160, ptr %34
  br label %43
161:
  %162 = extractvalue {ptr addrspace(1), i64} %155, 0
  store ptr addrspace(1) %162, ptr %19
  %163 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %164 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 3
  %165 = load ptr addrspace(1), ptr addrspace(1) %164, align 8
  %166 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %167 = load ptr addrspace(1), ptr %19
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %166, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %20
  %172 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !29
  store ptr addrspace(1) null, ptr %21
  store double 0x7FEFFFFFFFFFFFFF, ptr %f
  %173 = load double, ptr %f
  %174 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %173), !dbg !30
  %175 = extractvalue {ptr addrspace(1), i64} %174, 1
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %196, label %180
177:
  %178 = or i64 %156, 4096
  %179 = call ptr addrspace(1) @_bal_panic_construct(i64 %178), !dbg !7
  store ptr addrspace(1) %179, ptr %34
  br label %43
180:
  %181 = extractvalue {ptr addrspace(1), i64} %174, 0
  store ptr addrspace(1) %181, ptr %22
  %182 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %183 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %182, i64 0, i32 3
  %184 = load ptr addrspace(1), ptr addrspace(1) %183, align 8
  %185 = bitcast ptr addrspace(1) %184 to ptr addrspace(1)
  %186 = load ptr addrspace(1), ptr %22
  %187 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %185, i64 0, i64 0
  store ptr addrspace(1) %186, ptr addrspace(1) %187
  %188 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %182, i64 0, i32 1
  store i64 1, ptr addrspace(1) %188
  %189 = bitcast ptr addrspace(1) %182 to ptr addrspace(1)
  %190 = getelementptr i8, ptr addrspace(1) %189, i64 864691128455135236
  store ptr addrspace(1) %190, ptr %23
  %191 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %191), !dbg !32
  store ptr addrspace(1) null, ptr %24
  store double 9.0E292, ptr %f
  %192 = load double, ptr %f
  %193 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %192), !dbg !33
  %194 = extractvalue {ptr addrspace(1), i64} %193, 1
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %215, label %199
196:
  %197 = or i64 %175, 4608
  %198 = call ptr addrspace(1) @_bal_panic_construct(i64 %197), !dbg !7
  store ptr addrspace(1) %198, ptr %34
  br label %43
199:
  %200 = extractvalue {ptr addrspace(1), i64} %193, 0
  store ptr addrspace(1) %200, ptr %25
  %201 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %201, i64 0, i32 3
  %203 = load ptr addrspace(1), ptr addrspace(1) %202, align 8
  %204 = bitcast ptr addrspace(1) %203 to ptr addrspace(1)
  %205 = load ptr addrspace(1), ptr %25
  %206 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %204, i64 0, i64 0
  store ptr addrspace(1) %205, ptr addrspace(1) %206
  %207 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %201, i64 0, i32 1
  store i64 1, ptr addrspace(1) %207
  %208 = bitcast ptr addrspace(1) %201 to ptr addrspace(1)
  %209 = getelementptr i8, ptr addrspace(1) %208, i64 864691128455135236
  store ptr addrspace(1) %209, ptr %26
  %210 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %210), !dbg !35
  store ptr addrspace(1) null, ptr %27
  store double 1.0E-34, ptr %f
  %211 = load double, ptr %f
  %212 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %211), !dbg !36
  %213 = extractvalue {ptr addrspace(1), i64} %212, 1
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %234, label %218
215:
  %216 = or i64 %194, 5120
  %217 = call ptr addrspace(1) @_bal_panic_construct(i64 %216), !dbg !7
  store ptr addrspace(1) %217, ptr %34
  br label %43
218:
  %219 = extractvalue {ptr addrspace(1), i64} %212, 0
  store ptr addrspace(1) %219, ptr %28
  %220 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %221 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %220, i64 0, i32 3
  %222 = load ptr addrspace(1), ptr addrspace(1) %221, align 8
  %223 = bitcast ptr addrspace(1) %222 to ptr addrspace(1)
  %224 = load ptr addrspace(1), ptr %28
  %225 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %223, i64 0, i64 0
  store ptr addrspace(1) %224, ptr addrspace(1) %225
  %226 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %220, i64 0, i32 1
  store i64 1, ptr addrspace(1) %226
  %227 = bitcast ptr addrspace(1) %220 to ptr addrspace(1)
  %228 = getelementptr i8, ptr addrspace(1) %227, i64 864691128455135236
  store ptr addrspace(1) %228, ptr %29
  %229 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %229), !dbg !38
  store ptr addrspace(1) null, ptr %30
  store double 0x1, ptr %f
  %230 = load double, ptr %f
  %231 = call {ptr addrspace(1), i64} @_bal_decimal_from_float(double %230), !dbg !39
  %232 = extractvalue {ptr addrspace(1), i64} %231, 1
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %249, label %237
234:
  %235 = or i64 %213, 5632
  %236 = call ptr addrspace(1) @_bal_panic_construct(i64 %235), !dbg !7
  store ptr addrspace(1) %236, ptr %34
  br label %43
237:
  %238 = extractvalue {ptr addrspace(1), i64} %231, 0
  store ptr addrspace(1) %238, ptr %31
  %239 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %240 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %239, i64 0, i32 3
  %241 = load ptr addrspace(1), ptr addrspace(1) %240, align 8
  %242 = bitcast ptr addrspace(1) %241 to ptr addrspace(1)
  %243 = load ptr addrspace(1), ptr %31
  %244 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %242, i64 0, i64 0
  store ptr addrspace(1) %243, ptr addrspace(1) %244
  %245 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %239, i64 0, i32 1
  store i64 1, ptr addrspace(1) %245
  %246 = bitcast ptr addrspace(1) %239 to ptr addrspace(1)
  %247 = getelementptr i8, ptr addrspace(1) %246, i64 864691128455135236
  store ptr addrspace(1) %247, ptr %32
  %248 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %248), !dbg !41
  store ptr addrspace(1) null, ptr %33
  ret void
249:
  %250 = or i64 %232, 6144
  %251 = call ptr addrspace(1) @_bal_panic_construct(i64 %250), !dbg !7
  store ptr addrspace(1) %251, ptr %34
  br label %43
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/fromfloat4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 15, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 15, scope: !5)
!26 = !DILocation(line: 14, column: 4, scope: !5)
!27 = !DILocation(line: 16, column: 15, scope: !5)
!28 = !DILocation(line: 16, column: 15, scope: !5)
!29 = !DILocation(line: 16, column: 4, scope: !5)
!30 = !DILocation(line: 18, column: 15, scope: !5)
!31 = !DILocation(line: 18, column: 15, scope: !5)
!32 = !DILocation(line: 18, column: 4, scope: !5)
!33 = !DILocation(line: 20, column: 15, scope: !5)
!34 = !DILocation(line: 20, column: 15, scope: !5)
!35 = !DILocation(line: 20, column: 4, scope: !5)
!36 = !DILocation(line: 22, column: 15, scope: !5)
!37 = !DILocation(line: 22, column: 15, scope: !5)
!38 = !DILocation(line: 22, column: 4, scope: !5)
!39 = !DILocation(line: 24, column: 15, scope: !5)
!40 = !DILocation(line: 24, column: 15, scope: !5)
!41 = !DILocation(line: 24, column: 4, scope: !5)
!42 = !DILocation(line: 25, column: 0, scope: !5)
