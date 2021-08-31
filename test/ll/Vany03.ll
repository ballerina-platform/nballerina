@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %16, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 57)
  call void @_B_foo(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %11 = zext i1 1 to i64
  %12 = or i64 %11, 72057594037927936
  %13 = getelementptr i8, i8 addrspace(1)* null, i64 %12
  call void @_B_foo(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_foo(i8 addrspace(1)* null)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807)
  call void @_B_foo(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775808)
  call void @_B_foo(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
