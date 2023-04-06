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
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i1
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca i8
  %30 = load ptr, ptr @_bal_stack_guard
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %145, label %32
32:
  store i64 1000000, ptr %len
  store i64 16807, ptr %a
  store i64 2147483647, ptr %m
  store i64 17, ptr %x
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !15
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %1
  %36 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %36, ptr %v
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = load i64, ptr %len
  %42 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %41), !dbg !17
  %43 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) %42, ptr addrspace(1) %43
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %44
  %45 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %2
  %47 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %47), !dbg !18
  store ptr addrspace(1) null, ptr %3
  store i64 0, ptr %i
  br label %48
48:
  %49 = load i64, ptr %i
  %50 = load i64, ptr %len
  %51 = icmp slt i64 %49, %50
  store i1 %51, ptr %4
  %52 = load i1, ptr %4
  br i1 %52, label %79, label %53
53:
  %54 = load ptr addrspace(1), ptr %v
  %55 = call ptr addrspace(1) @_B_sort(ptr addrspace(1) %54), !dbg !19
  store ptr addrspace(1) %55, ptr %9
  %56 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %56, ptr %s
  %57 = load ptr addrspace(1), ptr %s
  %58 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %57), !dbg !20
  %59 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %58), !dbg !21
  store i64 %59, ptr %10
  %60 = load i64, ptr %10
  %61 = load i64, ptr %len
  %62 = icmp eq i64 %60, %61
  store i1 %62, ptr %11
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load i1, ptr %11
  %68 = zext i1 %67 to i64
  %69 = or i64 %68, 72057594037927936
  %70 = getelementptr i8, ptr addrspace(1) null, i64 %69
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %12
  %75 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %75), !dbg !23
  store ptr addrspace(1) null, ptr %13
  %76 = load i64, ptr %len
  %77 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %76, i64 1)
  %78 = extractvalue {i64, i1} %77, 1
  br i1 %78, label %149, label %147
79:
  %80 = load ptr addrspace(1), ptr %v
  %81 = load i64, ptr %x
  %82 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %81), !dbg !30
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %80, ptr addrspace(1) %82), !dbg !31
  store ptr addrspace(1) null, ptr %5
  %83 = load i64, ptr %x
  %84 = load i64, ptr %a
  %85 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %83, i64 %84)
  %86 = extractvalue {i64, i1} %85, 1
  br i1 %86, label %210, label %205
87:
  %88 = load i64, ptr %i
  %89 = add nsw i64 %88, 1
  store i64 %89, ptr %8
  %90 = load i64, ptr %8
  store i64 %90, ptr %i
  br label %48
91:
  %92 = load i64, ptr %i.1
  %93 = load i64, ptr %14
  %94 = icmp slt i64 %92, %93
  store i1 %94, ptr %15
  %95 = load i1, ptr %15
  br i1 %95, label %117, label %96
96:
  %97 = load ptr addrspace(1), ptr %v
  %98 = call i64 @_B_checksum(ptr addrspace(1) %97), !dbg !24
  store i64 %98, ptr %23
  %99 = load ptr addrspace(1), ptr %s
  %100 = call i64 @_B_checksum(ptr addrspace(1) %99), !dbg !25
  store i64 %100, ptr %24
  %101 = load i64, ptr %23
  %102 = load i64, ptr %24
  %103 = icmp eq i64 %101, %102
  store i1 %103, ptr %25
  %104 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 3
  %106 = load ptr addrspace(1), ptr addrspace(1) %105, align 8
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = load i1, ptr %25
  %109 = zext i1 %108 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, ptr addrspace(1) null, i64 %110
  %112 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %107, i64 0, i64 0
  store ptr addrspace(1) %111, ptr addrspace(1) %112
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 1
  store i64 1, ptr addrspace(1) %113
  %114 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %115 = getelementptr i8, ptr addrspace(1) %114, i64 864691128455135236
  store ptr addrspace(1) %115, ptr %26
  %116 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %116), !dbg !27
  store ptr addrspace(1) null, ptr %27
  ret void
117:
  %118 = load ptr addrspace(1), ptr %s
  %119 = load i64, ptr %i.1
  %120 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %118, i64 72057594037927928)
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 1
  %123 = load i64, ptr addrspace(1) %122, align 8
  %124 = icmp ult i64 %119, %123
  br i1 %124, label %151, label %154
125:
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !28
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = zext i1 0 to i64
  %131 = or i64 %130, 72057594037927936
  %132 = getelementptr i8, ptr addrspace(1) null, i64 %131
  %133 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %132, ptr addrspace(1) %133
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %134
  %135 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %136 = getelementptr i8, ptr addrspace(1) %135, i64 864691128455135236
  store ptr addrspace(1) %136, ptr %20
  %137 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %137), !dbg !29
  store ptr addrspace(1) null, ptr %21
  br label %138
138:
  br label %139
139:
  %140 = load i64, ptr %i.1
  %141 = add nsw i64 %140, 1
  store i64 %141, ptr %22
  %142 = load i64, ptr %22
  store i64 %142, ptr %i.1
  br label %91
143:
  %144 = load ptr addrspace(1), ptr %28
  call void @_bal_panic(ptr addrspace(1) %144), !dbg !32
  unreachable
145:
  %146 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %146), !dbg !14
  unreachable
147:
  %148 = extractvalue {i64, i1} %77, 0
  store i64 %148, ptr %14
  store i64 0, ptr %i.1
  br label %91
149:
  %150 = call ptr addrspace(1) @_bal_panic_construct(i64 4865), !dbg !13
  store ptr addrspace(1) %150, ptr %28
  br label %143
151:
  %152 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %118, i64 4)
  %153 = icmp ne ptr addrspace(1) %152, null
  br i1 %153, label %156, label %162
154:
  %155 = call ptr addrspace(1) @_bal_panic_construct(i64 5125), !dbg !13
  store ptr addrspace(1) %155, ptr %28
  br label %143
156:
  %157 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 3
  %158 = load ptr addrspace(1), ptr addrspace(1) %157, align 8
  %159 = bitcast ptr addrspace(1) %158 to ptr addrspace(1)
  %160 = getelementptr inbounds [0 x i64], ptr addrspace(1) %159, i64 0, i64 %119
  %161 = load i64, ptr addrspace(1) %160, align 8
  store i64 %161, ptr %16
  br label %168
162:
  %163 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %121, i64 0, i32 0
  %164 = load ptr, ptr addrspace(1) %163, align 8
  %165 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %164, i64 0, i32 6
  %166 = load ptr, ptr %165, align 8
  %167 = call i64 %166(ptr addrspace(1) %118, i64 %119)
  store i64 %167, ptr %16
  br label %168
168:
  %169 = load i64, ptr %i.1
  %170 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %169, i64 1)
  %171 = extractvalue {i64, i1} %170, 1
  br i1 %171, label %181, label %172
172:
  %173 = extractvalue {i64, i1} %170, 0
  store i64 %173, ptr %17
  %174 = load ptr addrspace(1), ptr %s
  %175 = load i64, ptr %17
  %176 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %174, i64 72057594037927928)
  %177 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %178 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 1
  %179 = load i64, ptr addrspace(1) %178, align 8
  %180 = icmp ult i64 %175, %179
  br i1 %180, label %183, label %186
181:
  %182 = call ptr addrspace(1) @_bal_panic_construct(i64 5121), !dbg !13
  store ptr addrspace(1) %182, ptr %28
  br label %143
183:
  %184 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %174, i64 4)
  %185 = icmp ne ptr addrspace(1) %184, null
  br i1 %185, label %188, label %194
186:
  %187 = call ptr addrspace(1) @_bal_panic_construct(i64 5125), !dbg !13
  store ptr addrspace(1) %187, ptr %28
  br label %143
188:
  %189 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 3
  %190 = load ptr addrspace(1), ptr addrspace(1) %189, align 8
  %191 = bitcast ptr addrspace(1) %190 to ptr addrspace(1)
  %192 = getelementptr inbounds [0 x i64], ptr addrspace(1) %191, i64 0, i64 %175
  %193 = load i64, ptr addrspace(1) %192, align 8
  store i64 %193, ptr %18
  br label %200
194:
  %195 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 0
  %196 = load ptr, ptr addrspace(1) %195, align 8
  %197 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %196, i64 0, i32 6
  %198 = load ptr, ptr %197, align 8
  %199 = call i64 %198(ptr addrspace(1) %174, i64 %175)
  store i64 %199, ptr %18
  br label %200
200:
  %201 = load i64, ptr %16
  %202 = load i64, ptr %18
  %203 = icmp sgt i64 %201, %202
  store i1 %203, ptr %19
  %204 = load i1, ptr %19
  br i1 %204, label %125, label %138
205:
  %206 = extractvalue {i64, i1} %85, 0
  store i64 %206, ptr %6
  %207 = load i64, ptr %6
  %208 = load i64, ptr %m
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %212, label %214
210:
  %211 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !13
  store ptr addrspace(1) %211, ptr %28
  br label %143
212:
  %213 = call ptr addrspace(1) @_bal_panic_construct(i64 3842), !dbg !13
  store ptr addrspace(1) %213, ptr %28
  br label %143
214:
  %215 = icmp eq i64 %207, -9223372036854775808
  %216 = icmp eq i64 %208, -1
  %217 = and i1 %215, %216
  br i1 %217, label %220, label %218
218:
  %219 = srem i64 %207, %208
  store i64 %219, ptr %7
  br label %221
220:
  store i64 0, ptr %7
  br label %221
221:
  %222 = load i64, ptr %7
  store i64 %222, ptr %x
  br label %87
}
define internal i64 @_B_checksum(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %36, label %11
11:
  store ptr addrspace(1) %0, ptr %v
  store i64 0, ptr %c
  %12 = load ptr addrspace(1), ptr %v
  %13 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %12), !dbg !35
  %14 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %13), !dbg !36
  store i64 %14, ptr %2
  store i64 0, ptr %i
  br label %15
15:
  %16 = load i64, ptr %i
  %17 = load i64, ptr %2
  %18 = icmp slt i64 %16, %17
  store i1 %18, ptr %3
  %19 = load i1, ptr %3
  br i1 %19, label %22, label %20
20:
  %21 = load i64, ptr %c
  ret i64 %21
22:
  %23 = load ptr addrspace(1), ptr %v
  %24 = load i64, ptr %i
  %25 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 72057594037927928)
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  %28 = load i64, ptr addrspace(1) %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %38, label %41
30:
  %31 = load i64, ptr %i
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %6
  %33 = load i64, ptr %6
  store i64 %33, ptr %i
  br label %15
34:
  %35 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !37
  unreachable
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 6916), !dbg !33
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !34
  unreachable
38:
  %39 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 4)
  %40 = icmp ne ptr addrspace(1) %39, null
  br i1 %40, label %43, label %49
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 7685), !dbg !33
  store ptr addrspace(1) %42, ptr %7
  br label %34
43:
  %44 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = getelementptr inbounds [0 x i64], ptr addrspace(1) %46, i64 0, i64 %24
  %48 = load i64, ptr addrspace(1) %47, align 8
  store i64 %48, ptr %4
  br label %55
49:
  %50 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 0
  %51 = load ptr, ptr addrspace(1) %50, align 8
  %52 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = call i64 %53(ptr addrspace(1) %23, i64 %24)
  store i64 %54, ptr %4
  br label %55
55:
  %56 = load i64, ptr %c
  %57 = load i64, ptr %4
  %58 = xor i64 %56, %57
  store i64 %58, ptr %5
  %59 = load i64, ptr %5
  store i64 %59, ptr %c
  br label %30
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
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %list2 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %i.1 = alloca i64
  %13 = alloca i1
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i8
  %22 = load ptr, ptr @_bal_stack_guard
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %93, label %24
24:
  store ptr addrspace(1) %0, ptr %v
  %25 = load ptr addrspace(1), ptr %v
  %26 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %25), !dbg !40
  %27 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %26), !dbg !41
  store i64 %27, ptr %2
  %28 = load i64, ptr %2
  %29 = icmp sle i64 %28, 1
  store i1 %29, ptr %3
  %30 = load i1, ptr %3
  br i1 %30, label %31, label %33
31:
  %32 = load ptr addrspace(1), ptr %v
  ret ptr addrspace(1) %32
33:
  %34 = load ptr addrspace(1), ptr %v
  %35 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %34), !dbg !42
  %36 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %35), !dbg !43
  store i64 %36, ptr %4
  %37 = load i64, ptr %4
  %38 = icmp eq i64 2, 0
  br i1 %38, label %95, label %97
39:
  %40 = load i64, ptr %i
  %41 = load i64, ptr %mid
  %42 = icmp slt i64 %40, %41
  store i1 %42, ptr %7
  %43 = load i1, ptr %7
  br i1 %43, label %53, label %44
44:
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !45
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %11
  %48 = load ptr addrspace(1), ptr %11
  store ptr addrspace(1) %48, ptr %list2
  %49 = load ptr addrspace(1), ptr %v
  %50 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %49), !dbg !46
  %51 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %50), !dbg !47
  store i64 %51, ptr %12
  %52 = load i64, ptr %mid
  store i64 %52, ptr %i.1
  br label %65
53:
  %54 = load ptr addrspace(1), ptr %v
  %55 = load i64, ptr %i
  %56 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %54, i64 72057594037927928)
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  %59 = load i64, ptr addrspace(1) %58, align 8
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %131, label %134
61:
  %62 = load i64, ptr %i
  %63 = add nsw i64 %62, 1
  store i64 %63, ptr %10
  %64 = load i64, ptr %10
  store i64 %64, ptr %i
  br label %39
65:
  %66 = load i64, ptr %i.1
  %67 = load i64, ptr %12
  %68 = icmp slt i64 %66, %67
  store i1 %68, ptr %13
  %69 = load i1, ptr %13
  br i1 %69, label %79, label %70
70:
  %71 = load ptr addrspace(1), ptr %list1
  %72 = call ptr addrspace(1) @_B_sort(ptr addrspace(1) %71), !dbg !48
  store ptr addrspace(1) %72, ptr %17
  %73 = load ptr addrspace(1), ptr %list2
  %74 = call ptr addrspace(1) @_B_sort(ptr addrspace(1) %73), !dbg !49
  store ptr addrspace(1) %74, ptr %18
  %75 = load ptr addrspace(1), ptr %17
  %76 = load ptr addrspace(1), ptr %18
  %77 = call ptr addrspace(1) @_B_merge(ptr addrspace(1) %75, ptr addrspace(1) %76), !dbg !50
  store ptr addrspace(1) %77, ptr %19
  %78 = load ptr addrspace(1), ptr %19
  ret ptr addrspace(1) %78
79:
  %80 = load ptr addrspace(1), ptr %v
  %81 = load i64, ptr %i.1
  %82 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %80, i64 72057594037927928)
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  %85 = load i64, ptr addrspace(1) %84, align 8
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %110, label %113
87:
  %88 = load i64, ptr %i.1
  %89 = add nsw i64 %88, 1
  store i64 %89, ptr %16
  %90 = load i64, ptr %16
  store i64 %90, ptr %i.1
  br label %65
91:
  %92 = load ptr addrspace(1), ptr %20
  call void @_bal_panic(ptr addrspace(1) %92), !dbg !55
  unreachable
93:
  %94 = call ptr addrspace(1) @_bal_panic_construct(i64 9220), !dbg !38
  call void @_bal_panic(ptr addrspace(1) %94), !dbg !39
  unreachable
95:
  %96 = call ptr addrspace(1) @_bal_panic_construct(i64 10242), !dbg !38
  store ptr addrspace(1) %96, ptr %20
  br label %91
97:
  %98 = icmp eq i64 %37, -9223372036854775808
  %99 = icmp eq i64 2, -1
  %100 = and i1 %98, %99
  br i1 %100, label %108, label %101
101:
  %102 = sdiv i64 %37, 2
  store i64 %102, ptr %5
  %103 = load i64, ptr %5
  store i64 %103, ptr %mid
  %104 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !44
  %105 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %106 = getelementptr i8, ptr addrspace(1) %105, i64 864691128455135236
  store ptr addrspace(1) %106, ptr %6
  %107 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %107, ptr %list1
  store i64 0, ptr %i
  br label %39
108:
  %109 = call ptr addrspace(1) @_bal_panic_construct(i64 10241), !dbg !38
  store ptr addrspace(1) %109, ptr %20
  br label %91
110:
  %111 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %80, i64 4)
  %112 = icmp ne ptr addrspace(1) %111, null
  br i1 %112, label %115, label %121
113:
  %114 = call ptr addrspace(1) @_bal_panic_construct(i64 12037), !dbg !38
  store ptr addrspace(1) %114, ptr %20
  br label %91
115:
  %116 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %117 = load ptr addrspace(1), ptr addrspace(1) %116, align 8
  %118 = bitcast ptr addrspace(1) %117 to ptr addrspace(1)
  %119 = getelementptr inbounds [0 x i64], ptr addrspace(1) %118, i64 0, i64 %81
  %120 = load i64, ptr addrspace(1) %119, align 8
  store i64 %120, ptr %14
  br label %127
121:
  %122 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 0
  %123 = load ptr, ptr addrspace(1) %122, align 8
  %124 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %123, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8
  %126 = call i64 %125(ptr addrspace(1) %80, i64 %81)
  store i64 %126, ptr %14
  br label %127
127:
  %128 = load ptr addrspace(1), ptr %list2
  %129 = load i64, ptr %14
  %130 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %129), !dbg !51
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %128, ptr addrspace(1) %130), !dbg !52
  store ptr addrspace(1) null, ptr %15
  br label %87
131:
  %132 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %54, i64 4)
  %133 = icmp ne ptr addrspace(1) %132, null
  br i1 %133, label %136, label %142
134:
  %135 = call ptr addrspace(1) @_bal_panic_construct(i64 11013), !dbg !38
  store ptr addrspace(1) %135, ptr %20
  br label %91
136:
  %137 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %138 = load ptr addrspace(1), ptr addrspace(1) %137, align 8
  %139 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %140 = getelementptr inbounds [0 x i64], ptr addrspace(1) %139, i64 0, i64 %55
  %141 = load i64, ptr addrspace(1) %140, align 8
  store i64 %141, ptr %8
  br label %148
142:
  %143 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 0
  %144 = load ptr, ptr addrspace(1) %143, align 8
  %145 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %144, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8
  %147 = call i64 %146(ptr addrspace(1) %54, i64 %55)
  store i64 %147, ptr %8
  br label %148
148:
  %149 = load ptr addrspace(1), ptr %list1
  %150 = load i64, ptr %8
  %151 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %150), !dbg !53
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %149, ptr addrspace(1) %151), !dbg !54
  store ptr addrspace(1) null, ptr %9
  br label %61
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
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i1
  %11 = alloca i64
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca i1
  %18 = alloca i64
  %19 = alloca ptr addrspace(1)
  %20 = alloca i64
  %21 = alloca i1
  %22 = alloca i64
  %23 = alloca ptr addrspace(1)
  %24 = alloca i64
  %25 = alloca ptr addrspace(1)
  %26 = alloca i8
  %27 = load ptr, ptr @_bal_stack_guard
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %111, label %29
29:
  store ptr addrspace(1) %0, ptr %v1
  store ptr addrspace(1) %1, ptr %v2
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !58
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %3
  %33 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %33, ptr %result
  store i64 0, ptr %i1
  store i64 0, ptr %i2
  %34 = load ptr addrspace(1), ptr %v1
  %35 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %34), !dbg !59
  %36 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %35), !dbg !60
  store i64 %36, ptr %4
  %37 = load i64, ptr %4
  store i64 %37, ptr %len1
  %38 = load ptr addrspace(1), ptr %v2
  %39 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %38), !dbg !61
  %40 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %39), !dbg !62
  store i64 %40, ptr %5
  %41 = load i64, ptr %5
  store i64 %41, ptr %len2
  br label %42
42:
  %43 = load i64, ptr %i1
  %44 = load i64, ptr %len1
  %45 = icmp slt i64 %43, %44
  store i1 %45, ptr %6
  %46 = load i1, ptr %6
  br i1 %46, label %47, label %52
47:
  %48 = load i64, ptr %i2
  %49 = load i64, ptr %len2
  %50 = icmp slt i64 %48, %49
  store i1 %50, ptr %7
  %51 = load i1, ptr %7
  br i1 %51, label %53, label %61
52:
  br label %79
53:
  %54 = load ptr addrspace(1), ptr %v1
  %55 = load i64, ptr %i1
  %56 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %54, i64 72057594037927928)
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  %59 = load i64, ptr addrspace(1) %58, align 8
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %171, label %174
61:
  br label %52
62:
  %63 = load ptr addrspace(1), ptr %v1
  %64 = load i64, ptr %i1
  %65 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %63, i64 72057594037927928)
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  %68 = load i64, ptr addrspace(1) %67, align 8
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %247, label %250
70:
  %71 = load ptr addrspace(1), ptr %v2
  %72 = load i64, ptr %i2
  %73 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %71, i64 72057594037927928)
  %74 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %75 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  %76 = load i64, ptr addrspace(1) %75, align 8
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %218, label %221
78:
  br label %42
79:
  br label %80
80:
  %81 = load i64, ptr %i1
  %82 = load i64, ptr %len1
  %83 = icmp slt i64 %81, %82
  store i1 %83, ptr %17
  %84 = load i1, ptr %17
  br i1 %84, label %85, label %93
85:
  %86 = load ptr addrspace(1), ptr %v1
  %87 = load i64, ptr %i1
  %88 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %86, i64 72057594037927928)
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 1
  %91 = load i64, ptr addrspace(1) %90, align 8
  %92 = icmp ult i64 %87, %91
  br i1 %92, label %142, label %145
93:
  br label %94
94:
  %95 = load i64, ptr %i2
  %96 = load i64, ptr %len2
  %97 = icmp slt i64 %95, %96
  store i1 %97, ptr %21
  %98 = load i1, ptr %21
  br i1 %98, label %99, label %107
99:
  %100 = load ptr addrspace(1), ptr %v2
  %101 = load i64, ptr %i2
  %102 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %100, i64 72057594037927928)
  %103 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %104 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 1
  %105 = load i64, ptr addrspace(1) %104, align 8
  %106 = icmp ult i64 %101, %105
  br i1 %106, label %113, label %116
107:
  %108 = load ptr addrspace(1), ptr %result
  ret ptr addrspace(1) %108
109:
  %110 = load ptr addrspace(1), ptr %25
  call void @_bal_panic(ptr addrspace(1) %110), !dbg !71
  unreachable
111:
  %112 = call ptr addrspace(1) @_bal_panic_construct(i64 13316), !dbg !56
  call void @_bal_panic(ptr addrspace(1) %112), !dbg !57
  unreachable
113:
  %114 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %100, i64 4)
  %115 = icmp ne ptr addrspace(1) %114, null
  br i1 %115, label %118, label %124
116:
  %117 = call ptr addrspace(1) @_bal_panic_construct(i64 20229), !dbg !56
  store ptr addrspace(1) %117, ptr %25
  br label %109
118:
  %119 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = getelementptr inbounds [0 x i64], ptr addrspace(1) %121, i64 0, i64 %101
  %123 = load i64, ptr addrspace(1) %122, align 8
  store i64 %123, ptr %22
  br label %130
124:
  %125 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 0
  %126 = load ptr, ptr addrspace(1) %125, align 8
  %127 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %126, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8
  %129 = call i64 %128(ptr addrspace(1) %100, i64 %101)
  store i64 %129, ptr %22
  br label %130
130:
  %131 = load ptr addrspace(1), ptr %result
  %132 = load i64, ptr %22
  %133 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %132), !dbg !63
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %131, ptr addrspace(1) %133), !dbg !64
  store ptr addrspace(1) null, ptr %23
  %134 = load i64, ptr %i2
  %135 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %134, i64 1)
  %136 = extractvalue {i64, i1} %135, 1
  br i1 %136, label %140, label %137
137:
  %138 = extractvalue {i64, i1} %135, 0
  store i64 %138, ptr %24
  %139 = load i64, ptr %24
  store i64 %139, ptr %i2
  br label %94
140:
  %141 = call ptr addrspace(1) @_bal_panic_construct(i64 20481), !dbg !56
  store ptr addrspace(1) %141, ptr %25
  br label %109
142:
  %143 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %86, i64 4)
  %144 = icmp ne ptr addrspace(1) %143, null
  br i1 %144, label %147, label %153
145:
  %146 = call ptr addrspace(1) @_bal_panic_construct(i64 19205), !dbg !56
  store ptr addrspace(1) %146, ptr %25
  br label %109
147:
  %148 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = getelementptr inbounds [0 x i64], ptr addrspace(1) %150, i64 0, i64 %87
  %152 = load i64, ptr addrspace(1) %151, align 8
  store i64 %152, ptr %18
  br label %159
153:
  %154 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 0
  %155 = load ptr, ptr addrspace(1) %154, align 8
  %156 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %155, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8
  %158 = call i64 %157(ptr addrspace(1) %86, i64 %87)
  store i64 %158, ptr %18
  br label %159
159:
  %160 = load ptr addrspace(1), ptr %result
  %161 = load i64, ptr %18
  %162 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %161), !dbg !65
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %160, ptr addrspace(1) %162), !dbg !66
  store ptr addrspace(1) null, ptr %19
  %163 = load i64, ptr %i1
  %164 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %163, i64 1)
  %165 = extractvalue {i64, i1} %164, 1
  br i1 %165, label %169, label %166
166:
  %167 = extractvalue {i64, i1} %164, 0
  store i64 %167, ptr %20
  %168 = load i64, ptr %20
  store i64 %168, ptr %i1
  br label %80
169:
  %170 = call ptr addrspace(1) @_bal_panic_construct(i64 19457), !dbg !56
  store ptr addrspace(1) %170, ptr %25
  br label %109
171:
  %172 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %54, i64 4)
  %173 = icmp ne ptr addrspace(1) %172, null
  br i1 %173, label %176, label %182
174:
  %175 = call ptr addrspace(1) @_bal_panic_construct(i64 15621), !dbg !56
  store ptr addrspace(1) %175, ptr %25
  br label %109
176:
  %177 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %178 = load ptr addrspace(1), ptr addrspace(1) %177, align 8
  %179 = bitcast ptr addrspace(1) %178 to ptr addrspace(1)
  %180 = getelementptr inbounds [0 x i64], ptr addrspace(1) %179, i64 0, i64 %55
  %181 = load i64, ptr addrspace(1) %180, align 8
  store i64 %181, ptr %8
  br label %188
182:
  %183 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 0
  %184 = load ptr, ptr addrspace(1) %183, align 8
  %185 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %184, i64 0, i32 6
  %186 = load ptr, ptr %185, align 8
  %187 = call i64 %186(ptr addrspace(1) %54, i64 %55)
  store i64 %187, ptr %8
  br label %188
188:
  %189 = load ptr addrspace(1), ptr %v2
  %190 = load i64, ptr %i2
  %191 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %189, i64 72057594037927928)
  %192 = bitcast ptr addrspace(1) %191 to ptr addrspace(1)
  %193 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 1
  %194 = load i64, ptr addrspace(1) %193, align 8
  %195 = icmp ult i64 %190, %194
  br i1 %195, label %196, label %199
196:
  %197 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %189, i64 4)
  %198 = icmp ne ptr addrspace(1) %197, null
  br i1 %198, label %201, label %207
199:
  %200 = call ptr addrspace(1) @_bal_panic_construct(i64 15621), !dbg !56
  store ptr addrspace(1) %200, ptr %25
  br label %109
201:
  %202 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 3
  %203 = load ptr addrspace(1), ptr addrspace(1) %202, align 8
  %204 = bitcast ptr addrspace(1) %203 to ptr addrspace(1)
  %205 = getelementptr inbounds [0 x i64], ptr addrspace(1) %204, i64 0, i64 %190
  %206 = load i64, ptr addrspace(1) %205, align 8
  store i64 %206, ptr %9
  br label %213
207:
  %208 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 0
  %209 = load ptr, ptr addrspace(1) %208, align 8
  %210 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %209, i64 0, i32 6
  %211 = load ptr, ptr %210, align 8
  %212 = call i64 %211(ptr addrspace(1) %189, i64 %190)
  store i64 %212, ptr %9
  br label %213
213:
  %214 = load i64, ptr %8
  %215 = load i64, ptr %9
  %216 = icmp sle i64 %214, %215
  store i1 %216, ptr %10
  %217 = load i1, ptr %10
  br i1 %217, label %62, label %70
218:
  %219 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %71, i64 4)
  %220 = icmp ne ptr addrspace(1) %219, null
  br i1 %220, label %223, label %229
221:
  %222 = call ptr addrspace(1) @_bal_panic_construct(i64 16901), !dbg !56
  store ptr addrspace(1) %222, ptr %25
  br label %109
223:
  %224 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %225 = load ptr addrspace(1), ptr addrspace(1) %224, align 8
  %226 = bitcast ptr addrspace(1) %225 to ptr addrspace(1)
  %227 = getelementptr inbounds [0 x i64], ptr addrspace(1) %226, i64 0, i64 %72
  %228 = load i64, ptr addrspace(1) %227, align 8
  store i64 %228, ptr %14
  br label %235
229:
  %230 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 0
  %231 = load ptr, ptr addrspace(1) %230, align 8
  %232 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %231, i64 0, i32 6
  %233 = load ptr, ptr %232, align 8
  %234 = call i64 %233(ptr addrspace(1) %71, i64 %72)
  store i64 %234, ptr %14
  br label %235
235:
  %236 = load ptr addrspace(1), ptr %result
  %237 = load i64, ptr %14
  %238 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %237), !dbg !67
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %236, ptr addrspace(1) %238), !dbg !68
  store ptr addrspace(1) null, ptr %15
  %239 = load i64, ptr %i2
  %240 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %239, i64 1)
  %241 = extractvalue {i64, i1} %240, 1
  br i1 %241, label %245, label %242
242:
  %243 = extractvalue {i64, i1} %240, 0
  store i64 %243, ptr %16
  %244 = load i64, ptr %16
  store i64 %244, ptr %i2
  br label %78
245:
  %246 = call ptr addrspace(1) @_bal_panic_construct(i64 17153), !dbg !56
  store ptr addrspace(1) %246, ptr %25
  br label %109
247:
  %248 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %63, i64 4)
  %249 = icmp ne ptr addrspace(1) %248, null
  br i1 %249, label %252, label %258
250:
  %251 = call ptr addrspace(1) @_bal_panic_construct(i64 15877), !dbg !56
  store ptr addrspace(1) %251, ptr %25
  br label %109
252:
  %253 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %254 = load ptr addrspace(1), ptr addrspace(1) %253, align 8
  %255 = bitcast ptr addrspace(1) %254 to ptr addrspace(1)
  %256 = getelementptr inbounds [0 x i64], ptr addrspace(1) %255, i64 0, i64 %64
  %257 = load i64, ptr addrspace(1) %256, align 8
  store i64 %257, ptr %11
  br label %264
258:
  %259 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 0
  %260 = load ptr, ptr addrspace(1) %259, align 8
  %261 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %260, i64 0, i32 6
  %262 = load ptr, ptr %261, align 8
  %263 = call i64 %262(ptr addrspace(1) %63, i64 %64)
  store i64 %263, ptr %11
  br label %264
264:
  %265 = load ptr addrspace(1), ptr %result
  %266 = load i64, ptr %11
  %267 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %266), !dbg !69
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %265, ptr addrspace(1) %267), !dbg !70
  store ptr addrspace(1) null, ptr %12
  %268 = load i64, ptr %i1
  %269 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %268, i64 1)
  %270 = extractvalue {i64, i1} %269, 1
  br i1 %270, label %274, label %271
271:
  %272 = extractvalue {i64, i1} %269, 0
  store i64 %272, ptr %13
  %273 = load i64, ptr %13
  store i64 %273, ptr %i1
  br label %78
274:
  %275 = call ptr addrspace(1) @_bal_panic_construct(i64 16129), !dbg !56
  store ptr addrspace(1) %275, ptr %25
  br label %109
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-bench/intmergesort-v.bal", directory:"")
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
!28 = !DILocation(line: 21, column: 23, scope: !5)
!29 = !DILocation(line: 21, column: 12, scope: !5)
!30 = !DILocation(line: 14, column: 10, scope: !5)
!31 = !DILocation(line: 14, column: 10, scope: !5)
!32 = !DILocation(line: 25, column: 0, scope: !5)
!33 = !DILocation(line: 0, column: 0, scope: !7)
!34 = !DILocation(line: 27, column: 9, scope: !7)
!35 = !DILocation(line: 29, column: 29, scope: !7)
!36 = !DILocation(line: 29, column: 29, scope: !7)
!37 = !DILocation(line: 33, column: 0, scope: !7)
!38 = !DILocation(line: 0, column: 0, scope: !9)
!39 = !DILocation(line: 36, column: 9, scope: !9)
!40 = !DILocation(line: 37, column: 9, scope: !9)
!41 = !DILocation(line: 37, column: 9, scope: !9)
!42 = !DILocation(line: 40, column: 16, scope: !9)
!43 = !DILocation(line: 40, column: 16, scope: !9)
!44 = !DILocation(line: 41, column: 18, scope: !9)
!45 = !DILocation(line: 45, column: 18, scope: !9)
!46 = !DILocation(line: 46, column: 31, scope: !9)
!47 = !DILocation(line: 46, column: 31, scope: !9)
!48 = !DILocation(line: 49, column: 17, scope: !9)
!49 = !DILocation(line: 49, column: 30, scope: !9)
!50 = !DILocation(line: 49, column: 11, scope: !9)
!51 = !DILocation(line: 47, column: 14, scope: !9)
!52 = !DILocation(line: 47, column: 14, scope: !9)
!53 = !DILocation(line: 43, column: 14, scope: !9)
!54 = !DILocation(line: 43, column: 14, scope: !9)
!55 = !DILocation(line: 50, column: 0, scope: !9)
!56 = !DILocation(line: 0, column: 0, scope: !11)
!57 = !DILocation(line: 52, column: 9, scope: !11)
!58 = !DILocation(line: 53, column: 19, scope: !11)
!59 = !DILocation(line: 56, column: 18, scope: !11)
!60 = !DILocation(line: 56, column: 18, scope: !11)
!61 = !DILocation(line: 57, column: 18, scope: !11)
!62 = !DILocation(line: 57, column: 18, scope: !11)
!63 = !DILocation(line: 79, column: 15, scope: !11)
!64 = !DILocation(line: 79, column: 15, scope: !11)
!65 = !DILocation(line: 75, column: 15, scope: !11)
!66 = !DILocation(line: 75, column: 15, scope: !11)
!67 = !DILocation(line: 66, column: 27, scope: !11)
!68 = !DILocation(line: 66, column: 27, scope: !11)
!69 = !DILocation(line: 62, column: 27, scope: !11)
!70 = !DILocation(line: 62, column: 27, scope: !11)
!71 = !DILocation(line: 83, column: 0, scope: !11)
