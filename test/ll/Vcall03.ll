@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call i1 @_B_foo()
  store i1 %7, i1* %1
  %8 = load i1, i1* %1
  call void @_B_printBoolean(i1 %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
9:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i1 @_B_foo() {
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = call i1 @_B_bar(i64 1)
  store i1 %7, i1* %1
  %8 = load i1, i1* %1
  %9 = xor i1 1, %8
  store i1 %9, i1* %2
  %10 = load i1, i1* %2
  br i1 %10, label %11, label %12
11:
  ret i1 1
12:
  ret i1 0
13:
  call void @_bal_panic(i64 1796)
  unreachable
}
define internal i1 @_B_bar(i64 %0) {
  %x = alloca i64
  %2 = alloca i1
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i64 %0, i64* %x
  %7 = load i64, i64* %x
  %8 = icmp eq i64 %7, 1
  store i1 %8, i1* %2
  %9 = load i1, i1* %2
  ret i1 %9
10:
  call void @_bal_panic(i64 3844)
  unreachable
}
define internal void @_B_printBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %13
13:
  ret void
14:
  call void @_bal_panic(i64 4868)
  unreachable
}
