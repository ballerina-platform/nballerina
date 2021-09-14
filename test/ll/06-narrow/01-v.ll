@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare zeroext i1 @_bal_float_eq(double, double) readonly
define void @_B_main() {
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  %8 = call double @_B_foo(i8 addrspace(1)* %7)
  store double %8, double* %1
  %9 = load double, double* %1
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double %9)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %12)
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
  br i1 %5, label %17, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %8 = addrspacecast i8 addrspace(1)* %7 to i8*
  %9 = ptrtoint i8* %8 to i64
  %10 = and i64 %9, 2233785415175766016
  %11 = icmp eq i64 %10, 576460752303423488
  br i1 %11, label %19, label %22
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %14 = call double @_bal_tagged_to_float(i8 addrspace(1)* %13)
  store double %14, double* %v.1
  ret double 1.5
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %16, i8 addrspace(1)** %v.2
  ret double 0.0
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call double @_bal_tagged_to_float(i8 addrspace(1)* %7)
  %21 = call i1 @_bal_float_eq(double %20, double 1.5)
  store i1 %21, i1* %2
  br label %23
22:
  store i1 0, i1* %2
  br label %23
23:
  %24 = load i1, i1* %2
  br i1 %24, label %12, label %15
}
