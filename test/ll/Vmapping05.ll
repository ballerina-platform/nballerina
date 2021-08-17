@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_alloc(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %38, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_mapping_construct(i64 2)
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046), i8 addrspace(1)* %14)
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621620066), i8 addrspace(1)* %15)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %16, i8 addrspace(1)** %m
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %18 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046))
  store i8 addrspace(1)* %18, i8 addrspace(1)** %2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %19, i8 addrspace(1)** %v
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %22 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621620066))
  store i8 addrspace(1)* %22, i8 addrspace(1)** %4
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %25 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622144354))
  store i8 addrspace(1)* %25, i8 addrspace(1)** %6
  %26 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %27 = bitcast i8 addrspace(1)* %26 to [1 x i8 addrspace(1)*] addrspace(1)*
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %29 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %27, i64 0, i64 0
  store i8 addrspace(1)* %28, i8 addrspace(1)* addrspace(1)* %29
  %30 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %27 to [0 x i8 addrspace(1)*] addrspace(1)*
  %31 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %33
  %34 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %30, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %35
  %36 = getelementptr i8, i8 addrspace(1)* %31, i64 1297036692682702848
  store i8 addrspace(1)* %36, i8 addrspace(1)** %7
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
38:
  call void @_bal_panic(i64 772)
  unreachable
}
