@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
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
  %12 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.0)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %13 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double 4.0)
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %15 = call i8 addrspace(1)* @_bal_float_to_tagged(double 8.0)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %16 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.5)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.75)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076)
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
