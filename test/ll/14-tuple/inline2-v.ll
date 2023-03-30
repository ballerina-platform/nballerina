@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
@_Bi04root5 = external constant {i32}
@_Bi04root6 = external constant {i32}
@_Bi04root7 = external constant {i32}
@_Bi04root8 = external constant {i32}
@_Bi04root9 = external constant {i32}
@_Bi04root10 = external constant {i32}
@_Bi04root11 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %t1 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %t2 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %t3 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %t4 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %t5 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %t6 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %t7 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %t8 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %t9 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %t10 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %t11 = alloca ptr addrspace(1)
  %34 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i8
  %38 = load ptr, ptr @_bal_stack_guard
  %39 = icmp ult ptr %37, %38
  br i1 %39, label %331, label %40
40:
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = and i64 72057594037927935, 1
  %46 = or i64 2449958197289549824, %45
  %47 = getelementptr i8, ptr addrspace(1) null, i64 %46
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %49
  %50 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %1
  %52 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %52, ptr %p
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = load ptr addrspace(1), ptr %p
  %58 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %57), !dbg !11
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %2
  %63 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !12
  store ptr addrspace(1) null, ptr %3
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !13
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = and i64 72057594037927935, 21
  %69 = or i64 2449958197289549824, %68
  %70 = getelementptr i8, ptr addrspace(1) null, i64 %69
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %4
  %75 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %75, ptr %t1
  %76 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = load ptr addrspace(1), ptr %t1
  %81 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %80), !dbg !15
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 1
  store i64 1, ptr addrspace(1) %83
  %84 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %85 = getelementptr i8, ptr addrspace(1) %84, i64 864691128455135236
  store ptr addrspace(1) %85, ptr %5
  %86 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %86), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 3), !dbg !17
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = zext i1 1 to i64
  %92 = or i64 %91, 72057594037927936
  %93 = getelementptr i8, ptr addrspace(1) null, i64 %92
  %94 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %93, ptr addrspace(1) %94
  %95 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013940), ptr addrspace(1) %95
  %96 = zext i1 1 to i64
  %97 = or i64 %96, 72057594037927936
  %98 = getelementptr i8, ptr addrspace(1) null, i64 %97
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 2
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 3, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %7
  %103 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %103, ptr %t2
  %104 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 3
  %106 = load ptr addrspace(1), ptr addrspace(1) %105, align 8
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = load ptr addrspace(1), ptr %t2
  %109 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %108), !dbg !19
  %110 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %107, i64 0, i64 0
  store ptr addrspace(1) %109, ptr addrspace(1) %110
  %111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 1
  store i64 1, ptr addrspace(1) %111
  %112 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %113 = getelementptr i8, ptr addrspace(1) %112, i64 864691128455135236
  store ptr addrspace(1) %113, ptr %8
  %114 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %114), !dbg !20
  store ptr addrspace(1) null, ptr %9
  %115 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !21
  %116 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %115, i64 0, i32 3
  %117 = load ptr addrspace(1), ptr addrspace(1) %116, align 8
  %118 = bitcast ptr addrspace(1) %117 to ptr addrspace(1)
  %119 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.5), !dbg !22
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %118, i64 0, i64 0
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %115, i64 0, i32 1
  store i64 1, ptr addrspace(1) %121
  %122 = bitcast ptr addrspace(1) %115 to ptr addrspace(1)
  %123 = getelementptr i8, ptr addrspace(1) %122, i64 864691128455135236
  store ptr addrspace(1) %123, ptr %10
  %124 = load ptr addrspace(1), ptr %10
  store ptr addrspace(1) %124, ptr %t3
  %125 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 3
  %127 = load ptr addrspace(1), ptr addrspace(1) %126, align 8
  %128 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %129 = load ptr addrspace(1), ptr %t3
  %130 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %129), !dbg !24
  %131 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %128, i64 0, i64 0
  store ptr addrspace(1) %130, ptr addrspace(1) %131
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 1
  store i64 1, ptr addrspace(1) %132
  %133 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 864691128455135236
  store ptr addrspace(1) %134, ptr %11
  %135 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %135), !dbg !25
  store ptr addrspace(1) null, ptr %12
  %136 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 3), !dbg !26
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 3
  %138 = load ptr addrspace(1), ptr addrspace(1) %137, align 8
  %139 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %140 = call ptr addrspace(1) @_bal_float_to_tagged(double 4.5), !dbg !27
  %141 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %139, i64 0, i64 0
  store ptr addrspace(1) %140, ptr addrspace(1) %141
  %142 = and i64 72057594037927935, 2
  %143 = or i64 2449958197289549824, %142
  %144 = getelementptr i8, ptr addrspace(1) null, i64 %143
  %145 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %139, i64 0, i64 1
  store ptr addrspace(1) %144, ptr addrspace(1) %145
  %146 = and i64 72057594037927935, 4
  %147 = or i64 2449958197289549824, %146
  %148 = getelementptr i8, ptr addrspace(1) null, i64 %147
  %149 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %139, i64 0, i64 2
  store ptr addrspace(1) %148, ptr addrspace(1) %149
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 1
  store i64 3, ptr addrspace(1) %150
  %151 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %152 = getelementptr i8, ptr addrspace(1) %151, i64 864691128455135236
  store ptr addrspace(1) %152, ptr %13
  %153 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %153, ptr %t4
  %154 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !28
  %155 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 3
  %156 = load ptr addrspace(1), ptr addrspace(1) %155, align 8
  %157 = bitcast ptr addrspace(1) %156 to ptr addrspace(1)
  %158 = load ptr addrspace(1), ptr %t4
  %159 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %158), !dbg !29
  %160 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %157, i64 0, i64 0
  store ptr addrspace(1) %159, ptr addrspace(1) %160
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 1
  store i64 1, ptr addrspace(1) %161
  %162 = bitcast ptr addrspace(1) %154 to ptr addrspace(1)
  %163 = getelementptr i8, ptr addrspace(1) %162, i64 864691128455135236
  store ptr addrspace(1) %163, ptr %14
  %164 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %164), !dbg !30
  store ptr addrspace(1) null, ptr %15
  %165 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root6, i64 1), !dbg !31
  %166 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 3
  %167 = load ptr addrspace(1), ptr addrspace(1) %166, align 8
  %168 = bitcast ptr addrspace(1) %167 to ptr addrspace(1)
  %169 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.5), !dbg !32
  %170 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %168, i64 0, i64 0
  store ptr addrspace(1) %169, ptr addrspace(1) %170
  %171 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %165, i64 0, i32 1
  store i64 1, ptr addrspace(1) %171
  %172 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %173 = getelementptr i8, ptr addrspace(1) %172, i64 864691128455135236
  store ptr addrspace(1) %173, ptr %16
  %174 = load ptr addrspace(1), ptr %16
  store ptr addrspace(1) %174, ptr %t5
  %175 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !33
  %176 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %175, i64 0, i32 3
  %177 = load ptr addrspace(1), ptr addrspace(1) %176, align 8
  %178 = bitcast ptr addrspace(1) %177 to ptr addrspace(1)
  %179 = load ptr addrspace(1), ptr %t5
  %180 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %179), !dbg !34
  %181 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %178, i64 0, i64 0
  store ptr addrspace(1) %180, ptr addrspace(1) %181
  %182 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %175, i64 0, i32 1
  store i64 1, ptr addrspace(1) %182
  %183 = bitcast ptr addrspace(1) %175 to ptr addrspace(1)
  %184 = getelementptr i8, ptr addrspace(1) %183, i64 864691128455135236
  store ptr addrspace(1) %184, ptr %17
  %185 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %185), !dbg !35
  store ptr addrspace(1) null, ptr %18
  %186 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 3), !dbg !36
  %187 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 3
  %188 = load ptr addrspace(1), ptr addrspace(1) %187, align 8
  %189 = bitcast ptr addrspace(1) %188 to ptr addrspace(1)
  %190 = call ptr addrspace(1) @_bal_float_to_tagged(double 4.5), !dbg !37
  %191 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %189, i64 0, i64 0
  store ptr addrspace(1) %190, ptr addrspace(1) %191
  %192 = and i64 72057594037927935, 2
  %193 = or i64 2449958197289549824, %192
  %194 = getelementptr i8, ptr addrspace(1) null, i64 %193
  %195 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %189, i64 0, i64 1
  store ptr addrspace(1) %194, ptr addrspace(1) %195
  %196 = and i64 72057594037927935, 1
  %197 = or i64 2449958197289549824, %196
  %198 = getelementptr i8, ptr addrspace(1) null, i64 %197
  %199 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %189, i64 0, i64 2
  store ptr addrspace(1) %198, ptr addrspace(1) %199
  %200 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %186, i64 0, i32 1
  store i64 3, ptr addrspace(1) %200
  %201 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %202 = getelementptr i8, ptr addrspace(1) %201, i64 864691128455135236
  store ptr addrspace(1) %202, ptr %19
  %203 = load ptr addrspace(1), ptr %19
  store ptr addrspace(1) %203, ptr %t6
  %204 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !38
  %205 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %204, i64 0, i32 3
  %206 = load ptr addrspace(1), ptr addrspace(1) %205, align 8
  %207 = bitcast ptr addrspace(1) %206 to ptr addrspace(1)
  %208 = load ptr addrspace(1), ptr %t6
  %209 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %208), !dbg !39
  %210 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %207, i64 0, i64 0
  store ptr addrspace(1) %209, ptr addrspace(1) %210
  %211 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %204, i64 0, i32 1
  store i64 1, ptr addrspace(1) %211
  %212 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %213 = getelementptr i8, ptr addrspace(1) %212, i64 864691128455135236
  store ptr addrspace(1) %213, ptr %20
  %214 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %214), !dbg !40
  store ptr addrspace(1) null, ptr %21
  %215 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root6, i64 1), !dbg !41
  %216 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %215, i64 0, i32 3
  %217 = load ptr addrspace(1), ptr addrspace(1) %216, align 8
  %218 = bitcast ptr addrspace(1) %217 to ptr addrspace(1)
  %219 = and i64 72057594037927935, 2
  %220 = or i64 2449958197289549824, %219
  %221 = getelementptr i8, ptr addrspace(1) null, i64 %220
  %222 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %218, i64 0, i64 0
  store ptr addrspace(1) %221, ptr addrspace(1) %222
  %223 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %215, i64 0, i32 1
  store i64 1, ptr addrspace(1) %223
  %224 = bitcast ptr addrspace(1) %215 to ptr addrspace(1)
  %225 = getelementptr i8, ptr addrspace(1) %224, i64 864691128455135236
  store ptr addrspace(1) %225, ptr %22
  %226 = load ptr addrspace(1), ptr %22
  store ptr addrspace(1) %226, ptr %t7
  %227 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !42
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %227, i64 0, i32 3
  %229 = load ptr addrspace(1), ptr addrspace(1) %228, align 8
  %230 = bitcast ptr addrspace(1) %229 to ptr addrspace(1)
  %231 = load ptr addrspace(1), ptr %t7
  %232 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %231), !dbg !43
  %233 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %230, i64 0, i64 0
  store ptr addrspace(1) %232, ptr addrspace(1) %233
  %234 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %227, i64 0, i32 1
  store i64 1, ptr addrspace(1) %234
  %235 = bitcast ptr addrspace(1) %227 to ptr addrspace(1)
  %236 = getelementptr i8, ptr addrspace(1) %235, i64 864691128455135236
  store ptr addrspace(1) %236, ptr %23
  %237 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %237), !dbg !44
  store ptr addrspace(1) null, ptr %24
  %238 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root8, i64 2), !dbg !45
  %239 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %238, i64 0, i32 3
  %240 = load ptr addrspace(1), ptr addrspace(1) %239, align 8
  %241 = bitcast ptr addrspace(1) %240 to ptr addrspace(1)
  %242 = and i64 72057594037927935, 2
  %243 = or i64 2449958197289549824, %242
  %244 = getelementptr i8, ptr addrspace(1) null, i64 %243
  %245 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %241, i64 0, i64 0
  store ptr addrspace(1) %244, ptr addrspace(1) %245
  %246 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %241, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013940), ptr addrspace(1) %246
  %247 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %238, i64 0, i32 1
  store i64 2, ptr addrspace(1) %247
  %248 = bitcast ptr addrspace(1) %238 to ptr addrspace(1)
  %249 = getelementptr i8, ptr addrspace(1) %248, i64 864691128455135236
  store ptr addrspace(1) %249, ptr %25
  %250 = load ptr addrspace(1), ptr %25
  store ptr addrspace(1) %250, ptr %t8
  %251 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !46
  %252 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %251, i64 0, i32 3
  %253 = load ptr addrspace(1), ptr addrspace(1) %252, align 8
  %254 = bitcast ptr addrspace(1) %253 to ptr addrspace(1)
  %255 = load ptr addrspace(1), ptr %t8
  %256 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %255), !dbg !47
  %257 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %254, i64 0, i64 0
  store ptr addrspace(1) %256, ptr addrspace(1) %257
  %258 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %251, i64 0, i32 1
  store i64 1, ptr addrspace(1) %258
  %259 = bitcast ptr addrspace(1) %251 to ptr addrspace(1)
  %260 = getelementptr i8, ptr addrspace(1) %259, i64 864691128455135236
  store ptr addrspace(1) %260, ptr %26
  %261 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %261), !dbg !48
  store ptr addrspace(1) null, ptr %27
  %262 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root9, i64 3), !dbg !49
  %263 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %262, i64 0, i32 3
  %264 = load ptr addrspace(1), ptr addrspace(1) %263, align 8
  %265 = bitcast ptr addrspace(1) %264 to ptr addrspace(1)
  %266 = and i64 72057594037927935, 2
  %267 = or i64 2449958197289549824, %266
  %268 = getelementptr i8, ptr addrspace(1) null, i64 %267
  %269 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %265, i64 0, i64 0
  store ptr addrspace(1) %268, ptr addrspace(1) %269
  %270 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %265, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187686336750964), ptr addrspace(1) %270
  %271 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %265, i64 0, i64 2
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187690631718260), ptr addrspace(1) %271
  %272 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %262, i64 0, i32 1
  store i64 3, ptr addrspace(1) %272
  %273 = bitcast ptr addrspace(1) %262 to ptr addrspace(1)
  %274 = getelementptr i8, ptr addrspace(1) %273, i64 864691128455135236
  store ptr addrspace(1) %274, ptr %28
  %275 = load ptr addrspace(1), ptr %28
  store ptr addrspace(1) %275, ptr %t9
  %276 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !50
  %277 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %276, i64 0, i32 3
  %278 = load ptr addrspace(1), ptr addrspace(1) %277, align 8
  %279 = bitcast ptr addrspace(1) %278 to ptr addrspace(1)
  %280 = load ptr addrspace(1), ptr %t9
  %281 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %280), !dbg !51
  %282 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %279, i64 0, i64 0
  store ptr addrspace(1) %281, ptr addrspace(1) %282
  %283 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %276, i64 0, i32 1
  store i64 1, ptr addrspace(1) %283
  %284 = bitcast ptr addrspace(1) %276 to ptr addrspace(1)
  %285 = getelementptr i8, ptr addrspace(1) %284, i64 864691128455135236
  store ptr addrspace(1) %285, ptr %29
  %286 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %286), !dbg !52
  store ptr addrspace(1) null, ptr %30
  %287 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root10, i64 1), !dbg !53
  %288 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %287, i64 0, i32 3
  %289 = load ptr addrspace(1), ptr addrspace(1) %288, align 8
  %290 = bitcast ptr addrspace(1) %289 to ptr addrspace(1)
  %291 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %290, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013940), ptr addrspace(1) %291
  %292 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %287, i64 0, i32 1
  store i64 1, ptr addrspace(1) %292
  %293 = bitcast ptr addrspace(1) %287 to ptr addrspace(1)
  %294 = getelementptr i8, ptr addrspace(1) %293, i64 864691128455135236
  store ptr addrspace(1) %294, ptr %31
  %295 = load ptr addrspace(1), ptr %31
  store ptr addrspace(1) %295, ptr %t10
  %296 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !54
  %297 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %296, i64 0, i32 3
  %298 = load ptr addrspace(1), ptr addrspace(1) %297, align 8
  %299 = bitcast ptr addrspace(1) %298 to ptr addrspace(1)
  %300 = load ptr addrspace(1), ptr %t10
  %301 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %300), !dbg !55
  %302 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %299, i64 0, i64 0
  store ptr addrspace(1) %301, ptr addrspace(1) %302
  %303 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %296, i64 0, i32 1
  store i64 1, ptr addrspace(1) %303
  %304 = bitcast ptr addrspace(1) %296 to ptr addrspace(1)
  %305 = getelementptr i8, ptr addrspace(1) %304, i64 864691128455135236
  store ptr addrspace(1) %305, ptr %32
  %306 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %306), !dbg !56
  store ptr addrspace(1) null, ptr %33
  %307 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root11, i64 2), !dbg !57
  %308 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 3
  %309 = load ptr addrspace(1), ptr addrspace(1) %308, align 8
  %310 = bitcast ptr addrspace(1) %309 to ptr addrspace(1)
  %311 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %310, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571100013940), ptr addrspace(1) %311
  %312 = and i64 72057594037927935, 2
  %313 = or i64 2449958197289549824, %312
  %314 = getelementptr i8, ptr addrspace(1) null, i64 %313
  %315 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %310, i64 0, i64 1
  store ptr addrspace(1) %314, ptr addrspace(1) %315
  %316 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %307, i64 0, i32 1
  store i64 2, ptr addrspace(1) %316
  %317 = bitcast ptr addrspace(1) %307 to ptr addrspace(1)
  %318 = getelementptr i8, ptr addrspace(1) %317, i64 864691128455135236
  store ptr addrspace(1) %318, ptr %34
  %319 = load ptr addrspace(1), ptr %34
  store ptr addrspace(1) %319, ptr %t11
  %320 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !58
  %321 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %320, i64 0, i32 3
  %322 = load ptr addrspace(1), ptr addrspace(1) %321, align 8
  %323 = bitcast ptr addrspace(1) %322 to ptr addrspace(1)
  %324 = load ptr addrspace(1), ptr %t11
  %325 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %324), !dbg !59
  %326 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %323, i64 0, i64 0
  store ptr addrspace(1) %325, ptr addrspace(1) %326
  %327 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %320, i64 0, i32 1
  store i64 1, ptr addrspace(1) %327
  %328 = bitcast ptr addrspace(1) %320 to ptr addrspace(1)
  %329 = getelementptr i8, ptr addrspace(1) %328, i64 864691128455135236
  store ptr addrspace(1) %329, ptr %35
  %330 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %330), !dbg !60
  store ptr addrspace(1) null, ptr %36
  ret void
331:
  %332 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %332), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/inline2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 13, scope: !5)
!10 = !DILocation(line: 8, column: 15, scope: !5)
!11 = !DILocation(line: 8, column: 15, scope: !5)
!12 = !DILocation(line: 8, column: 4, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 10, column: 15, scope: !5)
!15 = !DILocation(line: 10, column: 15, scope: !5)
!16 = !DILocation(line: 10, column: 4, scope: !5)
!17 = !DILocation(line: 11, column: 17, scope: !5)
!18 = !DILocation(line: 12, column: 15, scope: !5)
!19 = !DILocation(line: 12, column: 15, scope: !5)
!20 = !DILocation(line: 12, column: 4, scope: !5)
!21 = !DILocation(line: 13, column: 23, scope: !5)
!22 = !DILocation(line: 13, column: 23, scope: !5)
!23 = !DILocation(line: 14, column: 15, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 15, column: 26, scope: !5)
!27 = !DILocation(line: 15, column: 26, scope: !5)
!28 = !DILocation(line: 16, column: 15, scope: !5)
!29 = !DILocation(line: 16, column: 15, scope: !5)
!30 = !DILocation(line: 16, column: 4, scope: !5)
!31 = !DILocation(line: 17, column: 22, scope: !5)
!32 = !DILocation(line: 17, column: 22, scope: !5)
!33 = !DILocation(line: 18, column: 15, scope: !5)
!34 = !DILocation(line: 18, column: 15, scope: !5)
!35 = !DILocation(line: 18, column: 4, scope: !5)
!36 = !DILocation(line: 19, column: 25, scope: !5)
!37 = !DILocation(line: 19, column: 25, scope: !5)
!38 = !DILocation(line: 20, column: 15, scope: !5)
!39 = !DILocation(line: 20, column: 15, scope: !5)
!40 = !DILocation(line: 20, column: 4, scope: !5)
!41 = !DILocation(line: 21, column: 22, scope: !5)
!42 = !DILocation(line: 22, column: 15, scope: !5)
!43 = !DILocation(line: 22, column: 15, scope: !5)
!44 = !DILocation(line: 22, column: 4, scope: !5)
!45 = !DILocation(line: 23, column: 30, scope: !5)
!46 = !DILocation(line: 24, column: 15, scope: !5)
!47 = !DILocation(line: 24, column: 15, scope: !5)
!48 = !DILocation(line: 24, column: 4, scope: !5)
!49 = !DILocation(line: 25, column: 33, scope: !5)
!50 = !DILocation(line: 26, column: 15, scope: !5)
!51 = !DILocation(line: 26, column: 15, scope: !5)
!52 = !DILocation(line: 26, column: 4, scope: !5)
!53 = !DILocation(line: 27, column: 20, scope: !5)
!54 = !DILocation(line: 28, column: 15, scope: !5)
!55 = !DILocation(line: 28, column: 15, scope: !5)
!56 = !DILocation(line: 28, column: 4, scope: !5)
!57 = !DILocation(line: 29, column: 23, scope: !5)
!58 = !DILocation(line: 30, column: 15, scope: !5)
!59 = !DILocation(line: 30, column: 15, scope: !5)
!60 = !DILocation(line: 30, column: 4, scope: !5)
