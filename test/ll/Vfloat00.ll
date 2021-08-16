@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %f = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  store i8 addrspace(1)* %6, i8 addrspace(1)** %f
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  call void @_Bio__println(i8 addrspace(1)* %7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
8:
  call void @_bal_panic(i64 516)
  unreachable
}
