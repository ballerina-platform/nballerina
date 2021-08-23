@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare zeroext i1 @_bal_float_eq(double, double) readonly
declare zeroext i1 @_bal_float_exact_eq(double, double) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %17, label %10
10:
  %11 = call i8 addrspace(1)* @_B_zero(double 0.0)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %13 = call i8 addrspace(1)* @_B_zero(double -0.0)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %15 = call i8 addrspace(1)* @_B_zero(double 1.0)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %5
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
17:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i8 addrspace(1)* @_B_zero(double %0) {
  %v = alloca double
  %2 = alloca i1
  %v.1 = alloca double
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %26, label %8
8:
  store double %0, double* %v
  %9 = load double, double* %v
  %10 = call i1 @_bal_float_eq(double %9, double 0.0)
  store i1 %10, i1* %2
  %11 = load i1, i1* %2
  br i1 %11, label %12, label %25
12:
  %13 = load double, double* %v
  store double %13, double* %v.1
  %14 = load double, double* %v.1
  %15 = call i1 @_bal_float_exact_eq(double %14, double -0.0)
  store i1 %15, i1* %3
  %16 = load i1, i1* %3
  br i1 %16, label %17, label %18
17:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901037)
18:
  %19 = load double, double* %v.1
  %20 = call i1 @_bal_float_exact_eq(double %19, double 0.0)
  store i1 %20, i1* %4
  %21 = load i1, i1* %4
  br i1 %21, label %22, label %23
22:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901035)
23:
  br label %24
24:
  br label %25
25:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901025)
26:
  call void @_bal_panic(i64 2308)
  unreachable
}
