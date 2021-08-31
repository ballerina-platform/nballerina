@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  %8 = call i1 @_B_foo()
  store i1 %8, i1* %1
  %9 = load i1, i1* %1
  br i1 %9, label %10, label %11
10:
  call void @_B_bar(i64 100)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %12
11:
  call void @_B_baz(i64 200)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %12
12:
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal i1 @_B_foo() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i1 1
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820)
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal void @_B_bar(i64 %0) {
  %x = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  store i64 %0, i64* %x
  %7 = load i64, i64* %x
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %7)
  call void @_Bio__println(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_baz(i64 %0) {
  %x = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  store i64 %0, i64* %x
  %7 = load i64, i64* %x
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %7)
  call void @_Bio__println(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
