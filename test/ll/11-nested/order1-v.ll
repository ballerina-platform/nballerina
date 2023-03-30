@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_list_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_eq(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %c = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %d = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i1
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %e = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %f = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
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
  %39 = alloca i8
  %40 = load ptr, ptr @_bal_stack_guard
  %41 = icmp ult ptr %39, %40
  br i1 %41, label %320, label %42
42:
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = getelementptr inbounds [0 x i64], ptr addrspace(1) %46, i64 0, i64 0
  store i64 1, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %1
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = getelementptr inbounds [0 x i64], ptr addrspace(1) %54, i64 0, i64 0
  store i64 2, ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %2
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !11
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = load ptr addrspace(1), ptr %1
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) %63, ptr addrspace(1) %64
  %65 = load ptr addrspace(1), ptr %2
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 1
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 2, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %3
  %70 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %70, ptr %a
  %71 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 3
  %73 = load ptr addrspace(1), ptr addrspace(1) %72, align 8
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = getelementptr inbounds [0 x i64], ptr addrspace(1) %74, i64 0, i64 0
  store i64 1, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %71, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %4
  %79 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = getelementptr inbounds [0 x i64], ptr addrspace(1) %82, i64 0, i64 0
  store i64 3, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %5
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !14
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = load ptr addrspace(1), ptr %4
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = load ptr addrspace(1), ptr %5
  %94 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 1
  store ptr addrspace(1) %93, ptr addrspace(1) %94
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 2, ptr addrspace(1) %95
  %96 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %97 = getelementptr i8, ptr addrspace(1) %96, i64 864691128455135236
  store ptr addrspace(1) %97, ptr %6
  %98 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %98, ptr %b
  %99 = load ptr addrspace(1), ptr %a
  %100 = load ptr addrspace(1), ptr %b
  %101 = call i64 @_bal_array_list_compare(ptr addrspace(1) %99, ptr addrspace(1) %100), !dbg !15
  %102 = icmp eq i64 %101, 0
  store i1 %102, ptr %7
  %103 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !16
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 3
  %105 = load ptr addrspace(1), ptr addrspace(1) %104, align 8
  %106 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %107 = load i1, ptr %7
  %108 = zext i1 %107 to i64
  %109 = or i64 %108, 72057594037927936
  %110 = getelementptr i8, ptr addrspace(1) null, i64 %109
  %111 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %106, i64 0, i64 0
  store ptr addrspace(1) %110, ptr addrspace(1) %111
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 1
  store i64 1, ptr addrspace(1) %112
  %113 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %114 = getelementptr i8, ptr addrspace(1) %113, i64 864691128455135236
  store ptr addrspace(1) %114, ptr %8
  %115 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %115), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %116 = load ptr addrspace(1), ptr %a
  %117 = load ptr addrspace(1), ptr %b
  %118 = call i64 @_bal_array_list_compare(ptr addrspace(1) %116, ptr addrspace(1) %117), !dbg !18
  %119 = icmp eq i64 %118, 2
  store i1 %119, ptr %10
  %120 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !19
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 3
  %122 = load ptr addrspace(1), ptr addrspace(1) %121, align 8
  %123 = bitcast ptr addrspace(1) %122 to ptr addrspace(1)
  %124 = load i1, ptr %10
  %125 = zext i1 %124 to i64
  %126 = or i64 %125, 72057594037927936
  %127 = getelementptr i8, ptr addrspace(1) null, i64 %126
  %128 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %123, i64 0, i64 0
  store ptr addrspace(1) %127, ptr addrspace(1) %128
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %120, i64 0, i32 1
  store i64 1, ptr addrspace(1) %129
  %130 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %131 = getelementptr i8, ptr addrspace(1) %130, i64 864691128455135236
  store ptr addrspace(1) %131, ptr %11
  %132 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %132), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %133 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 3
  %135 = load ptr addrspace(1), ptr addrspace(1) %134, align 8
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = getelementptr inbounds [0 x i64], ptr addrspace(1) %136, i64 0, i64 0
  store i64 0, ptr addrspace(1) %137
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  store i64 1, ptr addrspace(1) %138
  %139 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %140 = getelementptr i8, ptr addrspace(1) %139, i64 864691128455135236
  store ptr addrspace(1) %140, ptr %13
  %141 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %141, i64 0, i32 3
  %143 = load ptr addrspace(1), ptr addrspace(1) %142, align 8
  %144 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %145 = getelementptr inbounds [0 x i64], ptr addrspace(1) %144, i64 0, i64 0
  store i64 -1, ptr addrspace(1) %145
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %141, i64 0, i32 1
  store i64 1, ptr addrspace(1) %146
  %147 = bitcast ptr addrspace(1) %141 to ptr addrspace(1)
  %148 = getelementptr i8, ptr addrspace(1) %147, i64 864691128455135236
  store ptr addrspace(1) %148, ptr %14
  %149 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 2), !dbg !23
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 3
  %151 = load ptr addrspace(1), ptr addrspace(1) %150, align 8
  %152 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %153 = load ptr addrspace(1), ptr %13
  %154 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %152, i64 0, i64 0
  store ptr addrspace(1) %153, ptr addrspace(1) %154
  %155 = load ptr addrspace(1), ptr %14
  %156 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %152, i64 0, i64 1
  store ptr addrspace(1) %155, ptr addrspace(1) %156
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 1
  store i64 2, ptr addrspace(1) %157
  %158 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %159 = getelementptr i8, ptr addrspace(1) %158, i64 864691128455135236
  store ptr addrspace(1) %159, ptr %15
  %160 = load ptr addrspace(1), ptr %15
  store ptr addrspace(1) %160, ptr %c
  %161 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %162 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 3
  %163 = load ptr addrspace(1), ptr addrspace(1) %162, align 8
  %164 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %165 = getelementptr inbounds [0 x i64], ptr addrspace(1) %164, i64 0, i64 0
  store i64 0, ptr addrspace(1) %165
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 1
  store i64 1, ptr addrspace(1) %166
  %167 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %168 = getelementptr i8, ptr addrspace(1) %167, i64 864691128455135236
  store ptr addrspace(1) %168, ptr %16
  %169 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %170 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %169, i64 0, i32 3
  %171 = load ptr addrspace(1), ptr addrspace(1) %170, align 8
  %172 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %173 = getelementptr inbounds [0 x i64], ptr addrspace(1) %172, i64 0, i64 0
  store i64 -2, ptr addrspace(1) %173
  %174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %169, i64 0, i32 1
  store i64 1, ptr addrspace(1) %174
  %175 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %176 = getelementptr i8, ptr addrspace(1) %175, i64 864691128455135236
  store ptr addrspace(1) %176, ptr %17
  %177 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !26
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 3
  %179 = load ptr addrspace(1), ptr addrspace(1) %178, align 8
  %180 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %181 = load ptr addrspace(1), ptr %16
  %182 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %180, i64 0, i64 0
  store ptr addrspace(1) %181, ptr addrspace(1) %182
  %183 = load ptr addrspace(1), ptr %17
  %184 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %180, i64 0, i64 1
  store ptr addrspace(1) %183, ptr addrspace(1) %184
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 1
  store i64 2, ptr addrspace(1) %185
  %186 = bitcast ptr addrspace(1) %177 to ptr addrspace(1)
  %187 = getelementptr i8, ptr addrspace(1) %186, i64 864691128455135236
  store ptr addrspace(1) %187, ptr %18
  %188 = load ptr addrspace(1), ptr %18
  store ptr addrspace(1) %188, ptr %d
  %189 = load ptr addrspace(1), ptr %c
  %190 = load ptr addrspace(1), ptr %d
  %191 = call i64 @_bal_array_list_compare(ptr addrspace(1) %189, ptr addrspace(1) %190), !dbg !27
  %192 = icmp eq i64 %191, 0
  store i1 %192, ptr %19
  %193 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !28
  %194 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %193, i64 0, i32 3
  %195 = load ptr addrspace(1), ptr addrspace(1) %194, align 8
  %196 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %197 = load i1, ptr %19
  %198 = zext i1 %197 to i64
  %199 = or i64 %198, 72057594037927936
  %200 = getelementptr i8, ptr addrspace(1) null, i64 %199
  %201 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %196, i64 0, i64 0
  store ptr addrspace(1) %200, ptr addrspace(1) %201
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %193, i64 0, i32 1
  store i64 1, ptr addrspace(1) %202
  %203 = bitcast ptr addrspace(1) %193 to ptr addrspace(1)
  %204 = getelementptr i8, ptr addrspace(1) %203, i64 864691128455135236
  store ptr addrspace(1) %204, ptr %20
  %205 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %205), !dbg !29
  store ptr addrspace(1) null, ptr %21
  %206 = load ptr addrspace(1), ptr %c
  %207 = load ptr addrspace(1), ptr %d
  %208 = call i64 @_bal_array_list_compare(ptr addrspace(1) %206, ptr addrspace(1) %207), !dbg !30
  %209 = icmp eq i64 %208, 2
  store i1 %209, ptr %22
  %210 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !31
  %211 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %210, i64 0, i32 3
  %212 = load ptr addrspace(1), ptr addrspace(1) %211, align 8
  %213 = bitcast ptr addrspace(1) %212 to ptr addrspace(1)
  %214 = load i1, ptr %22
  %215 = zext i1 %214 to i64
  %216 = or i64 %215, 72057594037927936
  %217 = getelementptr i8, ptr addrspace(1) null, i64 %216
  %218 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %213, i64 0, i64 0
  store ptr addrspace(1) %217, ptr addrspace(1) %218
  %219 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %210, i64 0, i32 1
  store i64 1, ptr addrspace(1) %219
  %220 = bitcast ptr addrspace(1) %210 to ptr addrspace(1)
  %221 = getelementptr i8, ptr addrspace(1) %220, i64 864691128455135236
  store ptr addrspace(1) %221, ptr %23
  %222 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %222), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %223 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %224 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %223, i64 0, i32 3
  %225 = load ptr addrspace(1), ptr addrspace(1) %224, align 8
  %226 = bitcast ptr addrspace(1) %225 to ptr addrspace(1)
  %227 = getelementptr inbounds [0 x i64], ptr addrspace(1) %226, i64 0, i64 0
  store i64 1, ptr addrspace(1) %227
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %223, i64 0, i32 1
  store i64 1, ptr addrspace(1) %228
  %229 = bitcast ptr addrspace(1) %223 to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 864691128455135236
  store ptr addrspace(1) %230, ptr %25
  %231 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 2), !dbg !34
  %232 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %231, i64 0, i32 3
  %233 = load ptr addrspace(1), ptr addrspace(1) %232, align 8
  %234 = bitcast ptr addrspace(1) %233 to ptr addrspace(1)
  %235 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %234, i64 0, i64 0
  store ptr addrspace(1) null, ptr addrspace(1) %235
  %236 = load ptr addrspace(1), ptr %25
  %237 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %234, i64 0, i64 1
  store ptr addrspace(1) %236, ptr addrspace(1) %237
  %238 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %231, i64 0, i32 1
  store i64 2, ptr addrspace(1) %238
  %239 = bitcast ptr addrspace(1) %231 to ptr addrspace(1)
  %240 = getelementptr i8, ptr addrspace(1) %239, i64 864691128455135236
  store ptr addrspace(1) %240, ptr %26
  %241 = load ptr addrspace(1), ptr %26
  store ptr addrspace(1) %241, ptr %e
  %242 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !35
  %243 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %242, i64 0, i32 3
  %244 = load ptr addrspace(1), ptr addrspace(1) %243, align 8
  %245 = bitcast ptr addrspace(1) %244 to ptr addrspace(1)
  %246 = getelementptr inbounds [0 x i64], ptr addrspace(1) %245, i64 0, i64 0
  store i64 0, ptr addrspace(1) %246
  %247 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %242, i64 0, i32 1
  store i64 1, ptr addrspace(1) %247
  %248 = bitcast ptr addrspace(1) %242 to ptr addrspace(1)
  %249 = getelementptr i8, ptr addrspace(1) %248, i64 864691128455135236
  store ptr addrspace(1) %249, ptr %27
  %250 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %251 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %250, i64 0, i32 3
  %252 = load ptr addrspace(1), ptr addrspace(1) %251, align 8
  %253 = bitcast ptr addrspace(1) %252 to ptr addrspace(1)
  %254 = getelementptr inbounds [0 x i64], ptr addrspace(1) %253, i64 0, i64 0
  store i64 1, ptr addrspace(1) %254
  %255 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %250, i64 0, i32 1
  store i64 1, ptr addrspace(1) %255
  %256 = bitcast ptr addrspace(1) %250 to ptr addrspace(1)
  %257 = getelementptr i8, ptr addrspace(1) %256, i64 864691128455135236
  store ptr addrspace(1) %257, ptr %28
  %258 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !37
  %259 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 3
  %260 = load ptr addrspace(1), ptr addrspace(1) %259, align 8
  %261 = bitcast ptr addrspace(1) %260 to ptr addrspace(1)
  %262 = load ptr addrspace(1), ptr %27
  %263 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %261, i64 0, i64 0
  store ptr addrspace(1) %262, ptr addrspace(1) %263
  %264 = load ptr addrspace(1), ptr %28
  %265 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %261, i64 0, i64 1
  store ptr addrspace(1) %264, ptr addrspace(1) %265
  %266 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 1
  store i64 2, ptr addrspace(1) %266
  %267 = bitcast ptr addrspace(1) %258 to ptr addrspace(1)
  %268 = getelementptr i8, ptr addrspace(1) %267, i64 864691128455135236
  store ptr addrspace(1) %268, ptr %29
  %269 = load ptr addrspace(1), ptr %29
  store ptr addrspace(1) %269, ptr %f
  %270 = load ptr addrspace(1), ptr %e
  %271 = load ptr addrspace(1), ptr %f
  %272 = call i1 @_bal_eq(ptr addrspace(1) %270, ptr addrspace(1) %271), !dbg !38
  store i1 %272, ptr %30
  %273 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !39
  %274 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %273, i64 0, i32 3
  %275 = load ptr addrspace(1), ptr addrspace(1) %274, align 8
  %276 = bitcast ptr addrspace(1) %275 to ptr addrspace(1)
  %277 = load i1, ptr %30
  %278 = zext i1 %277 to i64
  %279 = or i64 %278, 72057594037927936
  %280 = getelementptr i8, ptr addrspace(1) null, i64 %279
  %281 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %276, i64 0, i64 0
  store ptr addrspace(1) %280, ptr addrspace(1) %281
  %282 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %273, i64 0, i32 1
  store i64 1, ptr addrspace(1) %282
  %283 = bitcast ptr addrspace(1) %273 to ptr addrspace(1)
  %284 = getelementptr i8, ptr addrspace(1) %283, i64 864691128455135236
  store ptr addrspace(1) %284, ptr %31
  %285 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %285), !dbg !40
  store ptr addrspace(1) null, ptr %32
  %286 = load ptr addrspace(1), ptr %e
  %287 = load ptr addrspace(1), ptr %f
  %288 = call i64 @_bal_array_list_compare(ptr addrspace(1) %286, ptr addrspace(1) %287), !dbg !41
  %289 = icmp eq i64 %288, 0
  store i1 %289, ptr %33
  %290 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !42
  %291 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 3
  %292 = load ptr addrspace(1), ptr addrspace(1) %291, align 8
  %293 = bitcast ptr addrspace(1) %292 to ptr addrspace(1)
  %294 = load i1, ptr %33
  %295 = zext i1 %294 to i64
  %296 = or i64 %295, 72057594037927936
  %297 = getelementptr i8, ptr addrspace(1) null, i64 %296
  %298 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %293, i64 0, i64 0
  store ptr addrspace(1) %297, ptr addrspace(1) %298
  %299 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 1
  store i64 1, ptr addrspace(1) %299
  %300 = bitcast ptr addrspace(1) %290 to ptr addrspace(1)
  %301 = getelementptr i8, ptr addrspace(1) %300, i64 864691128455135236
  store ptr addrspace(1) %301, ptr %34
  %302 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %302), !dbg !43
  store ptr addrspace(1) null, ptr %35
  %303 = load ptr addrspace(1), ptr %e
  %304 = load ptr addrspace(1), ptr %f
  %305 = call i64 @_bal_array_list_compare(ptr addrspace(1) %303, ptr addrspace(1) %304), !dbg !44
  %306 = icmp eq i64 %305, 2
  store i1 %306, ptr %36
  %307 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !45
  %308 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 3
  %309 = load ptr addrspace(1), ptr addrspace(1) %308, align 8
  %310 = bitcast ptr addrspace(1) %309 to ptr addrspace(1)
  %311 = load i1, ptr %36
  %312 = zext i1 %311 to i64
  %313 = or i64 %312, 72057594037927936
  %314 = getelementptr i8, ptr addrspace(1) null, i64 %313
  %315 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %310, i64 0, i64 0
  store ptr addrspace(1) %314, ptr addrspace(1) %315
  %316 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 1
  store i64 1, ptr addrspace(1) %316
  %317 = bitcast ptr addrspace(1) %307 to ptr addrspace(1)
  %318 = getelementptr i8, ptr addrspace(1) %317, i64 864691128455135236
  store ptr addrspace(1) %318, ptr %37
  %319 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %319), !dbg !46
  store ptr addrspace(1) null, ptr %38
  ret void
320:
  %321 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %321), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/order1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 17, scope: !5)
!10 = !DILocation(line: 4, column: 22, scope: !5)
!11 = !DILocation(line: 4, column: 16, scope: !5)
!12 = !DILocation(line: 5, column: 17, scope: !5)
!13 = !DILocation(line: 5, column: 22, scope: !5)
!14 = !DILocation(line: 5, column: 16, scope: !5)
!15 = !DILocation(line: 6, column: 17, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 4, scope: !5)
!18 = !DILocation(line: 7, column: 17, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 18, scope: !5)
!22 = !DILocation(line: 9, column: 23, scope: !5)
!23 = !DILocation(line: 9, column: 17, scope: !5)
!24 = !DILocation(line: 10, column: 17, scope: !5)
!25 = !DILocation(line: 10, column: 22, scope: !5)
!26 = !DILocation(line: 10, column: 16, scope: !5)
!27 = !DILocation(line: 11, column: 17, scope: !5)
!28 = !DILocation(line: 11, column: 15, scope: !5)
!29 = !DILocation(line: 11, column: 4, scope: !5)
!30 = !DILocation(line: 12, column: 17, scope: !5)
!31 = !DILocation(line: 12, column: 15, scope: !5)
!32 = !DILocation(line: 12, column: 4, scope: !5)
!33 = !DILocation(line: 14, column: 22, scope: !5)
!34 = !DILocation(line: 14, column: 17, scope: !5)
!35 = !DILocation(line: 15, column: 17, scope: !5)
!36 = !DILocation(line: 15, column: 22, scope: !5)
!37 = !DILocation(line: 15, column: 16, scope: !5)
!38 = !DILocation(line: 16, column: 17, scope: !5)
!39 = !DILocation(line: 16, column: 15, scope: !5)
!40 = !DILocation(line: 16, column: 4, scope: !5)
!41 = !DILocation(line: 17, column: 17, scope: !5)
!42 = !DILocation(line: 17, column: 15, scope: !5)
!43 = !DILocation(line: 17, column: 4, scope: !5)
!44 = !DILocation(line: 18, column: 17, scope: !5)
!45 = !DILocation(line: 18, column: 15, scope: !5)
!46 = !DILocation(line: 18, column: 4, scope: !5)
