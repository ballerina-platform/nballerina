@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %len = alloca i64
  %a = alloca i64
  %m = alloca i64
  %x = alloca i64
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %s = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i64
  %i.1 = alloca i64
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca i1
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i1
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca i8
  %34 = load ptr, ptr @_bal_stack_guard
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %149, label %36
36:
  store i64 1000000, ptr %len
  store i64 16807, ptr %a
  store i64 2147483647, ptr %m
  store i64 17, ptr %x
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !15
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr i8, ptr addrspace(1) %38, i64 864691128455135236
  store ptr addrspace(1) %39, ptr %1
  %40 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %40, ptr %v
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load i64, ptr %len
  %46 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %45), !dbg !17
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %2
  %51 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !18
  store ptr addrspace(1) null, ptr %3
  store i64 0, ptr %i
  br label %52
52:
  %53 = load i64, ptr %i
  %54 = load i64, ptr %len
  %55 = icmp slt i64 %53, %54
  store i1 %55, ptr %4
  %56 = load i1, ptr %4
  br i1 %56, label %83, label %57
57:
  %58 = load ptr addrspace(1), ptr %v
  %59 = call ptr addrspace(1) @_B_sort(ptr addrspace(1) %58), !dbg !19
  store ptr addrspace(1) %59, ptr %9
  %60 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %60, ptr %s
  %61 = load ptr addrspace(1), ptr %s
  %62 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %61), !dbg !20
  %63 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %62), !dbg !21
  store i64 %63, ptr %10
  %64 = load i64, ptr %10
  %65 = load i64, ptr %len
  %66 = icmp eq i64 %64, %65
  store i1 %66, ptr %11
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = load i1, ptr %11
  %72 = zext i1 %71 to i64
  %73 = or i64 %72, 72057594037927936
  %74 = getelementptr i8, ptr addrspace(1) null, i64 %73
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %12
  %79 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %79), !dbg !23
  store ptr addrspace(1) null, ptr %13
  %80 = load i64, ptr %len
  %81 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %80, i64 1)
  %82 = extractvalue {i64, i1} %81, 1
  br i1 %82, label %153, label %151
83:
  %84 = load ptr addrspace(1), ptr %v
  %85 = load i64, ptr %x
  %86 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %85), !dbg !36
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %84, ptr addrspace(1) %86), !dbg !37
  store ptr addrspace(1) null, ptr %5
  %87 = load i64, ptr %x
  %88 = load i64, ptr %a
  %89 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %87, i64 %88)
  %90 = extractvalue {i64, i1} %89, 1
  br i1 %90, label %228, label %223
91:
  %92 = load i64, ptr %i
  %93 = add nsw i64 %92, 1
  store i64 %93, ptr %8
  %94 = load i64, ptr %8
  store i64 %94, ptr %i
  br label %52
95:
  %96 = load i64, ptr %i.1
  %97 = load i64, ptr %14
  %98 = icmp slt i64 %96, %97
  store i1 %98, ptr %15
  %99 = load i1, ptr %15
  br i1 %99, label %121, label %100
100:
  %101 = load ptr addrspace(1), ptr %v
  %102 = call i64 @_B_checksum(ptr addrspace(1) %101), !dbg !24
  store i64 %102, ptr %27
  %103 = load ptr addrspace(1), ptr %s
  %104 = call i64 @_B_checksum(ptr addrspace(1) %103), !dbg !25
  store i64 %104, ptr %28
  %105 = load i64, ptr %27
  %106 = load i64, ptr %28
  %107 = icmp eq i64 %105, %106
  store i1 %107, ptr %29
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load i1, ptr %29
  %113 = zext i1 %112 to i64
  %114 = or i64 %113, 72057594037927936
  %115 = getelementptr i8, ptr addrspace(1) null, i64 %114
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %117
  %118 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 864691128455135236
  store ptr addrspace(1) %119, ptr %30
  %120 = load ptr addrspace(1), ptr %30
  call void @_Bb02ioprintln(ptr addrspace(1) %120), !dbg !27
  store ptr addrspace(1) null, ptr %31
  ret void
121:
  %122 = load ptr addrspace(1), ptr %s
  %123 = load i64, ptr %i.1
  %124 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %122, i64 72057594037927928)
  %125 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %126 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 1
  %127 = load i64, ptr addrspace(1) %126, align 8
  %128 = icmp ult i64 %123, %127
  br i1 %128, label %155, label %165
129:
  %130 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !34
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 3
  %132 = load ptr addrspace(1), ptr addrspace(1) %131, align 8
  %133 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %134 = zext i1 0 to i64
  %135 = or i64 %134, 72057594037927936
  %136 = getelementptr i8, ptr addrspace(1) null, i64 %135
  %137 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %133, i64 0, i64 0
  store ptr addrspace(1) %136, ptr addrspace(1) %137
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %130, i64 0, i32 1
  store i64 1, ptr addrspace(1) %138
  %139 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %140 = getelementptr i8, ptr addrspace(1) %139, i64 864691128455135236
  store ptr addrspace(1) %140, ptr %24
  %141 = load ptr addrspace(1), ptr %24
  call void @_Bb02ioprintln(ptr addrspace(1) %141), !dbg !35
  store ptr addrspace(1) null, ptr %25
  br label %142
142:
  br label %143
143:
  %144 = load i64, ptr %i.1
  %145 = add nsw i64 %144, 1
  store i64 %145, ptr %26
  %146 = load i64, ptr %26
  store i64 %146, ptr %i.1
  br label %95
147:
  %148 = load ptr addrspace(1), ptr %32
  call void @_bal_panic(ptr addrspace(1) %148), !dbg !38
  unreachable
149:
  %150 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %150), !dbg !14
  unreachable
151:
  %152 = extractvalue {i64, i1} %81, 0
  store i64 %152, ptr %14
  store i64 0, ptr %i.1
  br label %95
153:
  %154 = call ptr addrspace(1) @_bal_panic_construct(i64 4865), !dbg !13
  store ptr addrspace(1) %154, ptr %32
  br label %147
155:
  %156 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 0
  %157 = load ptr, ptr addrspace(1) %156, align 8
  %158 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %157, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = call ptr addrspace(1) %159(ptr addrspace(1) %122, i64 %123)
  %161 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %122, ptr addrspace(1) %160), !dbg !28
  store ptr addrspace(1) %161, ptr %16
  %162 = load ptr addrspace(1), ptr %16
  %163 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %162), !dbg !29
  %164 = extractvalue {ptr addrspace(1), i1} %163, 1
  br i1 %164, label %174, label %167
165:
  %166 = call ptr addrspace(1) @_bal_panic_construct(i64 5125), !dbg !13
  store ptr addrspace(1) %166, ptr %32
  br label %147
167:
  %168 = extractvalue {ptr addrspace(1), i1} %163, 0
  store ptr addrspace(1) %168, ptr %17
  %169 = load ptr addrspace(1), ptr %17
  %170 = addrspacecast ptr addrspace(1) %169 to ptr
  %171 = ptrtoint ptr %170 to i64
  %172 = and i64 %171, 2233785415175766016
  %173 = icmp eq i64 %172, 144115188075855872
  br i1 %173, label %176, label %181
174:
  %175 = call ptr addrspace(1) @_bal_panic_construct(i64 5121), !dbg !13
  store ptr addrspace(1) %175, ptr %32
  br label %147
176:
  %177 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %169), !dbg !30
  store i64 %177, ptr %18
  %178 = load i64, ptr %i.1
  %179 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %178, i64 1)
  %180 = extractvalue {i64, i1} %179, 1
  br i1 %180, label %192, label %183
181:
  %182 = call ptr addrspace(1) @_bal_panic_construct(i64 5123), !dbg !13
  store ptr addrspace(1) %182, ptr %32
  br label %147
183:
  %184 = extractvalue {i64, i1} %179, 0
  store i64 %184, ptr %19
  %185 = load ptr addrspace(1), ptr %s
  %186 = load i64, ptr %19
  %187 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %185, i64 72057594037927928)
  %188 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %189 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %188, i64 0, i32 1
  %190 = load i64, ptr addrspace(1) %189, align 8
  %191 = icmp ult i64 %186, %190
  br i1 %191, label %194, label %204
192:
  %193 = call ptr addrspace(1) @_bal_panic_construct(i64 5121), !dbg !13
  store ptr addrspace(1) %193, ptr %32
  br label %147
194:
  %195 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %188, i64 0, i32 0
  %196 = load ptr, ptr addrspace(1) %195, align 8
  %197 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %196, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8
  %199 = call ptr addrspace(1) %198(ptr addrspace(1) %185, i64 %186)
  %200 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %185, ptr addrspace(1) %199), !dbg !31
  store ptr addrspace(1) %200, ptr %20
  %201 = load ptr addrspace(1), ptr %20
  %202 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %201), !dbg !32
  %203 = extractvalue {ptr addrspace(1), i1} %202, 1
  br i1 %203, label %213, label %206
204:
  %205 = call ptr addrspace(1) @_bal_panic_construct(i64 5125), !dbg !13
  store ptr addrspace(1) %205, ptr %32
  br label %147
206:
  %207 = extractvalue {ptr addrspace(1), i1} %202, 0
  store ptr addrspace(1) %207, ptr %21
  %208 = load ptr addrspace(1), ptr %21
  %209 = addrspacecast ptr addrspace(1) %208 to ptr
  %210 = ptrtoint ptr %209 to i64
  %211 = and i64 %210, 2233785415175766016
  %212 = icmp eq i64 %211, 144115188075855872
  br i1 %212, label %215, label %221
213:
  %214 = call ptr addrspace(1) @_bal_panic_construct(i64 5121), !dbg !13
  store ptr addrspace(1) %214, ptr %32
  br label %147
215:
  %216 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %208), !dbg !33
  store i64 %216, ptr %22
  %217 = load i64, ptr %18
  %218 = load i64, ptr %22
  %219 = icmp sgt i64 %217, %218
  store i1 %219, ptr %23
  %220 = load i1, ptr %23
  br i1 %220, label %129, label %142
221:
  %222 = call ptr addrspace(1) @_bal_panic_construct(i64 5123), !dbg !13
  store ptr addrspace(1) %222, ptr %32
  br label %147
223:
  %224 = extractvalue {i64, i1} %89, 0
  store i64 %224, ptr %6
  %225 = load i64, ptr %6
  %226 = load i64, ptr %m
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %230, label %232
228:
  %229 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !13
  store ptr addrspace(1) %229, ptr %32
  br label %147
230:
  %231 = call ptr addrspace(1) @_bal_panic_construct(i64 3842), !dbg !13
  store ptr addrspace(1) %231, ptr %32
  br label %147
232:
  %233 = icmp eq i64 %225, -9223372036854775808
  %234 = icmp eq i64 %226, -1
  %235 = and i1 %233, %234
  br i1 %235, label %238, label %236
236:
  %237 = srem i64 %225, %226
  store i64 %237, ptr %7
  br label %239
238:
  store i64 0, ptr %7
  br label %239
239:
  %240 = load i64, ptr %7
  store i64 %240, ptr %x
  br label %91
}
define internal i64 @_B_checksum(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %38, label %13
13:
  store ptr addrspace(1) %0, ptr %v
  store i64 0, ptr %c
  %14 = load ptr addrspace(1), ptr %v
  %15 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %14), !dbg !41
  %16 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %15), !dbg !42
  store i64 %16, ptr %2
  store i64 0, ptr %i
  br label %17
17:
  %18 = load i64, ptr %i
  %19 = load i64, ptr %2
  %20 = icmp slt i64 %18, %19
  store i1 %20, ptr %3
  %21 = load i1, ptr %3
  br i1 %21, label %24, label %22
22:
  %23 = load i64, ptr %c
  ret i64 %23
24:
  %25 = load ptr addrspace(1), ptr %v
  %26 = load i64, ptr %i
  %27 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 72057594037927928)
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  %30 = load i64, ptr addrspace(1) %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %40, label %50
32:
  %33 = load i64, ptr %i
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %8
  %35 = load i64, ptr %8
  store i64 %35, ptr %i
  br label %17
36:
  %37 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !46
  unreachable
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 6916), !dbg !39
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !40
  unreachable
40:
  %41 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 0
  %42 = load ptr, ptr addrspace(1) %41, align 8
  %43 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = call ptr addrspace(1) %44(ptr addrspace(1) %25, i64 %26)
  %46 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %25, ptr addrspace(1) %45), !dbg !43
  store ptr addrspace(1) %46, ptr %4
  %47 = load ptr addrspace(1), ptr %4
  %48 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %47), !dbg !44
  %49 = extractvalue {ptr addrspace(1), i1} %48, 1
  br i1 %49, label %59, label %52
50:
  %51 = call ptr addrspace(1) @_bal_panic_construct(i64 7685), !dbg !39
  store ptr addrspace(1) %51, ptr %9
  br label %36
52:
  %53 = extractvalue {ptr addrspace(1), i1} %48, 0
  store ptr addrspace(1) %53, ptr %5
  %54 = load ptr addrspace(1), ptr %5
  %55 = addrspacecast ptr addrspace(1) %54 to ptr
  %56 = ptrtoint ptr %55 to i64
  %57 = and i64 %56, 2233785415175766016
  %58 = icmp eq i64 %57, 144115188075855872
  br i1 %58, label %61, label %67
59:
  %60 = call ptr addrspace(1) @_bal_panic_construct(i64 7681), !dbg !39
  store ptr addrspace(1) %60, ptr %9
  br label %36
61:
  %62 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %54), !dbg !45
  store i64 %62, ptr %6
  %63 = load i64, ptr %c
  %64 = load i64, ptr %6
  %65 = xor i64 %63, %64
  store i64 %65, ptr %7
  %66 = load i64, ptr %7
  store i64 %66, ptr %c
  br label %32
67:
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 7683), !dbg !39
  store ptr addrspace(1) %68, ptr %9
  br label %36
}
define internal ptr addrspace(1) @_B_sort(ptr addrspace(1) %0) !dbg !9 {
  %v = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca i1
  %mid = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %list1 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %i = alloca i64
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %list2 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i64
  %i.1 = alloca i64
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i64
  %19 = alloca ptr addrspace(1)
  %20 = alloca i64
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i8
  %26 = load ptr, ptr @_bal_stack_guard
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %97, label %28
28:
  store ptr addrspace(1) %0, ptr %v
  %29 = load ptr addrspace(1), ptr %v
  %30 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %29), !dbg !49
  %31 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %30), !dbg !50
  store i64 %31, ptr %2
  %32 = load i64, ptr %2
  %33 = icmp sle i64 %32, 1
  store i1 %33, ptr %3
  %34 = load i1, ptr %3
  br i1 %34, label %35, label %37
35:
  %36 = load ptr addrspace(1), ptr %v
  ret ptr addrspace(1) %36
37:
  %38 = load ptr addrspace(1), ptr %v
  %39 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %38), !dbg !51
  %40 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %39), !dbg !52
  store i64 %40, ptr %4
  %41 = load i64, ptr %4
  %42 = icmp eq i64 2, 0
  br i1 %42, label %99, label %101
43:
  %44 = load i64, ptr %i
  %45 = load i64, ptr %mid
  %46 = icmp slt i64 %44, %45
  store i1 %46, ptr %7
  %47 = load i1, ptr %7
  br i1 %47, label %57, label %48
48:
  %49 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !54
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %13
  %52 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %52, ptr %list2
  %53 = load ptr addrspace(1), ptr %v
  %54 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %53), !dbg !55
  %55 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %54), !dbg !56
  store i64 %55, ptr %14
  %56 = load i64, ptr %mid
  store i64 %56, ptr %i.1
  br label %69
57:
  %58 = load ptr addrspace(1), ptr %v
  %59 = load i64, ptr %i
  %60 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %58, i64 72057594037927928)
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  %63 = load i64, ptr addrspace(1) %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %142, label %152
65:
  %66 = load i64, ptr %i
  %67 = add nsw i64 %66, 1
  store i64 %67, ptr %12
  %68 = load i64, ptr %12
  store i64 %68, ptr %i
  br label %43
69:
  %70 = load i64, ptr %i.1
  %71 = load i64, ptr %14
  %72 = icmp slt i64 %70, %71
  store i1 %72, ptr %15
  %73 = load i1, ptr %15
  br i1 %73, label %83, label %74
74:
  %75 = load ptr addrspace(1), ptr %list1
  %76 = call ptr addrspace(1) @_B_sort(ptr addrspace(1) %75), !dbg !57
  store ptr addrspace(1) %76, ptr %21
  %77 = load ptr addrspace(1), ptr %list2
  %78 = call ptr addrspace(1) @_B_sort(ptr addrspace(1) %77), !dbg !58
  store ptr addrspace(1) %78, ptr %22
  %79 = load ptr addrspace(1), ptr %21
  %80 = load ptr addrspace(1), ptr %22
  %81 = call ptr addrspace(1) @_B_merge(ptr addrspace(1) %79, ptr addrspace(1) %80), !dbg !59
  store ptr addrspace(1) %81, ptr %23
  %82 = load ptr addrspace(1), ptr %23
  ret ptr addrspace(1) %82
83:
  %84 = load ptr addrspace(1), ptr %v
  %85 = load i64, ptr %i.1
  %86 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %84, i64 72057594037927928)
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  %89 = load i64, ptr addrspace(1) %88, align 8
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %114, label %124
91:
  %92 = load i64, ptr %i.1
  %93 = add nsw i64 %92, 1
  store i64 %93, ptr %20
  %94 = load i64, ptr %20
  store i64 %94, ptr %i.1
  br label %69
95:
  %96 = load ptr addrspace(1), ptr %24
  call void @_bal_panic(ptr addrspace(1) %96), !dbg !70
  unreachable
97:
  %98 = call ptr addrspace(1) @_bal_panic_construct(i64 9220), !dbg !47
  call void @_bal_panic(ptr addrspace(1) %98), !dbg !48
  unreachable
99:
  %100 = call ptr addrspace(1) @_bal_panic_construct(i64 10242), !dbg !47
  store ptr addrspace(1) %100, ptr %24
  br label %95
101:
  %102 = icmp eq i64 %41, -9223372036854775808
  %103 = icmp eq i64 2, -1
  %104 = and i1 %102, %103
  br i1 %104, label %112, label %105
105:
  %106 = sdiv i64 %41, 2
  store i64 %106, ptr %5
  %107 = load i64, ptr %5
  store i64 %107, ptr %mid
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !53
  %109 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %6
  %111 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %111, ptr %list1
  store i64 0, ptr %i
  br label %43
112:
  %113 = call ptr addrspace(1) @_bal_panic_construct(i64 10241), !dbg !47
  store ptr addrspace(1) %113, ptr %24
  br label %95
114:
  %115 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 0
  %116 = load ptr, ptr addrspace(1) %115, align 8
  %117 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = call ptr addrspace(1) %118(ptr addrspace(1) %84, i64 %85)
  %120 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %84, ptr addrspace(1) %119), !dbg !60
  store ptr addrspace(1) %120, ptr %16
  %121 = load ptr addrspace(1), ptr %16
  %122 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %121), !dbg !61
  %123 = extractvalue {ptr addrspace(1), i1} %122, 1
  br i1 %123, label %133, label %126
124:
  %125 = call ptr addrspace(1) @_bal_panic_construct(i64 12037), !dbg !47
  store ptr addrspace(1) %125, ptr %24
  br label %95
126:
  %127 = extractvalue {ptr addrspace(1), i1} %122, 0
  store ptr addrspace(1) %127, ptr %17
  %128 = load ptr addrspace(1), ptr %17
  %129 = addrspacecast ptr addrspace(1) %128 to ptr
  %130 = ptrtoint ptr %129 to i64
  %131 = and i64 %130, 2233785415175766016
  %132 = icmp eq i64 %131, 144115188075855872
  br i1 %132, label %135, label %140
133:
  %134 = call ptr addrspace(1) @_bal_panic_construct(i64 12033), !dbg !47
  store ptr addrspace(1) %134, ptr %24
  br label %95
135:
  %136 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %128), !dbg !62
  store i64 %136, ptr %18
  %137 = load ptr addrspace(1), ptr %list2
  %138 = load i64, ptr %18
  %139 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %138), !dbg !63
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %137, ptr addrspace(1) %139), !dbg !64
  store ptr addrspace(1) null, ptr %19
  br label %91
140:
  %141 = call ptr addrspace(1) @_bal_panic_construct(i64 12035), !dbg !47
  store ptr addrspace(1) %141, ptr %24
  br label %95
142:
  %143 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 0
  %144 = load ptr, ptr addrspace(1) %143, align 8
  %145 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %144, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8
  %147 = call ptr addrspace(1) %146(ptr addrspace(1) %58, i64 %59)
  %148 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %58, ptr addrspace(1) %147), !dbg !65
  store ptr addrspace(1) %148, ptr %8
  %149 = load ptr addrspace(1), ptr %8
  %150 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %149), !dbg !66
  %151 = extractvalue {ptr addrspace(1), i1} %150, 1
  br i1 %151, label %161, label %154
152:
  %153 = call ptr addrspace(1) @_bal_panic_construct(i64 11013), !dbg !47
  store ptr addrspace(1) %153, ptr %24
  br label %95
154:
  %155 = extractvalue {ptr addrspace(1), i1} %150, 0
  store ptr addrspace(1) %155, ptr %9
  %156 = load ptr addrspace(1), ptr %9
  %157 = addrspacecast ptr addrspace(1) %156 to ptr
  %158 = ptrtoint ptr %157 to i64
  %159 = and i64 %158, 2233785415175766016
  %160 = icmp eq i64 %159, 144115188075855872
  br i1 %160, label %163, label %168
161:
  %162 = call ptr addrspace(1) @_bal_panic_construct(i64 11009), !dbg !47
  store ptr addrspace(1) %162, ptr %24
  br label %95
163:
  %164 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %156), !dbg !67
  store i64 %164, ptr %10
  %165 = load ptr addrspace(1), ptr %list1
  %166 = load i64, ptr %10
  %167 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %166), !dbg !68
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %165, ptr addrspace(1) %167), !dbg !69
  store ptr addrspace(1) null, ptr %11
  br label %65
168:
  %169 = call ptr addrspace(1) @_bal_panic_construct(i64 11011), !dbg !47
  store ptr addrspace(1) %169, ptr %24
  br label %95
}
define internal ptr addrspace(1) @_B_merge(ptr addrspace(1) %0, ptr addrspace(1) %1) !dbg !11 {
  %v1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %result = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %i1 = alloca i64
  %i2 = alloca i64
  %len1 = alloca i64
  %4 = alloca i64
  %len2 = alloca i64
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i64
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca i64
  %21 = alloca i1
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca i64
  %25 = alloca i1
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i64
  %29 = alloca ptr addrspace(1)
  %30 = alloca i8
  %31 = load ptr, ptr @_bal_stack_guard
  %32 = icmp ult ptr %30, %31
  br i1 %32, label %115, label %33
33:
  store ptr addrspace(1) %0, ptr %v1
  store ptr addrspace(1) %1, ptr %v2
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !73
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %3
  %37 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %37, ptr %result
  store i64 0, ptr %i1
  store i64 0, ptr %i2
  %38 = load ptr addrspace(1), ptr %v1
  %39 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %38), !dbg !74
  %40 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %39), !dbg !75
  store i64 %40, ptr %4
  %41 = load i64, ptr %4
  store i64 %41, ptr %len1
  %42 = load ptr addrspace(1), ptr %v2
  %43 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %42), !dbg !76
  %44 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %43), !dbg !77
  store i64 %44, ptr %5
  %45 = load i64, ptr %5
  store i64 %45, ptr %len2
  br label %46
46:
  %47 = load i64, ptr %i1
  %48 = load i64, ptr %len1
  %49 = icmp slt i64 %47, %48
  store i1 %49, ptr %6
  %50 = load i1, ptr %6
  br i1 %50, label %51, label %56
51:
  %52 = load i64, ptr %i2
  %53 = load i64, ptr %len2
  %54 = icmp slt i64 %52, %53
  store i1 %54, ptr %7
  %55 = load i1, ptr %7
  br i1 %55, label %57, label %65
56:
  br label %83
57:
  %58 = load ptr addrspace(1), ptr %v1
  %59 = load i64, ptr %i1
  %60 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %58, i64 72057594037927928)
  %61 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %62 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  %63 = load i64, ptr addrspace(1) %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %155, label %165
65:
  br label %56
66:
  %67 = load ptr addrspace(1), ptr %v1
  %68 = load i64, ptr %i1
  %69 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %67, i64 72057594037927928)
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 1
  %72 = load i64, ptr addrspace(1) %71, align 8
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %235, label %247
74:
  %75 = load ptr addrspace(1), ptr %v2
  %76 = load i64, ptr %i2
  %77 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %75, i64 72057594037927928)
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  %80 = load i64, ptr addrspace(1) %79, align 8
  %81 = icmp ult i64 %76, %80
  br i1 %81, label %216, label %228
82:
  br label %46
83:
  br label %84
84:
  %85 = load i64, ptr %i1
  %86 = load i64, ptr %len1
  %87 = icmp slt i64 %85, %86
  store i1 %87, ptr %21
  %88 = load i1, ptr %21
  br i1 %88, label %89, label %97
89:
  %90 = load ptr addrspace(1), ptr %v1
  %91 = load i64, ptr %i1
  %92 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %90, i64 72057594037927928)
  %93 = bitcast ptr addrspace(1) %92 to ptr addrspace(1)
  %94 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  %95 = load i64, ptr addrspace(1) %94, align 8
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %136, label %148
97:
  br label %98
98:
  %99 = load i64, ptr %i2
  %100 = load i64, ptr %len2
  %101 = icmp slt i64 %99, %100
  store i1 %101, ptr %25
  %102 = load i1, ptr %25
  br i1 %102, label %103, label %111
103:
  %104 = load ptr addrspace(1), ptr %v2
  %105 = load i64, ptr %i2
  %106 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %104, i64 72057594037927928)
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  %109 = load i64, ptr addrspace(1) %108, align 8
  %110 = icmp ult i64 %105, %109
  br i1 %110, label %117, label %129
111:
  %112 = load ptr addrspace(1), ptr %result
  ret ptr addrspace(1) %112
113:
  %114 = load ptr addrspace(1), ptr %29
  call void @_bal_panic(ptr addrspace(1) %114), !dbg !92
  unreachable
115:
  %116 = call ptr addrspace(1) @_bal_panic_construct(i64 13316), !dbg !71
  call void @_bal_panic(ptr addrspace(1) %116), !dbg !72
  unreachable
117:
  %118 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 0
  %119 = load ptr, ptr addrspace(1) %118, align 8
  %120 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %119, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8
  %122 = call ptr addrspace(1) %121(ptr addrspace(1) %104, i64 %105)
  %123 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %104, ptr addrspace(1) %122), !dbg !78
  store ptr addrspace(1) %123, ptr %26
  %124 = load ptr addrspace(1), ptr %result
  %125 = load ptr addrspace(1), ptr %26
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %124, ptr addrspace(1) %125), !dbg !79
  store ptr addrspace(1) null, ptr %27
  %126 = load i64, ptr %i2
  %127 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %126, i64 1)
  %128 = extractvalue {i64, i1} %127, 1
  br i1 %128, label %134, label %131
129:
  %130 = call ptr addrspace(1) @_bal_panic_construct(i64 20229), !dbg !71
  store ptr addrspace(1) %130, ptr %29
  br label %113
131:
  %132 = extractvalue {i64, i1} %127, 0
  store i64 %132, ptr %28
  %133 = load i64, ptr %28
  store i64 %133, ptr %i2
  br label %98
134:
  %135 = call ptr addrspace(1) @_bal_panic_construct(i64 20481), !dbg !71
  store ptr addrspace(1) %135, ptr %29
  br label %113
136:
  %137 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 0
  %138 = load ptr, ptr addrspace(1) %137, align 8
  %139 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8
  %141 = call ptr addrspace(1) %140(ptr addrspace(1) %90, i64 %91)
  %142 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %90, ptr addrspace(1) %141), !dbg !80
  store ptr addrspace(1) %142, ptr %22
  %143 = load ptr addrspace(1), ptr %result
  %144 = load ptr addrspace(1), ptr %22
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %143, ptr addrspace(1) %144), !dbg !81
  store ptr addrspace(1) null, ptr %23
  %145 = load i64, ptr %i1
  %146 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %145, i64 1)
  %147 = extractvalue {i64, i1} %146, 1
  br i1 %147, label %153, label %150
148:
  %149 = call ptr addrspace(1) @_bal_panic_construct(i64 19205), !dbg !71
  store ptr addrspace(1) %149, ptr %29
  br label %113
150:
  %151 = extractvalue {i64, i1} %146, 0
  store i64 %151, ptr %24
  %152 = load i64, ptr %24
  store i64 %152, ptr %i1
  br label %84
153:
  %154 = call ptr addrspace(1) @_bal_panic_construct(i64 19457), !dbg !71
  store ptr addrspace(1) %154, ptr %29
  br label %113
155:
  %156 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 0
  %157 = load ptr, ptr addrspace(1) %156, align 8
  %158 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %157, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = call ptr addrspace(1) %159(ptr addrspace(1) %58, i64 %59)
  %161 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %58, ptr addrspace(1) %160), !dbg !82
  store ptr addrspace(1) %161, ptr %8
  %162 = load ptr addrspace(1), ptr %8
  %163 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %162), !dbg !83
  %164 = extractvalue {ptr addrspace(1), i1} %163, 1
  br i1 %164, label %174, label %167
165:
  %166 = call ptr addrspace(1) @_bal_panic_construct(i64 15621), !dbg !71
  store ptr addrspace(1) %166, ptr %29
  br label %113
167:
  %168 = extractvalue {ptr addrspace(1), i1} %163, 0
  store ptr addrspace(1) %168, ptr %9
  %169 = load ptr addrspace(1), ptr %9
  %170 = addrspacecast ptr addrspace(1) %169 to ptr
  %171 = ptrtoint ptr %170 to i64
  %172 = and i64 %171, 2233785415175766016
  %173 = icmp eq i64 %172, 144115188075855872
  br i1 %173, label %176, label %185
174:
  %175 = call ptr addrspace(1) @_bal_panic_construct(i64 15617), !dbg !71
  store ptr addrspace(1) %175, ptr %29
  br label %113
176:
  %177 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %169), !dbg !84
  store i64 %177, ptr %10
  %178 = load ptr addrspace(1), ptr %v2
  %179 = load i64, ptr %i2
  %180 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %178, i64 72057594037927928)
  %181 = bitcast ptr addrspace(1) %180 to ptr addrspace(1)
  %182 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %181, i64 0, i32 1
  %183 = load i64, ptr addrspace(1) %182, align 8
  %184 = icmp ult i64 %179, %183
  br i1 %184, label %187, label %197
185:
  %186 = call ptr addrspace(1) @_bal_panic_construct(i64 15619), !dbg !71
  store ptr addrspace(1) %186, ptr %29
  br label %113
187:
  %188 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %181, i64 0, i32 0
  %189 = load ptr, ptr addrspace(1) %188, align 8
  %190 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %189, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8
  %192 = call ptr addrspace(1) %191(ptr addrspace(1) %178, i64 %179)
  %193 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %178, ptr addrspace(1) %192), !dbg !85
  store ptr addrspace(1) %193, ptr %11
  %194 = load ptr addrspace(1), ptr %11
  %195 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %194), !dbg !86
  %196 = extractvalue {ptr addrspace(1), i1} %195, 1
  br i1 %196, label %206, label %199
197:
  %198 = call ptr addrspace(1) @_bal_panic_construct(i64 15621), !dbg !71
  store ptr addrspace(1) %198, ptr %29
  br label %113
199:
  %200 = extractvalue {ptr addrspace(1), i1} %195, 0
  store ptr addrspace(1) %200, ptr %12
  %201 = load ptr addrspace(1), ptr %12
  %202 = addrspacecast ptr addrspace(1) %201 to ptr
  %203 = ptrtoint ptr %202 to i64
  %204 = and i64 %203, 2233785415175766016
  %205 = icmp eq i64 %204, 144115188075855872
  br i1 %205, label %208, label %214
206:
  %207 = call ptr addrspace(1) @_bal_panic_construct(i64 15617), !dbg !71
  store ptr addrspace(1) %207, ptr %29
  br label %113
208:
  %209 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %201), !dbg !87
  store i64 %209, ptr %13
  %210 = load i64, ptr %10
  %211 = load i64, ptr %13
  %212 = icmp sle i64 %210, %211
  store i1 %212, ptr %14
  %213 = load i1, ptr %14
  br i1 %213, label %66, label %74
214:
  %215 = call ptr addrspace(1) @_bal_panic_construct(i64 15619), !dbg !71
  store ptr addrspace(1) %215, ptr %29
  br label %113
216:
  %217 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 0
  %218 = load ptr, ptr addrspace(1) %217, align 8
  %219 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %218, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8
  %221 = call ptr addrspace(1) %220(ptr addrspace(1) %75, i64 %76)
  %222 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %75, ptr addrspace(1) %221), !dbg !88
  store ptr addrspace(1) %222, ptr %18
  %223 = load ptr addrspace(1), ptr %result
  %224 = load ptr addrspace(1), ptr %18
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %223, ptr addrspace(1) %224), !dbg !89
  store ptr addrspace(1) null, ptr %19
  %225 = load i64, ptr %i2
  %226 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %225, i64 1)
  %227 = extractvalue {i64, i1} %226, 1
  br i1 %227, label %233, label %230
228:
  %229 = call ptr addrspace(1) @_bal_panic_construct(i64 16901), !dbg !71
  store ptr addrspace(1) %229, ptr %29
  br label %113
230:
  %231 = extractvalue {i64, i1} %226, 0
  store i64 %231, ptr %20
  %232 = load i64, ptr %20
  store i64 %232, ptr %i2
  br label %82
233:
  %234 = call ptr addrspace(1) @_bal_panic_construct(i64 17153), !dbg !71
  store ptr addrspace(1) %234, ptr %29
  br label %113
235:
  %236 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 0
  %237 = load ptr, ptr addrspace(1) %236, align 8
  %238 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %237, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8
  %240 = call ptr addrspace(1) %239(ptr addrspace(1) %67, i64 %68)
  %241 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %67, ptr addrspace(1) %240), !dbg !90
  store ptr addrspace(1) %241, ptr %15
  %242 = load ptr addrspace(1), ptr %result
  %243 = load ptr addrspace(1), ptr %15
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %242, ptr addrspace(1) %243), !dbg !91
  store ptr addrspace(1) null, ptr %16
  %244 = load i64, ptr %i1
  %245 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %244, i64 1)
  %246 = extractvalue {i64, i1} %245, 1
  br i1 %246, label %252, label %249
247:
  %248 = call ptr addrspace(1) @_bal_panic_construct(i64 15877), !dbg !71
  store ptr addrspace(1) %248, ptr %29
  br label %113
249:
  %250 = extractvalue {i64, i1} %245, 0
  store i64 %250, ptr %17
  %251 = load i64, ptr %17
  store i64 %251, ptr %i1
  br label %82
252:
  %253 = call ptr addrspace(1) @_bal_panic_construct(i64 16129), !dbg !71
  store ptr addrspace(1) %253, ptr %29
  br label %113
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-bench/mergesort-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"checksum", linkageName:"_B_checksum", scope: !1, file: !1, line: 27, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"sort", linkageName:"_B_sort", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"merge", linkageName:"_B_merge", scope: !1, file: !1, line: 52, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 6, column: 16, scope: !5)
!15 = !DILocation(line: 11, column: 14, scope: !5)
!16 = !DILocation(line: 12, column: 15, scope: !5)
!17 = !DILocation(line: 12, column: 15, scope: !5)
!18 = !DILocation(line: 12, column: 4, scope: !5)
!19 = !DILocation(line: 17, column: 14, scope: !5)
!20 = !DILocation(line: 18, column: 17, scope: !5)
!21 = !DILocation(line: 18, column: 17, scope: !5)
!22 = !DILocation(line: 18, column: 15, scope: !5)
!23 = !DILocation(line: 18, column: 4, scope: !5)
!24 = !DILocation(line: 24, column: 15, scope: !5)
!25 = !DILocation(line: 24, column: 30, scope: !5)
!26 = !DILocation(line: 24, column: 15, scope: !5)
!27 = !DILocation(line: 24, column: 4, scope: !5)
!28 = !DILocation(line: 20, column: 17, scope: !5)
!29 = !DILocation(line: 20, column: 11, scope: !5)
!30 = !DILocation(line: 20, column: 11, scope: !5)
!31 = !DILocation(line: 20, column: 29, scope: !5)
!32 = !DILocation(line: 20, column: 23, scope: !5)
!33 = !DILocation(line: 20, column: 23, scope: !5)
!34 = !DILocation(line: 21, column: 23, scope: !5)
!35 = !DILocation(line: 21, column: 12, scope: !5)
!36 = !DILocation(line: 14, column: 10, scope: !5)
!37 = !DILocation(line: 14, column: 10, scope: !5)
!38 = !DILocation(line: 25, column: 0, scope: !5)
!39 = !DILocation(line: 0, column: 0, scope: !7)
!40 = !DILocation(line: 27, column: 9, scope: !7)
!41 = !DILocation(line: 29, column: 29, scope: !7)
!42 = !DILocation(line: 29, column: 29, scope: !7)
!43 = !DILocation(line: 30, column: 22, scope: !7)
!44 = !DILocation(line: 30, column: 16, scope: !7)
!45 = !DILocation(line: 30, column: 16, scope: !7)
!46 = !DILocation(line: 33, column: 0, scope: !7)
!47 = !DILocation(line: 0, column: 0, scope: !9)
!48 = !DILocation(line: 36, column: 9, scope: !9)
!49 = !DILocation(line: 37, column: 9, scope: !9)
!50 = !DILocation(line: 37, column: 9, scope: !9)
!51 = !DILocation(line: 40, column: 16, scope: !9)
!52 = !DILocation(line: 40, column: 16, scope: !9)
!53 = !DILocation(line: 41, column: 18, scope: !9)
!54 = !DILocation(line: 45, column: 18, scope: !9)
!55 = !DILocation(line: 46, column: 31, scope: !9)
!56 = !DILocation(line: 46, column: 31, scope: !9)
!57 = !DILocation(line: 49, column: 17, scope: !9)
!58 = !DILocation(line: 49, column: 30, scope: !9)
!59 = !DILocation(line: 49, column: 11, scope: !9)
!60 = !DILocation(line: 47, column: 25, scope: !9)
!61 = !DILocation(line: 47, column: 19, scope: !9)
!62 = !DILocation(line: 47, column: 19, scope: !9)
!63 = !DILocation(line: 47, column: 14, scope: !9)
!64 = !DILocation(line: 47, column: 14, scope: !9)
!65 = !DILocation(line: 43, column: 25, scope: !9)
!66 = !DILocation(line: 43, column: 19, scope: !9)
!67 = !DILocation(line: 43, column: 19, scope: !9)
!68 = !DILocation(line: 43, column: 14, scope: !9)
!69 = !DILocation(line: 43, column: 14, scope: !9)
!70 = !DILocation(line: 50, column: 0, scope: !9)
!71 = !DILocation(line: 0, column: 0, scope: !11)
!72 = !DILocation(line: 52, column: 9, scope: !11)
!73 = !DILocation(line: 53, column: 19, scope: !11)
!74 = !DILocation(line: 56, column: 18, scope: !11)
!75 = !DILocation(line: 56, column: 18, scope: !11)
!76 = !DILocation(line: 57, column: 18, scope: !11)
!77 = !DILocation(line: 57, column: 18, scope: !11)
!78 = !DILocation(line: 79, column: 22, scope: !11)
!79 = !DILocation(line: 79, column: 15, scope: !11)
!80 = !DILocation(line: 75, column: 22, scope: !11)
!81 = !DILocation(line: 75, column: 15, scope: !11)
!82 = !DILocation(line: 61, column: 26, scope: !11)
!83 = !DILocation(line: 61, column: 19, scope: !11)
!84 = !DILocation(line: 61, column: 19, scope: !11)
!85 = !DILocation(line: 61, column: 41, scope: !11)
!86 = !DILocation(line: 61, column: 34, scope: !11)
!87 = !DILocation(line: 61, column: 34, scope: !11)
!88 = !DILocation(line: 66, column: 34, scope: !11)
!89 = !DILocation(line: 66, column: 27, scope: !11)
!90 = !DILocation(line: 62, column: 34, scope: !11)
!91 = !DILocation(line: 62, column: 27, scope: !11)
!92 = !DILocation(line: 83, column: 0, scope: !11)
