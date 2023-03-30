@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 64, i64 -6771232408495718400], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 20, i64 2452139628359057408], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 20, i64 -6771232408495718400], align 8
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 3, i64 2452209997103235072], align 8
@.dec7 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2322168557862912], align 8
@.dec8 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2451998890870702080], align 8
@.dec9 = internal unnamed_addr constant [2 x i64] [i64 5, i64 2452069259614879744], align 8
@.dec10 = internal unnamed_addr constant [2 x i64] [i64 5, i64 2451858153382346752], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
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
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
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
  %35 = alloca ptr addrspace(1)
  %36 = alloca ptr addrspace(1)
  %37 = alloca i8
  %38 = load ptr, ptr @_bal_stack_guard
  %39 = icmp ult ptr %37, %38
  br i1 %39, label %239, label %40
40:
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 288230376151711744
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %1
  %51 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 288230376151711744
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %3
  %62 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %68 = getelementptr i8, ptr addrspace(1) %67, i64 288230376151711744
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %5
  %73 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %79 = getelementptr i8, ptr addrspace(1) %78, i64 288230376151711744
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %77, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %7
  %84 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 3
  %87 = load ptr addrspace(1), ptr addrspace(1) %86, align 8
  %88 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %89 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %90 = getelementptr i8, ptr addrspace(1) %89, i64 288230376151711744
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %88, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %9
  %95 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %101 = getelementptr i8, ptr addrspace(1) %100, i64 288230376151711744
  %102 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) %101, ptr addrspace(1) %102
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 1, ptr addrspace(1) %103
  %104 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %105 = getelementptr i8, ptr addrspace(1) %104, i64 864691128455135236
  store ptr addrspace(1) %105, ptr %11
  %106 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %106), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %107 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 3
  %109 = load ptr addrspace(1), ptr addrspace(1) %108, align 8
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 288230376151711744
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %110, i64 0, i64 0
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  store i64 1, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %13
  %117 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %117), !dbg !22
  store ptr addrspace(1) null, ptr %14
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %123 = getelementptr i8, ptr addrspace(1) %122, i64 288230376151711744
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 1, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %15
  %128 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %128), !dbg !24
  store ptr addrspace(1) null, ptr %16
  %129 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %130 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %129, i64 0, i32 3
  %131 = load ptr addrspace(1), ptr addrspace(1) %130, align 8
  %132 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %133 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %134 = getelementptr i8, ptr addrspace(1) %133, i64 288230376151711744
  %135 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %132, i64 0, i64 0
  store ptr addrspace(1) %134, ptr addrspace(1) %135
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %129, i64 0, i32 1
  store i64 1, ptr addrspace(1) %136
  %137 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %138 = getelementptr i8, ptr addrspace(1) %137, i64 864691128455135236
  store ptr addrspace(1) %138, ptr %17
  %139 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %139), !dbg !26
  store ptr addrspace(1) null, ptr %18
  %140 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %141 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 3
  %142 = load ptr addrspace(1), ptr addrspace(1) %141, align 8
  %143 = bitcast ptr addrspace(1) %142 to ptr addrspace(1)
  %144 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 288230376151711744
  %146 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %143, i64 0, i64 0
  store ptr addrspace(1) %145, ptr addrspace(1) %146
  %147 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %140, i64 0, i32 1
  store i64 1, ptr addrspace(1) %147
  %148 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %149 = getelementptr i8, ptr addrspace(1) %148, i64 864691128455135236
  store ptr addrspace(1) %149, ptr %19
  %150 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %150), !dbg !28
  store ptr addrspace(1) null, ptr %20
  %151 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !29
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 3
  %153 = load ptr addrspace(1), ptr addrspace(1) %152, align 8
  %154 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %155 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 288230376151711744
  %157 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %154, i64 0, i64 0
  store ptr addrspace(1) %156, ptr addrspace(1) %157
  %158 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 1
  store i64 1, ptr addrspace(1) %158
  %159 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %160 = getelementptr i8, ptr addrspace(1) %159, i64 864691128455135236
  store ptr addrspace(1) %160, ptr %21
  %161 = load ptr addrspace(1), ptr %21
  call void @_Bb02ioprintln(ptr addrspace(1) %161), !dbg !30
  store ptr addrspace(1) null, ptr %22
  %162 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %163 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %162, i64 0, i32 3
  %164 = load ptr addrspace(1), ptr addrspace(1) %163, align 8
  %165 = bitcast ptr addrspace(1) %164 to ptr addrspace(1)
  %166 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %167 = getelementptr i8, ptr addrspace(1) %166, i64 288230376151711744
  %168 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %165, i64 0, i64 0
  store ptr addrspace(1) %167, ptr addrspace(1) %168
  %169 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %162, i64 0, i32 1
  store i64 1, ptr addrspace(1) %169
  %170 = bitcast ptr addrspace(1) %162 to ptr addrspace(1)
  %171 = getelementptr i8, ptr addrspace(1) %170, i64 864691128455135236
  store ptr addrspace(1) %171, ptr %23
  %172 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %172), !dbg !32
  store ptr addrspace(1) null, ptr %24
  %173 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %174 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 3
  %175 = load ptr addrspace(1), ptr addrspace(1) %174, align 8
  %176 = bitcast ptr addrspace(1) %175 to ptr addrspace(1)
  %177 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %178 = getelementptr i8, ptr addrspace(1) %177, i64 288230376151711744
  %179 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %176, i64 0, i64 0
  store ptr addrspace(1) %178, ptr addrspace(1) %179
  %180 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %173, i64 0, i32 1
  store i64 1, ptr addrspace(1) %180
  %181 = bitcast ptr addrspace(1) %173 to ptr addrspace(1)
  %182 = getelementptr i8, ptr addrspace(1) %181, i64 864691128455135236
  store ptr addrspace(1) %182, ptr %25
  %183 = load ptr addrspace(1), ptr %25
  call void @_Bb02ioprintln(ptr addrspace(1) %183), !dbg !34
  store ptr addrspace(1) null, ptr %26
  %184 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !35
  %185 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 3
  %186 = load ptr addrspace(1), ptr addrspace(1) %185, align 8
  %187 = bitcast ptr addrspace(1) %186 to ptr addrspace(1)
  %188 = addrspacecast ptr bitcast(ptr @.dec7 to ptr) to ptr addrspace(1)
  %189 = getelementptr i8, ptr addrspace(1) %188, i64 288230376151711744
  %190 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %187, i64 0, i64 0
  store ptr addrspace(1) %189, ptr addrspace(1) %190
  %191 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %184, i64 0, i32 1
  store i64 1, ptr addrspace(1) %191
  %192 = bitcast ptr addrspace(1) %184 to ptr addrspace(1)
  %193 = getelementptr i8, ptr addrspace(1) %192, i64 864691128455135236
  store ptr addrspace(1) %193, ptr %27
  %194 = load ptr addrspace(1), ptr %27
  call void @_Bb02ioprintln(ptr addrspace(1) %194), !dbg !36
  store ptr addrspace(1) null, ptr %28
  %195 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %196 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 3
  %197 = load ptr addrspace(1), ptr addrspace(1) %196, align 8
  %198 = bitcast ptr addrspace(1) %197 to ptr addrspace(1)
  %199 = addrspacecast ptr bitcast(ptr @.dec8 to ptr) to ptr addrspace(1)
  %200 = getelementptr i8, ptr addrspace(1) %199, i64 288230376151711744
  %201 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %198, i64 0, i64 0
  store ptr addrspace(1) %200, ptr addrspace(1) %201
  %202 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %195, i64 0, i32 1
  store i64 1, ptr addrspace(1) %202
  %203 = bitcast ptr addrspace(1) %195 to ptr addrspace(1)
  %204 = getelementptr i8, ptr addrspace(1) %203, i64 864691128455135236
  store ptr addrspace(1) %204, ptr %29
  %205 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %205), !dbg !38
  store ptr addrspace(1) null, ptr %30
  %206 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !39
  %207 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %206, i64 0, i32 3
  %208 = load ptr addrspace(1), ptr addrspace(1) %207, align 8
  %209 = bitcast ptr addrspace(1) %208 to ptr addrspace(1)
  %210 = addrspacecast ptr bitcast(ptr @.dec9 to ptr) to ptr addrspace(1)
  %211 = getelementptr i8, ptr addrspace(1) %210, i64 288230376151711744
  %212 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %209, i64 0, i64 0
  store ptr addrspace(1) %211, ptr addrspace(1) %212
  %213 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %206, i64 0, i32 1
  store i64 1, ptr addrspace(1) %213
  %214 = bitcast ptr addrspace(1) %206 to ptr addrspace(1)
  %215 = getelementptr i8, ptr addrspace(1) %214, i64 864691128455135236
  store ptr addrspace(1) %215, ptr %31
  %216 = load ptr addrspace(1), ptr %31
  call void @_Bb02ioprintln(ptr addrspace(1) %216), !dbg !40
  store ptr addrspace(1) null, ptr %32
  %217 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !41
  %218 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 3
  %219 = load ptr addrspace(1), ptr addrspace(1) %218, align 8
  %220 = bitcast ptr addrspace(1) %219 to ptr addrspace(1)
  %221 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %222 = getelementptr i8, ptr addrspace(1) %221, i64 288230376151711744
  %223 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %220, i64 0, i64 0
  store ptr addrspace(1) %222, ptr addrspace(1) %223
  %224 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %217, i64 0, i32 1
  store i64 1, ptr addrspace(1) %224
  %225 = bitcast ptr addrspace(1) %217 to ptr addrspace(1)
  %226 = getelementptr i8, ptr addrspace(1) %225, i64 864691128455135236
  store ptr addrspace(1) %226, ptr %33
  %227 = load ptr addrspace(1), ptr %33
  call void @_Bb02ioprintln(ptr addrspace(1) %227), !dbg !42
  store ptr addrspace(1) null, ptr %34
  %228 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %229 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 3
  %230 = load ptr addrspace(1), ptr addrspace(1) %229, align 8
  %231 = bitcast ptr addrspace(1) %230 to ptr addrspace(1)
  %232 = addrspacecast ptr bitcast(ptr @.dec10 to ptr) to ptr addrspace(1)
  %233 = getelementptr i8, ptr addrspace(1) %232, i64 288230376151711744
  %234 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %231, i64 0, i64 0
  store ptr addrspace(1) %233, ptr addrspace(1) %234
  %235 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %228, i64 0, i32 1
  store i64 1, ptr addrspace(1) %235
  %236 = bitcast ptr addrspace(1) %228 to ptr addrspace(1)
  %237 = getelementptr i8, ptr addrspace(1) %236, i64 864691128455135236
  store ptr addrspace(1) %237, ptr %35
  %238 = load ptr addrspace(1), ptr %35
  call void @_Bb02ioprintln(ptr addrspace(1) %238), !dbg !44
  store ptr addrspace(1) null, ptr %36
  ret void
239:
  %240 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %240), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/rem1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 15, scope: !5)
!10 = !DILocation(line: 3, column: 4, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 5, column: 15, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 11, column: 15, scope: !5)
!26 = !DILocation(line: 11, column: 4, scope: !5)
!27 = !DILocation(line: 12, column: 15, scope: !5)
!28 = !DILocation(line: 12, column: 4, scope: !5)
!29 = !DILocation(line: 13, column: 15, scope: !5)
!30 = !DILocation(line: 13, column: 4, scope: !5)
!31 = !DILocation(line: 14, column: 15, scope: !5)
!32 = !DILocation(line: 14, column: 4, scope: !5)
!33 = !DILocation(line: 15, column: 15, scope: !5)
!34 = !DILocation(line: 15, column: 4, scope: !5)
!35 = !DILocation(line: 16, column: 15, scope: !5)
!36 = !DILocation(line: 16, column: 4, scope: !5)
!37 = !DILocation(line: 17, column: 15, scope: !5)
!38 = !DILocation(line: 17, column: 4, scope: !5)
!39 = !DILocation(line: 18, column: 15, scope: !5)
!40 = !DILocation(line: 18, column: 4, scope: !5)
!41 = !DILocation(line: 19, column: 15, scope: !5)
!42 = !DILocation(line: 19, column: 4, scope: !5)
!43 = !DILocation(line: 20, column: 15, scope: !5)
!44 = !DILocation(line: 20, column: 4, scope: !5)
