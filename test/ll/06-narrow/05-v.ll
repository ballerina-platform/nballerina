@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
define void @_B_main() {
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %23, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  %12 = call double @_B_foo(i8 addrspace(1)* %11)
  store double %12, double* %1
  %13 = load double, double* %1
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double %13)
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %15 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  %16 = call double @_B_foo(i8 addrspace(1)* %15)
  store double %16, double* %3
  %17 = load double, double* %3
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double %17)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %20 = call double @_B_foo(i8 addrspace(1)* %19)
  store double %20, double* %5
  %21 = load double, double* %5
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
}
define internal double @_B_foo(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v.1 = alloca double
  %v.2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %19, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %8 = addrspacecast i8 addrspace(1)* %7 to i8*
  %9 = ptrtoint i8* %8 to i64
  %10 = and i64 %9, 2233785415175766016
  %11 = icmp eq i64 %10, 576460752303423488
  store i1 %11, i1* %2
  %12 = load i1, i1* %2
  br i1 %12, label %13, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %15 = call double @_bal_tagged_to_float(i8 addrspace(1)* %14)
  store double %15, double* %v.1
  %16 = load double, double* %v.1
  ret double %16
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %18, i8 addrspace(1)** %v.2
  ret double 2.5
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308)
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
