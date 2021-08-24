@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
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
  %9 = call i8 addrspace(1)* @_bal_float_to_tagged(double -3.0)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double -2.0)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 8.0)
  call void @_Bio__println(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %12 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.7)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
13:
  call void @_bal_panic(i64 1796)
  unreachable
}
