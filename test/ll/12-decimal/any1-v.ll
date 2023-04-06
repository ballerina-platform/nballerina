@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 0, i64 5188076401986633728], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452350734591590400], align 8
@_Bi04root1 = external constant {i32}
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 2501, i64 2454250690684387328], align 8
@_Bi04root2 = external constant {i32}
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452209997103235072], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452280365847412736], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 161, i64 2452280365847412736], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 17, i64 2452139628359057408], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 33, i64 2452280365847412736], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 66, i64 2452350734591590400], align 8
@.dec10 = internal unnamed_addr constant [2 x i64] [i64 3, i64 2452350734591590400], align 8
@_Bi04root3 = external constant {i32}
@_Bi04root4 = external constant {i32}
@.dec11 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452139628359057408], align 8
@.dec12 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452209997103235072], align 8
@_Bi04root5 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
define internal ptr addrspace(1) @_B_bar(ptr addrspace(1) %0) !dbg !5 {
  %a = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %7, label %5
5:
  store ptr addrspace(1) %0, ptr %a
  %6 = load ptr addrspace(1), ptr %a
  ret ptr addrspace(1) %6
7:
  %8 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %8), !dbg !10
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %a1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %a2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %r = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %arr = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %arr1 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %arr2 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca ptr addrspace(1)
  %m1 = alloca ptr addrspace(1)
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca ptr addrspace(1)
  %38 = alloca ptr addrspace(1)
  %39 = alloca ptr addrspace(1)
  %40 = alloca ptr addrspace(1)
  %41 = alloca ptr addrspace(1)
  %m2 = alloca ptr addrspace(1)
  %42 = alloca ptr addrspace(1)
  %43 = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %44 = alloca ptr addrspace(1)
  %45 = alloca ptr addrspace(1)
  %46 = alloca ptr addrspace(1)
  %47 = alloca ptr addrspace(1)
  %48 = alloca ptr addrspace(1)
  %49 = alloca ptr addrspace(1)
  %50 = alloca i8
  %51 = load ptr, ptr @_bal_stack_guard
  %52 = icmp ult ptr %50, %51
  br i1 %52, label %133, label %53
53:
  %54 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 288230376151711744
  store ptr addrspace(1) %55, ptr %a1
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load ptr addrspace(1), ptr %a1
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %1
  %65 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !14
  store ptr addrspace(1) null, ptr %2
  %66 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 288230376151711744
  store ptr addrspace(1) %67, ptr %a2
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = load ptr addrspace(1), ptr %a2
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  store i64 1, ptr addrspace(1) %74
  %75 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 864691128455135236
  store ptr addrspace(1) %76, ptr %3
  %77 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %77), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %78 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %79 = getelementptr i8, ptr addrspace(1) %78, i64 288230376151711744
  %80 = call ptr addrspace(1) @_B_bar(ptr addrspace(1) %79), !dbg !17
  store ptr addrspace(1) %80, ptr %5
  %81 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 3
  %83 = load ptr addrspace(1), ptr addrspace(1) %82, align 8
  %84 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %85 = load ptr addrspace(1), ptr %5
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %84, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %81, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %6
  %90 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !19
  store ptr addrspace(1) null, ptr %7
  %91 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !20
  %92 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %91, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %93), !dbg !21
  store ptr addrspace(1) %91, ptr %8
  %94 = load ptr addrspace(1), ptr %8
  store ptr addrspace(1) %94, ptr %r
  %95 = load ptr addrspace(1), ptr %r
  %96 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %95, i64 0), !dbg !22
  %97 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %95, ptr addrspace(1) %96), !dbg !23
  store ptr addrspace(1) %97, ptr %9
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load ptr addrspace(1), ptr %9
  %103 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %102, ptr addrspace(1) %103
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 1, ptr addrspace(1) %104
  %105 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %106 = getelementptr i8, ptr addrspace(1) %105, i64 864691128455135236
  store ptr addrspace(1) %106, ptr %10
  %107 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %107), !dbg !25
  store ptr addrspace(1) null, ptr %11
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 3), !dbg !26
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %113 = getelementptr i8, ptr addrspace(1) %112, i64 288230376151711744
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 288230376151711744
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 1
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 288230376151711744
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 2
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 3, ptr addrspace(1) %121
  %122 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %123 = getelementptr i8, ptr addrspace(1) %122, i64 864691128455135236
  store ptr addrspace(1) %123, ptr %12
  %124 = load ptr addrspace(1), ptr %12
  store ptr addrspace(1) %124, ptr %arr
  %125 = load ptr addrspace(1), ptr %arr
  %126 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %125, i64 72057594037927928)
  %127 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %128 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 1
  %129 = load i64, ptr addrspace(1) %128, align 8
  %130 = icmp ult i64 0, %129
  br i1 %130, label %135, label %158
131:
  %132 = load ptr addrspace(1), ptr %49
  call void @_bal_panic(ptr addrspace(1) %132), !dbg !69
  unreachable
133:
  %134 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %134), !dbg !12
  unreachable
135:
  %136 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 0
  %137 = load ptr, ptr addrspace(1) %136, align 8
  %138 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = call ptr addrspace(1) %139(ptr addrspace(1) %125, i64 0)
  %141 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %125, ptr addrspace(1) %140), !dbg !27
  store ptr addrspace(1) %141, ptr %13
  %142 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 3
  %144 = load ptr addrspace(1), ptr addrspace(1) %143, align 8
  %145 = bitcast ptr addrspace(1) %144 to ptr addrspace(1)
  %146 = load ptr addrspace(1), ptr %13
  %147 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %145, i64 0, i64 0
  store ptr addrspace(1) %146, ptr addrspace(1) %147
  %148 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %142, i64 0, i32 1
  store i64 1, ptr addrspace(1) %148
  %149 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %150 = getelementptr i8, ptr addrspace(1) %149, i64 864691128455135236
  store ptr addrspace(1) %150, ptr %14
  %151 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %151), !dbg !29
  store ptr addrspace(1) null, ptr %15
  %152 = load ptr addrspace(1), ptr %arr
  %153 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %152, i64 72057594037927928)
  %154 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %155 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 1
  %156 = load i64, ptr addrspace(1) %155, align 8
  %157 = icmp ult i64 1, %156
  br i1 %157, label %160, label %183
158:
  %159 = call ptr addrspace(1) @_bal_panic_construct(i64 8197), !dbg !11
  store ptr addrspace(1) %159, ptr %49
  br label %131
160:
  %161 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %154, i64 0, i32 0
  %162 = load ptr, ptr addrspace(1) %161, align 8
  %163 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8
  %165 = call ptr addrspace(1) %164(ptr addrspace(1) %152, i64 1)
  %166 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %152, ptr addrspace(1) %165), !dbg !30
  store ptr addrspace(1) %166, ptr %16
  %167 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %168 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 3
  %169 = load ptr addrspace(1), ptr addrspace(1) %168, align 8
  %170 = bitcast ptr addrspace(1) %169 to ptr addrspace(1)
  %171 = load ptr addrspace(1), ptr %16
  %172 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %170, i64 0, i64 0
  store ptr addrspace(1) %171, ptr addrspace(1) %172
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %167, i64 0, i32 1
  store i64 1, ptr addrspace(1) %173
  %174 = bitcast ptr addrspace(1) %167 to ptr addrspace(1)
  %175 = getelementptr i8, ptr addrspace(1) %174, i64 864691128455135236
  store ptr addrspace(1) %175, ptr %17
  %176 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %176), !dbg !32
  store ptr addrspace(1) null, ptr %18
  %177 = load ptr addrspace(1), ptr %arr
  %178 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %177, i64 72057594037927928)
  %179 = bitcast ptr addrspace(1) %178 to ptr addrspace(1)
  %180 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 1
  %181 = load i64, ptr addrspace(1) %180, align 8
  %182 = icmp ult i64 2, %181
  br i1 %182, label %185, label %246
183:
  %184 = call ptr addrspace(1) @_bal_panic_construct(i64 8453), !dbg !11
  store ptr addrspace(1) %184, ptr %49
  br label %131
185:
  %186 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %179, i64 0, i32 0
  %187 = load ptr, ptr addrspace(1) %186, align 8
  %188 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8
  %190 = call ptr addrspace(1) %189(ptr addrspace(1) %177, i64 2)
  %191 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %177, ptr addrspace(1) %190), !dbg !33
  store ptr addrspace(1) %191, ptr %19
  %192 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %193 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 3
  %194 = load ptr addrspace(1), ptr addrspace(1) %193, align 8
  %195 = bitcast ptr addrspace(1) %194 to ptr addrspace(1)
  %196 = load ptr addrspace(1), ptr %19
  %197 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %195, i64 0, i64 0
  store ptr addrspace(1) %196, ptr addrspace(1) %197
  %198 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %192, i64 0, i32 1
  store i64 1, ptr addrspace(1) %198
  %199 = bitcast ptr addrspace(1) %192 to ptr addrspace(1)
  %200 = getelementptr i8, ptr addrspace(1) %199, i64 864691128455135236
  store ptr addrspace(1) %200, ptr %20
  %201 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %201), !dbg !35
  store ptr addrspace(1) null, ptr %21
  %202 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !36
  %203 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 3
  %204 = load ptr addrspace(1), ptr addrspace(1) %203, align 8
  %205 = bitcast ptr addrspace(1) %204 to ptr addrspace(1)
  %206 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %207 = getelementptr i8, ptr addrspace(1) %206, i64 288230376151711744
  %208 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %205, i64 0, i64 0
  store ptr addrspace(1) %207, ptr addrspace(1) %208
  %209 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %210 = getelementptr i8, ptr addrspace(1) %209, i64 288230376151711744
  %211 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %205, i64 0, i64 1
  store ptr addrspace(1) %210, ptr addrspace(1) %211
  %212 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %202, i64 0, i32 1
  store i64 2, ptr addrspace(1) %212
  %213 = bitcast ptr addrspace(1) %202 to ptr addrspace(1)
  %214 = getelementptr i8, ptr addrspace(1) %213, i64 864691128455135236
  store ptr addrspace(1) %214, ptr %22
  %215 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !37
  %216 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %215, i64 0, i32 3
  %217 = load ptr addrspace(1), ptr addrspace(1) %216, align 8
  %218 = bitcast ptr addrspace(1) %217 to ptr addrspace(1)
  %219 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %220 = getelementptr i8, ptr addrspace(1) %219, i64 288230376151711744
  %221 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %218, i64 0, i64 0
  store ptr addrspace(1) %220, ptr addrspace(1) %221
  %222 = addrspacecast ptr bitcast(ptr @.dec10 to ptr) to ptr addrspace(1)
  %223 = getelementptr i8, ptr addrspace(1) %222, i64 288230376151711744
  %224 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %218, i64 0, i64 1
  store ptr addrspace(1) %223, ptr addrspace(1) %224
  %225 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %215, i64 0, i32 1
  store i64 2, ptr addrspace(1) %225
  %226 = bitcast ptr addrspace(1) %215 to ptr addrspace(1)
  %227 = getelementptr i8, ptr addrspace(1) %226, i64 864691128455135236
  store ptr addrspace(1) %227, ptr %23
  %228 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 2), !dbg !38
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 3
  %230 = load ptr addrspace(1), ptr addrspace(1) %229, align 8
  %231 = bitcast ptr addrspace(1) %230 to ptr addrspace(1)
  %232 = load ptr addrspace(1), ptr %22
  %233 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 0
  store ptr addrspace(1) %232, ptr addrspace(1) %233
  %234 = load ptr addrspace(1), ptr %23
  %235 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 1
  store ptr addrspace(1) %234, ptr addrspace(1) %235
  %236 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 1
  store i64 2, ptr addrspace(1) %236
  %237 = bitcast ptr addrspace(1) %228 to ptr addrspace(1)
  %238 = getelementptr i8, ptr addrspace(1) %237, i64 864691128455135236
  store ptr addrspace(1) %238, ptr %24
  %239 = load ptr addrspace(1), ptr %24
  store ptr addrspace(1) %239, ptr %arr1
  %240 = load ptr addrspace(1), ptr %arr1
  %241 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %240, i64 72057594037927928)
  %242 = bitcast ptr addrspace(1) %241 to ptr addrspace(1)
  %243 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %242, i64 0, i32 1
  %244 = load i64, ptr addrspace(1) %243, align 8
  %245 = icmp ult i64 0, %244
  br i1 %245, label %248, label %262
246:
  %247 = call ptr addrspace(1) @_bal_panic_construct(i64 8709), !dbg !11
  store ptr addrspace(1) %247, ptr %49
  br label %131
248:
  %249 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %242, i64 0, i32 0
  %250 = load ptr, ptr addrspace(1) %249, align 8
  %251 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %250, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8
  %253 = call ptr addrspace(1) %252(ptr addrspace(1) %240, i64 0)
  %254 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %240, ptr addrspace(1) %253), !dbg !39
  store ptr addrspace(1) %254, ptr %25
  %255 = load ptr addrspace(1), ptr %25
  store ptr addrspace(1) %255, ptr %arr2
  %256 = load ptr addrspace(1), ptr %arr2
  %257 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %256, i64 72057594037927928)
  %258 = bitcast ptr addrspace(1) %257 to ptr addrspace(1)
  %259 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 1
  %260 = load i64, ptr addrspace(1) %259, align 8
  %261 = icmp ult i64 0, %260
  br i1 %261, label %264, label %287
262:
  %263 = call ptr addrspace(1) @_bal_panic_construct(i64 9477), !dbg !11
  store ptr addrspace(1) %263, ptr %49
  br label %131
264:
  %265 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %258, i64 0, i32 0
  %266 = load ptr, ptr addrspace(1) %265, align 8
  %267 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %266, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8
  %269 = call ptr addrspace(1) %268(ptr addrspace(1) %256, i64 0)
  %270 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %256, ptr addrspace(1) %269), !dbg !40
  store ptr addrspace(1) %270, ptr %26
  %271 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !41
  %272 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %271, i64 0, i32 3
  %273 = load ptr addrspace(1), ptr addrspace(1) %272, align 8
  %274 = bitcast ptr addrspace(1) %273 to ptr addrspace(1)
  %275 = load ptr addrspace(1), ptr %26
  %276 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %274, i64 0, i64 0
  store ptr addrspace(1) %275, ptr addrspace(1) %276
  %277 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %271, i64 0, i32 1
  store i64 1, ptr addrspace(1) %277
  %278 = bitcast ptr addrspace(1) %271 to ptr addrspace(1)
  %279 = getelementptr i8, ptr addrspace(1) %278, i64 864691128455135236
  store ptr addrspace(1) %279, ptr %27
  %280 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %280), !dbg !42
  store ptr addrspace(1) null, ptr %28
  %281 = load ptr addrspace(1), ptr %arr2
  %282 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %281, i64 72057594037927928)
  %283 = bitcast ptr addrspace(1) %282 to ptr addrspace(1)
  %284 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %283, i64 0, i32 1
  %285 = load i64, ptr addrspace(1) %284, align 8
  %286 = icmp ult i64 1, %285
  br i1 %286, label %289, label %312
287:
  %288 = call ptr addrspace(1) @_bal_panic_construct(i64 9733), !dbg !11
  store ptr addrspace(1) %288, ptr %49
  br label %131
289:
  %290 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %283, i64 0, i32 0
  %291 = load ptr, ptr addrspace(1) %290, align 8
  %292 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %291, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8
  %294 = call ptr addrspace(1) %293(ptr addrspace(1) %281, i64 1)
  %295 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %281, ptr addrspace(1) %294), !dbg !43
  store ptr addrspace(1) %295, ptr %29
  %296 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !44
  %297 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %296, i64 0, i32 3
  %298 = load ptr addrspace(1), ptr addrspace(1) %297, align 8
  %299 = bitcast ptr addrspace(1) %298 to ptr addrspace(1)
  %300 = load ptr addrspace(1), ptr %29
  %301 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %299, i64 0, i64 0
  store ptr addrspace(1) %300, ptr addrspace(1) %301
  %302 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %296, i64 0, i32 1
  store i64 1, ptr addrspace(1) %302
  %303 = bitcast ptr addrspace(1) %296 to ptr addrspace(1)
  %304 = getelementptr i8, ptr addrspace(1) %303, i64 864691128455135236
  store ptr addrspace(1) %304, ptr %30
  %305 = load ptr addrspace(1), ptr %30
  call void @_Bb02ioprintln(ptr addrspace(1) %305), !dbg !45
  store ptr addrspace(1) null, ptr %31
  %306 = load ptr addrspace(1), ptr %arr1
  %307 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %306, i64 72057594037927928)
  %308 = bitcast ptr addrspace(1) %307 to ptr addrspace(1)
  %309 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %308, i64 0, i32 1
  %310 = load i64, ptr addrspace(1) %309, align 8
  %311 = icmp ult i64 1, %310
  br i1 %311, label %314, label %388
312:
  %313 = call ptr addrspace(1) @_bal_panic_construct(i64 9989), !dbg !11
  store ptr addrspace(1) %313, ptr %49
  br label %131
314:
  %315 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %308, i64 0, i32 0
  %316 = load ptr, ptr addrspace(1) %315, align 8
  %317 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %316, i64 0, i32 3
  %318 = load ptr, ptr %317, align 8
  %319 = call ptr addrspace(1) %318(ptr addrspace(1) %306, i64 1)
  %320 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %306, ptr addrspace(1) %319), !dbg !46
  store ptr addrspace(1) %320, ptr %32
  %321 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !47
  %322 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %321, i64 0, i32 3
  %323 = load ptr addrspace(1), ptr addrspace(1) %322, align 8
  %324 = bitcast ptr addrspace(1) %323 to ptr addrspace(1)
  %325 = load ptr addrspace(1), ptr %32
  %326 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %325), !dbg !48
  %327 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %324, i64 0, i64 0
  store ptr addrspace(1) %326, ptr addrspace(1) %327
  %328 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %321, i64 0, i32 1
  store i64 1, ptr addrspace(1) %328
  %329 = bitcast ptr addrspace(1) %321 to ptr addrspace(1)
  %330 = getelementptr i8, ptr addrspace(1) %329, i64 864691128455135236
  store ptr addrspace(1) %330, ptr %33
  %331 = load ptr addrspace(1), ptr %33
  call void @_Bb02ioprintln(ptr addrspace(1) %331), !dbg !49
  store ptr addrspace(1) null, ptr %34
  %332 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root4, i64 2), !dbg !50
  %333 = addrspacecast ptr bitcast(ptr @.dec11 to ptr) to ptr addrspace(1)
  %334 = getelementptr i8, ptr addrspace(1) %333, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %332, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208696), ptr addrspace(1) %334), !dbg !51
  %335 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %336 = getelementptr i8, ptr addrspace(1) %335, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %332, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208952), ptr addrspace(1) %336), !dbg !52
  store ptr addrspace(1) %332, ptr %35
  %337 = load ptr addrspace(1), ptr %35
  store ptr addrspace(1) %337, ptr %m1
  %338 = load ptr addrspace(1), ptr %m1
  %339 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %338, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208696)), !dbg !53
  %340 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %338, ptr addrspace(1) %339), !dbg !54
  store ptr addrspace(1) %340, ptr %36
  %341 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !55
  %342 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %341, i64 0, i32 3
  %343 = load ptr addrspace(1), ptr addrspace(1) %342, align 8
  %344 = bitcast ptr addrspace(1) %343 to ptr addrspace(1)
  %345 = load ptr addrspace(1), ptr %36
  %346 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %344, i64 0, i64 0
  store ptr addrspace(1) %345, ptr addrspace(1) %346
  %347 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %341, i64 0, i32 1
  store i64 1, ptr addrspace(1) %347
  %348 = bitcast ptr addrspace(1) %341 to ptr addrspace(1)
  %349 = getelementptr i8, ptr addrspace(1) %348, i64 864691128455135236
  store ptr addrspace(1) %349, ptr %37
  %350 = load ptr addrspace(1), ptr %37
  call void @_Bb02ioprintln(ptr addrspace(1) %350), !dbg !56
  store ptr addrspace(1) null, ptr %38
  %351 = load ptr addrspace(1), ptr %m1
  %352 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %351, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208952)), !dbg !57
  %353 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %351, ptr addrspace(1) %352), !dbg !58
  store ptr addrspace(1) %353, ptr %39
  %354 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !59
  %355 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %354, i64 0, i32 3
  %356 = load ptr addrspace(1), ptr addrspace(1) %355, align 8
  %357 = bitcast ptr addrspace(1) %356 to ptr addrspace(1)
  %358 = load ptr addrspace(1), ptr %39
  %359 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %357, i64 0, i64 0
  store ptr addrspace(1) %358, ptr addrspace(1) %359
  %360 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %354, i64 0, i32 1
  store i64 1, ptr addrspace(1) %360
  %361 = bitcast ptr addrspace(1) %354 to ptr addrspace(1)
  %362 = getelementptr i8, ptr addrspace(1) %361, i64 864691128455135236
  store ptr addrspace(1) %362, ptr %40
  %363 = load ptr addrspace(1), ptr %40
  call void @_Bb02ioprintln(ptr addrspace(1) %363), !dbg !60
  store ptr addrspace(1) null, ptr %41
  %364 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !61
  %365 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %364, i64 0, i32 3
  %366 = load ptr addrspace(1), ptr addrspace(1) %365, align 8
  %367 = bitcast ptr addrspace(1) %366 to ptr addrspace(1)
  %368 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %369 = getelementptr i8, ptr addrspace(1) %368, i64 288230376151711744
  %370 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %367, i64 0, i64 0
  store ptr addrspace(1) %369, ptr addrspace(1) %370
  %371 = addrspacecast ptr bitcast(ptr @.dec12 to ptr) to ptr addrspace(1)
  %372 = getelementptr i8, ptr addrspace(1) %371, i64 288230376151711744
  %373 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %367, i64 0, i64 1
  store ptr addrspace(1) %372, ptr addrspace(1) %373
  %374 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %364, i64 0, i32 1
  store i64 2, ptr addrspace(1) %374
  %375 = bitcast ptr addrspace(1) %364 to ptr addrspace(1)
  %376 = getelementptr i8, ptr addrspace(1) %375, i64 864691128455135236
  store ptr addrspace(1) %376, ptr %42
  %377 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root5, i64 1), !dbg !62
  %378 = load ptr addrspace(1), ptr %42
  call void @_bal_mapping_init_member(ptr addrspace(1) %377, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208696), ptr addrspace(1) %378), !dbg !63
  store ptr addrspace(1) %377, ptr %43
  %379 = load ptr addrspace(1), ptr %43
  store ptr addrspace(1) %379, ptr %m2
  %380 = load ptr addrspace(1), ptr %m2
  %381 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %380, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208696)), !dbg !64
  %382 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %380, ptr addrspace(1) %381), !dbg !65
  store ptr addrspace(1) %382, ptr %44
  %383 = load ptr addrspace(1), ptr %44
  %384 = addrspacecast ptr addrspace(1) %383 to ptr
  %385 = ptrtoint ptr %384 to i64
  %386 = and i64 %385, 2233785415175766016
  %387 = icmp eq i64 %386, 864691128455135232
  br i1 %387, label %390, label %398
388:
  %389 = call ptr addrspace(1) @_bal_panic_construct(i64 10501), !dbg !11
  store ptr addrspace(1) %389, ptr %49
  br label %131
390:
  store ptr addrspace(1) %383, ptr %45
  %391 = load ptr addrspace(1), ptr %45
  store ptr addrspace(1) %391, ptr %x
  %392 = load ptr addrspace(1), ptr %x
  %393 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %392, i64 72057594037927928)
  %394 = bitcast ptr addrspace(1) %393 to ptr addrspace(1)
  %395 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %394, i64 0, i32 1
  %396 = load i64, ptr addrspace(1) %395, align 8
  %397 = icmp ult i64 0, %396
  br i1 %397, label %400, label %417
398:
  %399 = call ptr addrspace(1) @_bal_panic_construct(i64 12291), !dbg !11
  store ptr addrspace(1) %399, ptr %49
  br label %131
400:
  %401 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %394, i64 0, i32 0
  %402 = load ptr, ptr addrspace(1) %401, align 8
  %403 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %402, i64 0, i32 3
  %404 = load ptr, ptr %403, align 8
  %405 = call ptr addrspace(1) %404(ptr addrspace(1) %392, i64 0)
  %406 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %392, ptr addrspace(1) %405), !dbg !66
  store ptr addrspace(1) %406, ptr %46
  %407 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !67
  %408 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %407, i64 0, i32 3
  %409 = load ptr addrspace(1), ptr addrspace(1) %408, align 8
  %410 = bitcast ptr addrspace(1) %409 to ptr addrspace(1)
  %411 = load ptr addrspace(1), ptr %46
  %412 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %410, i64 0, i64 0
  store ptr addrspace(1) %411, ptr addrspace(1) %412
  %413 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %407, i64 0, i32 1
  store i64 1, ptr addrspace(1) %413
  %414 = bitcast ptr addrspace(1) %407 to ptr addrspace(1)
  %415 = getelementptr i8, ptr addrspace(1) %414, i64 864691128455135236
  store ptr addrspace(1) %415, ptr %47
  %416 = load ptr addrspace(1), ptr %47
  call void @_Bb02ioprintln(ptr addrspace(1) %416), !dbg !68
  store ptr addrspace(1) null, ptr %48
  ret void
417:
  %418 = call ptr addrspace(1) @_bal_panic_construct(i64 12549), !dbg !11
  store ptr addrspace(1) %418, ptr %49
  br label %131
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/any1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 7, column: 9, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 11, column: 16, scope: !7)
!13 = !DILocation(line: 13, column: 15, scope: !7)
!14 = !DILocation(line: 13, column: 4, scope: !7)
!15 = !DILocation(line: 25, column: 15, scope: !7)
!16 = !DILocation(line: 25, column: 4, scope: !7)
!17 = !DILocation(line: 26, column: 15, scope: !7)
!18 = !DILocation(line: 26, column: 15, scope: !7)
!19 = !DILocation(line: 26, column: 4, scope: !7)
!20 = !DILocation(line: 28, column: 10, scope: !7)
!21 = !DILocation(line: 28, column: 10, scope: !7)
!22 = !DILocation(line: 29, column: 16, scope: !7)
!23 = !DILocation(line: 29, column: 16, scope: !7)
!24 = !DILocation(line: 29, column: 15, scope: !7)
!25 = !DILocation(line: 29, column: 4, scope: !7)
!26 = !DILocation(line: 31, column: 16, scope: !7)
!27 = !DILocation(line: 32, column: 18, scope: !7)
!28 = !DILocation(line: 32, column: 15, scope: !7)
!29 = !DILocation(line: 32, column: 4, scope: !7)
!30 = !DILocation(line: 33, column: 18, scope: !7)
!31 = !DILocation(line: 33, column: 15, scope: !7)
!32 = !DILocation(line: 33, column: 4, scope: !7)
!33 = !DILocation(line: 34, column: 18, scope: !7)
!34 = !DILocation(line: 34, column: 15, scope: !7)
!35 = !DILocation(line: 34, column: 4, scope: !7)
!36 = !DILocation(line: 36, column: 20, scope: !7)
!37 = !DILocation(line: 36, column: 36, scope: !7)
!38 = !DILocation(line: 36, column: 19, scope: !7)
!39 = !DILocation(line: 37, column: 21, scope: !7)
!40 = !DILocation(line: 38, column: 19, scope: !7)
!41 = !DILocation(line: 38, column: 15, scope: !7)
!42 = !DILocation(line: 38, column: 4, scope: !7)
!43 = !DILocation(line: 39, column: 19, scope: !7)
!44 = !DILocation(line: 39, column: 15, scope: !7)
!45 = !DILocation(line: 39, column: 4, scope: !7)
!46 = !DILocation(line: 41, column: 19, scope: !7)
!47 = !DILocation(line: 41, column: 15, scope: !7)
!48 = !DILocation(line: 41, column: 15, scope: !7)
!49 = !DILocation(line: 41, column: 4, scope: !7)
!50 = !DILocation(line: 43, column: 18, scope: !7)
!51 = !DILocation(line: 43, column: 18, scope: !7)
!52 = !DILocation(line: 43, column: 18, scope: !7)
!53 = !DILocation(line: 44, column: 17, scope: !7)
!54 = !DILocation(line: 44, column: 17, scope: !7)
!55 = !DILocation(line: 44, column: 15, scope: !7)
!56 = !DILocation(line: 44, column: 4, scope: !7)
!57 = !DILocation(line: 45, column: 17, scope: !7)
!58 = !DILocation(line: 45, column: 17, scope: !7)
!59 = !DILocation(line: 45, column: 15, scope: !7)
!60 = !DILocation(line: 45, column: 4, scope: !7)
!61 = !DILocation(line: 47, column: 28, scope: !7)
!62 = !DILocation(line: 47, column: 20, scope: !7)
!63 = !DILocation(line: 47, column: 20, scope: !7)
!64 = !DILocation(line: 48, column: 23, scope: !7)
!65 = !DILocation(line: 48, column: 23, scope: !7)
!66 = !DILocation(line: 49, column: 16, scope: !7)
!67 = !DILocation(line: 49, column: 15, scope: !7)
!68 = !DILocation(line: 49, column: 4, scope: !7)
!69 = !DILocation(line: 50, column: 0, scope: !7)
