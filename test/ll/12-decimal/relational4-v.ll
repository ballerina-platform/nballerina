@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 21, i64 2452139628359057408], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 3, i64 2452209997103235072], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 37, i64 2452139628359057408], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452209997103235072], align 8
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_decimal_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %z = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %a1 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %a2 = alloca ptr addrspace(1)
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
  %27 = alloca i1
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca i8
  %31 = load ptr, ptr @_bal_stack_guard
  %32 = icmp ult ptr %30, %31
  br i1 %32, label %231, label %33
33:
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 288230376151711744
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %1
  %44 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %44, ptr %x
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 288230376151711744
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %2
  %55 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %55, ptr %y
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 288230376151711744
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %3
  %66 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %66, ptr %z
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !12
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 288230376151711744
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 288230376151711744
  %76 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 1
  store ptr addrspace(1) %75, ptr addrspace(1) %76
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 2, ptr addrspace(1) %77
  %78 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %79 = getelementptr i8, ptr addrspace(1) %78, i64 864691128455135236
  store ptr addrspace(1) %79, ptr %4
  %80 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %80, ptr %a1
  %81 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !13
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 3
  %83 = load ptr addrspace(1), ptr addrspace(1) %82, align 8
  %84 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %85 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 288230376151711744
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %84, i64 0, i64 0
  store ptr addrspace(1) %86, ptr addrspace(1) %87
  %88 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 288230376151711744
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %84, i64 0, i64 1
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 1
  store i64 2, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %5
  %94 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %94, ptr %a2
  %95 = load ptr addrspace(1), ptr %x
  %96 = load ptr addrspace(1), ptr %y
  %97 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %95, ptr addrspace(1) %96), !dbg !14
  %98 = icmp eq i64 %97, 0
  store i1 %98, ptr %6
  %99 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 3
  %101 = load ptr addrspace(1), ptr addrspace(1) %100, align 8
  %102 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %103 = load i1, ptr %6
  %104 = zext i1 %103 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, ptr addrspace(1) null, i64 %105
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %102, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %99, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %7
  %111 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %111), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %112 = load ptr addrspace(1), ptr %x
  %113 = load ptr addrspace(1), ptr %y
  %114 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %112, ptr addrspace(1) %113), !dbg !17
  %115 = icmp eq i64 %114, 2
  store i1 %115, ptr %9
  %116 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 3
  %118 = load ptr addrspace(1), ptr addrspace(1) %117, align 8
  %119 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %120 = load i1, ptr %9
  %121 = zext i1 %120 to i64
  %122 = or i64 %121, 72057594037927936
  %123 = getelementptr i8, ptr addrspace(1) null, i64 %122
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %119, i64 0, i64 0
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  store i64 1, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %10
  %128 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %128), !dbg !19
  store ptr addrspace(1) null, ptr %11
  %129 = load ptr addrspace(1), ptr %y
  %130 = load ptr addrspace(1), ptr %x
  %131 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %129, ptr addrspace(1) %130), !dbg !20
  %132 = icmp ule i64 %131, 1
  store i1 %132, ptr %12
  %133 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 3
  %135 = load ptr addrspace(1), ptr addrspace(1) %134, align 8
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = load i1, ptr %12
  %138 = zext i1 %137 to i64
  %139 = or i64 %138, 72057594037927936
  %140 = getelementptr i8, ptr addrspace(1) null, i64 %139
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  store i64 1, ptr addrspace(1) %142
  %143 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %144 = getelementptr i8, ptr addrspace(1) %143, i64 864691128455135236
  store ptr addrspace(1) %144, ptr %13
  %145 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %145), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %146 = load ptr addrspace(1), ptr %y
  %147 = load ptr addrspace(1), ptr %x
  %148 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %146, ptr addrspace(1) %147), !dbg !23
  %149 = icmp sge i64 %148, 1
  store i1 %149, ptr %15
  %150 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !24
  %151 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 3
  %152 = load ptr addrspace(1), ptr addrspace(1) %151, align 8
  %153 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %154 = load i1, ptr %15
  %155 = zext i1 %154 to i64
  %156 = or i64 %155, 72057594037927936
  %157 = getelementptr i8, ptr addrspace(1) null, i64 %156
  %158 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %153, i64 0, i64 0
  store ptr addrspace(1) %157, ptr addrspace(1) %158
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %150, i64 0, i32 1
  store i64 1, ptr addrspace(1) %159
  %160 = bitcast ptr addrspace(1) %150 to ptr addrspace(1)
  %161 = getelementptr i8, ptr addrspace(1) %160, i64 864691128455135236
  store ptr addrspace(1) %161, ptr %16
  %162 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %162), !dbg !25
  store ptr addrspace(1) null, ptr %17
  %163 = load ptr addrspace(1), ptr %y
  %164 = load ptr addrspace(1), ptr %z
  %165 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %163, ptr addrspace(1) %164), !dbg !26
  %166 = icmp sge i64 %165, 1
  store i1 %166, ptr %18
  %167 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 3
  %169 = load ptr addrspace(1), ptr addrspace(1) %168, align 8
  %170 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %171 = load i1, ptr %18
  %172 = zext i1 %171 to i64
  %173 = or i64 %172, 72057594037927936
  %174 = getelementptr i8, ptr addrspace(1) null, i64 %173
  %175 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %170, i64 0, i64 0
  store ptr addrspace(1) %174, ptr addrspace(1) %175
  %176 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 1
  store i64 1, ptr addrspace(1) %176
  %177 = bitcast ptr addrspace(1) %167 to ptr addrspace(1)
  %178 = getelementptr i8, ptr addrspace(1) %177, i64 864691128455135236
  store ptr addrspace(1) %178, ptr %19
  %179 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %179), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %180 = load ptr addrspace(1), ptr %y
  %181 = load ptr addrspace(1), ptr %z
  %182 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %180, ptr addrspace(1) %181), !dbg !29
  %183 = icmp ule i64 %182, 1
  store i1 %183, ptr %21
  %184 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !30
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 3
  %186 = load ptr addrspace(1), ptr addrspace(1) %185, align 8
  %187 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %188 = load i1, ptr %21
  %189 = zext i1 %188 to i64
  %190 = or i64 %189, 72057594037927936
  %191 = getelementptr i8, ptr addrspace(1) null, i64 %190
  %192 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %187, i64 0, i64 0
  store ptr addrspace(1) %191, ptr addrspace(1) %192
  %193 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 1
  store i64 1, ptr addrspace(1) %193
  %194 = bitcast ptr addrspace(1) %184 to ptr addrspace(1)
  %195 = getelementptr i8, ptr addrspace(1) %194, i64 864691128455135236
  store ptr addrspace(1) %195, ptr %22
  %196 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %196), !dbg !31
  store ptr addrspace(1) null, ptr %23
  %197 = load ptr addrspace(1), ptr %a1
  %198 = load ptr addrspace(1), ptr %a2
  %199 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %197, ptr addrspace(1) %198), !dbg !32
  %200 = icmp eq i64 %199, 0
  store i1 %200, ptr %24
  %201 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !33
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %201, i64 0, i32 3
  %203 = load ptr addrspace(1), ptr addrspace(1) %202, align 8
  %204 = bitcast ptr addrspace(1) %203 to ptr addrspace(1)
  %205 = load i1, ptr %24
  %206 = zext i1 %205 to i64
  %207 = or i64 %206, 72057594037927936
  %208 = getelementptr i8, ptr addrspace(1) null, i64 %207
  %209 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %204, i64 0, i64 0
  store ptr addrspace(1) %208, ptr addrspace(1) %209
  %210 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %201, i64 0, i32 1
  store i64 1, ptr addrspace(1) %210
  %211 = bitcast ptr addrspace(1) %201 to ptr addrspace(1)
  %212 = getelementptr i8, ptr addrspace(1) %211, i64 864691128455135236
  store ptr addrspace(1) %212, ptr %25
  %213 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %213), !dbg !34
  store ptr addrspace(1) null, ptr %26
  %214 = load ptr addrspace(1), ptr %a1
  %215 = load ptr addrspace(1), ptr %a2
  %216 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %214, ptr addrspace(1) %215), !dbg !35
  %217 = icmp sge i64 %216, 1
  store i1 %217, ptr %27
  %218 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !36
  %219 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %218, i64 0, i32 3
  %220 = load ptr addrspace(1), ptr addrspace(1) %219, align 8
  %221 = bitcast ptr addrspace(1) %220 to ptr addrspace(1)
  %222 = load i1, ptr %27
  %223 = zext i1 %222 to i64
  %224 = or i64 %223, 72057594037927936
  %225 = getelementptr i8, ptr addrspace(1) null, i64 %224
  %226 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %221, i64 0, i64 0
  store ptr addrspace(1) %225, ptr addrspace(1) %226
  %227 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %218, i64 0, i32 1
  store i64 1, ptr addrspace(1) %227
  %228 = bitcast ptr addrspace(1) %218 to ptr addrspace(1)
  %229 = getelementptr i8, ptr addrspace(1) %228, i64 864691128455135236
  store ptr addrspace(1) %229, ptr %28
  %230 = load ptr addrspace(1), ptr %28
  call void @_Bb02ioprintln(ptr addrspace(1) %230), !dbg !37
  store ptr addrspace(1) null, ptr %29
  ret void
231:
  %232 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %232), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/relational4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 18, scope: !5)
!10 = !DILocation(line: 4, column: 18, scope: !5)
!11 = !DILocation(line: 5, column: 18, scope: !5)
!12 = !DILocation(line: 6, column: 19, scope: !5)
!13 = !DILocation(line: 7, column: 19, scope: !5)
!14 = !DILocation(line: 8, column: 17, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 17, scope: !5)
!18 = !DILocation(line: 9, column: 15, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 10, column: 17, scope: !5)
!21 = !DILocation(line: 10, column: 15, scope: !5)
!22 = !DILocation(line: 10, column: 4, scope: !5)
!23 = !DILocation(line: 11, column: 17, scope: !5)
!24 = !DILocation(line: 11, column: 15, scope: !5)
!25 = !DILocation(line: 11, column: 4, scope: !5)
!26 = !DILocation(line: 12, column: 17, scope: !5)
!27 = !DILocation(line: 12, column: 15, scope: !5)
!28 = !DILocation(line: 12, column: 4, scope: !5)
!29 = !DILocation(line: 13, column: 17, scope: !5)
!30 = !DILocation(line: 13, column: 15, scope: !5)
!31 = !DILocation(line: 13, column: 4, scope: !5)
!32 = !DILocation(line: 14, column: 18, scope: !5)
!33 = !DILocation(line: 14, column: 15, scope: !5)
!34 = !DILocation(line: 14, column: 4, scope: !5)
!35 = !DILocation(line: 15, column: 18, scope: !5)
!36 = !DILocation(line: 15, column: 15, scope: !5)
!37 = !DILocation(line: 15, column: 4, scope: !5)
