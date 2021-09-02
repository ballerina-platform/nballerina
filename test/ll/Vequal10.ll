@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_alloc(i64)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %62, label %20
20:
  %21 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 1)
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %22)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %23, i8 addrspace(1)** %x
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %24, i8 addrspace(1)** %y
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  call void @_B_printEq(i8 addrspace(1)* %25, i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %27 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 1)
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %28)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %3
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_B_printEq(i8 addrspace(1)* %29, i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %31 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 1)
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %31, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %32)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %5
  %33 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %34 = bitcast i8 addrspace(1)* %33 to [1 x i8 addrspace(1)*] addrspace(1)*
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %36 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %34, i64 0, i64 0
  store i8 addrspace(1)* %35, i8 addrspace(1)* addrspace(1)* %36
  %37 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %34 to [0 x i8 addrspace(1)*] addrspace(1)*
  %38 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %39 = bitcast i8 addrspace(1)* %38 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %40 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %40
  %41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %41
  %42 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %39, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %37, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %42
  %43 = getelementptr i8, i8 addrspace(1)* %38, i64 1297036692682702848
  store i8 addrspace(1)* %43, i8 addrspace(1)** %6
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_B_printEq(i8 addrspace(1)* %44, i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %46 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 1)
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %46, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %47)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %8
  %48 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 1)
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %48, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %49)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %9
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_B_printEq(i8 addrspace(1)* %50, i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %52 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 0)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %11
  %53 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 0)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %12
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  call void @_B_printEq(i8 addrspace(1)* %54, i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %56 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 1)
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %56, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %57)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %14
  %58 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 1)
  %59 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %58, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %59)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %15
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_B_printEq(i8 addrspace(1)* %60, i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
62:
  %63 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %63)
  unreachable
}
define internal void @_B_printEq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %26, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %13 = call i1 @_bal_exact_eq(i8 addrspace(1)* %11, i8 addrspace(1)* %12)
  store i1 %13, i1* %3
  %14 = load i1, i1* %3
  %15 = zext i1 %14 to i64
  %16 = or i64 %15, 72057594037927936
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %20 = call i1 @_bal_exact_eq(i8 addrspace(1)* %18, i8 addrspace(1)* %19)
  %21 = xor i1 %20, 1
  store i1 %21, i1* %5
  %22 = load i1, i1* %5
  %23 = zext i1 %22 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 6404)
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
}
