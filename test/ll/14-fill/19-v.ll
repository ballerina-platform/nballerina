@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
@_Bi04root5 = external constant {i32}
@_Bi04root6 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca i8
  %27 = load ptr, ptr @_bal_stack_guard
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %76, label %29
29:
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %1
  %33 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %33, ptr %a
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load ptr addrspace(1), ptr %a
  %39 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %38), !dbg !11
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %2
  %44 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !12
  store ptr addrspace(1) null, ptr %3
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 3), !dbg !13
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = and i64 72057594037927935, 1
  %50 = or i64 2449958197289549824, %49
  %51 = getelementptr i8, ptr addrspace(1) null, i64 %50
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = and i64 72057594037927935, 2
  %54 = or i64 2449958197289549824, %53
  %55 = getelementptr i8, ptr addrspace(1) null, i64 %54
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 1
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = and i64 72057594037927935, 3
  %58 = or i64 2449958197289549824, %57
  %59 = getelementptr i8, ptr addrspace(1) null, i64 %58
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %48, i64 0, i64 2
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 3, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %4
  %64 = load ptr addrspace(1), ptr %a
  %65 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %64, i64 72057594037927928), !dbg !14
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load ptr addrspace(1), ptr %4
  %68 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 0
  %69 = load ptr, ptr addrspace(1) %68, align 8
  %70 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %69, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8
  %72 = call i64 %71(ptr addrspace(1) %64, i64 1, ptr addrspace(1) %67)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %78, label %213
74:
  %75 = load ptr addrspace(1), ptr %25
  call void @_bal_panic(ptr addrspace(1) %75), !dbg !41
  unreachable
76:
  %77 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %77), !dbg !8
  unreachable
78:
  %79 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = load ptr addrspace(1), ptr %a
  %84 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %83), !dbg !16
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %5
  %89 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !17
  store ptr addrspace(1) null, ptr %6
  %90 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 3), !dbg !18
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 3
  %92 = load ptr addrspace(1), ptr addrspace(1) %91, align 8
  %93 = bitcast ptr addrspace(1) %92 to ptr addrspace(1)
  %94 = and i64 72057594037927935, 0
  %95 = or i64 2449958197289549824, %94
  %96 = getelementptr i8, ptr addrspace(1) null, i64 %95
  %97 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %93, i64 0, i64 0
  store ptr addrspace(1) %96, ptr addrspace(1) %97
  %98 = and i64 72057594037927935, 0
  %99 = or i64 2449958197289549824, %98
  %100 = getelementptr i8, ptr addrspace(1) null, i64 %99
  %101 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %93, i64 0, i64 1
  store ptr addrspace(1) %100, ptr addrspace(1) %101
  %102 = and i64 72057594037927935, 0
  %103 = or i64 2449958197289549824, %102
  %104 = getelementptr i8, ptr addrspace(1) null, i64 %103
  %105 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %93, i64 0, i64 2
  store ptr addrspace(1) %104, ptr addrspace(1) %105
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %90, i64 0, i32 1
  store i64 3, ptr addrspace(1) %106
  %107 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %108 = getelementptr i8, ptr addrspace(1) %107, i64 864691128455135236
  store ptr addrspace(1) %108, ptr %7
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 3), !dbg !19
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = and i64 72057594037927935, 0
  %114 = or i64 2449958197289549824, %113
  %115 = getelementptr i8, ptr addrspace(1) null, i64 %114
  %116 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %115, ptr addrspace(1) %116
  %117 = and i64 72057594037927935, 0
  %118 = or i64 2449958197289549824, %117
  %119 = getelementptr i8, ptr addrspace(1) null, i64 %118
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 1
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = and i64 72057594037927935, 0
  %122 = or i64 2449958197289549824, %121
  %123 = getelementptr i8, ptr addrspace(1) null, i64 %122
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 2
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 3, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %8
  %128 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 3), !dbg !20
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 3
  %130 = load ptr addrspace(1), ptr addrspace(1) %129, align 8
  %131 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %132 = and i64 72057594037927935, 0
  %133 = or i64 2449958197289549824, %132
  %134 = getelementptr i8, ptr addrspace(1) null, i64 %133
  %135 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %131, i64 0, i64 0
  store ptr addrspace(1) %134, ptr addrspace(1) %135
  %136 = and i64 72057594037927935, 0
  %137 = or i64 2449958197289549824, %136
  %138 = getelementptr i8, ptr addrspace(1) null, i64 %137
  %139 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %131, i64 0, i64 1
  store ptr addrspace(1) %138, ptr addrspace(1) %139
  %140 = and i64 72057594037927935, 0
  %141 = or i64 2449958197289549824, %140
  %142 = getelementptr i8, ptr addrspace(1) null, i64 %141
  %143 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %131, i64 0, i64 2
  store ptr addrspace(1) %142, ptr addrspace(1) %143
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 1
  store i64 3, ptr addrspace(1) %144
  %145 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %146 = getelementptr i8, ptr addrspace(1) %145, i64 864691128455135236
  store ptr addrspace(1) %146, ptr %9
  %147 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 3), !dbg !21
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 3
  %149 = load ptr addrspace(1), ptr addrspace(1) %148, align 8
  %150 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %151 = load ptr addrspace(1), ptr %7
  %152 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 0
  store ptr addrspace(1) %151, ptr addrspace(1) %152
  %153 = load ptr addrspace(1), ptr %8
  %154 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 1
  store ptr addrspace(1) %153, ptr addrspace(1) %154
  %155 = load ptr addrspace(1), ptr %9
  %156 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %150, i64 0, i64 2
  store ptr addrspace(1) %155, ptr addrspace(1) %156
  %157 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %147, i64 0, i32 1
  store i64 3, ptr addrspace(1) %157
  %158 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %159 = getelementptr i8, ptr addrspace(1) %158, i64 864691128455135236
  store ptr addrspace(1) %159, ptr %10
  %160 = load ptr addrspace(1), ptr %10
  store ptr addrspace(1) %160, ptr %b
  %161 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %162 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 3
  %163 = load ptr addrspace(1), ptr addrspace(1) %162, align 8
  %164 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %165 = load ptr addrspace(1), ptr %b
  %166 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %165), !dbg !23
  %167 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %164, i64 0, i64 0
  store ptr addrspace(1) %166, ptr addrspace(1) %167
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %161, i64 0, i32 1
  store i64 1, ptr addrspace(1) %168
  %169 = bitcast ptr addrspace(1) %161 to ptr addrspace(1)
  %170 = getelementptr i8, ptr addrspace(1) %169, i64 864691128455135236
  store ptr addrspace(1) %170, ptr %11
  %171 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %171), !dbg !24
  store ptr addrspace(1) null, ptr %12
  %172 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 0), !dbg !25
  %173 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %174 = getelementptr i8, ptr addrspace(1) %173, i64 864691128455135236
  store ptr addrspace(1) %174, ptr %13
  %175 = load ptr addrspace(1), ptr %13
  store ptr addrspace(1) %175, ptr %x
  %176 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !26
  %177 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 3
  %178 = load ptr addrspace(1), ptr addrspace(1) %177, align 8
  %179 = bitcast ptr addrspace(1) %178 to ptr addrspace(1)
  %180 = load ptr addrspace(1), ptr %x
  %181 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %180), !dbg !27
  %182 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %179, i64 0, i64 0
  store ptr addrspace(1) %181, ptr addrspace(1) %182
  %183 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %176, i64 0, i32 1
  store i64 1, ptr addrspace(1) %183
  %184 = bitcast ptr addrspace(1) %176 to ptr addrspace(1)
  %185 = getelementptr i8, ptr addrspace(1) %184, i64 864691128455135236
  store ptr addrspace(1) %185, ptr %14
  %186 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %186), !dbg !28
  store ptr addrspace(1) null, ptr %15
  %187 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 3), !dbg !29
  %188 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %187, i64 0, i32 3
  %189 = load ptr addrspace(1), ptr addrspace(1) %188, align 8
  %190 = bitcast ptr addrspace(1) %189 to ptr addrspace(1)
  %191 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %190, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %191
  %192 = and i64 72057594037927935, 2
  %193 = or i64 2449958197289549824, %192
  %194 = getelementptr i8, ptr addrspace(1) null, i64 %193
  %195 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %190, i64 0, i64 1
  store ptr addrspace(1) %194, ptr addrspace(1) %195
  %196 = and i64 72057594037927935, 3
  %197 = or i64 2449958197289549824, %196
  %198 = getelementptr i8, ptr addrspace(1) null, i64 %197
  %199 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %190, i64 0, i64 2
  store ptr addrspace(1) %198, ptr addrspace(1) %199
  %200 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %187, i64 0, i32 1
  store i64 3, ptr addrspace(1) %200
  %201 = bitcast ptr addrspace(1) %187 to ptr addrspace(1)
  %202 = getelementptr i8, ptr addrspace(1) %201, i64 864691128455135236
  store ptr addrspace(1) %202, ptr %16
  %203 = load ptr addrspace(1), ptr %x
  %204 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %203, i64 72057594037927928), !dbg !30
  %205 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %206 = load ptr addrspace(1), ptr %16
  %207 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %205, i64 0, i32 0
  %208 = load ptr, ptr addrspace(1) %207, align 8
  %209 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %208, i64 0, i32 4
  %210 = load ptr, ptr %209, align 8
  %211 = call i64 %210(ptr addrspace(1) %203, i64 1, ptr addrspace(1) %206)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %216, label %301
213:
  %214 = or i64 %72, 2048
  %215 = call ptr addrspace(1) @_bal_panic_construct(i64 %214), !dbg !7
  store ptr addrspace(1) %215, ptr %25
  br label %74
216:
  %217 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !31
  %218 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 3
  %219 = load ptr addrspace(1), ptr addrspace(1) %218, align 8
  %220 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %221 = load ptr addrspace(1), ptr %x
  %222 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %221), !dbg !32
  %223 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %220, i64 0, i64 0
  store ptr addrspace(1) %222, ptr addrspace(1) %223
  %224 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 1
  store i64 1, ptr addrspace(1) %224
  %225 = bitcast ptr addrspace(1) %217 to ptr addrspace(1)
  %226 = getelementptr i8, ptr addrspace(1) %225, i64 864691128455135236
  store ptr addrspace(1) %226, ptr %17
  %227 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %227), !dbg !33
  store ptr addrspace(1) null, ptr %18
  %228 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 3), !dbg !34
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 3
  %230 = load ptr addrspace(1), ptr addrspace(1) %229, align 8
  %231 = bitcast ptr addrspace(1) %230 to ptr addrspace(1)
  %232 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567), ptr addrspace(1) %232
  %233 = and i64 72057594037927935, 0
  %234 = or i64 2449958197289549824, %233
  %235 = getelementptr i8, ptr addrspace(1) null, i64 %234
  %236 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 1
  store ptr addrspace(1) %235, ptr addrspace(1) %236
  %237 = and i64 72057594037927935, 0
  %238 = or i64 2449958197289549824, %237
  %239 = getelementptr i8, ptr addrspace(1) null, i64 %238
  %240 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 2
  store ptr addrspace(1) %239, ptr addrspace(1) %240
  %241 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 1
  store i64 3, ptr addrspace(1) %241
  %242 = bitcast ptr addrspace(1) %228 to ptr addrspace(1)
  %243 = getelementptr i8, ptr addrspace(1) %242, i64 864691128455135236
  store ptr addrspace(1) %243, ptr %19
  %244 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 3), !dbg !35
  %245 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %244, i64 0, i32 3
  %246 = load ptr addrspace(1), ptr addrspace(1) %245, align 8
  %247 = bitcast ptr addrspace(1) %246 to ptr addrspace(1)
  %248 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %247, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567), ptr addrspace(1) %248
  %249 = and i64 72057594037927935, 0
  %250 = or i64 2449958197289549824, %249
  %251 = getelementptr i8, ptr addrspace(1) null, i64 %250
  %252 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %247, i64 0, i64 1
  store ptr addrspace(1) %251, ptr addrspace(1) %252
  %253 = and i64 72057594037927935, 0
  %254 = or i64 2449958197289549824, %253
  %255 = getelementptr i8, ptr addrspace(1) null, i64 %254
  %256 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %247, i64 0, i64 2
  store ptr addrspace(1) %255, ptr addrspace(1) %256
  %257 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %244, i64 0, i32 1
  store i64 3, ptr addrspace(1) %257
  %258 = bitcast ptr addrspace(1) %244 to ptr addrspace(1)
  %259 = getelementptr i8, ptr addrspace(1) %258, i64 864691128455135236
  store ptr addrspace(1) %259, ptr %20
  %260 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 3), !dbg !36
  %261 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %260, i64 0, i32 3
  %262 = load ptr addrspace(1), ptr addrspace(1) %261, align 8
  %263 = bitcast ptr addrspace(1) %262 to ptr addrspace(1)
  %264 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %263, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567), ptr addrspace(1) %264
  %265 = and i64 72057594037927935, 0
  %266 = or i64 2449958197289549824, %265
  %267 = getelementptr i8, ptr addrspace(1) null, i64 %266
  %268 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %263, i64 0, i64 1
  store ptr addrspace(1) %267, ptr addrspace(1) %268
  %269 = and i64 72057594037927935, 0
  %270 = or i64 2449958197289549824, %269
  %271 = getelementptr i8, ptr addrspace(1) null, i64 %270
  %272 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %263, i64 0, i64 2
  store ptr addrspace(1) %271, ptr addrspace(1) %272
  %273 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %260, i64 0, i32 1
  store i64 3, ptr addrspace(1) %273
  %274 = bitcast ptr addrspace(1) %260 to ptr addrspace(1)
  %275 = getelementptr i8, ptr addrspace(1) %274, i64 864691128455135236
  store ptr addrspace(1) %275, ptr %21
  %276 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root6, i64 3), !dbg !37
  %277 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %276, i64 0, i32 3
  %278 = load ptr addrspace(1), ptr addrspace(1) %277, align 8
  %279 = bitcast ptr addrspace(1) %278 to ptr addrspace(1)
  %280 = load ptr addrspace(1), ptr %19
  %281 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %279, i64 0, i64 0
  store ptr addrspace(1) %280, ptr addrspace(1) %281
  %282 = load ptr addrspace(1), ptr %20
  %283 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %279, i64 0, i64 1
  store ptr addrspace(1) %282, ptr addrspace(1) %283
  %284 = load ptr addrspace(1), ptr %21
  %285 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %279, i64 0, i64 2
  store ptr addrspace(1) %284, ptr addrspace(1) %285
  %286 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %276, i64 0, i32 1
  store i64 3, ptr addrspace(1) %286
  %287 = bitcast ptr addrspace(1) %276 to ptr addrspace(1)
  %288 = getelementptr i8, ptr addrspace(1) %287, i64 864691128455135236
  store ptr addrspace(1) %288, ptr %22
  %289 = load ptr addrspace(1), ptr %22
  store ptr addrspace(1) %289, ptr %y
  %290 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !38
  %291 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 3
  %292 = load ptr addrspace(1), ptr addrspace(1) %291, align 8
  %293 = bitcast ptr addrspace(1) %292 to ptr addrspace(1)
  %294 = load ptr addrspace(1), ptr %y
  %295 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %294), !dbg !39
  %296 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %293, i64 0, i64 0
  store ptr addrspace(1) %295, ptr addrspace(1) %296
  %297 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %290, i64 0, i32 1
  store i64 1, ptr addrspace(1) %297
  %298 = bitcast ptr addrspace(1) %290 to ptr addrspace(1)
  %299 = getelementptr i8, ptr addrspace(1) %298, i64 864691128455135236
  store ptr addrspace(1) %299, ptr %23
  %300 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %300), !dbg !40
  store ptr addrspace(1) null, ptr %24
  ret void
301:
  %302 = or i64 %211, 3840
  %303 = call ptr addrspace(1) @_bal_panic_construct(i64 %302), !dbg !7
  store ptr addrspace(1) %303, ptr %25
  br label %74
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-fill/19-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 12, scope: !5)
!10 = !DILocation(line: 7, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 15, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 11, scope: !5)
!14 = !DILocation(line: 8, column: 5, scope: !5)
!15 = !DILocation(line: 9, column: 15, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 15, scope: !5)
!21 = !DILocation(line: 10, column: 13, scope: !5)
!22 = !DILocation(line: 11, column: 15, scope: !5)
!23 = !DILocation(line: 11, column: 15, scope: !5)
!24 = !DILocation(line: 11, column: 4, scope: !5)
!25 = !DILocation(line: 13, column: 13, scope: !5)
!26 = !DILocation(line: 14, column: 15, scope: !5)
!27 = !DILocation(line: 14, column: 15, scope: !5)
!28 = !DILocation(line: 14, column: 4, scope: !5)
!29 = !DILocation(line: 15, column: 11, scope: !5)
!30 = !DILocation(line: 15, column: 5, scope: !5)
!31 = !DILocation(line: 16, column: 15, scope: !5)
!32 = !DILocation(line: 16, column: 15, scope: !5)
!33 = !DILocation(line: 16, column: 4, scope: !5)
!34 = !DILocation(line: 17, column: 16, scope: !5)
!35 = !DILocation(line: 17, column: 16, scope: !5)
!36 = !DILocation(line: 17, column: 16, scope: !5)
!37 = !DILocation(line: 17, column: 14, scope: !5)
!38 = !DILocation(line: 18, column: 15, scope: !5)
!39 = !DILocation(line: 18, column: 15, scope: !5)
!40 = !DILocation(line: 18, column: 4, scope: !5)
!41 = !DILocation(line: 19, column: 0, scope: !5)
