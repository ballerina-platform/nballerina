@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452209997103235072], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 3, i64 2452209997103235072], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 21, i64 2452139628359057408], align 8
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_decimal_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca ptr addrspace(1)
  %d2 = alloca ptr addrspace(1)
  %d3 = alloca ptr addrspace(1)
  %d15 = alloca ptr addrspace(1)
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
  br i1 %32, label %233, label %33
33:
  %34 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 288230376151711744
  store ptr addrspace(1) %35, ptr %d1
  %36 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 288230376151711744
  store ptr addrspace(1) %37, ptr %d2
  %38 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 288230376151711744
  store ptr addrspace(1) %39, ptr %d3
  %40 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %41 = getelementptr i8, ptr addrspace(1) %40, i64 288230376151711744
  store ptr addrspace(1) %41, ptr %d15
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = load ptr addrspace(1), ptr %d15
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %45, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %1
  %51 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %51, ptr %x
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = load ptr addrspace(1), ptr %d3
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %2
  %61 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %61, ptr %y
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 288230376151711744
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %3
  %72 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %72, ptr %z
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !12
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = load ptr addrspace(1), ptr %d1
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %77, ptr addrspace(1) %78
  %79 = load ptr addrspace(1), ptr %d2
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 1
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 2, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %4
  %84 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %84, ptr %a1
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !13
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 3
  %87 = load ptr addrspace(1), ptr addrspace(1) %86, align 8
  %88 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %89 = load ptr addrspace(1), ptr %d2
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %88, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = load ptr addrspace(1), ptr %d3
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %88, i64 0, i64 1
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 1
  store i64 2, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %5
  %96 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %96, ptr %a2
  %97 = load ptr addrspace(1), ptr %x
  %98 = load ptr addrspace(1), ptr %y
  %99 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %97, ptr addrspace(1) %98), !dbg !14
  %100 = icmp eq i64 %99, 0
  store i1 %100, ptr %6
  %101 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %102 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 3
  %103 = load ptr addrspace(1), ptr addrspace(1) %102, align 8
  %104 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %105 = load i1, ptr %6
  %106 = zext i1 %105 to i64
  %107 = or i64 %106, 72057594037927936
  %108 = getelementptr i8, ptr addrspace(1) null, i64 %107
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %104, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %101, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %101 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %7
  %113 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %114 = load ptr addrspace(1), ptr %x
  %115 = load ptr addrspace(1), ptr %y
  %116 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %114, ptr addrspace(1) %115), !dbg !17
  %117 = icmp eq i64 %116, 2
  store i1 %117, ptr %9
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = load i1, ptr %9
  %123 = zext i1 %122 to i64
  %124 = or i64 %123, 72057594037927936
  %125 = getelementptr i8, ptr addrspace(1) null, i64 %124
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 1, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %10
  %130 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %130), !dbg !19
  store ptr addrspace(1) null, ptr %11
  %131 = load ptr addrspace(1), ptr %y
  %132 = load ptr addrspace(1), ptr %x
  %133 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %131, ptr addrspace(1) %132), !dbg !20
  %134 = icmp ule i64 %133, 1
  store i1 %134, ptr %12
  %135 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 3
  %137 = load ptr addrspace(1), ptr addrspace(1) %136, align 8
  %138 = bitcast ptr addrspace(1) %137 to ptr addrspace(1)
  %139 = load i1, ptr %12
  %140 = zext i1 %139 to i64
  %141 = or i64 %140, 72057594037927936
  %142 = getelementptr i8, ptr addrspace(1) null, i64 %141
  %143 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %138, i64 0, i64 0
  store ptr addrspace(1) %142, ptr addrspace(1) %143
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %135, i64 0, i32 1
  store i64 1, ptr addrspace(1) %144
  %145 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %146 = getelementptr i8, ptr addrspace(1) %145, i64 864691128455135236
  store ptr addrspace(1) %146, ptr %13
  %147 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %147), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %148 = load ptr addrspace(1), ptr %y
  %149 = load ptr addrspace(1), ptr %x
  %150 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %148, ptr addrspace(1) %149), !dbg !23
  %151 = icmp sge i64 %150, 1
  store i1 %151, ptr %15
  %152 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !24
  %153 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 3
  %154 = load ptr addrspace(1), ptr addrspace(1) %153, align 8
  %155 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %156 = load i1, ptr %15
  %157 = zext i1 %156 to i64
  %158 = or i64 %157, 72057594037927936
  %159 = getelementptr i8, ptr addrspace(1) null, i64 %158
  %160 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %155, i64 0, i64 0
  store ptr addrspace(1) %159, ptr addrspace(1) %160
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %152, i64 0, i32 1
  store i64 1, ptr addrspace(1) %161
  %162 = bitcast ptr addrspace(1) %152 to ptr addrspace(1)
  %163 = getelementptr i8, ptr addrspace(1) %162, i64 864691128455135236
  store ptr addrspace(1) %163, ptr %16
  %164 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %164), !dbg !25
  store ptr addrspace(1) null, ptr %17
  %165 = load ptr addrspace(1), ptr %y
  %166 = load ptr addrspace(1), ptr %z
  %167 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %165, ptr addrspace(1) %166), !dbg !26
  %168 = icmp sge i64 %167, 1
  store i1 %168, ptr %18
  %169 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %170 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %169, i64 0, i32 3
  %171 = load ptr addrspace(1), ptr addrspace(1) %170, align 8
  %172 = bitcast ptr addrspace(1) %171 to ptr addrspace(1)
  %173 = load i1, ptr %18
  %174 = zext i1 %173 to i64
  %175 = or i64 %174, 72057594037927936
  %176 = getelementptr i8, ptr addrspace(1) null, i64 %175
  %177 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %172, i64 0, i64 0
  store ptr addrspace(1) %176, ptr addrspace(1) %177
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %169, i64 0, i32 1
  store i64 1, ptr addrspace(1) %178
  %179 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %180 = getelementptr i8, ptr addrspace(1) %179, i64 864691128455135236
  store ptr addrspace(1) %180, ptr %19
  %181 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %181), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %182 = load ptr addrspace(1), ptr %y
  %183 = load ptr addrspace(1), ptr %z
  %184 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %182, ptr addrspace(1) %183), !dbg !29
  %185 = icmp ule i64 %184, 1
  store i1 %185, ptr %21
  %186 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !30
  %187 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 3
  %188 = load ptr addrspace(1), ptr addrspace(1) %187, align 8
  %189 = bitcast ptr addrspace(1) %188 to ptr addrspace(1)
  %190 = load i1, ptr %21
  %191 = zext i1 %190 to i64
  %192 = or i64 %191, 72057594037927936
  %193 = getelementptr i8, ptr addrspace(1) null, i64 %192
  %194 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %189, i64 0, i64 0
  store ptr addrspace(1) %193, ptr addrspace(1) %194
  %195 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 1
  store i64 1, ptr addrspace(1) %195
  %196 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %197 = getelementptr i8, ptr addrspace(1) %196, i64 864691128455135236
  store ptr addrspace(1) %197, ptr %22
  %198 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %198), !dbg !31
  store ptr addrspace(1) null, ptr %23
  %199 = load ptr addrspace(1), ptr %a1
  %200 = load ptr addrspace(1), ptr %a2
  %201 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %199, ptr addrspace(1) %200), !dbg !32
  %202 = icmp eq i64 %201, 0
  store i1 %202, ptr %24
  %203 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !33
  %204 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %203, i64 0, i32 3
  %205 = load ptr addrspace(1), ptr addrspace(1) %204, align 8
  %206 = bitcast ptr addrspace(1) %205 to ptr addrspace(1)
  %207 = load i1, ptr %24
  %208 = zext i1 %207 to i64
  %209 = or i64 %208, 72057594037927936
  %210 = getelementptr i8, ptr addrspace(1) null, i64 %209
  %211 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %206, i64 0, i64 0
  store ptr addrspace(1) %210, ptr addrspace(1) %211
  %212 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %203, i64 0, i32 1
  store i64 1, ptr addrspace(1) %212
  %213 = bitcast ptr addrspace(1) %203 to ptr addrspace(1)
  %214 = getelementptr i8, ptr addrspace(1) %213, i64 864691128455135236
  store ptr addrspace(1) %214, ptr %25
  %215 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %215), !dbg !34
  store ptr addrspace(1) null, ptr %26
  %216 = load ptr addrspace(1), ptr %a1
  %217 = load ptr addrspace(1), ptr %a2
  %218 = call i64 @_bal_array_decimal_compare(ptr addrspace(1) %216, ptr addrspace(1) %217), !dbg !35
  %219 = icmp sge i64 %218, 1
  store i1 %219, ptr %27
  %220 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !36
  %221 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %220, i64 0, i32 3
  %222 = load ptr addrspace(1), ptr addrspace(1) %221, align 8
  %223 = bitcast ptr addrspace(1) %222 to ptr addrspace(1)
  %224 = load i1, ptr %27
  %225 = zext i1 %224 to i64
  %226 = or i64 %225, 72057594037927936
  %227 = getelementptr i8, ptr addrspace(1) null, i64 %226
  %228 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %223, i64 0, i64 0
  store ptr addrspace(1) %227, ptr addrspace(1) %228
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %220, i64 0, i32 1
  store i64 1, ptr addrspace(1) %229
  %230 = bitcast ptr addrspace(1) %220 to ptr addrspace(1)
  %231 = getelementptr i8, ptr addrspace(1) %230, i64 864691128455135236
  store ptr addrspace(1) %231, ptr %28
  %232 = load ptr addrspace(1), ptr %28
  call void @_Bb02ioprintln(ptr addrspace(1) %232), !dbg !37
  store ptr addrspace(1) null, ptr %29
  ret void
233:
  %234 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %234), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/relational5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 18, scope: !5)
!10 = !DILocation(line: 8, column: 18, scope: !5)
!11 = !DILocation(line: 9, column: 18, scope: !5)
!12 = !DILocation(line: 10, column: 19, scope: !5)
!13 = !DILocation(line: 11, column: 19, scope: !5)
!14 = !DILocation(line: 12, column: 17, scope: !5)
!15 = !DILocation(line: 12, column: 15, scope: !5)
!16 = !DILocation(line: 12, column: 4, scope: !5)
!17 = !DILocation(line: 13, column: 17, scope: !5)
!18 = !DILocation(line: 13, column: 15, scope: !5)
!19 = !DILocation(line: 13, column: 4, scope: !5)
!20 = !DILocation(line: 14, column: 17, scope: !5)
!21 = !DILocation(line: 14, column: 15, scope: !5)
!22 = !DILocation(line: 14, column: 4, scope: !5)
!23 = !DILocation(line: 15, column: 17, scope: !5)
!24 = !DILocation(line: 15, column: 15, scope: !5)
!25 = !DILocation(line: 15, column: 4, scope: !5)
!26 = !DILocation(line: 16, column: 17, scope: !5)
!27 = !DILocation(line: 16, column: 15, scope: !5)
!28 = !DILocation(line: 16, column: 4, scope: !5)
!29 = !DILocation(line: 17, column: 17, scope: !5)
!30 = !DILocation(line: 17, column: 15, scope: !5)
!31 = !DILocation(line: 17, column: 4, scope: !5)
!32 = !DILocation(line: 18, column: 18, scope: !5)
!33 = !DILocation(line: 18, column: 15, scope: !5)
!34 = !DILocation(line: 18, column: 4, scope: !5)
!35 = !DILocation(line: 19, column: 18, scope: !5)
!36 = !DILocation(line: 19, column: 15, scope: !5)
!37 = !DILocation(line: 19, column: 4, scope: !5)
