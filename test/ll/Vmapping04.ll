@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %17, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %11 = call i8 addrspace(1)* @_B_wrap(i8 addrspace(1)* %10)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %13 = call i8 addrspace(1)* @_B_wrap(i8 addrspace(1)* null)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %15 = call i8 addrspace(1)* @_B_wrap(i8 addrspace(1)* %14)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %4
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
define internal i8 addrspace(1)* @_B_wrap(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %7 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8386559, i64 1)
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879881007478), i8 addrspace(1)* %8)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %2
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  ret i8 addrspace(1)* %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
