@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %f = alloca double
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %23, label %12
12:
  store double 0.1, double* %f
  %13 = load double, double* %f
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double %13)
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  store double 0x3FD5555555555555, double* %f
  %15 = load double, double* %f
  %16 = call i8 addrspace(1)* @_bal_float_to_tagged(double %15)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x8010000000000001)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %20 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %21 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF0000000000000)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0xFFF0000000000000)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
}
