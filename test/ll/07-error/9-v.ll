@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %e1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %e2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %a1 = alloca ptr addrspace(1)
  %a2 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i1
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i1
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i1
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %v1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %27 = alloca i1
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca i1
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i1
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca i1
  %37 = alloca ptr addrspace(1)
  %38 = alloca ptr addrspace(1)
  %39 = alloca i1
  %40 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca ptr addrspace(1)
  %44 = alloca i1
  %45 = alloca ptr addrspace(1)
  %46 = alloca ptr addrspace(1)
  %47 = alloca i8
  %48 = load ptr, ptr @_bal_stack_guard
  %49 = icmp ult ptr %47, %48
  br i1 %49, label %291, label %50
50:
  %51 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223016), i64 5), !dbg !7
  store ptr addrspace(1) %51, ptr %1
  %52 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %52, ptr %e1
  %53 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223016), i64 6), !dbg !7
  store ptr addrspace(1) %53, ptr %2
  %54 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %54, ptr %e2
  %55 = load ptr addrspace(1), ptr %e1
  %56 = load ptr addrspace(1), ptr %e1
  %57 = call i1 @_bal_exact_eq(ptr addrspace(1) %55, ptr addrspace(1) %56), !dbg !9
  store i1 %57, ptr %3
  %58 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 3
  %60 = load ptr addrspace(1), ptr addrspace(1) %59, align 8
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = load i1, ptr %3
  %63 = zext i1 %62 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, ptr addrspace(1) null, i64 %64
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %61, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %58, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %4
  %70 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !11
  store ptr addrspace(1) null, ptr %5
  %71 = load ptr addrspace(1), ptr %e1
  %72 = load ptr addrspace(1), ptr %e1
  %73 = call i1 @_bal_exact_eq(ptr addrspace(1) %71, ptr addrspace(1) %72), !dbg !12
  %74 = xor i1 %73, 1
  store i1 %74, ptr %6
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = load i1, ptr %6
  %80 = zext i1 %79 to i64
  %81 = or i64 %80, 72057594037927936
  %82 = getelementptr i8, ptr addrspace(1) null, i64 %81
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %7
  %87 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !14
  store ptr addrspace(1) null, ptr %8
  %88 = load ptr addrspace(1), ptr %e1
  %89 = load ptr addrspace(1), ptr %e2
  %90 = call i1 @_bal_exact_eq(ptr addrspace(1) %88, ptr addrspace(1) %89), !dbg !15
  store i1 %90, ptr %9
  %91 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 3
  %93 = load ptr addrspace(1), ptr addrspace(1) %92, align 8
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = load i1, ptr %9
  %96 = zext i1 %95 to i64
  %97 = or i64 %96, 72057594037927936
  %98 = getelementptr i8, ptr addrspace(1) null, i64 %97
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %94, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %10
  %103 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !17
  store ptr addrspace(1) null, ptr %11
  %104 = load ptr addrspace(1), ptr %e1
  %105 = load ptr addrspace(1), ptr %e2
  %106 = call i1 @_bal_exact_eq(ptr addrspace(1) %104, ptr addrspace(1) %105), !dbg !18
  %107 = xor i1 %106, 1
  store i1 %107, ptr %12
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load i1, ptr %12
  %113 = zext i1 %112 to i64
  %114 = or i64 %113, 72057594037927936
  %115 = getelementptr i8, ptr addrspace(1) null, i64 %114
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %117
  %118 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 864691128455135236
  store ptr addrspace(1) %119, ptr %13
  %120 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %120), !dbg !20
  store ptr addrspace(1) null, ptr %14
  %121 = load ptr addrspace(1), ptr %e1
  store ptr addrspace(1) %121, ptr %a1
  %122 = load ptr addrspace(1), ptr %e2
  store ptr addrspace(1) %122, ptr %a2
  %123 = load ptr addrspace(1), ptr %a1
  %124 = load ptr addrspace(1), ptr %a1
  %125 = call i1 @_bal_exact_eq(ptr addrspace(1) %123, ptr addrspace(1) %124), !dbg !21
  store i1 %125, ptr %15
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = load i1, ptr %15
  %131 = zext i1 %130 to i64
  %132 = or i64 %131, 72057594037927936
  %133 = getelementptr i8, ptr addrspace(1) null, i64 %132
  %134 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %133, ptr addrspace(1) %134
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %135
  %136 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %137 = getelementptr i8, ptr addrspace(1) %136, i64 864691128455135236
  store ptr addrspace(1) %137, ptr %16
  %138 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %138), !dbg !23
  store ptr addrspace(1) null, ptr %17
  %139 = load ptr addrspace(1), ptr %a1
  %140 = load ptr addrspace(1), ptr %a1
  %141 = call i1 @_bal_exact_eq(ptr addrspace(1) %139, ptr addrspace(1) %140), !dbg !24
  %142 = xor i1 %141, 1
  store i1 %142, ptr %18
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = load i1, ptr %18
  %148 = zext i1 %147 to i64
  %149 = or i64 %148, 72057594037927936
  %150 = getelementptr i8, ptr addrspace(1) null, i64 %149
  %151 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) %150, ptr addrspace(1) %151
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %152
  %153 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %154 = getelementptr i8, ptr addrspace(1) %153, i64 864691128455135236
  store ptr addrspace(1) %154, ptr %19
  %155 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %155), !dbg !26
  store ptr addrspace(1) null, ptr %20
  %156 = load ptr addrspace(1), ptr %a1
  %157 = load ptr addrspace(1), ptr %a2
  %158 = call i1 @_bal_exact_eq(ptr addrspace(1) %156, ptr addrspace(1) %157), !dbg !27
  store i1 %158, ptr %21
  %159 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 3
  %161 = load ptr addrspace(1), ptr addrspace(1) %160, align 8
  %162 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %163 = load i1, ptr %21
  %164 = zext i1 %163 to i64
  %165 = or i64 %164, 72057594037927936
  %166 = getelementptr i8, ptr addrspace(1) null, i64 %165
  %167 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %162, i64 0, i64 0
  store ptr addrspace(1) %166, ptr addrspace(1) %167
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %159, i64 0, i32 1
  store i64 1, ptr addrspace(1) %168
  %169 = bitcast ptr addrspace(1) %159 to ptr addrspace(1)
  %170 = getelementptr i8, ptr addrspace(1) %169, i64 864691128455135236
  store ptr addrspace(1) %170, ptr %22
  %171 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %171), !dbg !29
  store ptr addrspace(1) null, ptr %23
  %172 = load ptr addrspace(1), ptr %a1
  %173 = load ptr addrspace(1), ptr %a2
  %174 = call i1 @_bal_exact_eq(ptr addrspace(1) %172, ptr addrspace(1) %173), !dbg !30
  %175 = xor i1 %174, 1
  store i1 %175, ptr %24
  %176 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 3
  %178 = load ptr addrspace(1), ptr addrspace(1) %177, align 8
  %179 = bitcast ptr addrspace(1) %178 to ptr addrspace(1)
  %180 = load i1, ptr %24
  %181 = zext i1 %180 to i64
  %182 = or i64 %181, 72057594037927936
  %183 = getelementptr i8, ptr addrspace(1) null, i64 %182
  %184 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %179, i64 0, i64 0
  store ptr addrspace(1) %183, ptr addrspace(1) %184
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 1
  store i64 1, ptr addrspace(1) %185
  %186 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %187 = getelementptr i8, ptr addrspace(1) %186, i64 864691128455135236
  store ptr addrspace(1) %187, ptr %25
  %188 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %188), !dbg !32
  store ptr addrspace(1) null, ptr %26
  %189 = load ptr addrspace(1), ptr %e1
  store ptr addrspace(1) %189, ptr %v1
  %190 = load ptr addrspace(1), ptr %e2
  store ptr addrspace(1) %190, ptr %v2
  %191 = load ptr addrspace(1), ptr %v1
  %192 = load ptr addrspace(1), ptr %v1
  %193 = call i1 @_bal_exact_eq(ptr addrspace(1) %191, ptr addrspace(1) %192), !dbg !33
  store i1 %193, ptr %27
  %194 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %195 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 3
  %196 = load ptr addrspace(1), ptr addrspace(1) %195, align 8
  %197 = bitcast ptr addrspace(1) %196 to ptr addrspace(1)
  %198 = load i1, ptr %27
  %199 = zext i1 %198 to i64
  %200 = or i64 %199, 72057594037927936
  %201 = getelementptr i8, ptr addrspace(1) null, i64 %200
  %202 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %197, i64 0, i64 0
  store ptr addrspace(1) %201, ptr addrspace(1) %202
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %194, i64 0, i32 1
  store i64 1, ptr addrspace(1) %203
  %204 = bitcast ptr addrspace(1) %194 to ptr addrspace(1)
  %205 = getelementptr i8, ptr addrspace(1) %204, i64 864691128455135236
  store ptr addrspace(1) %205, ptr %28
  %206 = load ptr addrspace(1), ptr %28
  call void @_Bb02ioprintln(ptr addrspace(1) %206), !dbg !35
  store ptr addrspace(1) null, ptr %29
  %207 = load ptr addrspace(1), ptr %v1
  %208 = load ptr addrspace(1), ptr %v1
  %209 = call i1 @_bal_exact_eq(ptr addrspace(1) %207, ptr addrspace(1) %208), !dbg !36
  %210 = xor i1 %209, 1
  store i1 %210, ptr %30
  %211 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %212 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %211, i64 0, i32 3
  %213 = load ptr addrspace(1), ptr addrspace(1) %212, align 8
  %214 = bitcast ptr addrspace(1) %213 to ptr addrspace(1)
  %215 = load i1, ptr %30
  %216 = zext i1 %215 to i64
  %217 = or i64 %216, 72057594037927936
  %218 = getelementptr i8, ptr addrspace(1) null, i64 %217
  %219 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %214, i64 0, i64 0
  store ptr addrspace(1) %218, ptr addrspace(1) %219
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %211, i64 0, i32 1
  store i64 1, ptr addrspace(1) %220
  %221 = bitcast ptr addrspace(1) %211 to ptr addrspace(1)
  %222 = getelementptr i8, ptr addrspace(1) %221, i64 864691128455135236
  store ptr addrspace(1) %222, ptr %31
  %223 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %223), !dbg !38
  store ptr addrspace(1) null, ptr %32
  %224 = load ptr addrspace(1), ptr %v1
  %225 = load ptr addrspace(1), ptr %v2
  %226 = call i1 @_bal_exact_eq(ptr addrspace(1) %224, ptr addrspace(1) %225), !dbg !39
  store i1 %226, ptr %33
  %227 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !40
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %227, i64 0, i32 3
  %229 = load ptr addrspace(1), ptr addrspace(1) %228, align 8
  %230 = bitcast ptr addrspace(1) %229 to ptr addrspace(1)
  %231 = load i1, ptr %33
  %232 = zext i1 %231 to i64
  %233 = or i64 %232, 72057594037927936
  %234 = getelementptr i8, ptr addrspace(1) null, i64 %233
  %235 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %230, i64 0, i64 0
  store ptr addrspace(1) %234, ptr addrspace(1) %235
  %236 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %227, i64 0, i32 1
  store i64 1, ptr addrspace(1) %236
  %237 = bitcast ptr addrspace(1) %227 to ptr addrspace(1)
  %238 = getelementptr i8, ptr addrspace(1) %237, i64 864691128455135236
  store ptr addrspace(1) %238, ptr %34
  %239 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %239), !dbg !41
  store ptr addrspace(1) null, ptr %35
  %240 = load ptr addrspace(1), ptr %v1
  %241 = load ptr addrspace(1), ptr %v2
  %242 = call i1 @_bal_exact_eq(ptr addrspace(1) %240, ptr addrspace(1) %241), !dbg !42
  %243 = xor i1 %242, 1
  store i1 %243, ptr %36
  %244 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %245 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %244, i64 0, i32 3
  %246 = load ptr addrspace(1), ptr addrspace(1) %245, align 8
  %247 = bitcast ptr addrspace(1) %246 to ptr addrspace(1)
  %248 = load i1, ptr %36
  %249 = zext i1 %248 to i64
  %250 = or i64 %249, 72057594037927936
  %251 = getelementptr i8, ptr addrspace(1) null, i64 %250
  %252 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %247, i64 0, i64 0
  store ptr addrspace(1) %251, ptr addrspace(1) %252
  %253 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %244, i64 0, i32 1
  store i64 1, ptr addrspace(1) %253
  %254 = bitcast ptr addrspace(1) %244 to ptr addrspace(1)
  %255 = getelementptr i8, ptr addrspace(1) %254, i64 864691128455135236
  store ptr addrspace(1) %255, ptr %37
  %256 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %256), !dbg !44
  store ptr addrspace(1) null, ptr %38
  store ptr addrspace(1) null, ptr %v2
  %257 = load ptr addrspace(1), ptr %v1
  %258 = load ptr addrspace(1), ptr %v2
  %259 = call i1 @_bal_exact_eq(ptr addrspace(1) %257, ptr addrspace(1) %258), !dbg !45
  store i1 %259, ptr %39
  %260 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !46
  %261 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %260, i64 0, i32 3
  %262 = load ptr addrspace(1), ptr addrspace(1) %261, align 8
  %263 = bitcast ptr addrspace(1) %262 to ptr addrspace(1)
  %264 = load i1, ptr %39
  %265 = zext i1 %264 to i64
  %266 = or i64 %265, 72057594037927936
  %267 = getelementptr i8, ptr addrspace(1) null, i64 %266
  %268 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %263, i64 0, i64 0
  store ptr addrspace(1) %267, ptr addrspace(1) %268
  %269 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %260, i64 0, i32 1
  store i64 1, ptr addrspace(1) %269
  %270 = bitcast ptr addrspace(1) %260 to ptr addrspace(1)
  %271 = getelementptr i8, ptr addrspace(1) %270, i64 864691128455135236
  store ptr addrspace(1) %271, ptr %40
  %272 = load ptr addrspace(1), ptr %40
  call void @_Bb02ioprintln(ptr addrspace(1) %272), !dbg !47
  store ptr addrspace(1) null, ptr %41
  %273 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223016), i64 25), !dbg !7
  store ptr addrspace(1) %273, ptr %42
  %274 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223016), i64 25), !dbg !7
  store ptr addrspace(1) %274, ptr %43
  %275 = load ptr addrspace(1), ptr %42
  %276 = load ptr addrspace(1), ptr %43
  %277 = call i1 @_bal_exact_eq(ptr addrspace(1) %275, ptr addrspace(1) %276), !dbg !48
  store i1 %277, ptr %44
  %278 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !49
  %279 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %278, i64 0, i32 3
  %280 = load ptr addrspace(1), ptr addrspace(1) %279, align 8
  %281 = bitcast ptr addrspace(1) %280 to ptr addrspace(1)
  %282 = load i1, ptr %44
  %283 = zext i1 %282 to i64
  %284 = or i64 %283, 72057594037927936
  %285 = getelementptr i8, ptr addrspace(1) null, i64 %284
  %286 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %281, i64 0, i64 0
  store ptr addrspace(1) %285, ptr addrspace(1) %286
  %287 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %278, i64 0, i32 1
  store i64 1, ptr addrspace(1) %287
  %288 = bitcast ptr addrspace(1) %278 to ptr addrspace(1)
  %289 = getelementptr i8, ptr addrspace(1) %288, i64 864691128455135236
  store ptr addrspace(1) %289, ptr %45
  %290 = load ptr addrspace(1), ptr %45
  call void @_Bb02ioprintln(ptr addrspace(1) %290), !dbg !50
  store ptr addrspace(1) null, ptr %46
  ret void
291:
  %292 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %292), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 18, scope: !5)
!10 = !DILocation(line: 7, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 18, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 18, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 18, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 13, column: 18, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 18, scope: !5)
!25 = !DILocation(line: 14, column: 15, scope: !5)
!26 = !DILocation(line: 14, column: 4, scope: !5)
!27 = !DILocation(line: 15, column: 18, scope: !5)
!28 = !DILocation(line: 15, column: 15, scope: !5)
!29 = !DILocation(line: 15, column: 4, scope: !5)
!30 = !DILocation(line: 16, column: 18, scope: !5)
!31 = !DILocation(line: 16, column: 15, scope: !5)
!32 = !DILocation(line: 16, column: 4, scope: !5)
!33 = !DILocation(line: 19, column: 18, scope: !5)
!34 = !DILocation(line: 19, column: 15, scope: !5)
!35 = !DILocation(line: 19, column: 4, scope: !5)
!36 = !DILocation(line: 20, column: 18, scope: !5)
!37 = !DILocation(line: 20, column: 15, scope: !5)
!38 = !DILocation(line: 20, column: 4, scope: !5)
!39 = !DILocation(line: 21, column: 18, scope: !5)
!40 = !DILocation(line: 21, column: 15, scope: !5)
!41 = !DILocation(line: 21, column: 4, scope: !5)
!42 = !DILocation(line: 22, column: 18, scope: !5)
!43 = !DILocation(line: 22, column: 15, scope: !5)
!44 = !DILocation(line: 22, column: 4, scope: !5)
!45 = !DILocation(line: 24, column: 18, scope: !5)
!46 = !DILocation(line: 24, column: 15, scope: !5)
!47 = !DILocation(line: 24, column: 4, scope: !5)
!48 = !DILocation(line: 25, column: 27, scope: !5)
!49 = !DILocation(line: 25, column: 15, scope: !5)
!50 = !DILocation(line: 25, column: 4, scope: !5)
