@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %32, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %10 = bitcast i8 addrspace(1)* %9 to [3 x i8 addrspace(1)*] addrspace(1)*
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %12 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 0
  store i8 addrspace(1)* %11, i8 addrspace(1)* addrspace(1)* %12
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %14 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 1
  store i8 addrspace(1)* %13, i8 addrspace(1)* addrspace(1)* %14
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %10, i64 0, i64 2
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %10 to [0 x i8 addrspace(1)*] addrspace(1)*
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %19 = bitcast i8 addrspace(1)* %18 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %20 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %17, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %22
  %23 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702848
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %24 = call i8 addrspace(1)* @_bal_mapping_construct(i64 2)
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %25)
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %26)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %2
  %27 = call i8 addrspace(1)* @_bal_mapping_construct(i64 2)
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_bal_mapping_init_member(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541289654636), i8 addrspace(1)* %28)
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_mapping_init_member(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055532271331205485), i8 addrspace(1)* %29)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %3
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %30, i8 addrspace(1)** %m
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
32:
  call void @_bal_panic(i64 772)
  unreachable
}
