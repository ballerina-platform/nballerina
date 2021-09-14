@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %im = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %im2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %24, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 3)
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %10)
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %11)
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %12)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %im
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %im
  store i8 addrspace(1)* %14, i8 addrspace(1)** %m
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %im
  store i8 addrspace(1)* %15, i8 addrspace(1)** %im2
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %im2
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %im
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %im2
  %19 = icmp eq i8 addrspace(1)* %17, %18
  store i1 %19, i1* %3
  %20 = load i1, i1* %3
  %21 = zext i1 %20 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
}
