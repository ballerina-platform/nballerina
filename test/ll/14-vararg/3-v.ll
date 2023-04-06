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
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i64
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i64
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca i8
  %26 = load ptr, ptr @_bal_stack_guard
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %147, label %28
28:
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !13
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %1
  %32 = load ptr addrspace(1), ptr %1
  %33 = call i64 @_B_addAll(ptr addrspace(1) %32), !dbg !14
  store i64 %33, ptr %2
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load i64, ptr %2
  %39 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %38), !dbg !16
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %3
  %44 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !17
  store ptr addrspace(1) null, ptr %4
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x i64], ptr addrspace(1) %48, i64 0, i64 0
  store i64 1, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %5
  %53 = load ptr addrspace(1), ptr %5
  %54 = call i64 @_B_addAll(ptr addrspace(1) %53), !dbg !19
  store i64 %54, ptr %6
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = load i64, ptr %6
  %60 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %59), !dbg !21
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %7
  %65 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !22
  store ptr addrspace(1) null, ptr %8
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !23
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = getelementptr inbounds [0 x i64], ptr addrspace(1) %69, i64 0, i64 0
  store i64 1, ptr addrspace(1) %70
  %71 = getelementptr inbounds [0 x i64], ptr addrspace(1) %69, i64 0, i64 1
  store i64 2, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 2, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %9
  %75 = load ptr addrspace(1), ptr %9
  %76 = call i64 @_B_addAll(ptr addrspace(1) %75), !dbg !24
  store i64 %76, ptr %10
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load i64, ptr %10
  %82 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %81), !dbg !26
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %11
  %87 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !27
  store ptr addrspace(1) null, ptr %12
  %88 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !28
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = getelementptr i8, ptr addrspace(1) %89, i64 864691128455135236
  store ptr addrspace(1) %90, ptr %13
  %91 = load ptr addrspace(1), ptr %13
  %92 = call i64 @_B_addAllTo(i64 1, ptr addrspace(1) %91), !dbg !29
  store i64 %92, ptr %14
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !30
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = load i64, ptr %14
  %98 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %97), !dbg !31
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %15
  %103 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !32
  store ptr addrspace(1) null, ptr %16
  %104 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 3
  %106 = load ptr addrspace(1), ptr addrspace(1) %105, align 8
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = getelementptr inbounds [0 x i64], ptr addrspace(1) %107, i64 0, i64 0
  store i64 2, ptr addrspace(1) %108
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 1
  store i64 1, ptr addrspace(1) %109
  %110 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %111 = getelementptr i8, ptr addrspace(1) %110, i64 864691128455135236
  store ptr addrspace(1) %111, ptr %17
  %112 = load ptr addrspace(1), ptr %17
  %113 = call i64 @_B_addAllTo(i64 1, ptr addrspace(1) %112), !dbg !34
  store i64 %113, ptr %18
  %114 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !35
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 3
  %116 = load ptr addrspace(1), ptr addrspace(1) %115, align 8
  %117 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %118 = load i64, ptr %18
  %119 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %118), !dbg !36
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %117, i64 0, i64 0
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 1
  store i64 1, ptr addrspace(1) %121
  %122 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %123 = getelementptr i8, ptr addrspace(1) %122, i64 864691128455135236
  store ptr addrspace(1) %123, ptr %19
  %124 = load ptr addrspace(1), ptr %19
  call void @_Bb02ioprintln(ptr addrspace(1) %124), !dbg !37
  store ptr addrspace(1) null, ptr %20
  %125 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !38
  %126 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 3
  %127 = load ptr addrspace(1), ptr addrspace(1) %126, align 8
  %128 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %129 = getelementptr inbounds [0 x i64], ptr addrspace(1) %128, i64 0, i64 0
  store i64 2, ptr addrspace(1) %129
  %130 = getelementptr inbounds [0 x i64], ptr addrspace(1) %128, i64 0, i64 1
  store i64 3, ptr addrspace(1) %130
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %125, i64 0, i32 1
  store i64 2, ptr addrspace(1) %131
  %132 = bitcast ptr addrspace(1) %125 to ptr addrspace(1)
  %133 = getelementptr i8, ptr addrspace(1) %132, i64 864691128455135236
  store ptr addrspace(1) %133, ptr %21
  %134 = load ptr addrspace(1), ptr %21
  %135 = call i64 @_B_addAllTo(i64 1, ptr addrspace(1) %134), !dbg !39
  store i64 %135, ptr %22
  %136 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !40
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 3
  %138 = load ptr addrspace(1), ptr addrspace(1) %137, align 8
  %139 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %140 = load i64, ptr %22
  %141 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %140), !dbg !41
  %142 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %139, i64 0, i64 0
  store ptr addrspace(1) %141, ptr addrspace(1) %142
  %143 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 1
  store i64 1, ptr addrspace(1) %143
  %144 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %145 = getelementptr i8, ptr addrspace(1) %144, i64 864691128455135236
  store ptr addrspace(1) %145, ptr %23
  %146 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %146), !dbg !42
  store ptr addrspace(1) null, ptr %24
  ret void
147:
  %148 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %148), !dbg !12
  unreachable
}
define internal i64 @_B_addAll(ptr addrspace(1) %0) !dbg !7 {
  %args = alloca ptr addrspace(1)
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
  store ptr addrspace(1) %0, ptr %args
  store i64 0, ptr %sum
  %12 = load ptr addrspace(1), ptr %args
  %13 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %12), !dbg !45
  %14 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %13), !dbg !46
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
  %23 = load ptr addrspace(1), ptr %args
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
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !47
  unreachable
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !43
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !44
  unreachable
38:
  %39 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %23, i64 4)
  %40 = icmp ne ptr addrspace(1) %39, null
  br i1 %40, label %43, label %49
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 3845), !dbg !43
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
  %64 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !43
  store ptr addrspace(1) %64, ptr %7
  br label %34
}
define internal i64 @_B_addAllTo(i64 %0, ptr addrspace(1) %1) !dbg !9 {
  %base = alloca i64
  %args = alloca ptr addrspace(1)
  %sum = alloca i64
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %38, label %12
12:
  store i64 %0, ptr %base
  store ptr addrspace(1) %1, ptr %args
  %13 = load i64, ptr %base
  store i64 %13, ptr %sum
  %14 = load ptr addrspace(1), ptr %args
  %15 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %14), !dbg !50
  %16 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %15), !dbg !51
  store i64 %16, ptr %3
  store i64 0, ptr %i
  br label %17
17:
  %18 = load i64, ptr %i
  %19 = load i64, ptr %3
  %20 = icmp slt i64 %18, %19
  store i1 %20, ptr %4
  %21 = load i1, ptr %4
  br i1 %21, label %24, label %22
22:
  %23 = load i64, ptr %sum
  ret i64 %23
24:
  %25 = load ptr addrspace(1), ptr %args
  %26 = load i64, ptr %i
  %27 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 72057594037927928)
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  %30 = load i64, ptr addrspace(1) %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %40, label %43
32:
  %33 = load i64, ptr %i
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %7
  %35 = load i64, ptr %7
  store i64 %35, ptr %i
  br label %17
36:
  %37 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !52
  unreachable
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 5124), !dbg !48
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !49
  unreachable
40:
  %41 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 4)
  %42 = icmp ne ptr addrspace(1) %41, null
  br i1 %42, label %45, label %51
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 5893), !dbg !48
  store ptr addrspace(1) %44, ptr %8
  br label %36
45:
  %46 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x i64], ptr addrspace(1) %48, i64 0, i64 %26
  %50 = load i64, ptr addrspace(1) %49, align 8
  store i64 %50, ptr %5
  br label %57
51:
  %52 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 0
  %53 = load ptr, ptr addrspace(1) %52, align 8
  %54 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8
  %56 = call i64 %55(ptr addrspace(1) %25, i64 %26)
  store i64 %56, ptr %5
  br label %57
57:
  %58 = load i64, ptr %sum
  %59 = load i64, ptr %5
  %60 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %58, i64 %59)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %65, label %62
62:
  %63 = extractvalue {i64, i1} %60, 0
  store i64 %63, ptr %6
  %64 = load i64, ptr %6
  store i64 %64, ptr %sum
  br label %32
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 5889), !dbg !48
  store ptr addrspace(1) %66, ptr %8
  br label %36
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-vararg/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"addAll", linkageName:"_B_addAll", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"addAllTo", linkageName:"_B_addAllTo", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 2, column: 16, scope: !5)
!13 = !DILocation(line: 3, column: 21, scope: !5)
!14 = !DILocation(line: 3, column: 15, scope: !5)
!15 = !DILocation(line: 3, column: 15, scope: !5)
!16 = !DILocation(line: 3, column: 15, scope: !5)
!17 = !DILocation(line: 3, column: 4, scope: !5)
!18 = !DILocation(line: 4, column: 22, scope: !5)
!19 = !DILocation(line: 4, column: 15, scope: !5)
!20 = !DILocation(line: 4, column: 15, scope: !5)
!21 = !DILocation(line: 4, column: 15, scope: !5)
!22 = !DILocation(line: 4, column: 4, scope: !5)
!23 = !DILocation(line: 5, column: 22, scope: !5)
!24 = !DILocation(line: 5, column: 15, scope: !5)
!25 = !DILocation(line: 5, column: 15, scope: !5)
!26 = !DILocation(line: 5, column: 15, scope: !5)
!27 = !DILocation(line: 5, column: 4, scope: !5)
!28 = !DILocation(line: 7, column: 23, scope: !5)
!29 = !DILocation(line: 7, column: 15, scope: !5)
!30 = !DILocation(line: 7, column: 15, scope: !5)
!31 = !DILocation(line: 7, column: 15, scope: !5)
!32 = !DILocation(line: 7, column: 4, scope: !5)
!33 = !DILocation(line: 8, column: 27, scope: !5)
!34 = !DILocation(line: 8, column: 15, scope: !5)
!35 = !DILocation(line: 8, column: 15, scope: !5)
!36 = !DILocation(line: 8, column: 15, scope: !5)
!37 = !DILocation(line: 8, column: 4, scope: !5)
!38 = !DILocation(line: 9, column: 27, scope: !5)
!39 = !DILocation(line: 9, column: 15, scope: !5)
!40 = !DILocation(line: 9, column: 15, scope: !5)
!41 = !DILocation(line: 9, column: 15, scope: !5)
!42 = !DILocation(line: 9, column: 4, scope: !5)
!43 = !DILocation(line: 0, column: 0, scope: !7)
!44 = !DILocation(line: 12, column: 9, scope: !7)
!45 = !DILocation(line: 14, column: 32, scope: !7)
!46 = !DILocation(line: 14, column: 32, scope: !7)
!47 = !DILocation(line: 18, column: 0, scope: !7)
!48 = !DILocation(line: 0, column: 0, scope: !9)
!49 = !DILocation(line: 20, column: 9, scope: !9)
!50 = !DILocation(line: 22, column: 32, scope: !9)
!51 = !DILocation(line: 22, column: 32, scope: !9)
!52 = !DILocation(line: 26, column: 0, scope: !9)
