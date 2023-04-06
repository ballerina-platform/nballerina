@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_opt_list_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %arr1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %arr2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %arr3 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %arr4 = alloca ptr addrspace(1)
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
  %27 = alloca i8
  %28 = load ptr, ptr @_bal_stack_guard
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %249, label %30
30:
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = and i64 72057594037927935, 1
  %36 = or i64 2449958197289549824, %35
  %37 = getelementptr i8, ptr addrspace(1) null, i64 %36
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = and i64 72057594037927935, 2
  %40 = or i64 2449958197289549824, %39
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 1
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 2, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %1
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !10
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = and i64 72057594037927935, 5
  %51 = or i64 2449958197289549824, %50
  %52 = getelementptr i8, ptr addrspace(1) null, i64 %51
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = load ptr addrspace(1), ptr %1
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 1
  store ptr addrspace(1) %54, ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 2, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %2
  %59 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %59, ptr %arr1
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !11
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = and i64 72057594037927935, 0
  %65 = or i64 2449958197289549824, %64
  %66 = getelementptr i8, ptr addrspace(1) null, i64 %65
  %67 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %66, ptr addrspace(1) %67
  %68 = and i64 72057594037927935, 2
  %69 = or i64 2449958197289549824, %68
  %70 = getelementptr i8, ptr addrspace(1) null, i64 %69
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 1
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 2, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %3
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !12
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 3
  %77 = load ptr addrspace(1), ptr addrspace(1) %76, align 8
  %78 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %79 = and i64 72057594037927935, 5
  %80 = or i64 2449958197289549824, %79
  %81 = getelementptr i8, ptr addrspace(1) null, i64 %80
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = load ptr addrspace(1), ptr %3
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %78, i64 0, i64 1
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %75, i64 0, i32 1
  store i64 2, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %4
  %88 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %88, ptr %arr2
  %89 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !13
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 3
  %91 = load ptr addrspace(1), ptr addrspace(1) %90, align 8
  %92 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %93 = and i64 72057594037927935, 2
  %94 = or i64 2449958197289549824, %93
  %95 = getelementptr i8, ptr addrspace(1) null, i64 %94
  %96 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %92, i64 0, i64 0
  store ptr addrspace(1) %95, ptr addrspace(1) %96
  %97 = and i64 72057594037927935, 2
  %98 = or i64 2449958197289549824, %97
  %99 = getelementptr i8, ptr addrspace(1) null, i64 %98
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %92, i64 0, i64 1
  store ptr addrspace(1) %99, ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %89, i64 0, i32 1
  store i64 2, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %5
  %104 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !14
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 3
  %106 = load ptr addrspace(1), ptr addrspace(1) %105, align 8
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = and i64 72057594037927935, 5
  %109 = or i64 2449958197289549824, %108
  %110 = getelementptr i8, ptr addrspace(1) null, i64 %109
  %111 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %107, i64 0, i64 0
  store ptr addrspace(1) %110, ptr addrspace(1) %111
  %112 = load ptr addrspace(1), ptr %5
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %107, i64 0, i64 1
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 1
  store i64 2, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %6
  %117 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %117, ptr %arr3
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !15
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = and i64 72057594037927935, 1
  %123 = or i64 2449958197289549824, %122
  %124 = getelementptr i8, ptr addrspace(1) null, i64 %123
  %125 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %124, ptr addrspace(1) %125
  %126 = and i64 72057594037927935, 2
  %127 = or i64 2449958197289549824, %126
  %128 = getelementptr i8, ptr addrspace(1) null, i64 %127
  %129 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 1
  store ptr addrspace(1) %128, ptr addrspace(1) %129
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 2, ptr addrspace(1) %130
  %131 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %132 = getelementptr i8, ptr addrspace(1) %131, i64 864691128455135236
  store ptr addrspace(1) %132, ptr %7
  %133 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !16
  %134 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 3
  %135 = load ptr addrspace(1), ptr addrspace(1) %134, align 8
  %136 = bitcast ptr addrspace(1) %135 to ptr addrspace(1)
  %137 = and i64 72057594037927935, 3
  %138 = or i64 2449958197289549824, %137
  %139 = getelementptr i8, ptr addrspace(1) null, i64 %138
  %140 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 0
  store ptr addrspace(1) %139, ptr addrspace(1) %140
  %141 = load ptr addrspace(1), ptr %7
  %142 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %136, i64 0, i64 1
  store ptr addrspace(1) %141, ptr addrspace(1) %142
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %133, i64 0, i32 1
  store i64 2, ptr addrspace(1) %143
  %144 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 864691128455135236
  store ptr addrspace(1) %145, ptr %8
  %146 = load ptr addrspace(1), ptr %8
  store ptr addrspace(1) %146, ptr %arr4
  %147 = load ptr addrspace(1), ptr %arr1
  %148 = load ptr addrspace(1), ptr %arr2
  %149 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %147, ptr addrspace(1) %148), !dbg !17
  %150 = icmp eq i64 %149, 0
  store i1 %150, ptr %9
  %151 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !18
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 3
  %153 = load ptr addrspace(1), ptr addrspace(1) %152, align 8
  %154 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %155 = load i1, ptr %9
  %156 = zext i1 %155 to i64
  %157 = or i64 %156, 72057594037927936
  %158 = getelementptr i8, ptr addrspace(1) null, i64 %157
  %159 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %154, i64 0, i64 0
  store ptr addrspace(1) %158, ptr addrspace(1) %159
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 1
  store i64 1, ptr addrspace(1) %160
  %161 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %162 = getelementptr i8, ptr addrspace(1) %161, i64 864691128455135236
  store ptr addrspace(1) %162, ptr %10
  %163 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %163), !dbg !19
  store ptr addrspace(1) null, ptr %11
  %164 = load ptr addrspace(1), ptr %arr1
  %165 = load ptr addrspace(1), ptr %arr3
  %166 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %164, ptr addrspace(1) %165), !dbg !20
  %167 = icmp eq i64 %166, 0
  store i1 %167, ptr %12
  %168 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !21
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 3
  %170 = load ptr addrspace(1), ptr addrspace(1) %169, align 8
  %171 = bitcast ptr addrspace(1) %170 to ptr addrspace(1)
  %172 = load i1, ptr %12
  %173 = zext i1 %172 to i64
  %174 = or i64 %173, 72057594037927936
  %175 = getelementptr i8, ptr addrspace(1) null, i64 %174
  %176 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %171, i64 0, i64 0
  store ptr addrspace(1) %175, ptr addrspace(1) %176
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %168, i64 0, i32 1
  store i64 1, ptr addrspace(1) %177
  %178 = bitcast ptr addrspace(1) %168 to ptr addrspace(1)
  %179 = getelementptr i8, ptr addrspace(1) %178, i64 864691128455135236
  store ptr addrspace(1) %179, ptr %13
  %180 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %180), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %181 = load ptr addrspace(1), ptr %arr1
  %182 = load ptr addrspace(1), ptr %arr4
  %183 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %181, ptr addrspace(1) %182), !dbg !23
  %184 = icmp eq i64 %183, 0
  store i1 %184, ptr %15
  %185 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !24
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %185, i64 0, i32 3
  %187 = load ptr addrspace(1), ptr addrspace(1) %186, align 8
  %188 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %189 = load i1, ptr %15
  %190 = zext i1 %189 to i64
  %191 = or i64 %190, 72057594037927936
  %192 = getelementptr i8, ptr addrspace(1) null, i64 %191
  %193 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %188, i64 0, i64 0
  store ptr addrspace(1) %192, ptr addrspace(1) %193
  %194 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %185, i64 0, i32 1
  store i64 1, ptr addrspace(1) %194
  %195 = bitcast ptr addrspace(1) %185 to ptr addrspace(1)
  %196 = getelementptr i8, ptr addrspace(1) %195, i64 864691128455135236
  store ptr addrspace(1) %196, ptr %16
  %197 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %197), !dbg !25
  store ptr addrspace(1) null, ptr %17
  %198 = load ptr addrspace(1), ptr %arr1
  %199 = load ptr addrspace(1), ptr %arr2
  %200 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %198, ptr addrspace(1) %199), !dbg !26
  %201 = icmp eq i64 %200, 2
  store i1 %201, ptr %18
  %202 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !27
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 3
  %204 = load ptr addrspace(1), ptr addrspace(1) %203, align 8
  %205 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %206 = load i1, ptr %18
  %207 = zext i1 %206 to i64
  %208 = or i64 %207, 72057594037927936
  %209 = getelementptr i8, ptr addrspace(1) null, i64 %208
  %210 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %205, i64 0, i64 0
  store ptr addrspace(1) %209, ptr addrspace(1) %210
  %211 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 1
  store i64 1, ptr addrspace(1) %211
  %212 = bitcast ptr addrspace(1) %202 to ptr addrspace(1)
  %213 = getelementptr i8, ptr addrspace(1) %212, i64 864691128455135236
  store ptr addrspace(1) %213, ptr %19
  %214 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %214), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %215 = load ptr addrspace(1), ptr %arr1
  %216 = load ptr addrspace(1), ptr %arr3
  %217 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %215, ptr addrspace(1) %216), !dbg !29
  %218 = icmp eq i64 %217, 2
  store i1 %218, ptr %21
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !30
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load i1, ptr %21
  %224 = zext i1 %223 to i64
  %225 = or i64 %224, 72057594037927936
  %226 = getelementptr i8, ptr addrspace(1) null, i64 %225
  %227 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %226, ptr addrspace(1) %227
  %228 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 1, ptr addrspace(1) %228
  %229 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %230 = getelementptr i8, ptr addrspace(1) %229, i64 864691128455135236
  store ptr addrspace(1) %230, ptr %22
  %231 = load ptr addrspace(1), ptr %22
  call void @_Bb02ioprintln(ptr addrspace(1) %231), !dbg !31
  store ptr addrspace(1) null, ptr %23
  %232 = load ptr addrspace(1), ptr %arr1
  %233 = load ptr addrspace(1), ptr %arr4
  %234 = call i64 @_bal_opt_list_compare(ptr addrspace(1) %232, ptr addrspace(1) %233), !dbg !32
  %235 = icmp eq i64 %234, 2
  store i1 %235, ptr %24
  %236 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !33
  %237 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %236, i64 0, i32 3
  %238 = load ptr addrspace(1), ptr addrspace(1) %237, align 8
  %239 = bitcast ptr addrspace(1) %238 to ptr addrspace(1)
  %240 = load i1, ptr %24
  %241 = zext i1 %240 to i64
  %242 = or i64 %241, 72057594037927936
  %243 = getelementptr i8, ptr addrspace(1) null, i64 %242
  %244 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %239, i64 0, i64 0
  store ptr addrspace(1) %243, ptr addrspace(1) %244
  %245 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %236, i64 0, i32 1
  store i64 1, ptr addrspace(1) %245
  %246 = bitcast ptr addrspace(1) %236 to ptr addrspace(1)
  %247 = getelementptr i8, ptr addrspace(1) %246, i64 864691128455135236
  store ptr addrspace(1) %247, ptr %25
  %248 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %248), !dbg !34
  store ptr addrspace(1) null, ptr %26
  ret void
249:
  %250 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %250), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-tuple/comp5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 17, scope: !5)
!10 = !DILocation(line: 5, column: 13, scope: !5)
!11 = !DILocation(line: 6, column: 17, scope: !5)
!12 = !DILocation(line: 6, column: 13, scope: !5)
!13 = !DILocation(line: 7, column: 17, scope: !5)
!14 = !DILocation(line: 7, column: 13, scope: !5)
!15 = !DILocation(line: 8, column: 17, scope: !5)
!16 = !DILocation(line: 8, column: 13, scope: !5)
!17 = !DILocation(line: 10, column: 20, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 20, scope: !5)
!21 = !DILocation(line: 11, column: 15, scope: !5)
!22 = !DILocation(line: 11, column: 4, scope: !5)
!23 = !DILocation(line: 12, column: 20, scope: !5)
!24 = !DILocation(line: 12, column: 15, scope: !5)
!25 = !DILocation(line: 12, column: 4, scope: !5)
!26 = !DILocation(line: 14, column: 20, scope: !5)
!27 = !DILocation(line: 14, column: 15, scope: !5)
!28 = !DILocation(line: 14, column: 4, scope: !5)
!29 = !DILocation(line: 15, column: 20, scope: !5)
!30 = !DILocation(line: 15, column: 15, scope: !5)
!31 = !DILocation(line: 15, column: 4, scope: !5)
!32 = !DILocation(line: 16, column: 20, scope: !5)
!33 = !DILocation(line: 16, column: 15, scope: !5)
!34 = !DILocation(line: 16, column: 4, scope: !5)
