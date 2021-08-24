@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %f = alloca double
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %9 = alloca double
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %35, label %14
14:
  store double 10.0, double* %f
  %15 = load double, double* %f
  %16 = fneg double %15
  store double %16, double* %1
  %17 = load double, double* %1
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double %17)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store double 0.0, double* %f
  %19 = load double, double* %f
  %20 = fneg double %19
  store double %20, double* %3
  %21 = load double, double* %3
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  store double -0.0, double* %f
  %23 = load double, double* %f
  %24 = fneg double %23
  store double %24, double* %5
  %25 = load double, double* %5
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double %25)
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  store double 0x7FF0000000000000, double* %f
  %27 = load double, double* %f
  %28 = fneg double %27
  store double %28, double* %7
  %29 = load double, double* %7
  %30 = call i8 addrspace(1)* @_bal_float_to_tagged(double %29)
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  store double 0x7FF8000000000000, double* %f
  %31 = load double, double* %f
  %32 = fneg double %31
  store double %32, double* %9
  %33 = load double, double* %9
  %34 = call i8 addrspace(1)* @_bal_float_to_tagged(double %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  ret void
35:
  call void @_bal_panic(i64 772)
  unreachable
}
