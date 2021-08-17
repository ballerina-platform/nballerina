@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca double
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store double 0x4031000000000000, double* %x
  %9 = load double, double* %x
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double %9)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_foo(double 0x4045000000000000)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %11 = call double @_B_bar()
  store double %11, double* %3
  %12 = load double, double* %3
  %13 = call i8 addrspace(1)* @_bal_float_to_tagged(double %12)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
14:
  call void @_bal_panic(i64 1028)
  unreachable
}
define internal void @_B_foo(double %0) {
  %x = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  store double %0, double* %x
  %7 = load double, double* %x
  %8 = call i8 addrspace(1)* @_bal_float_to_tagged(double %7)
  call void @_Bio__println(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
9:
  call void @_bal_panic(i64 2820)
  unreachable
}
define internal double @_B_bar() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret double 0x4035000000000000
5:
  call void @_bal_panic(i64 3844)
  unreachable
}
