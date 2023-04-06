@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
@_Bt04root3 = external constant {i32, i32, [0 x ptr]}
@_Be04root4 = external constant i32
@_Bi04root5 = external constant {i32}
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"unexpected\00\00"}, align 8
@_Bt04root6 = external constant {i32, i32, [0 x ptr]}
@_Be04root7 = external constant i32
@.str4 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"{ any a; }\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 19, i16 19, [20 x i8] c"{| any a; any b; |}\00"}, align 8
@.str6 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 19, i16 19, [20 x i8] c"{| int a; int b; |}\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
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
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %75, label %18
18:
  %19 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !17
  %20 = and i64 72057594037927935, 2
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  call void @_bal_mapping_init_member(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %22), !dbg !18
  %23 = and i64 72057594037927935, 3
  %24 = or i64 2449958197289549824, %23
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  call void @_bal_mapping_init_member(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %25), !dbg !19
  store ptr addrspace(1) %19, ptr %1
  %26 = load ptr addrspace(1), ptr %1
  call void @_B_foo(ptr addrspace(1) %26), !dbg !20
  store ptr addrspace(1) null, ptr %2
  %27 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !21
  %28 = and i64 72057594037927935, 2
  %29 = or i64 2449958197289549824, %28
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  call void @_bal_mapping_init_member(ptr addrspace(1) %27, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %30), !dbg !22
  %31 = and i64 72057594037927935, 3
  %32 = or i64 2449958197289549824, %31
  %33 = getelementptr i8, ptr addrspace(1) null, i64 %32
  call void @_bal_mapping_init_member(ptr addrspace(1) %27, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %33), !dbg !23
  store ptr addrspace(1) %27, ptr %3
  %34 = load ptr addrspace(1), ptr %3
  call void @_B_foo(ptr addrspace(1) %34), !dbg !24
  store ptr addrspace(1) null, ptr %4
  %35 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 2), !dbg !25
  %36 = and i64 72057594037927935, 2
  %37 = or i64 2449958197289549824, %36
  %38 = getelementptr i8, ptr addrspace(1) null, i64 %37
  call void @_bal_mapping_init_member(ptr addrspace(1) %35, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %38), !dbg !26
  %39 = and i64 72057594037927935, 3
  %40 = or i64 2449958197289549824, %39
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  call void @_bal_mapping_init_member(ptr addrspace(1) %35, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %41), !dbg !27
  store ptr addrspace(1) %35, ptr %5
  %42 = load ptr addrspace(1), ptr %5
  call void @_B_foo1(ptr addrspace(1) %42), !dbg !28
  store ptr addrspace(1) null, ptr %6
  %43 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 2), !dbg !29
  %44 = and i64 72057594037927935, 2
  %45 = or i64 2449958197289549824, %44
  %46 = getelementptr i8, ptr addrspace(1) null, i64 %45
  call void @_bal_mapping_init_member(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %46), !dbg !30
  %47 = and i64 72057594037927935, 3
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  call void @_bal_mapping_init_member(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %49), !dbg !31
  store ptr addrspace(1) %43, ptr %7
  %50 = load ptr addrspace(1), ptr %7
  call void @_B_foo2(ptr addrspace(1) %50), !dbg !32
  store ptr addrspace(1) null, ptr %8
  %51 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 2), !dbg !33
  %52 = and i64 72057594037927935, 2
  %53 = or i64 2449958197289549824, %52
  %54 = getelementptr i8, ptr addrspace(1) null, i64 %53
  call void @_bal_mapping_init_member(ptr addrspace(1) %51, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %54), !dbg !34
  %55 = and i64 72057594037927935, 3
  %56 = or i64 2449958197289549824, %55
  %57 = getelementptr i8, ptr addrspace(1) null, i64 %56
  call void @_bal_mapping_init_member(ptr addrspace(1) %51, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %57), !dbg !35
  store ptr addrspace(1) %51, ptr %9
  %58 = load ptr addrspace(1), ptr %9
  call void @_B_foo2(ptr addrspace(1) %58), !dbg !36
  store ptr addrspace(1) null, ptr %10
  %59 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root3, i64 2), !dbg !37
  %60 = and i64 72057594037927935, 2
  %61 = or i64 2449958197289549824, %60
  %62 = getelementptr i8, ptr addrspace(1) null, i64 %61
  call void @_bal_mapping_init_member(ptr addrspace(1) %59, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %62), !dbg !38
  %63 = and i64 72057594037927935, 3
  %64 = or i64 2449958197289549824, %63
  %65 = getelementptr i8, ptr addrspace(1) null, i64 %64
  call void @_bal_mapping_init_member(ptr addrspace(1) %59, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %65), !dbg !39
  store ptr addrspace(1) %59, ptr %11
  %66 = load ptr addrspace(1), ptr %11
  call void @_B_foo3(ptr addrspace(1) %66), !dbg !40
  store ptr addrspace(1) null, ptr %12
  %67 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root3, i64 2), !dbg !41
  %68 = and i64 72057594037927935, 2
  %69 = or i64 2449958197289549824, %68
  %70 = getelementptr i8, ptr addrspace(1) null, i64 %69
  call void @_bal_mapping_init_member(ptr addrspace(1) %67, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %70), !dbg !42
  %71 = and i64 72057594037927935, 3
  %72 = or i64 2449958197289549824, %71
  %73 = getelementptr i8, ptr addrspace(1) null, i64 %72
  call void @_bal_mapping_init_member(ptr addrspace(1) %67, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %73), !dbg !43
  store ptr addrspace(1) %67, ptr %13
  %74 = load ptr addrspace(1), ptr %13
  call void @_B_foo3(ptr addrspace(1) %74), !dbg !44
  store ptr addrspace(1) null, ptr %14
  ret void
75:
  %76 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %76), !dbg !16
  unreachable
}
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %a = alloca ptr addrspace(1)
  %a.1 = alloca ptr addrspace(1)
  %a.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %35, label %9
9:
  store ptr addrspace(1) %0, ptr %a
  %10 = load ptr addrspace(1), ptr %a
  %11 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %10), !dbg !47
  br i1 %11, label %12, label %24
12:
  %13 = load ptr addrspace(1), ptr %a
  %14 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %13, ptr @_Be04root4), !dbg !48
  store ptr addrspace(1) %14, ptr %a.1
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !49
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %2
  %23 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !50
  store ptr addrspace(1) null, ptr %3
  br label %24
24:
  %25 = load ptr addrspace(1), ptr %a
  store ptr addrspace(1) %25, ptr %a.2
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !51
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573432442465), ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %4
  %34 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !52
  store ptr addrspace(1) null, ptr %5
  ret void
35:
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !45
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !46
  unreachable
}
define internal void @_B_foo1(ptr addrspace(1) %0) !dbg !9 {
  %c = alloca ptr addrspace(1)
  %c.1 = alloca ptr addrspace(1)
  %c.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %c.3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %c.4 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %55, label %13
13:
  store ptr addrspace(1) %0, ptr %c
  %14 = load ptr addrspace(1), ptr %c
  %15 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %14), !dbg !55
  br i1 %15, label %16, label %28
16:
  %17 = load ptr addrspace(1), ptr %c
  %18 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %17, ptr @_Be04root4), !dbg !56
  store ptr addrspace(1) %18, ptr %c.1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !57
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !58
  store ptr addrspace(1) null, ptr %3
  br label %28
28:
  %29 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %29, ptr %c.3
  %30 = load ptr addrspace(1), ptr %c.3
  %31 = call i1 @_bal_type_contains(ptr @_Bt04root6, ptr addrspace(1) %30), !dbg !59
  br i1 %31, label %32, label %44
32:
  %33 = load ptr addrspace(1), ptr %c.3
  %34 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %33, ptr @_Be04root7), !dbg !60
  store ptr addrspace(1) %34, ptr %4
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !61
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %6
  %43 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !62
  store ptr addrspace(1) null, ptr %7
  br label %44
44:
  %45 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %45, ptr %c.4
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !63
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str4 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %8
  %54 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !64
  store ptr addrspace(1) null, ptr %9
  ret void
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 5380), !dbg !53
  call void @_bal_panic(ptr addrspace(1) %56), !dbg !54
  unreachable
}
define internal void @_B_foo2(ptr addrspace(1) %0) !dbg !11 {
  %c = alloca ptr addrspace(1)
  %c.1 = alloca ptr addrspace(1)
  %c.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %c.3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %c.4 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %55, label %13
13:
  store ptr addrspace(1) %0, ptr %c
  %14 = load ptr addrspace(1), ptr %c
  %15 = call i1 @_bal_type_contains(ptr @_Bt04root3, ptr addrspace(1) %14), !dbg !67
  br i1 %15, label %16, label %28
16:
  %17 = load ptr addrspace(1), ptr %c
  %18 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %17, ptr @_Be04root4), !dbg !68
  store ptr addrspace(1) %18, ptr %c.1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !69
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !70
  store ptr addrspace(1) null, ptr %3
  br label %28
28:
  %29 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %29, ptr %c.3
  %30 = load ptr addrspace(1), ptr %c.3
  %31 = call i1 @_bal_type_contains(ptr @_Bt04root6, ptr addrspace(1) %30), !dbg !71
  br i1 %31, label %32, label %44
32:
  %33 = load ptr addrspace(1), ptr %c.3
  %34 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %33, ptr @_Be04root7), !dbg !72
  store ptr addrspace(1) %34, ptr %4
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !73
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %6
  %43 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !74
  store ptr addrspace(1) null, ptr %7
  br label %44
44:
  %45 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %45, ptr %c.4
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !75
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str5 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %8
  %54 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !76
  store ptr addrspace(1) null, ptr %9
  ret void
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 7940), !dbg !65
  call void @_bal_panic(ptr addrspace(1) %56), !dbg !66
  unreachable
}
define internal void @_B_foo3(ptr addrspace(1) %0) !dbg !13 {
  %c = alloca ptr addrspace(1)
  %c.1 = alloca ptr addrspace(1)
  %c.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %c.3 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %37, label %9
9:
  store ptr addrspace(1) %0, ptr %c
  %10 = load ptr addrspace(1), ptr %c
  %11 = call i1 @_bal_type_contains(ptr @_Bt04root6, ptr addrspace(1) %10), !dbg !79
  br i1 %11, label %12, label %24
12:
  %13 = load ptr addrspace(1), ptr %c
  %14 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %13, ptr @_Be04root7), !dbg !82
  store ptr addrspace(1) %14, ptr %c.1
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !83
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %2
  %23 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !84
  store ptr addrspace(1) null, ptr %3
  br label %35
24:
  %25 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %25, ptr %c.2
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root5, i64 1), !dbg !80
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str6 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %4
  %34 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !81
  store ptr addrspace(1) null, ptr %5
  br label %35
35:
  %36 = load ptr addrspace(1), ptr %c
  store ptr addrspace(1) %36, ptr %c.3
  ret void
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 10500), !dbg !77
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !78
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-mapping/8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"foo1", linkageName:"_B_foo1", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"foo2", linkageName:"_B_foo2", scope: !1, file: !1, line: 31, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"foo3", linkageName:"_B_foo3", scope: !1, file: !1, line: 41, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = !DILocation(line: 0, column: 0, scope: !5)
!16 = !DILocation(line: 3, column: 16, scope: !5)
!17 = !DILocation(line: 4, column: 8, scope: !5)
!18 = !DILocation(line: 4, column: 8, scope: !5)
!19 = !DILocation(line: 4, column: 8, scope: !5)
!20 = !DILocation(line: 4, column: 4, scope: !5)
!21 = !DILocation(line: 5, column: 8, scope: !5)
!22 = !DILocation(line: 5, column: 8, scope: !5)
!23 = !DILocation(line: 5, column: 8, scope: !5)
!24 = !DILocation(line: 5, column: 4, scope: !5)
!25 = !DILocation(line: 6, column: 9, scope: !5)
!26 = !DILocation(line: 6, column: 9, scope: !5)
!27 = !DILocation(line: 6, column: 9, scope: !5)
!28 = !DILocation(line: 6, column: 4, scope: !5)
!29 = !DILocation(line: 7, column: 9, scope: !5)
!30 = !DILocation(line: 7, column: 9, scope: !5)
!31 = !DILocation(line: 7, column: 9, scope: !5)
!32 = !DILocation(line: 7, column: 4, scope: !5)
!33 = !DILocation(line: 8, column: 9, scope: !5)
!34 = !DILocation(line: 8, column: 9, scope: !5)
!35 = !DILocation(line: 8, column: 9, scope: !5)
!36 = !DILocation(line: 8, column: 4, scope: !5)
!37 = !DILocation(line: 9, column: 9, scope: !5)
!38 = !DILocation(line: 9, column: 9, scope: !5)
!39 = !DILocation(line: 9, column: 9, scope: !5)
!40 = !DILocation(line: 9, column: 4, scope: !5)
!41 = !DILocation(line: 10, column: 9, scope: !5)
!42 = !DILocation(line: 10, column: 9, scope: !5)
!43 = !DILocation(line: 10, column: 9, scope: !5)
!44 = !DILocation(line: 10, column: 4, scope: !5)
!45 = !DILocation(line: 0, column: 0, scope: !7)
!46 = !DILocation(line: 14, column: 9, scope: !7)
!47 = !DILocation(line: 15, column: 9, scope: !7)
!48 = !DILocation(line: 15, column: 9, scope: !7)
!49 = !DILocation(line: 16, column: 19, scope: !7)
!50 = !DILocation(line: 16, column: 8, scope: !7)
!51 = !DILocation(line: 18, column: 15, scope: !7)
!52 = !DILocation(line: 18, column: 4, scope: !7)
!53 = !DILocation(line: 0, column: 0, scope: !9)
!54 = !DILocation(line: 21, column: 9, scope: !9)
!55 = !DILocation(line: 22, column: 9, scope: !9)
!56 = !DILocation(line: 22, column: 9, scope: !9)
!57 = !DILocation(line: 23, column: 19, scope: !9)
!58 = !DILocation(line: 23, column: 8, scope: !9)
!59 = !DILocation(line: 25, column: 9, scope: !9)
!60 = !DILocation(line: 25, column: 9, scope: !9)
!61 = !DILocation(line: 26, column: 19, scope: !9)
!62 = !DILocation(line: 26, column: 8, scope: !9)
!63 = !DILocation(line: 28, column: 15, scope: !9)
!64 = !DILocation(line: 28, column: 4, scope: !9)
!65 = !DILocation(line: 0, column: 0, scope: !11)
!66 = !DILocation(line: 31, column: 9, scope: !11)
!67 = !DILocation(line: 32, column: 9, scope: !11)
!68 = !DILocation(line: 32, column: 9, scope: !11)
!69 = !DILocation(line: 33, column: 19, scope: !11)
!70 = !DILocation(line: 33, column: 8, scope: !11)
!71 = !DILocation(line: 35, column: 9, scope: !11)
!72 = !DILocation(line: 35, column: 9, scope: !11)
!73 = !DILocation(line: 36, column: 19, scope: !11)
!74 = !DILocation(line: 36, column: 8, scope: !11)
!75 = !DILocation(line: 38, column: 15, scope: !11)
!76 = !DILocation(line: 38, column: 4, scope: !11)
!77 = !DILocation(line: 0, column: 0, scope: !13)
!78 = !DILocation(line: 41, column: 9, scope: !13)
!79 = !DILocation(line: 42, column: 9, scope: !13)
!80 = !DILocation(line: 46, column: 19, scope: !13)
!81 = !DILocation(line: 46, column: 8, scope: !13)
!82 = !DILocation(line: 47, column: 4, scope: !13)
!83 = !DILocation(line: 43, column: 19, scope: !13)
!84 = !DILocation(line: 43, column: 8, scope: !13)
