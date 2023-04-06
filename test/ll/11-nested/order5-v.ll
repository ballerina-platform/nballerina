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
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i64 @_bal_array_list_compare(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %b1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %b2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %b3 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %s1 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %s2 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %s3 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
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
  %f1 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca ptr addrspace(1)
  %f2 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca i1
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca i1
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca i8
  %50 = load ptr, ptr @_bal_stack_guard
  %51 = icmp ult ptr %49, %50
  br i1 %51, label %388, label %52
52:
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = zext i1 1 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, ptr addrspace(1) null, i64 %58
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %1
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load ptr addrspace(1), ptr %1
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %2
  %73 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %73, ptr %b1
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = zext i1 1 to i64
  %79 = or i64 %78, 72057594037927936
  %80 = getelementptr i8, ptr addrspace(1) null, i64 %79
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %3
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !12
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %4
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !13
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 3
  %90 = load ptr addrspace(1), ptr addrspace(1) %89, align 8
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = load ptr addrspace(1), ptr %3
  %93 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 0
  store ptr addrspace(1) %92, ptr addrspace(1) %93
  %94 = load ptr addrspace(1), ptr %4
  %95 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %91, i64 0, i64 1
  store ptr addrspace(1) %94, ptr addrspace(1) %95
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %88, i64 0, i32 1
  store i64 2, ptr addrspace(1) %96
  %97 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %98 = getelementptr i8, ptr addrspace(1) %97, i64 864691128455135236
  store ptr addrspace(1) %98, ptr %5
  %99 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %99, ptr %b2
  %100 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %100, i64 0, i32 3
  %102 = load ptr addrspace(1), ptr addrspace(1) %101, align 8
  %103 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %104 = zext i1 1 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, ptr addrspace(1) null, i64 %105
  %107 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %103, i64 0, i64 0
  store ptr addrspace(1) %106, ptr addrspace(1) %107
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %100, i64 0, i32 1
  store i64 1, ptr addrspace(1) %108
  %109 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %110 = getelementptr i8, ptr addrspace(1) %109, i64 864691128455135236
  store ptr addrspace(1) %110, ptr %6
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !15
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = load ptr addrspace(1), ptr %6
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 2, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %7
  %121 = load ptr addrspace(1), ptr %7
  store ptr addrspace(1) %121, ptr %b3
  %122 = load ptr addrspace(1), ptr %b1
  %123 = load ptr addrspace(1), ptr %b2
  %124 = call i64 @_bal_array_list_compare(ptr addrspace(1) %122, ptr addrspace(1) %123), !dbg !16
  %125 = icmp eq i64 %124, 0
  store i1 %125, ptr %8
  %126 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !17
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 3
  %128 = load ptr addrspace(1), ptr addrspace(1) %127, align 8
  %129 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %130 = load i1, ptr %8
  %131 = zext i1 %130 to i64
  %132 = or i64 %131, 72057594037927936
  %133 = getelementptr i8, ptr addrspace(1) null, i64 %132
  %134 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %129, i64 0, i64 0
  store ptr addrspace(1) %133, ptr addrspace(1) %134
  %135 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %126, i64 0, i32 1
  store i64 1, ptr addrspace(1) %135
  %136 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %137 = getelementptr i8, ptr addrspace(1) %136, i64 864691128455135236
  store ptr addrspace(1) %137, ptr %9
  %138 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %138), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %139 = load ptr addrspace(1), ptr %b2
  %140 = load ptr addrspace(1), ptr %b3
  %141 = call i64 @_bal_array_list_compare(ptr addrspace(1) %139, ptr addrspace(1) %140), !dbg !19
  %142 = icmp eq i64 %141, 0
  store i1 %142, ptr %11
  %143 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !20
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 3
  %145 = load ptr addrspace(1), ptr addrspace(1) %144, align 8
  %146 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %147 = load i1, ptr %11
  %148 = zext i1 %147 to i64
  %149 = or i64 %148, 72057594037927936
  %150 = getelementptr i8, ptr addrspace(1) null, i64 %149
  %151 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %146, i64 0, i64 0
  store ptr addrspace(1) %150, ptr addrspace(1) %151
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %143, i64 0, i32 1
  store i64 1, ptr addrspace(1) %152
  %153 = bitcast ptr addrspace(1) %143 to ptr addrspace(1)
  %154 = getelementptr i8, ptr addrspace(1) %153, i64 864691128455135236
  store ptr addrspace(1) %154, ptr %12
  %155 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %155), !dbg !21
  store ptr addrspace(1) null, ptr %13
  %156 = load ptr addrspace(1), ptr %b2
  %157 = load ptr addrspace(1), ptr %b3
  %158 = call i64 @_bal_array_list_compare(ptr addrspace(1) %156, ptr addrspace(1) %157), !dbg !22
  %159 = icmp eq i64 %158, 2
  store i1 %159, ptr %14
  %160 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !23
  %161 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 3
  %162 = load ptr addrspace(1), ptr addrspace(1) %161, align 8
  %163 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %164 = load i1, ptr %14
  %165 = zext i1 %164 to i64
  %166 = or i64 %165, 72057594037927936
  %167 = getelementptr i8, ptr addrspace(1) null, i64 %166
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %163, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %160, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %160 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %15
  %172 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %173 = load ptr addrspace(1), ptr %b3
  %174 = load ptr addrspace(1), ptr %b1
  %175 = call i64 @_bal_array_list_compare(ptr addrspace(1) %173, ptr addrspace(1) %174), !dbg !25
  %176 = icmp eq i64 %175, 2
  store i1 %176, ptr %17
  %177 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !26
  %178 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 3
  %179 = load ptr addrspace(1), ptr addrspace(1) %178, align 8
  %180 = bitcast ptr addrspace(1) %179 to ptr addrspace(1)
  %181 = load i1, ptr %17
  %182 = zext i1 %181 to i64
  %183 = or i64 %182, 72057594037927936
  %184 = getelementptr i8, ptr addrspace(1) null, i64 %183
  %185 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %180, i64 0, i64 0
  store ptr addrspace(1) %184, ptr addrspace(1) %185
  %186 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %177, i64 0, i32 1
  store i64 1, ptr addrspace(1) %186
  %187 = bitcast ptr addrspace(1) %177 to ptr addrspace(1)
  %188 = getelementptr i8, ptr addrspace(1) %187, i64 864691128455135236
  store ptr addrspace(1) %188, ptr %18
  %189 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %189), !dbg !27
  store ptr addrspace(1) null, ptr %19
  %190 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !28
  %191 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %190, i64 0, i32 3
  %192 = load ptr addrspace(1), ptr addrspace(1) %191, align 8
  %193 = bitcast ptr addrspace(1) %192 to ptr addrspace(1)
  %194 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %193, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %194
  %195 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %190, i64 0, i32 1
  store i64 1, ptr addrspace(1) %195
  %196 = bitcast ptr addrspace(1) %190 to ptr addrspace(1)
  %197 = getelementptr i8, ptr addrspace(1) %196, i64 864691128455135236
  store ptr addrspace(1) %197, ptr %20
  %198 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !29
  %199 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %198, i64 0, i32 3
  %200 = load ptr addrspace(1), ptr addrspace(1) %199, align 8
  %201 = bitcast ptr addrspace(1) %200 to ptr addrspace(1)
  %202 = load ptr addrspace(1), ptr %20
  %203 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %201, i64 0, i64 0
  store ptr addrspace(1) %202, ptr addrspace(1) %203
  %204 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %198, i64 0, i32 1
  store i64 1, ptr addrspace(1) %204
  %205 = bitcast ptr addrspace(1) %198 to ptr addrspace(1)
  %206 = getelementptr i8, ptr addrspace(1) %205, i64 864691128455135236
  store ptr addrspace(1) %206, ptr %21
  %207 = load ptr addrspace(1), ptr %21
  store ptr addrspace(1) %207, ptr %s1
  %208 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !30
  %209 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %208, i64 0, i32 3
  %210 = load ptr addrspace(1), ptr addrspace(1) %209, align 8
  %211 = bitcast ptr addrspace(1) %210 to ptr addrspace(1)
  %212 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %211, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %212
  %213 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %208, i64 0, i32 1
  store i64 1, ptr addrspace(1) %213
  %214 = bitcast ptr addrspace(1) %208 to ptr addrspace(1)
  %215 = getelementptr i8, ptr addrspace(1) %214, i64 864691128455135236
  store ptr addrspace(1) %215, ptr %22
  %216 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 0), !dbg !31
  %217 = bitcast ptr addrspace(1) %216 to ptr addrspace(1)
  %218 = getelementptr i8, ptr addrspace(1) %217, i64 864691128455135236
  store ptr addrspace(1) %218, ptr %23
  %219 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 2), !dbg !32
  %220 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 3
  %221 = load ptr addrspace(1), ptr addrspace(1) %220, align 8
  %222 = bitcast ptr addrspace(1) %221 to ptr addrspace(1)
  %223 = load ptr addrspace(1), ptr %22
  %224 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 0
  store ptr addrspace(1) %223, ptr addrspace(1) %224
  %225 = load ptr addrspace(1), ptr %23
  %226 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %222, i64 0, i64 1
  store ptr addrspace(1) %225, ptr addrspace(1) %226
  %227 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %219, i64 0, i32 1
  store i64 2, ptr addrspace(1) %227
  %228 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %229 = getelementptr i8, ptr addrspace(1) %228, i64 864691128455135236
  store ptr addrspace(1) %229, ptr %24
  %230 = load ptr addrspace(1), ptr %24
  store ptr addrspace(1) %230, ptr %s2
  %231 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !33
  %232 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %231, i64 0, i32 3
  %233 = load ptr addrspace(1), ptr addrspace(1) %232, align 8
  %234 = bitcast ptr addrspace(1) %233 to ptr addrspace(1)
  %235 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %234, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %235
  %236 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %231, i64 0, i32 1
  store i64 1, ptr addrspace(1) %236
  %237 = bitcast ptr addrspace(1) %231 to ptr addrspace(1)
  %238 = getelementptr i8, ptr addrspace(1) %237, i64 864691128455135236
  store ptr addrspace(1) %238, ptr %25
  %239 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root6, i64 2), !dbg !34
  %240 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %239, i64 0, i32 3
  %241 = load ptr addrspace(1), ptr addrspace(1) %240, align 8
  %242 = bitcast ptr addrspace(1) %241 to ptr addrspace(1)
  %243 = load ptr addrspace(1), ptr %25
  %244 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %242, i64 0, i64 0
  store ptr addrspace(1) %243, ptr addrspace(1) %244
  %245 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %242, i64 0, i64 1
  store ptr addrspace(1) null, ptr addrspace(1) %245
  %246 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %239, i64 0, i32 1
  store i64 2, ptr addrspace(1) %246
  %247 = bitcast ptr addrspace(1) %239 to ptr addrspace(1)
  %248 = getelementptr i8, ptr addrspace(1) %247, i64 864691128455135236
  store ptr addrspace(1) %248, ptr %26
  %249 = load ptr addrspace(1), ptr %26
  store ptr addrspace(1) %249, ptr %s3
  %250 = load ptr addrspace(1), ptr %s2
  %251 = load ptr addrspace(1), ptr %s1
  %252 = call i64 @_bal_array_list_compare(ptr addrspace(1) %250, ptr addrspace(1) %251), !dbg !35
  %253 = icmp eq i64 %252, 2
  store i1 %253, ptr %27
  %254 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !36
  %255 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %254, i64 0, i32 3
  %256 = load ptr addrspace(1), ptr addrspace(1) %255, align 8
  %257 = bitcast ptr addrspace(1) %256 to ptr addrspace(1)
  %258 = load i1, ptr %27
  %259 = zext i1 %258 to i64
  %260 = or i64 %259, 72057594037927936
  %261 = getelementptr i8, ptr addrspace(1) null, i64 %260
  %262 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %257, i64 0, i64 0
  store ptr addrspace(1) %261, ptr addrspace(1) %262
  %263 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %254, i64 0, i32 1
  store i64 1, ptr addrspace(1) %263
  %264 = bitcast ptr addrspace(1) %254 to ptr addrspace(1)
  %265 = getelementptr i8, ptr addrspace(1) %264, i64 864691128455135236
  store ptr addrspace(1) %265, ptr %28
  %266 = load ptr addrspace(1), ptr %28
  call void @_Bb02ioprintln(ptr addrspace(1) %266), !dbg !37
  store ptr addrspace(1) null, ptr %29
  %267 = load ptr addrspace(1), ptr %s2
  %268 = load ptr addrspace(1), ptr %s3
  %269 = call i64 @_bal_array_list_compare(ptr addrspace(1) %267, ptr addrspace(1) %268), !dbg !38
  %270 = icmp eq i64 %269, 0
  store i1 %270, ptr %30
  %271 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !39
  %272 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %271, i64 0, i32 3
  %273 = load ptr addrspace(1), ptr addrspace(1) %272, align 8
  %274 = bitcast ptr addrspace(1) %273 to ptr addrspace(1)
  %275 = load i1, ptr %30
  %276 = zext i1 %275 to i64
  %277 = or i64 %276, 72057594037927936
  %278 = getelementptr i8, ptr addrspace(1) null, i64 %277
  %279 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %274, i64 0, i64 0
  store ptr addrspace(1) %278, ptr addrspace(1) %279
  %280 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %271, i64 0, i32 1
  store i64 1, ptr addrspace(1) %280
  %281 = bitcast ptr addrspace(1) %271 to ptr addrspace(1)
  %282 = getelementptr i8, ptr addrspace(1) %281, i64 864691128455135236
  store ptr addrspace(1) %282, ptr %31
  %283 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %283), !dbg !40
  store ptr addrspace(1) null, ptr %32
  %284 = load ptr addrspace(1), ptr %s2
  %285 = load ptr addrspace(1), ptr %s3
  %286 = call i64 @_bal_array_list_compare(ptr addrspace(1) %284, ptr addrspace(1) %285), !dbg !41
  %287 = icmp eq i64 %286, 2
  store i1 %287, ptr %33
  %288 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !42
  %289 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %288, i64 0, i32 3
  %290 = load ptr addrspace(1), ptr addrspace(1) %289, align 8
  %291 = bitcast ptr addrspace(1) %290 to ptr addrspace(1)
  %292 = load i1, ptr %33
  %293 = zext i1 %292 to i64
  %294 = or i64 %293, 72057594037927936
  %295 = getelementptr i8, ptr addrspace(1) null, i64 %294
  %296 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %291, i64 0, i64 0
  store ptr addrspace(1) %295, ptr addrspace(1) %296
  %297 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %288, i64 0, i32 1
  store i64 1, ptr addrspace(1) %297
  %298 = bitcast ptr addrspace(1) %288 to ptr addrspace(1)
  %299 = getelementptr i8, ptr addrspace(1) %298, i64 864691128455135236
  store ptr addrspace(1) %299, ptr %34
  %300 = load ptr addrspace(1), ptr %34
  call void @_Bb02ioprintln(ptr addrspace(1) %300), !dbg !43
  store ptr addrspace(1) null, ptr %35
  %301 = load ptr addrspace(1), ptr %s1
  %302 = load ptr addrspace(1), ptr %s3
  %303 = call i64 @_bal_array_list_compare(ptr addrspace(1) %301, ptr addrspace(1) %302), !dbg !44
  %304 = icmp eq i64 %303, 0
  store i1 %304, ptr %36
  %305 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !45
  %306 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %305, i64 0, i32 3
  %307 = load ptr addrspace(1), ptr addrspace(1) %306, align 8
  %308 = bitcast ptr addrspace(1) %307 to ptr addrspace(1)
  %309 = load i1, ptr %36
  %310 = zext i1 %309 to i64
  %311 = or i64 %310, 72057594037927936
  %312 = getelementptr i8, ptr addrspace(1) null, i64 %311
  %313 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %308, i64 0, i64 0
  store ptr addrspace(1) %312, ptr addrspace(1) %313
  %314 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %305, i64 0, i32 1
  store i64 1, ptr addrspace(1) %314
  %315 = bitcast ptr addrspace(1) %305 to ptr addrspace(1)
  %316 = getelementptr i8, ptr addrspace(1) %315, i64 864691128455135236
  store ptr addrspace(1) %316, ptr %37
  %317 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %317), !dbg !46
  store ptr addrspace(1) null, ptr %38
  %318 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 1), !dbg !47
  %319 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %318, i64 0, i32 3
  %320 = load ptr addrspace(1), ptr addrspace(1) %319, align 8
  %321 = bitcast ptr addrspace(1) %320 to ptr addrspace(1)
  %322 = getelementptr inbounds [0 x double], ptr addrspace(1) %321, i64 0, i64 0
  store double 80.0, ptr addrspace(1) %322
  %323 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %318, i64 0, i32 1
  store i64 1, ptr addrspace(1) %323
  %324 = bitcast ptr addrspace(1) %318 to ptr addrspace(1)
  %325 = getelementptr i8, ptr addrspace(1) %324, i64 864691128455135236
  store ptr addrspace(1) %325, ptr %39
  %326 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root8, i64 1), !dbg !48
  %327 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %326, i64 0, i32 3
  %328 = load ptr addrspace(1), ptr addrspace(1) %327, align 8
  %329 = bitcast ptr addrspace(1) %328 to ptr addrspace(1)
  %330 = load ptr addrspace(1), ptr %39
  %331 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %329, i64 0, i64 0
  store ptr addrspace(1) %330, ptr addrspace(1) %331
  %332 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %326, i64 0, i32 1
  store i64 1, ptr addrspace(1) %332
  %333 = bitcast ptr addrspace(1) %326 to ptr addrspace(1)
  %334 = getelementptr i8, ptr addrspace(1) %333, i64 864691128455135236
  store ptr addrspace(1) %334, ptr %40
  %335 = load ptr addrspace(1), ptr %40
  store ptr addrspace(1) %335, ptr %f1
  %336 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root7, i64 1), !dbg !49
  %337 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %336, i64 0, i32 3
  %338 = load ptr addrspace(1), ptr addrspace(1) %337, align 8
  %339 = bitcast ptr addrspace(1) %338 to ptr addrspace(1)
  %340 = getelementptr inbounds [0 x double], ptr addrspace(1) %339, i64 0, i64 0
  store double 0x7FF8000000000000, ptr addrspace(1) %340
  %341 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %336, i64 0, i32 1
  store i64 1, ptr addrspace(1) %341
  %342 = bitcast ptr addrspace(1) %336 to ptr addrspace(1)
  %343 = getelementptr i8, ptr addrspace(1) %342, i64 864691128455135236
  store ptr addrspace(1) %343, ptr %41
  %344 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root8, i64 1), !dbg !50
  %345 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %344, i64 0, i32 3
  %346 = load ptr addrspace(1), ptr addrspace(1) %345, align 8
  %347 = bitcast ptr addrspace(1) %346 to ptr addrspace(1)
  %348 = load ptr addrspace(1), ptr %41
  %349 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %347, i64 0, i64 0
  store ptr addrspace(1) %348, ptr addrspace(1) %349
  %350 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %344, i64 0, i32 1
  store i64 1, ptr addrspace(1) %350
  %351 = bitcast ptr addrspace(1) %344 to ptr addrspace(1)
  %352 = getelementptr i8, ptr addrspace(1) %351, i64 864691128455135236
  store ptr addrspace(1) %352, ptr %42
  %353 = load ptr addrspace(1), ptr %42
  store ptr addrspace(1) %353, ptr %f2
  %354 = load ptr addrspace(1), ptr %f1
  %355 = load ptr addrspace(1), ptr %f2
  %356 = call i64 @_bal_array_list_compare(ptr addrspace(1) %354, ptr addrspace(1) %355), !dbg !51
  %357 = icmp eq i64 %356, 2
  store i1 %357, ptr %43
  %358 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !52
  %359 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %358, i64 0, i32 3
  %360 = load ptr addrspace(1), ptr addrspace(1) %359, align 8
  %361 = bitcast ptr addrspace(1) %360 to ptr addrspace(1)
  %362 = load i1, ptr %43
  %363 = zext i1 %362 to i64
  %364 = or i64 %363, 72057594037927936
  %365 = getelementptr i8, ptr addrspace(1) null, i64 %364
  %366 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %361, i64 0, i64 0
  store ptr addrspace(1) %365, ptr addrspace(1) %366
  %367 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %358, i64 0, i32 1
  store i64 1, ptr addrspace(1) %367
  %368 = bitcast ptr addrspace(1) %358 to ptr addrspace(1)
  %369 = getelementptr i8, ptr addrspace(1) %368, i64 864691128455135236
  store ptr addrspace(1) %369, ptr %44
  %370 = load ptr addrspace(1), ptr %44
  call void @_Bb02ioprintln(ptr addrspace(1) %370), !dbg !53
  store ptr addrspace(1) null, ptr %45
  %371 = load ptr addrspace(1), ptr %f2
  %372 = load ptr addrspace(1), ptr %f2
  %373 = call i64 @_bal_array_list_compare(ptr addrspace(1) %371, ptr addrspace(1) %372), !dbg !54
  %374 = icmp eq i64 %373, 2
  store i1 %374, ptr %46
  %375 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !55
  %376 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 3
  %377 = load ptr addrspace(1), ptr addrspace(1) %376, align 8
  %378 = bitcast ptr addrspace(1) %377 to ptr addrspace(1)
  %379 = load i1, ptr %46
  %380 = zext i1 %379 to i64
  %381 = or i64 %380, 72057594037927936
  %382 = getelementptr i8, ptr addrspace(1) null, i64 %381
  %383 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %378, i64 0, i64 0
  store ptr addrspace(1) %382, ptr addrspace(1) %383
  %384 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %375, i64 0, i32 1
  store i64 1, ptr addrspace(1) %384
  %385 = bitcast ptr addrspace(1) %375 to ptr addrspace(1)
  %386 = getelementptr i8, ptr addrspace(1) %385, i64 864691128455135236
  store ptr addrspace(1) %386, ptr %47
  %387 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %387), !dbg !56
  store ptr addrspace(1) null, ptr %48
  ret void
388:
  %389 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %389), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/order5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 22, scope: !5)
!10 = !DILocation(line: 4, column: 21, scope: !5)
!11 = !DILocation(line: 5, column: 22, scope: !5)
!12 = !DILocation(line: 5, column: 30, scope: !5)
!13 = !DILocation(line: 5, column: 21, scope: !5)
!14 = !DILocation(line: 6, column: 23, scope: !5)
!15 = !DILocation(line: 6, column: 22, scope: !5)
!16 = !DILocation(line: 8, column: 18, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 4, scope: !5)
!19 = !DILocation(line: 9, column: 18, scope: !5)
!20 = !DILocation(line: 9, column: 15, scope: !5)
!21 = !DILocation(line: 9, column: 4, scope: !5)
!22 = !DILocation(line: 10, column: 18, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 11, column: 18, scope: !5)
!26 = !DILocation(line: 11, column: 15, scope: !5)
!27 = !DILocation(line: 11, column: 4, scope: !5)
!28 = !DILocation(line: 13, column: 21, scope: !5)
!29 = !DILocation(line: 13, column: 20, scope: !5)
!30 = !DILocation(line: 14, column: 21, scope: !5)
!31 = !DILocation(line: 14, column: 28, scope: !5)
!32 = !DILocation(line: 14, column: 20, scope: !5)
!33 = !DILocation(line: 15, column: 22, scope: !5)
!34 = !DILocation(line: 15, column: 21, scope: !5)
!35 = !DILocation(line: 17, column: 18, scope: !5)
!36 = !DILocation(line: 17, column: 15, scope: !5)
!37 = !DILocation(line: 17, column: 4, scope: !5)
!38 = !DILocation(line: 18, column: 18, scope: !5)
!39 = !DILocation(line: 18, column: 15, scope: !5)
!40 = !DILocation(line: 18, column: 4, scope: !5)
!41 = !DILocation(line: 19, column: 18, scope: !5)
!42 = !DILocation(line: 19, column: 15, scope: !5)
!43 = !DILocation(line: 19, column: 4, scope: !5)
!44 = !DILocation(line: 20, column: 18, scope: !5)
!45 = !DILocation(line: 20, column: 15, scope: !5)
!46 = !DILocation(line: 20, column: 4, scope: !5)
!47 = !DILocation(line: 22, column: 20, scope: !5)
!48 = !DILocation(line: 22, column: 19, scope: !5)
!49 = !DILocation(line: 23, column: 20, scope: !5)
!50 = !DILocation(line: 23, column: 19, scope: !5)
!51 = !DILocation(line: 25, column: 18, scope: !5)
!52 = !DILocation(line: 25, column: 15, scope: !5)
!53 = !DILocation(line: 25, column: 4, scope: !5)
!54 = !DILocation(line: 26, column: 18, scope: !5)
!55 = !DILocation(line: 26, column: 15, scope: !5)
!56 = !DILocation(line: 26, column: 4, scope: !5)
