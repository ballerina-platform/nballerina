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
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %9, label %8
8:
  call void @_B_printIfFalse(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_printIfFalse(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_printIfTrue(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_printIfTrue(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_printIfFalse(i1 %0) {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i1 %0, i1* %b
  %7 = load i1, i1* %b
  br i1 %7, label %8, label %9
8:
  br label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %11
11:
  ret void
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564)
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal void @_B_printIfTrue(i1 %0) {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  store i1 %0, i1* %b
  %7 = load i1, i1* %b
  br i1 %7, label %8, label %10
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %10
10:
  ret void
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868)
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
