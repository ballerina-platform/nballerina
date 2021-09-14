@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %13, label %8
8:
  %9 = call i8 addrspace(1)* @_B_foo()
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %11 = call i8 addrspace(1)* @_B_bar()
  store i8 addrspace(1)* %11, i8 addrspace(1)** %3
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal i8 addrspace(1)* @_B_foo() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %6, label %4
4:
  %5 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  ret i8 addrspace(1)* %5
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308)
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define internal i8 addrspace(1)* @_B_bar() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %8, label %4
4:
  %5 = zext i1 0 to i64
  %6 = or i64 %5, 72057594037927936
  %7 = getelementptr i8, i8 addrspace(1)* null, i64 %6
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
