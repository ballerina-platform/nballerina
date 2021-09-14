@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %b = alloca i1
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %11, label %7
7:
  store i1 0, i1* %b
  %8 = load i1, i1* %b
  call void @_B_printBoolean(i1 %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  store i1 1, i1* %b
  %9 = load i1, i1* %b
  call void @_B_printBoolean(i1 %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i1 0, i1* %b
  %10 = load i1, i1* %b
  call void @_B_printBoolean(i1 %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %12)
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
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
