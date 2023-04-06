@_bal_stack_guard = external global ptr
@.func0 = internal unnamed_addr constant {ptr} {ptr @_B_sum}, align 8
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@.func1 = internal unnamed_addr constant {ptr} {ptr @_B_max}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %f = alloca ptr addrspace(1)
  %a = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %g = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %13 = alloca ptr addrspace(1)
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %183, label %22
22:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424), ptr %f
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 5), !dbg !13
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = getelementptr inbounds [0 x i64], ptr addrspace(1) %26, i64 0, i64 0
  store i64 1, ptr addrspace(1) %27
  %28 = getelementptr inbounds [0 x i64], ptr addrspace(1) %26, i64 0, i64 1
  store i64 2, ptr addrspace(1) %28
  %29 = getelementptr inbounds [0 x i64], ptr addrspace(1) %26, i64 0, i64 2
  store i64 3, ptr addrspace(1) %29
  %30 = getelementptr inbounds [0 x i64], ptr addrspace(1) %26, i64 0, i64 3
  store i64 4, ptr addrspace(1) %30
  %31 = getelementptr inbounds [0 x i64], ptr addrspace(1) %26, i64 0, i64 4
  store i64 5, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 5, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = load ptr addrspace(1), ptr %1
  %36 = load ptr addrspace(1), ptr %f
  %37 = ptrtoint ptr addrspace(1) %36 to i64
  %38 = and i64 %37, 72057594037927928
  %39 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %38
  %40 = addrspacecast ptr addrspace(1) %39 to ptr
  %41 = bitcast ptr %40 to ptr
  %42 = getelementptr inbounds {ptr}, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42
  %44 = call i64 %43(ptr addrspace(1) %35), !dbg !14
  store i64 %44, ptr %2
  %45 = load i64, ptr %2
  store i64 %45, ptr %a
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load i64, ptr %a
  %51 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %50), !dbg !16
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %3
  %56 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !17
  store ptr addrspace(1) null, ptr %4
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr %g
  %57 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 5), !dbg !18
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = getelementptr inbounds [0 x i64], ptr addrspace(1) %60, i64 0, i64 0
  store i64 1, ptr addrspace(1) %61
  %62 = getelementptr inbounds [0 x i64], ptr addrspace(1) %60, i64 0, i64 1
  store i64 2, ptr addrspace(1) %62
  %63 = getelementptr inbounds [0 x i64], ptr addrspace(1) %60, i64 0, i64 2
  store i64 3, ptr addrspace(1) %63
  %64 = getelementptr inbounds [0 x i64], ptr addrspace(1) %60, i64 0, i64 3
  store i64 4, ptr addrspace(1) %64
  %65 = getelementptr inbounds [0 x i64], ptr addrspace(1) %60, i64 0, i64 4
  store i64 5, ptr addrspace(1) %65
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  store i64 5, ptr addrspace(1) %66
  %67 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %68 = getelementptr i8, ptr addrspace(1) %67, i64 864691128455135236
  store ptr addrspace(1) %68, ptr %5
  %69 = load ptr addrspace(1), ptr %5
  %70 = load ptr addrspace(1), ptr %g
  %71 = ptrtoint ptr addrspace(1) %70 to i64
  %72 = and i64 %71, 72057594037927928
  %73 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %72
  %74 = addrspacecast ptr addrspace(1) %73 to ptr
  %75 = bitcast ptr %74 to ptr
  %76 = getelementptr inbounds {ptr}, ptr %75, i32 0, i32 0
  %77 = load ptr, ptr %76
  %78 = call i64 %77(ptr addrspace(1) %69), !dbg !19
  store i64 %78, ptr %6
  %79 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = load i64, ptr %6
  %84 = getelementptr inbounds [0 x i64], ptr addrspace(1) %82, i64 0, i64 0
  store i64 %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 1, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %7
  %88 = load ptr addrspace(1), ptr %7
  %89 = load ptr addrspace(1), ptr %f
  %90 = ptrtoint ptr addrspace(1) %89 to i64
  %91 = and i64 %90, 72057594037927928
  %92 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %91
  %93 = addrspacecast ptr addrspace(1) %92 to ptr
  %94 = bitcast ptr %93 to ptr
  %95 = getelementptr inbounds {ptr}, ptr %94, i32 0, i32 0
  %96 = load ptr, ptr %95
  %97 = call i64 %96(ptr addrspace(1) %88), !dbg !21
  store i64 %97, ptr %8
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load i64, ptr %8
  %103 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %102), !dbg !23
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %9
  %108 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !24
  store ptr addrspace(1) null, ptr %10
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 5), !dbg !25
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = getelementptr inbounds [0 x i64], ptr addrspace(1) %112, i64 0, i64 0
  store i64 1, ptr addrspace(1) %113
  %114 = getelementptr inbounds [0 x i64], ptr addrspace(1) %112, i64 0, i64 1
  store i64 2, ptr addrspace(1) %114
  %115 = getelementptr inbounds [0 x i64], ptr addrspace(1) %112, i64 0, i64 2
  store i64 3, ptr addrspace(1) %115
  %116 = getelementptr inbounds [0 x i64], ptr addrspace(1) %112, i64 0, i64 3
  store i64 4, ptr addrspace(1) %116
  %117 = getelementptr inbounds [0 x i64], ptr addrspace(1) %112, i64 0, i64 4
  store i64 5, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 5, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %11
  %121 = load ptr addrspace(1), ptr %11
  %122 = load ptr addrspace(1), ptr %g
  %123 = ptrtoint ptr addrspace(1) %122 to i64
  %124 = and i64 %123, 72057594037927928
  %125 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %124
  %126 = addrspacecast ptr addrspace(1) %125 to ptr
  %127 = bitcast ptr %126 to ptr
  %128 = getelementptr inbounds {ptr}, ptr %127, i32 0, i32 0
  %129 = load ptr, ptr %128
  %130 = call i64 %129(ptr addrspace(1) %121), !dbg !26
  store i64 %130, ptr %12
  %131 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !27
  %132 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %131, i64 0, i32 3
  %133 = load ptr addrspace(1), ptr addrspace(1) %132, align 8
  %134 = bitcast ptr addrspace(1) %133 to ptr addrspace(1)
  %135 = getelementptr inbounds [0 x i64], ptr addrspace(1) %134, i64 0, i64 0
  store i64 1, ptr addrspace(1) %135
  %136 = getelementptr inbounds [0 x i64], ptr addrspace(1) %134, i64 0, i64 1
  store i64 2, ptr addrspace(1) %136
  %137 = getelementptr inbounds [0 x i64], ptr addrspace(1) %134, i64 0, i64 2
  store i64 3, ptr addrspace(1) %137
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %131, i64 0, i32 1
  store i64 3, ptr addrspace(1) %138
  %139 = bitcast ptr addrspace(1) %131 to ptr addrspace(1)
  %140 = getelementptr i8, ptr addrspace(1) %139, i64 864691128455135236
  store ptr addrspace(1) %140, ptr %13
  %141 = load ptr addrspace(1), ptr %13
  %142 = load ptr addrspace(1), ptr %g
  %143 = ptrtoint ptr addrspace(1) %142 to i64
  %144 = and i64 %143, 72057594037927928
  %145 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %144
  %146 = addrspacecast ptr addrspace(1) %145 to ptr
  %147 = bitcast ptr %146 to ptr
  %148 = getelementptr inbounds {ptr}, ptr %147, i32 0, i32 0
  %149 = load ptr, ptr %148
  %150 = call i64 %149(ptr addrspace(1) %141), !dbg !28
  store i64 %150, ptr %14
  %151 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !29
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 3
  %153 = load ptr addrspace(1), ptr addrspace(1) %152, align 8
  %154 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %155 = load i64, ptr %12
  %156 = getelementptr inbounds [0 x i64], ptr addrspace(1) %154, i64 0, i64 0
  store i64 %155, ptr addrspace(1) %156
  %157 = load i64, ptr %14
  %158 = getelementptr inbounds [0 x i64], ptr addrspace(1) %154, i64 0, i64 1
  store i64 %157, ptr addrspace(1) %158
  %159 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 1
  store i64 2, ptr addrspace(1) %159
  %160 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %161 = getelementptr i8, ptr addrspace(1) %160, i64 864691128455135236
  store ptr addrspace(1) %161, ptr %15
  %162 = load ptr addrspace(1), ptr %15
  %163 = load ptr addrspace(1), ptr %f
  %164 = ptrtoint ptr addrspace(1) %163 to i64
  %165 = and i64 %164, 72057594037927928
  %166 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %165
  %167 = addrspacecast ptr addrspace(1) %166 to ptr
  %168 = bitcast ptr %167 to ptr
  %169 = getelementptr inbounds {ptr}, ptr %168, i32 0, i32 0
  %170 = load ptr, ptr %169
  %171 = call i64 %170(ptr addrspace(1) %162), !dbg !30
  store i64 %171, ptr %16
  %172 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !31
  %173 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 3
  %174 = load ptr addrspace(1), ptr addrspace(1) %173, align 8
  %175 = bitcast ptr addrspace(1) %174 to ptr addrspace(1)
  %176 = load i64, ptr %16
  %177 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %176), !dbg !32
  %178 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %175, i64 0, i64 0
  store ptr addrspace(1) %177, ptr addrspace(1) %178
  %179 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %172, i64 0, i32 1
  store i64 1, ptr addrspace(1) %179
  %180 = bitcast ptr addrspace(1) %172 to ptr addrspace(1)
  %181 = getelementptr i8, ptr addrspace(1) %180, i64 864691128455135236
  store ptr addrspace(1) %181, ptr %17
  %182 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %182), !dbg !33
  store ptr addrspace(1) null, ptr %18
  ret void
183:
  %184 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %184), !dbg !12
  unreachable
}
define internal i64 @_B_sum(ptr addrspace(1) %0) !dbg !7 {
  %values = alloca ptr addrspace(1)
  %sum = alloca i64
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
  store ptr addrspace(1) %0, ptr %values
  store i64 0, ptr %sum
  %12 = load ptr addrspace(1), ptr %values
  %13 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %12), !dbg !36
  %14 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %13), !dbg !37
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
  %21 = load i64, ptr %sum
  ret i64 %21
22:
  %23 = load ptr addrspace(1), ptr %values
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
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !38
  unreachable
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !34
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !35
  unreachable
38:
  %39 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 4)
  %40 = icmp ne ptr addrspace(1) %39, null
  br i1 %40, label %43, label %49
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 4357), !dbg !34
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
  %56 = load i64, ptr %sum
  %57 = load i64, ptr %4
  %58 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %56, i64 %57)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %63, label %60
60:
  %61 = extractvalue {i64, i1} %58, 0
  store i64 %61, ptr %5
  %62 = load i64, ptr %5
  store i64 %62, ptr %sum
  br label %30
63:
  %64 = call ptr addrspace(1) @_bal_panic_construct(i64 4353), !dbg !34
  store ptr addrspace(1) %64, ptr %7
  br label %34
}
define internal i64 @_B_max(ptr addrspace(1) %0) !dbg !9 {
  %values = alloca ptr addrspace(1)
  %max = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %50, label %13
13:
  store ptr addrspace(1) %0, ptr %values
  %14 = load ptr addrspace(1), ptr %values
  %15 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %14, i64 72057594037927928)
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  %18 = load i64, ptr addrspace(1) %17, align 8
  %19 = icmp ult i64 0, %18
  br i1 %19, label %52, label %55
20:
  %21 = load i64, ptr %i
  %22 = load i64, ptr %3
  %23 = icmp slt i64 %21, %22
  store i1 %23, ptr %4
  %24 = load i1, ptr %4
  br i1 %24, label %27, label %25
25:
  %26 = load i64, ptr %max
  ret i64 %26
27:
  %28 = load ptr addrspace(1), ptr %values
  %29 = load i64, ptr %i
  %30 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %28, i64 72057594037927928)
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  %33 = load i64, ptr addrspace(1) %32, align 8
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %74, label %77
35:
  %36 = load ptr addrspace(1), ptr %values
  %37 = load i64, ptr %i
  %38 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %36, i64 72057594037927928)
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  %41 = load i64, ptr addrspace(1) %40, align 8
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %96, label %99
43:
  br label %44
44:
  %45 = load i64, ptr %i
  %46 = add nsw i64 %45, 1
  store i64 %46, ptr %8
  %47 = load i64, ptr %8
  store i64 %47, ptr %i
  br label %20
48:
  %49 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %49), !dbg !43
  unreachable
50:
  %51 = call ptr addrspace(1) @_bal_panic_construct(i64 5636), !dbg !39
  call void @_bal_panic(ptr addrspace(1) %51), !dbg !40
  unreachable
52:
  %53 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %14, i64 4)
  %54 = icmp ne ptr addrspace(1) %53, null
  br i1 %54, label %57, label %63
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 5893), !dbg !39
  store ptr addrspace(1) %56, ptr %9
  br label %48
57:
  %58 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = getelementptr inbounds [0 x i64], ptr addrspace(1) %60, i64 0, i64 0
  %62 = load i64, ptr addrspace(1) %61, align 8
  store i64 %62, ptr %2
  br label %69
63:
  %64 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 0
  %65 = load ptr, ptr addrspace(1) %64, align 8
  %66 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = call i64 %67(ptr addrspace(1) %14, i64 0)
  store i64 %68, ptr %2
  br label %69
69:
  %70 = load i64, ptr %2
  store i64 %70, ptr %max
  %71 = load ptr addrspace(1), ptr %values
  %72 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %71), !dbg !41
  %73 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %72), !dbg !42
  store i64 %73, ptr %3
  store i64 0, ptr %i
  br label %20
74:
  %75 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %28, i64 4)
  %76 = icmp ne ptr addrspace(1) %75, null
  br i1 %76, label %79, label %85
77:
  %78 = call ptr addrspace(1) @_bal_panic_construct(i64 6405), !dbg !39
  store ptr addrspace(1) %78, ptr %9
  br label %48
79:
  %80 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = getelementptr inbounds [0 x i64], ptr addrspace(1) %82, i64 0, i64 %29
  %84 = load i64, ptr addrspace(1) %83, align 8
  store i64 %84, ptr %5
  br label %91
85:
  %86 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 0
  %87 = load ptr, ptr addrspace(1) %86, align 8
  %88 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %87, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8
  %90 = call i64 %89(ptr addrspace(1) %28, i64 %29)
  store i64 %90, ptr %5
  br label %91
91:
  %92 = load i64, ptr %5
  %93 = load i64, ptr %max
  %94 = icmp sgt i64 %92, %93
  store i1 %94, ptr %6
  %95 = load i1, ptr %6
  br i1 %95, label %35, label %43
96:
  %97 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %36, i64 4)
  %98 = icmp ne ptr addrspace(1) %97, null
  br i1 %98, label %101, label %107
99:
  %100 = call ptr addrspace(1) @_bal_panic_construct(i64 6661), !dbg !39
  store ptr addrspace(1) %100, ptr %9
  br label %48
101:
  %102 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %103 = load ptr addrspace(1), ptr addrspace(1) %102, align 8
  %104 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %105 = getelementptr inbounds [0 x i64], ptr addrspace(1) %104, i64 0, i64 %37
  %106 = load i64, ptr addrspace(1) %105, align 8
  store i64 %106, ptr %7
  br label %113
107:
  %108 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 0
  %109 = load ptr, ptr addrspace(1) %108, align 8
  %110 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %109, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8
  %112 = call i64 %111(ptr addrspace(1) %36, i64 %37)
  store i64 %112, ptr %7
  br label %113
113:
  %114 = load i64, ptr %7
  store i64 %114, ptr %max
  br label %43
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/15-function/assign2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"sum", linkageName:"_B_sum", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"max", linkageName:"_B_max", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 16, scope: !5)
!13 = !DILocation(line: 7, column: 14, scope: !5)
!14 = !DILocation(line: 7, column: 12, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 19, scope: !5)
!19 = !DILocation(line: 10, column: 17, scope: !5)
!20 = !DILocation(line: 10, column: 17, scope: !5)
!21 = !DILocation(line: 10, column: 15, scope: !5)
!22 = !DILocation(line: 10, column: 15, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 11, column: 19, scope: !5)
!26 = !DILocation(line: 11, column: 17, scope: !5)
!27 = !DILocation(line: 11, column: 37, scope: !5)
!28 = !DILocation(line: 11, column: 35, scope: !5)
!29 = !DILocation(line: 11, column: 17, scope: !5)
!30 = !DILocation(line: 11, column: 15, scope: !5)
!31 = !DILocation(line: 11, column: 15, scope: !5)
!32 = !DILocation(line: 11, column: 15, scope: !5)
!33 = !DILocation(line: 11, column: 4, scope: !5)
!34 = !DILocation(line: 0, column: 0, scope: !7)
!35 = !DILocation(line: 14, column: 9, scope: !7)
!36 = !DILocation(line: 16, column: 34, scope: !7)
!37 = !DILocation(line: 16, column: 34, scope: !7)
!38 = !DILocation(line: 20, column: 0, scope: !7)
!39 = !DILocation(line: 0, column: 0, scope: !9)
!40 = !DILocation(line: 22, column: 9, scope: !9)
!41 = !DILocation(line: 24, column: 34, scope: !9)
!42 = !DILocation(line: 24, column: 34, scope: !9)
!43 = !DILocation(line: 30, column: 0, scope: !9)
