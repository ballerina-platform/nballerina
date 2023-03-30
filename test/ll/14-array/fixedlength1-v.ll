@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %i5 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %b3 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %i0 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %f3 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca double
  %25 = alloca double
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca i8
  %30 = load ptr, ptr @_bal_stack_guard
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %76, label %32
32:
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 4), !dbg !9
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = and i64 72057594037927935, 1
  %38 = or i64 2449958197289549824, %37
  %39 = getelementptr i8, ptr addrspace(1) null, i64 %38
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = and i64 72057594037927935, 2
  %42 = or i64 2449958197289549824, %41
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 1
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = and i64 72057594037927935, 3
  %46 = or i64 2449958197289549824, %45
  %47 = getelementptr i8, ptr addrspace(1) null, i64 %46
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 2
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = and i64 72057594037927935, 4
  %50 = or i64 2449958197289549824, %49
  %51 = getelementptr i8, ptr addrspace(1) null, i64 %50
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 3
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 4, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %1
  %56 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %56, ptr %i5
  %57 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = load ptr addrspace(1), ptr %i5
  %62 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %61), !dbg !11
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %60, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %2
  %67 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !12
  store ptr addrspace(1) null, ptr %3
  %68 = load ptr addrspace(1), ptr %i5
  %69 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %68, i64 72057594037927928)
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 1
  %72 = load i64, ptr addrspace(1) %71, align 8
  %73 = icmp ult i64 1, %72
  br i1 %73, label %78, label %104
74:
  %75 = load ptr addrspace(1), ptr %28
  call void @_bal_panic(ptr addrspace(1) %75), !dbg !46
  unreachable
76:
  %77 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %77), !dbg !8
  unreachable
78:
  %79 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %70, i64 0, i32 0
  %80 = load ptr, ptr addrspace(1) %79, align 8
  %81 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8
  %83 = call i64 %82(ptr addrspace(1) %68, i64 1)
  store i64 %83, ptr %4
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load i64, ptr %4
  %89 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %88), !dbg !14
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %5
  %94 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !15
  store ptr addrspace(1) null, ptr %6
  %95 = load ptr addrspace(1), ptr %i5
  %96 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %95, i64 72057594037927928), !dbg !16
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 0
  %99 = load ptr, ptr addrspace(1) %98, align 8
  %100 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %99, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8
  %102 = call i64 %101(ptr addrspace(1) %95, i64 2, i64 17)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %106, label %190
104:
  %105 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %105, ptr %28
  br label %74
106:
  %107 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 3
  %109 = load ptr addrspace(1), ptr addrspace(1) %108, align 8
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = load ptr addrspace(1), ptr %i5
  %112 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %111), !dbg !18
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %110, i64 0, i64 0
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  store i64 1, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %7
  %117 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %117), !dbg !19
  store ptr addrspace(1) null, ptr %8
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 4), !dbg !20
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = and i64 72057594037927935, 4
  %123 = or i64 2449958197289549824, %122
  %124 = getelementptr i8, ptr addrspace(1) null, i64 %123
  %125 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %124, ptr addrspace(1) %125
  %126 = and i64 72057594037927935, 5
  %127 = or i64 2449958197289549824, %126
  %128 = getelementptr i8, ptr addrspace(1) null, i64 %127
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 1
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = and i64 72057594037927935, 6
  %131 = or i64 2449958197289549824, %130
  %132 = getelementptr i8, ptr addrspace(1) null, i64 %131
  %133 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 2
  store ptr addrspace(1) %132, ptr addrspace(1) %133
  %134 = and i64 72057594037927935, 7
  %135 = or i64 2449958197289549824, %134
  %136 = getelementptr i8, ptr addrspace(1) null, i64 %135
  %137 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 3
  store ptr addrspace(1) %136, ptr addrspace(1) %137
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 4, ptr addrspace(1) %138
  %139 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %140 = getelementptr i8, ptr addrspace(1) %139, i64 864691128455135236
  store ptr addrspace(1) %140, ptr %9
  %141 = load ptr addrspace(1), ptr %9
  store ptr addrspace(1) %141, ptr %i5
  %142 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 3
  %144 = load ptr addrspace(1), ptr addrspace(1) %143, align 8
  %145 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %146 = load ptr addrspace(1), ptr %i5
  %147 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %146), !dbg !22
  %148 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %145, i64 0, i64 0
  store ptr addrspace(1) %147, ptr addrspace(1) %148
  %149 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 1
  store i64 1, ptr addrspace(1) %149
  %150 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %151 = getelementptr i8, ptr addrspace(1) %150, i64 864691128455135236
  store ptr addrspace(1) %151, ptr %10
  %152 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %152), !dbg !23
  store ptr addrspace(1) null, ptr %11
  %153 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 3), !dbg !24
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %153, i64 0, i32 3
  %155 = load ptr addrspace(1), ptr addrspace(1) %154, align 8
  %156 = bitcast ptr addrspace(1) %155 to ptr addrspace(1)
  %157 = zext i1 1 to i64
  %158 = or i64 %157, 72057594037927936
  %159 = getelementptr i8, ptr addrspace(1) null, i64 %158
  %160 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %156, i64 0, i64 0
  store ptr addrspace(1) %159, ptr addrspace(1) %160
  %161 = zext i1 0 to i64
  %162 = or i64 %161, 72057594037927936
  %163 = getelementptr i8, ptr addrspace(1) null, i64 %162
  %164 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %156, i64 0, i64 1
  store ptr addrspace(1) %163, ptr addrspace(1) %164
  %165 = zext i1 1 to i64
  %166 = or i64 %165, 72057594037927936
  %167 = getelementptr i8, ptr addrspace(1) null, i64 %166
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %156, i64 0, i64 2
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %153, i64 0, i32 1
  store i64 3, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %12
  %172 = load ptr addrspace(1), ptr %12
  store ptr addrspace(1) %172, ptr %b3
  %173 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 3
  %175 = load ptr addrspace(1), ptr addrspace(1) %174, align 8
  %176 = bitcast ptr addrspace(1) %175 to ptr addrspace(1)
  %177 = load ptr addrspace(1), ptr %b3
  %178 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %177), !dbg !26
  %179 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %176, i64 0, i64 0
  store ptr addrspace(1) %178, ptr addrspace(1) %179
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 1
  store i64 1, ptr addrspace(1) %180
  %181 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 864691128455135236
  store ptr addrspace(1) %182, ptr %13
  %183 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %183), !dbg !27
  store ptr addrspace(1) null, ptr %14
  %184 = load ptr addrspace(1), ptr %b3
  %185 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %184, i64 72057594037927928)
  %186 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %187 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 1
  %188 = load i64, ptr addrspace(1) %187, align 8
  %189 = icmp ult i64 1, %188
  br i1 %189, label %193, label %227
190:
  %191 = or i64 %102, 1792
  %192 = call ptr addrspace(1) @_bal_panic_construct(i64 %191), !dbg !7
  store ptr addrspace(1) %192, ptr %28
  br label %74
193:
  %194 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 0
  %195 = load ptr, ptr addrspace(1) %194, align 8
  %196 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %195, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8
  %198 = call ptr addrspace(1) %197(ptr addrspace(1) %184, i64 1)
  %199 = addrspacecast ptr addrspace(1) %198 to ptr
  %200 = ptrtoint ptr %199 to i64
  %201 = trunc i64 %200 to i1
  store i1 %201, ptr %15
  %202 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !28
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 3
  %204 = load ptr addrspace(1), ptr addrspace(1) %203, align 8
  %205 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %206 = load i1, ptr %15
  %207 = zext i1 %206 to i64
  %208 = or i64 %207, 72057594037927936
  %209 = getelementptr i8, ptr addrspace(1) null, i64 %208
  %210 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %205, i64 0, i64 0
  store ptr addrspace(1) %209, ptr addrspace(1) %210
  %211 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 1
  store i64 1, ptr addrspace(1) %211
  %212 = bitcast ptr addrspace(1) %202 to ptr addrspace(1)
  %213 = getelementptr i8, ptr addrspace(1) %212, i64 864691128455135236
  store ptr addrspace(1) %213, ptr %16
  %214 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %214), !dbg !29
  store ptr addrspace(1) null, ptr %17
  %215 = load ptr addrspace(1), ptr %b3
  %216 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %215, i64 72057594037927928), !dbg !30
  %217 = bitcast ptr addrspace(1) %216 to ptr addrspace(1)
  %218 = zext i1 1 to i64
  %219 = or i64 %218, 72057594037927936
  %220 = getelementptr i8, ptr addrspace(1) null, i64 %219
  %221 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 0
  %222 = load ptr, ptr addrspace(1) %221, align 8
  %223 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %222, i64 0, i32 4
  %224 = load ptr, ptr %223, align 8
  %225 = call i64 %224(ptr addrspace(1) %215, i64 1, ptr addrspace(1) %220)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %229, label %276
227:
  %228 = call ptr addrspace(1) @_bal_panic_construct(i64 3333), !dbg !7
  store ptr addrspace(1) %228, ptr %28
  br label %74
229:
  %230 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !31
  %231 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %230, i64 0, i32 3
  %232 = load ptr addrspace(1), ptr addrspace(1) %231, align 8
  %233 = bitcast ptr addrspace(1) %232 to ptr addrspace(1)
  %234 = load ptr addrspace(1), ptr %b3
  %235 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %234), !dbg !32
  %236 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %233, i64 0, i64 0
  store ptr addrspace(1) %235, ptr addrspace(1) %236
  %237 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %230, i64 0, i32 1
  store i64 1, ptr addrspace(1) %237
  %238 = bitcast ptr addrspace(1) %230 to ptr addrspace(1)
  %239 = getelementptr i8, ptr addrspace(1) %238, i64 864691128455135236
  store ptr addrspace(1) %239, ptr %18
  %240 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %240), !dbg !33
  store ptr addrspace(1) null, ptr %19
  %241 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 0), !dbg !34
  %242 = bitcast ptr addrspace(1) %241 to ptr addrspace(1)
  %243 = getelementptr i8, ptr addrspace(1) %242, i64 864691128455135236
  store ptr addrspace(1) %243, ptr %20
  %244 = load ptr addrspace(1), ptr %20
  store ptr addrspace(1) %244, ptr %i0
  %245 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !35
  %246 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 3
  %247 = load ptr addrspace(1), ptr addrspace(1) %246, align 8
  %248 = bitcast ptr addrspace(1) %247 to ptr addrspace(1)
  %249 = load ptr addrspace(1), ptr %i0
  %250 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %249), !dbg !36
  %251 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %248, i64 0, i64 0
  store ptr addrspace(1) %250, ptr addrspace(1) %251
  %252 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %245, i64 0, i32 1
  store i64 1, ptr addrspace(1) %252
  %253 = bitcast ptr addrspace(1) %245 to ptr addrspace(1)
  %254 = getelementptr i8, ptr addrspace(1) %253, i64 864691128455135236
  store ptr addrspace(1) %254, ptr %21
  %255 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %255), !dbg !37
  store ptr addrspace(1) null, ptr %22
  %256 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 3), !dbg !38
  %257 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %256, i64 0, i32 3
  %258 = load ptr addrspace(1), ptr addrspace(1) %257, align 8
  %259 = bitcast ptr addrspace(1) %258 to ptr addrspace(1)
  %260 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !39
  %261 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %259, i64 0, i64 0
  store ptr addrspace(1) %260, ptr addrspace(1) %261
  %262 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.5), !dbg !40
  %263 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %259, i64 0, i64 1
  store ptr addrspace(1) %262, ptr addrspace(1) %263
  %264 = call ptr addrspace(1) @_bal_float_to_tagged(double 3.5), !dbg !41
  %265 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %259, i64 0, i64 2
  store ptr addrspace(1) %264, ptr addrspace(1) %265
  %266 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %256, i64 0, i32 1
  store i64 3, ptr addrspace(1) %266
  %267 = bitcast ptr addrspace(1) %256 to ptr addrspace(1)
  %268 = getelementptr i8, ptr addrspace(1) %267, i64 864691128455135236
  store ptr addrspace(1) %268, ptr %23
  %269 = load ptr addrspace(1), ptr %23
  store ptr addrspace(1) %269, ptr %f3
  %270 = load ptr addrspace(1), ptr %f3
  %271 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %270, i64 72057594037927928)
  %272 = bitcast ptr addrspace(1) %271 to ptr addrspace(1)
  %273 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %272, i64 0, i32 1
  %274 = load i64, ptr addrspace(1) %273, align 8
  %275 = icmp ult i64 1, %274
  br i1 %275, label %279, label %297
276:
  %277 = or i64 %225, 3584
  %278 = call ptr addrspace(1) @_bal_panic_construct(i64 %277), !dbg !7
  store ptr addrspace(1) %278, ptr %28
  br label %74
279:
  %280 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %272, i64 0, i32 0
  %281 = load ptr, ptr addrspace(1) %280, align 8
  %282 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %281, i64 0, i32 9
  %283 = load ptr, ptr %282, align 8
  %284 = call double %283(ptr addrspace(1) %270, i64 1)
  store double %284, ptr %24
  %285 = load double, ptr %24
  %286 = fadd double %285, 1.0
  store double %286, ptr %25
  %287 = load ptr addrspace(1), ptr %f3
  %288 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %287, i64 72057594037927928), !dbg !42
  %289 = bitcast ptr addrspace(1) %288 to ptr addrspace(1)
  %290 = load double, ptr %25
  %291 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %289, i64 0, i32 0
  %292 = load ptr, ptr addrspace(1) %291, align 8
  %293 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %292, i64 0, i32 10
  %294 = load ptr, ptr %293, align 8
  %295 = call i64 %294(ptr addrspace(1) %287, i64 1, double %290)
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %299, label %311
297:
  %298 = call ptr addrspace(1) @_bal_panic_construct(i64 4869), !dbg !7
  store ptr addrspace(1) %298, ptr %28
  br label %74
299:
  %300 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !43
  %301 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %300, i64 0, i32 3
  %302 = load ptr addrspace(1), ptr addrspace(1) %301, align 8
  %303 = bitcast ptr addrspace(1) %302 to ptr addrspace(1)
  %304 = load ptr addrspace(1), ptr %f3
  %305 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %304), !dbg !44
  %306 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %303, i64 0, i64 0
  store ptr addrspace(1) %305, ptr addrspace(1) %306
  %307 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %300, i64 0, i32 1
  store i64 1, ptr addrspace(1) %307
  %308 = bitcast ptr addrspace(1) %300 to ptr addrspace(1)
  %309 = getelementptr i8, ptr addrspace(1) %308, i64 864691128455135236
  store ptr addrspace(1) %309, ptr %26
  %310 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %310), !dbg !45
  store ptr addrspace(1) null, ptr %27
  ret void
311:
  %312 = or i64 %295, 4864
  %313 = call ptr addrspace(1) @_bal_panic_construct(i64 %312), !dbg !7
  store ptr addrspace(1) %313, ptr %28
  br label %74
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-array/fixedlength1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 16, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 6, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 9, column: 9, scope: !5)
!21 = !DILocation(line: 10, column: 15, scope: !5)
!22 = !DILocation(line: 10, column: 15, scope: !5)
!23 = !DILocation(line: 10, column: 4, scope: !5)
!24 = !DILocation(line: 11, column: 20, scope: !5)
!25 = !DILocation(line: 12, column: 15, scope: !5)
!26 = !DILocation(line: 12, column: 15, scope: !5)
!27 = !DILocation(line: 12, column: 4, scope: !5)
!28 = !DILocation(line: 13, column: 15, scope: !5)
!29 = !DILocation(line: 13, column: 4, scope: !5)
!30 = !DILocation(line: 14, column: 6, scope: !5)
!31 = !DILocation(line: 15, column: 15, scope: !5)
!32 = !DILocation(line: 15, column: 15, scope: !5)
!33 = !DILocation(line: 15, column: 4, scope: !5)
!34 = !DILocation(line: 16, column: 16, scope: !5)
!35 = !DILocation(line: 17, column: 15, scope: !5)
!36 = !DILocation(line: 17, column: 15, scope: !5)
!37 = !DILocation(line: 17, column: 4, scope: !5)
!38 = !DILocation(line: 18, column: 17, scope: !5)
!39 = !DILocation(line: 18, column: 17, scope: !5)
!40 = !DILocation(line: 18, column: 17, scope: !5)
!41 = !DILocation(line: 18, column: 17, scope: !5)
!42 = !DILocation(line: 19, column: 6, scope: !5)
!43 = !DILocation(line: 20, column: 15, scope: !5)
!44 = !DILocation(line: 20, column: 15, scope: !5)
!45 = !DILocation(line: 20, column: 4, scope: !5)
!46 = !DILocation(line: 21, column: 0, scope: !5)
