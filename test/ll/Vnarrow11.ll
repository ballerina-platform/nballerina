@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare zeroext i1 @_bal_float_eq(double, double) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %7, label %6
6:
  call void @_B_foo(double 0.0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_foo(double -0.0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
7:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_foo(double %0) {
  %x = alloca double
  %2 = alloca i1
  %x.1 = alloca double
  %3 = alloca i8 addrspace(1)*
  %4 = alloca double
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %21, label %9
9:
  store double %0, double* %x
  %10 = load double, double* %x
  %11 = call i1 @_bal_float_eq(double %10, double 0.0)
  store i1 %11, i1* %2
  %12 = load i1, i1* %2
  br i1 %12, label %13, label %20
13:
  %14 = load double, double* %x
  store double %14, double* %x.1
  %15 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %16 = load double, double* %x.1
  %17 = fadd double %16, -0.0
  store double %17, double* %4
  %18 = load double, double* %4
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double %18)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %20
20:
  ret void
21:
  call void @_bal_panic(i64 3076)
  unreachable
}
