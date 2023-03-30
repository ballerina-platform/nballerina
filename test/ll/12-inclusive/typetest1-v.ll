@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
@_Bi04root4 = external constant {i32}
@_Bt04root4 = external constant {i32, i32, [0 x ptr]}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %m = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %r2 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i1
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %v = alloca ptr addrspace(1)
  %25 = alloca i1
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i1
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca i1
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i1
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i8
  %38 = load ptr, ptr @_bal_stack_guard
  %39 = icmp ult ptr %37, %38
  br i1 %39, label %232, label %40
40:
  %41 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %42 = and i64 72057594037927935, 1
  %43 = or i64 2449958197289549824, %42
  %44 = getelementptr i8, ptr addrspace(1) null, i64 %43
  call void @_bal_mapping_init_member(ptr addrspace(1) %41, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261422), ptr addrspace(1) %44), !dbg !10
  %45 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %41, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %45), !dbg !12
  store ptr addrspace(1) %41, ptr %1
  %46 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %46, ptr %r1
  %47 = load ptr addrspace(1), ptr %r1
  %48 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %47), !dbg !13
  store ptr addrspace(1) %48, ptr %m
  %49 = load ptr addrspace(1), ptr %m
  %50 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %49), !dbg !14
  store i1 %50, ptr %2
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load i1, ptr %2
  %56 = zext i1 %55 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, ptr addrspace(1) null, i64 %57
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %3
  %63 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %64 = load ptr addrspace(1), ptr %m
  %65 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %64), !dbg !17
  store i1 %65, ptr %5
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = load i1, ptr %5
  %71 = zext i1 %70 to i64
  %72 = or i64 %71, 72057594037927936
  %73 = getelementptr i8, ptr addrspace(1) null, i64 %72
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %73, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %6
  %78 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %78), !dbg !19
  store ptr addrspace(1) null, ptr %7
  %79 = load ptr addrspace(1), ptr %m
  %80 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %79), !dbg !20
  store i1 %80, ptr %8
  %81 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 3
  %83 = load ptr addrspace(1), ptr addrspace(1) %82, align 8
  %84 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %85 = load i1, ptr %8
  %86 = zext i1 %85 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, ptr addrspace(1) null, i64 %87
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %84, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %9
  %93 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !22
  store ptr addrspace(1) null, ptr %10
  %94 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 2), !dbg !23
  %95 = and i64 72057594037927935, 1
  %96 = or i64 2449958197289549824, %95
  %97 = getelementptr i8, ptr addrspace(1) null, i64 %96
  call void @_bal_mapping_init_member(ptr addrspace(1) %94, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261422), ptr addrspace(1) %97), !dbg !24
  %98 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !25
  call void @_bal_mapping_init_member(ptr addrspace(1) %94, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %98), !dbg !26
  store ptr addrspace(1) %94, ptr %11
  %99 = load ptr addrspace(1), ptr %11
  store ptr addrspace(1) %99, ptr %r2
  %100 = load ptr addrspace(1), ptr %r2
  %101 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %100), !dbg !27
  store ptr addrspace(1) %101, ptr %m
  %102 = load ptr addrspace(1), ptr %m
  %103 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %102), !dbg !28
  store i1 %103, ptr %12
  %104 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !29
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 3
  %106 = load ptr addrspace(1), ptr addrspace(1) %105, align 8
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = load i1, ptr %12
  %109 = zext i1 %108 to i64
  %110 = or i64 %109, 72057594037927936
  %111 = getelementptr i8, ptr addrspace(1) null, i64 %110
  %112 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %107, i64 0, i64 0
  store ptr addrspace(1) %111, ptr addrspace(1) %112
  %113 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 1
  store i64 1, ptr addrspace(1) %113
  %114 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %115 = getelementptr i8, ptr addrspace(1) %114, i64 864691128455135236
  store ptr addrspace(1) %115, ptr %13
  %116 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %116), !dbg !30
  store ptr addrspace(1) null, ptr %14
  %117 = load ptr addrspace(1), ptr %m
  %118 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %117), !dbg !31
  store i1 %118, ptr %15
  %119 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !32
  %120 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 3
  %121 = load ptr addrspace(1), ptr addrspace(1) %120, align 8
  %122 = bitcast ptr addrspace(1) %121 to ptr addrspace(1)
  %123 = load i1, ptr %15
  %124 = zext i1 %123 to i64
  %125 = or i64 %124, 72057594037927936
  %126 = getelementptr i8, ptr addrspace(1) null, i64 %125
  %127 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %122, i64 0, i64 0
  store ptr addrspace(1) %126, ptr addrspace(1) %127
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %119, i64 0, i32 1
  store i64 1, ptr addrspace(1) %128
  %129 = bitcast ptr addrspace(1) %119 to ptr addrspace(1)
  %130 = getelementptr i8, ptr addrspace(1) %129, i64 864691128455135236
  store ptr addrspace(1) %130, ptr %16
  %131 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %131), !dbg !33
  store ptr addrspace(1) null, ptr %17
  %132 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root4, i64 2), !dbg !34
  %133 = and i64 72057594037927935, 1
  %134 = or i64 2449958197289549824, %133
  %135 = getelementptr i8, ptr addrspace(1) null, i64 %134
  call void @_bal_mapping_init_member(ptr addrspace(1) %132, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261422), ptr addrspace(1) %135), !dbg !35
  %136 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !36
  call void @_bal_mapping_init_member(ptr addrspace(1) %132, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %136), !dbg !37
  store ptr addrspace(1) %132, ptr %18
  %137 = load ptr addrspace(1), ptr %18
  store ptr addrspace(1) %137, ptr %m
  %138 = load ptr addrspace(1), ptr %m
  %139 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %138), !dbg !38
  store i1 %139, ptr %19
  %140 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !39
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 3
  %142 = load ptr addrspace(1), ptr addrspace(1) %141, align 8
  %143 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %144 = load i1, ptr %19
  %145 = zext i1 %144 to i64
  %146 = or i64 %145, 72057594037927936
  %147 = getelementptr i8, ptr addrspace(1) null, i64 %146
  %148 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %143, i64 0, i64 0
  store ptr addrspace(1) %147, ptr addrspace(1) %148
  %149 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 1
  store i64 1, ptr addrspace(1) %149
  %150 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %151 = getelementptr i8, ptr addrspace(1) %150, i64 864691128455135236
  store ptr addrspace(1) %151, ptr %20
  %152 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %152), !dbg !40
  store ptr addrspace(1) null, ptr %21
  %153 = load ptr addrspace(1), ptr %m
  %154 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %153), !dbg !41
  store i1 %154, ptr %22
  %155 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !42
  %156 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %155, i64 0, i32 3
  %157 = load ptr addrspace(1), ptr addrspace(1) %156, align 8
  %158 = bitcast ptr addrspace(1) %157 to ptr addrspace(1)
  %159 = load i1, ptr %22
  %160 = zext i1 %159 to i64
  %161 = or i64 %160, 72057594037927936
  %162 = getelementptr i8, ptr addrspace(1) null, i64 %161
  %163 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %158, i64 0, i64 0
  store ptr addrspace(1) %162, ptr addrspace(1) %163
  %164 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %155, i64 0, i32 1
  store i64 1, ptr addrspace(1) %164
  %165 = bitcast ptr addrspace(1) %155 to ptr addrspace(1)
  %166 = getelementptr i8, ptr addrspace(1) %165, i64 864691128455135236
  store ptr addrspace(1) %166, ptr %23
  %167 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %167), !dbg !43
  store ptr addrspace(1) null, ptr %24
  %168 = load ptr addrspace(1), ptr %r1
  %169 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %168), !dbg !44
  store ptr addrspace(1) %169, ptr %v
  %170 = load ptr addrspace(1), ptr %v
  %171 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %170), !dbg !45
  store i1 %171, ptr %25
  %172 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !46
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 3
  %174 = load ptr addrspace(1), ptr addrspace(1) %173, align 8
  %175 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %176 = load i1, ptr %25
  %177 = zext i1 %176 to i64
  %178 = or i64 %177, 72057594037927936
  %179 = getelementptr i8, ptr addrspace(1) null, i64 %178
  %180 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %175, i64 0, i64 0
  store ptr addrspace(1) %179, ptr addrspace(1) %180
  %181 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 1
  store i64 1, ptr addrspace(1) %181
  %182 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %183 = getelementptr i8, ptr addrspace(1) %182, i64 864691128455135236
  store ptr addrspace(1) %183, ptr %26
  %184 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %184), !dbg !47
  store ptr addrspace(1) null, ptr %27
  %185 = load ptr addrspace(1), ptr %v
  %186 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %185), !dbg !48
  store i1 %186, ptr %28
  %187 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !49
  %188 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %187, i64 0, i32 3
  %189 = load ptr addrspace(1), ptr addrspace(1) %188, align 8
  %190 = bitcast ptr addrspace(1) %189 to ptr addrspace(1)
  %191 = load i1, ptr %28
  %192 = zext i1 %191 to i64
  %193 = or i64 %192, 72057594037927936
  %194 = getelementptr i8, ptr addrspace(1) null, i64 %193
  %195 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %190, i64 0, i64 0
  store ptr addrspace(1) %194, ptr addrspace(1) %195
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %187, i64 0, i32 1
  store i64 1, ptr addrspace(1) %196
  %197 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %198 = getelementptr i8, ptr addrspace(1) %197, i64 864691128455135236
  store ptr addrspace(1) %198, ptr %29
  %199 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %199), !dbg !50
  store ptr addrspace(1) null, ptr %30
  %200 = load ptr addrspace(1), ptr %r2
  %201 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %200), !dbg !51
  store ptr addrspace(1) %201, ptr %v
  %202 = load ptr addrspace(1), ptr %v
  %203 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %202), !dbg !52
  store i1 %203, ptr %31
  %204 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !53
  %205 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %204, i64 0, i32 3
  %206 = load ptr addrspace(1), ptr addrspace(1) %205, align 8
  %207 = bitcast ptr addrspace(1) %206 to ptr addrspace(1)
  %208 = load i1, ptr %31
  %209 = zext i1 %208 to i64
  %210 = or i64 %209, 72057594037927936
  %211 = getelementptr i8, ptr addrspace(1) null, i64 %210
  %212 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %207, i64 0, i64 0
  store ptr addrspace(1) %211, ptr addrspace(1) %212
  %213 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %204, i64 0, i32 1
  store i64 1, ptr addrspace(1) %213
  %214 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %215 = getelementptr i8, ptr addrspace(1) %214, i64 864691128455135236
  store ptr addrspace(1) %215, ptr %32
  %216 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %216), !dbg !54
  store ptr addrspace(1) null, ptr %33
  %217 = load ptr addrspace(1), ptr %v
  %218 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %217), !dbg !55
  store i1 %218, ptr %34
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !56
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load i1, ptr %34
  %224 = zext i1 %223 to i64
  %225 = or i64 %224, 72057594037927936
  %226 = getelementptr i8, ptr addrspace(1) null, i64 %225
  %227 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %226, ptr addrspace(1) %227
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %228
  %229 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 864691128455135236
  store ptr addrspace(1) %230, ptr %35
  %231 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %231), !dbg !57
  store ptr addrspace(1) null, ptr %36
  ret void
232:
  %233 = call ptr addrspace(1) @_bal_panic_construct(i64 4868), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %233), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/typetest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 19, column: 16, scope: !5)
!9 = !DILocation(line: 20, column: 12, scope: !5)
!10 = !DILocation(line: 20, column: 12, scope: !5)
!11 = !DILocation(line: 20, column: 12, scope: !5)
!12 = !DILocation(line: 20, column: 12, scope: !5)
!13 = !DILocation(line: 21, column: 16, scope: !5)
!14 = !DILocation(line: 22, column: 17, scope: !5)
!15 = !DILocation(line: 22, column: 15, scope: !5)
!16 = !DILocation(line: 22, column: 4, scope: !5)
!17 = !DILocation(line: 23, column: 17, scope: !5)
!18 = !DILocation(line: 23, column: 15, scope: !5)
!19 = !DILocation(line: 23, column: 4, scope: !5)
!20 = !DILocation(line: 24, column: 17, scope: !5)
!21 = !DILocation(line: 24, column: 15, scope: !5)
!22 = !DILocation(line: 24, column: 4, scope: !5)
!23 = !DILocation(line: 25, column: 12, scope: !5)
!24 = !DILocation(line: 25, column: 12, scope: !5)
!25 = !DILocation(line: 25, column: 12, scope: !5)
!26 = !DILocation(line: 25, column: 12, scope: !5)
!27 = !DILocation(line: 26, column: 6, scope: !5)
!28 = !DILocation(line: 27, column: 17, scope: !5)
!29 = !DILocation(line: 27, column: 15, scope: !5)
!30 = !DILocation(line: 27, column: 4, scope: !5)
!31 = !DILocation(line: 28, column: 17, scope: !5)
!32 = !DILocation(line: 28, column: 15, scope: !5)
!33 = !DILocation(line: 28, column: 4, scope: !5)
!34 = !DILocation(line: 29, column: 8, scope: !5)
!35 = !DILocation(line: 29, column: 8, scope: !5)
!36 = !DILocation(line: 29, column: 8, scope: !5)
!37 = !DILocation(line: 29, column: 8, scope: !5)
!38 = !DILocation(line: 30, column: 17, scope: !5)
!39 = !DILocation(line: 30, column: 15, scope: !5)
!40 = !DILocation(line: 30, column: 4, scope: !5)
!41 = !DILocation(line: 31, column: 17, scope: !5)
!42 = !DILocation(line: 31, column: 15, scope: !5)
!43 = !DILocation(line: 31, column: 4, scope: !5)
!44 = !DILocation(line: 32, column: 10, scope: !5)
!45 = !DILocation(line: 33, column: 17, scope: !5)
!46 = !DILocation(line: 33, column: 15, scope: !5)
!47 = !DILocation(line: 33, column: 4, scope: !5)
!48 = !DILocation(line: 34, column: 17, scope: !5)
!49 = !DILocation(line: 34, column: 15, scope: !5)
!50 = !DILocation(line: 34, column: 4, scope: !5)
!51 = !DILocation(line: 35, column: 6, scope: !5)
!52 = !DILocation(line: 36, column: 17, scope: !5)
!53 = !DILocation(line: 36, column: 15, scope: !5)
!54 = !DILocation(line: 36, column: 4, scope: !5)
!55 = !DILocation(line: 37, column: 17, scope: !5)
!56 = !DILocation(line: 37, column: 15, scope: !5)
!57 = !DILocation(line: 37, column: 4, scope: !5)
