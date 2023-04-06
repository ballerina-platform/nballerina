@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@_Be04root3 = external constant i32
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"unexpected\00\00"}, align 8
@_Bt04root4 = external constant {i32, i32, [0 x ptr]}
@_Be04root5 = external constant i32
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"a is any\00\00\00\00"}, align 8
@_Be04root6 = external constant i32
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"a is int[]\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"a is [2,3]\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
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
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %71, label %12
12:
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !15
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = and i64 72057594037927935, 2
  %18 = or i64 2449958197289549824, %17
  %19 = getelementptr i8, ptr addrspace(1) null, i64 %18
  %20 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) %19, ptr addrspace(1) %20
  %21 = and i64 72057594037927935, 2
  %22 = or i64 2449958197289549824, %21
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 1
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 2, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %1
  %28 = load ptr addrspace(1), ptr %1
  call void @_B_foo(ptr addrspace(1) %28), !dbg !16
  store ptr addrspace(1) null, ptr %2
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !17
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = and i64 72057594037927935, 2
  %34 = or i64 2449958197289549824, %33
  %35 = getelementptr i8, ptr addrspace(1) null, i64 %34
  %36 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %35, ptr addrspace(1) %36
  %37 = and i64 72057594037927935, 3
  %38 = or i64 2449958197289549824, %37
  %39 = getelementptr i8, ptr addrspace(1) null, i64 %38
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 1
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 2, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %3
  %44 = load ptr addrspace(1), ptr %3
  call void @_B_foo(ptr addrspace(1) %44), !dbg !18
  store ptr addrspace(1) null, ptr %4
  %45 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 2), !dbg !19
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 3
  %47 = load ptr addrspace(1), ptr addrspace(1) %46, align 8
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr inbounds [0 x i64], ptr addrspace(1) %48, i64 0, i64 0
  store i64 2, ptr addrspace(1) %49
  %50 = getelementptr inbounds [0 x i64], ptr addrspace(1) %48, i64 0, i64 1
  store i64 3, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %45, i64 0, i32 1
  store i64 2, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %5
  %54 = load ptr addrspace(1), ptr %5
  call void @_B_foo1(ptr addrspace(1) %54), !dbg !20
  store ptr addrspace(1) null, ptr %6
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !21
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = and i64 72057594037927935, 2
  %60 = or i64 2449958197289549824, %59
  %61 = getelementptr i8, ptr addrspace(1) null, i64 %60
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = and i64 72057594037927935, 3
  %64 = or i64 2449958197289549824, %63
  %65 = getelementptr i8, ptr addrspace(1) null, i64 %64
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 1
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 2, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %7
  %70 = load ptr addrspace(1), ptr %7
  call void @_B_foo2(ptr addrspace(1) %70), !dbg !22
  store ptr addrspace(1) null, ptr %8
  ret void
71:
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %72), !dbg !14
  unreachable
}
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %a = alloca ptr addrspace(1)
  %a.1 = alloca ptr addrspace(1)
  %a.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %a.3 = alloca ptr addrspace(1)
  %a.4 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %a.5 = alloca ptr addrspace(1)
  %a.6 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %72, label %13
13:
  store ptr addrspace(1) %0, ptr %a
  %14 = load ptr addrspace(1), ptr %a
  %15 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %14), !dbg !25
  br i1 %15, label %16, label %28
16:
  %17 = load ptr addrspace(1), ptr %a
  %18 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %17, ptr @_Be04root3), !dbg !26
  store ptr addrspace(1) %18, ptr %a.1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !28
  store ptr addrspace(1) null, ptr %3
  br label %28
28:
  %29 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %29, ptr %a.2
  %30 = load ptr addrspace(1), ptr %a
  %31 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %30), !dbg !29
  br i1 %31, label %32, label %44
32:
  %33 = load ptr addrspace(1), ptr %a
  %34 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %33, ptr @_Be04root5), !dbg !30
  store ptr addrspace(1) %34, ptr %a.3
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !31
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %4
  %43 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !32
  store ptr addrspace(1) null, ptr %5
  br label %44
44:
  %45 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %45, ptr %a.4
  %46 = load ptr addrspace(1), ptr %a
  %47 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %46), !dbg !33
  br i1 %47, label %48, label %60
48:
  %49 = load ptr addrspace(1), ptr %a
  %50 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %49, ptr @_Be04root6), !dbg !36
  store ptr addrspace(1) %50, ptr %a.5
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !37
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %6
  %59 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !38
  store ptr addrspace(1) null, ptr %7
  br label %71
60:
  %61 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %61, ptr %a.6
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !34
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str1 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %8
  %70 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !35
  store ptr addrspace(1) null, ptr %9
  br label %71
71:
  ret void
72:
  %73 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !23
  call void @_bal_panic(ptr addrspace(1) %73), !dbg !24
  unreachable
}
define internal void @_B_foo1(ptr addrspace(1) %0) !dbg !9 {
  %a = alloca ptr addrspace(1)
  %a.1 = alloca ptr addrspace(1)
  %a.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %a.3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %a.4 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %57, label %13
13:
  store ptr addrspace(1) %0, ptr %a
  %14 = load ptr addrspace(1), ptr %a
  %15 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %14), !dbg !41
  br i1 %15, label %16, label %28
16:
  %17 = load ptr addrspace(1), ptr %a
  %18 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %17, ptr @_Be04root3), !dbg !42
  store ptr addrspace(1) %18, ptr %a.1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !43
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !44
  store ptr addrspace(1) null, ptr %3
  br label %28
28:
  %29 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %29, ptr %a.3
  %30 = load ptr addrspace(1), ptr %a.3
  %31 = call i1 @_bal_type_contains(ptr @_Bt04root4, ptr addrspace(1) %30), !dbg !45
  br i1 %31, label %32, label %44
32:
  %33 = load ptr addrspace(1), ptr %a.3
  %34 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %33, ptr @_Be04root5), !dbg !48
  store ptr addrspace(1) %34, ptr %4
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !49
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %6
  %43 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !50
  store ptr addrspace(1) null, ptr %7
  br label %55
44:
  %45 = load ptr addrspace(1), ptr %a.3
  store ptr addrspace(1) %45, ptr %5
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %8
  %54 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !47
  store ptr addrspace(1) null, ptr %9
  br label %55
55:
  %56 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %56, ptr %a.4
  ret void
57:
  %58 = call ptr addrspace(1) @_bal_panic_construct(i64 6660), !dbg !39
  call void @_bal_panic(ptr addrspace(1) %58), !dbg !40
  unreachable
}
define internal void @_B_foo2(ptr addrspace(1) %0) !dbg !11 {
  %a = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %17, label %7
7:
  store ptr addrspace(1) %0, ptr %a
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !53
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %11, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str3 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %12
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 1, ptr addrspace(1) %13
  %14 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %15 = getelementptr i8, ptr addrspace(1) %14, i64 864691128455135236
  store ptr addrspace(1) %15, ptr %2
  %16 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %16), !dbg !54
  store ptr addrspace(1) null, ptr %3
  ret void
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 9732), !dbg !51
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !52
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-list/7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"foo1", linkageName:"_B_foo1", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"foo2", linkageName:"_B_foo2", scope: !1, file: !1, line: 38, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 3, column: 16, scope: !5)
!15 = !DILocation(line: 4, column: 8, scope: !5)
!16 = !DILocation(line: 4, column: 4, scope: !5)
!17 = !DILocation(line: 5, column: 8, scope: !5)
!18 = !DILocation(line: 5, column: 4, scope: !5)
!19 = !DILocation(line: 6, column: 9, scope: !5)
!20 = !DILocation(line: 6, column: 4, scope: !5)
!21 = !DILocation(line: 7, column: 9, scope: !5)
!22 = !DILocation(line: 7, column: 4, scope: !5)
!23 = !DILocation(line: 0, column: 0, scope: !7)
!24 = !DILocation(line: 11, column: 9, scope: !7)
!25 = !DILocation(line: 12, column: 9, scope: !7)
!26 = !DILocation(line: 12, column: 9, scope: !7)
!27 = !DILocation(line: 13, column: 19, scope: !7)
!28 = !DILocation(line: 13, column: 8, scope: !7)
!29 = !DILocation(line: 15, column: 9, scope: !7)
!30 = !DILocation(line: 15, column: 9, scope: !7)
!31 = !DILocation(line: 16, column: 19, scope: !7)
!32 = !DILocation(line: 16, column: 8, scope: !7)
!33 = !DILocation(line: 18, column: 9, scope: !7)
!34 = !DILocation(line: 22, column: 19, scope: !7)
!35 = !DILocation(line: 22, column: 8, scope: !7)
!36 = !DILocation(line: 23, column: 4, scope: !7)
!37 = !DILocation(line: 19, column: 19, scope: !7)
!38 = !DILocation(line: 19, column: 8, scope: !7)
!39 = !DILocation(line: 0, column: 0, scope: !9)
!40 = !DILocation(line: 26, column: 9, scope: !9)
!41 = !DILocation(line: 27, column: 9, scope: !9)
!42 = !DILocation(line: 27, column: 9, scope: !9)
!43 = !DILocation(line: 28, column: 19, scope: !9)
!44 = !DILocation(line: 28, column: 8, scope: !9)
!45 = !DILocation(line: 30, column: 9, scope: !9)
!46 = !DILocation(line: 34, column: 19, scope: !9)
!47 = !DILocation(line: 34, column: 8, scope: !9)
!48 = !DILocation(line: 35, column: 4, scope: !9)
!49 = !DILocation(line: 31, column: 19, scope: !9)
!50 = !DILocation(line: 31, column: 8, scope: !9)
!51 = !DILocation(line: 0, column: 0, scope: !11)
!52 = !DILocation(line: 38, column: 9, scope: !11)
!53 = !DILocation(line: 40, column: 19, scope: !11)
!54 = !DILocation(line: 40, column: 8, scope: !11)
