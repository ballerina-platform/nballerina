@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %19, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 19)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 22)
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 34)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 33)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 38)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 106)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
19:
  call void @_bal_panic(i64 772)
  unreachable
}
