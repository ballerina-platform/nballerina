@_bal_stack_guard = external global ptr
@.func0 = internal unnamed_addr constant {ptr} {ptr @_B_fooBar}, align 8
@_Bi04root0 = external constant {i32}
@.func1 = internal unnamed_addr constant {ptr} {ptr @_B_foo}, align 8
@.func2 = internal unnamed_addr constant {ptr} {ptr @_B_bar}, align 8
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
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
  %17 = alloca i8
  %18 = load ptr, ptr @_bal_stack_guard
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %135, label %20
20:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424), ptr %x
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !15
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr i8, ptr addrspace(1) %22, i64 864691128455135236
  store ptr addrspace(1) %23, ptr %1
  %24 = load ptr addrspace(1), ptr %1
  %25 = load ptr addrspace(1), ptr %x
  %26 = ptrtoint ptr addrspace(1) %25 to i64
  %27 = and i64 %26, 72057594037927928
  %28 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %27
  %29 = addrspacecast ptr addrspace(1) %28 to ptr
  %30 = bitcast ptr %29 to ptr
  %31 = getelementptr inbounds {ptr}, ptr %30, i32 0, i32 0
  %32 = load ptr, ptr %31
  %33 = call i64 %32(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func2 to ptr addrspace(1)), i64 648518346341351424), i64 1, ptr addrspace(1) %24), !dbg !16
  store i64 %33, ptr %2
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load i64, ptr %2
  %39 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %38), !dbg !18
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %3
  %44 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !19
  store ptr addrspace(1) null, ptr %4
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x i64], ptr addrspace(1) %48, i64 0, i64 0
  store i64 2, ptr addrspace(1) %49
  %50 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 1, ptr addrspace(1) %50
  %51 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %52 = getelementptr i8, ptr addrspace(1) %51, i64 864691128455135236
  store ptr addrspace(1) %52, ptr %5
  %53 = load ptr addrspace(1), ptr %5
  %54 = load ptr addrspace(1), ptr %x
  %55 = ptrtoint ptr addrspace(1) %54 to i64
  %56 = and i64 %55, 72057594037927928
  %57 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %56
  %58 = addrspacecast ptr addrspace(1) %57 to ptr
  %59 = bitcast ptr %58 to ptr
  %60 = getelementptr inbounds {ptr}, ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60
  %62 = call i64 %61(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func2 to ptr addrspace(1)), i64 648518346341351424), i64 1, ptr addrspace(1) %53), !dbg !21
  store i64 %62, ptr %6
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = load i64, ptr %6
  %68 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %67), !dbg !23
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %7
  %73 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !24
  store ptr addrspace(1) null, ptr %8
  %74 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !25
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 3
  %76 = load ptr addrspace(1), ptr addrspace(1) %75, align 8
  %77 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %78 = getelementptr inbounds [0 x i64], ptr addrspace(1) %77, i64 0, i64 0
  store i64 2, ptr addrspace(1) %78
  %79 = getelementptr inbounds [0 x i64], ptr addrspace(1) %77, i64 0, i64 1
  store i64 3, ptr addrspace(1) %79
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %74, i64 0, i32 1
  store i64 2, ptr addrspace(1) %80
  %81 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %82 = getelementptr i8, ptr addrspace(1) %81, i64 864691128455135236
  store ptr addrspace(1) %82, ptr %9
  %83 = load ptr addrspace(1), ptr %9
  %84 = load ptr addrspace(1), ptr %x
  %85 = ptrtoint ptr addrspace(1) %84 to i64
  %86 = and i64 %85, 72057594037927928
  %87 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %86
  %88 = addrspacecast ptr addrspace(1) %87 to ptr
  %89 = bitcast ptr %88 to ptr
  %90 = getelementptr inbounds {ptr}, ptr %89, i32 0, i32 0
  %91 = load ptr, ptr %90
  %92 = call i64 %91(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func2 to ptr addrspace(1)), i64 648518346341351424), i64 1, ptr addrspace(1) %83), !dbg !26
  store i64 %92, ptr %10
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !27
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = load i64, ptr %10
  %98 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %97), !dbg !28
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %11
  %103 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !29
  store ptr addrspace(1) null, ptr %12
  %104 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !30
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 3
  %106 = load ptr addrspace(1), ptr addrspace(1) %105, align 8
  %107 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %108 = getelementptr inbounds [0 x i64], ptr addrspace(1) %107, i64 0, i64 0
  store i64 2, ptr addrspace(1) %108
  %109 = getelementptr inbounds [0 x i64], ptr addrspace(1) %107, i64 0, i64 1
  store i64 3, ptr addrspace(1) %109
  %110 = getelementptr inbounds [0 x i64], ptr addrspace(1) %107, i64 0, i64 2
  store i64 4, ptr addrspace(1) %110
  %111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %104, i64 0, i32 1
  store i64 3, ptr addrspace(1) %111
  %112 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %113 = getelementptr i8, ptr addrspace(1) %112, i64 864691128455135236
  store ptr addrspace(1) %113, ptr %13
  %114 = load ptr addrspace(1), ptr %13
  %115 = load ptr addrspace(1), ptr %x
  %116 = ptrtoint ptr addrspace(1) %115 to i64
  %117 = and i64 %116, 72057594037927928
  %118 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %117
  %119 = addrspacecast ptr addrspace(1) %118 to ptr
  %120 = bitcast ptr %119 to ptr
  %121 = getelementptr inbounds {ptr}, ptr %120, i32 0, i32 0
  %122 = load ptr, ptr %121
  %123 = call i64 %122(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func1 to ptr addrspace(1)), i64 648518346341351424), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func2 to ptr addrspace(1)), i64 648518346341351424), i64 1, ptr addrspace(1) %114), !dbg !31
  store i64 %123, ptr %14
  %124 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !32
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %124, i64 0, i32 3
  %126 = load ptr addrspace(1), ptr addrspace(1) %125, align 8
  %127 = bitcast ptr addrspace(1) %126 to ptr addrspace(1)
  %128 = load i64, ptr %14
  %129 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %128), !dbg !33
  %130 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %127, i64 0, i64 0
  store ptr addrspace(1) %129, ptr addrspace(1) %130
  %131 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %124, i64 0, i32 1
  store i64 1, ptr addrspace(1) %131
  %132 = bitcast ptr addrspace(1) %124 to ptr addrspace(1)
  %133 = getelementptr i8, ptr addrspace(1) %132, i64 864691128455135236
  store ptr addrspace(1) %133, ptr %15
  %134 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %134), !dbg !34
  store ptr addrspace(1) null, ptr %16
  ret void
135:
  %136 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %136), !dbg !14
  unreachable
}
define internal i64 @_B_bar(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, ptr %x
  store i64 %1, ptr %y
  %9 = load i64, ptr %x
  %10 = load i64, ptr %y
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !37
  unreachable
15:
  %16 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !35
  call void @_bal_panic(ptr addrspace(1) %16), !dbg !36
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, ptr %3
  %19 = load i64, ptr %3
  ret i64 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !35
  store ptr addrspace(1) %21, ptr %4
  br label %13
}
define internal i64 @_B_foo(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %x
  %8 = load i64, ptr %x
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !40
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 4868), !dbg !38
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !39
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 5121), !dbg !38
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
define internal i64 @_B_fooBar(ptr addrspace(1) %0, ptr addrspace(1) %1, i64 %2, ptr addrspace(1) %3) !dbg !11 {
  %single = alloca ptr addrspace(1)
  %pair = alloca ptr addrspace(1)
  %x = alloca i64
  %y = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %curr = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %i = alloca i64
  %11 = alloca i1
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %66, label %19
19:
  store ptr addrspace(1) %0, ptr %single
  store ptr addrspace(1) %1, ptr %pair
  store i64 %2, ptr %x
  store ptr addrspace(1) %3, ptr %y
  %20 = load ptr addrspace(1), ptr %y
  %21 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %20), !dbg !43
  %22 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %21), !dbg !44
  store i64 %22, ptr %5
  %23 = load i64, ptr %5
  %24 = icmp eq i64 %23, 0
  store i1 %24, ptr %6
  %25 = load i1, ptr %6
  br i1 %25, label %26, label %38
26:
  %27 = load i64, ptr %x
  %28 = load ptr addrspace(1), ptr %single
  %29 = ptrtoint ptr addrspace(1) %28 to i64
  %30 = and i64 %29, 72057594037927928
  %31 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %30
  %32 = addrspacecast ptr addrspace(1) %31 to ptr
  %33 = bitcast ptr %32 to ptr
  %34 = getelementptr inbounds {ptr}, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34
  %36 = call i64 %35(i64 %27), !dbg !50
  store i64 %36, ptr %7
  %37 = load i64, ptr %7
  ret i64 %37
38:
  %39 = load ptr addrspace(1), ptr %y
  %40 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %39, i64 72057594037927928)
  %41 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %42 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  %43 = load i64, ptr addrspace(1) %42, align 8
  %44 = icmp ult i64 0, %43
  br i1 %44, label %68, label %71
45:
  %46 = load i64, ptr %i
  %47 = load i64, ptr %10
  %48 = icmp slt i64 %46, %47
  store i1 %48, ptr %11
  %49 = load i1, ptr %11
  br i1 %49, label %52, label %50
50:
  %51 = load i64, ptr %curr
  ret i64 %51
52:
  %53 = load ptr addrspace(1), ptr %y
  %54 = load i64, ptr %i
  %55 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %53, i64 72057594037927928)
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  %58 = load i64, ptr addrspace(1) %57, align 8
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %101, label %104
60:
  %61 = load i64, ptr %i
  %62 = add nsw i64 %61, 1
  store i64 %62, ptr %14
  %63 = load i64, ptr %14
  store i64 %63, ptr %i
  br label %45
64:
  %65 = load ptr addrspace(1), ptr %15
  call void @_bal_panic(ptr addrspace(1) %65), !dbg !49
  unreachable
66:
  %67 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !41
  call void @_bal_panic(ptr addrspace(1) %67), !dbg !42
  unreachable
68:
  %69 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %39, i64 4)
  %70 = icmp ne ptr addrspace(1) %69, null
  br i1 %70, label %73, label %79
71:
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 6917), !dbg !41
  store ptr addrspace(1) %72, ptr %15
  br label %64
73:
  %74 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = getelementptr inbounds [0 x i64], ptr addrspace(1) %76, i64 0, i64 0
  %78 = load i64, ptr addrspace(1) %77, align 8
  store i64 %78, ptr %8
  br label %85
79:
  %80 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 0
  %81 = load ptr, ptr addrspace(1) %80, align 8
  %82 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %81, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8
  %84 = call i64 %83(ptr addrspace(1) %39, i64 0)
  store i64 %84, ptr %8
  br label %85
85:
  %86 = load i64, ptr %x
  %87 = load i64, ptr %8
  %88 = load ptr addrspace(1), ptr %pair
  %89 = ptrtoint ptr addrspace(1) %88 to i64
  %90 = and i64 %89, 72057594037927928
  %91 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %90
  %92 = addrspacecast ptr addrspace(1) %91 to ptr
  %93 = bitcast ptr %92 to ptr
  %94 = getelementptr inbounds {ptr}, ptr %93, i32 0, i32 0
  %95 = load ptr, ptr %94
  %96 = call i64 %95(i64 %86, i64 %87), !dbg !45
  store i64 %96, ptr %9
  %97 = load i64, ptr %9
  store i64 %97, ptr %curr
  %98 = load ptr addrspace(1), ptr %y
  %99 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %98), !dbg !46
  %100 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %99), !dbg !47
  store i64 %100, ptr %10
  store i64 1, ptr %i
  br label %45
101:
  %102 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %53, i64 4)
  %103 = icmp ne ptr addrspace(1) %102, null
  br i1 %103, label %106, label %112
104:
  %105 = call ptr addrspace(1) @_bal_panic_construct(i64 7429), !dbg !41
  store ptr addrspace(1) %105, ptr %15
  br label %64
106:
  %107 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %108 = load ptr addrspace(1), ptr addrspace(1) %107, align 8
  %109 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %110 = getelementptr inbounds [0 x i64], ptr addrspace(1) %109, i64 0, i64 %54
  %111 = load i64, ptr addrspace(1) %110, align 8
  store i64 %111, ptr %12
  br label %118
112:
  %113 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 0
  %114 = load ptr, ptr addrspace(1) %113, align 8
  %115 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %114, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8
  %117 = call i64 %116(ptr addrspace(1) %53, i64 %54)
  store i64 %117, ptr %12
  br label %118
118:
  %119 = load i64, ptr %curr
  %120 = load i64, ptr %12
  %121 = load ptr addrspace(1), ptr %pair
  %122 = ptrtoint ptr addrspace(1) %121 to i64
  %123 = and i64 %122, 72057594037927928
  %124 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %123
  %125 = addrspacecast ptr addrspace(1) %124 to ptr
  %126 = bitcast ptr %125 to ptr
  %127 = getelementptr inbounds {ptr}, ptr %126, i32 0, i32 0
  %128 = load ptr, ptr %127
  %129 = call i64 %128(i64 %119, i64 %120), !dbg !48
  store i64 %129, ptr %13
  %130 = load i64, ptr %13
  store i64 %130, ptr %curr
  br label %60
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/15-function/assign4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"fooBar", linkageName:"_B_fooBar", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 7, column: 16, scope: !5)
!15 = !DILocation(line: 9, column: 16, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 15, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 10, column: 30, scope: !5)
!21 = !DILocation(line: 10, column: 15, scope: !5)
!22 = !DILocation(line: 10, column: 15, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 11, column: 30, scope: !5)
!26 = !DILocation(line: 11, column: 15, scope: !5)
!27 = !DILocation(line: 11, column: 15, scope: !5)
!28 = !DILocation(line: 11, column: 15, scope: !5)
!29 = !DILocation(line: 11, column: 4, scope: !5)
!30 = !DILocation(line: 12, column: 30, scope: !5)
!31 = !DILocation(line: 12, column: 15, scope: !5)
!32 = !DILocation(line: 12, column: 15, scope: !5)
!33 = !DILocation(line: 12, column: 15, scope: !5)
!34 = !DILocation(line: 12, column: 4, scope: !5)
!35 = !DILocation(line: 0, column: 0, scope: !7)
!36 = !DILocation(line: 15, column: 9, scope: !7)
!37 = !DILocation(line: 17, column: 0, scope: !7)
!38 = !DILocation(line: 0, column: 0, scope: !9)
!39 = !DILocation(line: 19, column: 9, scope: !9)
!40 = !DILocation(line: 21, column: 0, scope: !9)
!41 = !DILocation(line: 0, column: 0, scope: !11)
!42 = !DILocation(line: 23, column: 9, scope: !11)
!43 = !DILocation(line: 24, column: 9, scope: !11)
!44 = !DILocation(line: 24, column: 9, scope: !11)
!45 = !DILocation(line: 27, column: 15, scope: !11)
!46 = !DILocation(line: 28, column: 29, scope: !11)
!47 = !DILocation(line: 28, column: 29, scope: !11)
!48 = !DILocation(line: 29, column: 15, scope: !11)
!49 = !DILocation(line: 32, column: 0, scope: !11)
!50 = !DILocation(line: 25, column: 15, scope: !11)
