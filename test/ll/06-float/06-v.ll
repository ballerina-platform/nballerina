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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca double
  %10 = alloca i8 addrspace(1)*
  %11 = alloca double
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %35, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.375)
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.375)
  %19 = call i8 addrspace(1)* @_B_aa(i1 1, i8 addrspace(1)* %17, i8 addrspace(1)* %18)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %21 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.375)
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.375)
  %23 = call i8 addrspace(1)* @_B_aa(i1 0, i8 addrspace(1)* %21, i8 addrspace(1)* %22)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %3
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %25 = call i8 addrspace(1)* @_B_fa(i1 1, double 17.75, double 2.75)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %5
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %27 = call i8 addrspace(1)* @_B_fa(i1 0, double 17.75, double 2.75)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %7
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %29 = call double @_B_ff(i1 1, double 1.5, double 0.5)
  store double %29, double* %9
  %30 = load double, double* %9
  %31 = call i8 addrspace(1)* @_bal_float_to_tagged(double %30)
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %32 = call double @_B_ff(i1 0, double 1.5, double 0.5)
  store double %32, double* %11
  %33 = load double, double* %11
  %34 = call i8 addrspace(1)* @_bal_float_to_tagged(double %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
}
define internal i8 addrspace(1)* @_B_aa(i1 %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2) {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, i1* %b
  store i8 addrspace(1)* %1, i8 addrspace(1)** %x
  store i8 addrspace(1)* %2, i8 addrspace(1)** %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  ret i8 addrspace(1)* %10
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  ret i8 addrspace(1)* %12
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal i8 addrspace(1)* @_B_fa(i1 %0, double %1, double %2) {
  %b = alloca i1
  %x = alloca double
  %y = alloca double
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %15, label %7
7:
  store i1 %0, i1* %b
  store double %1, double* %x
  store double %2, double* %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %12
9:
  %10 = load double, double* %x
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double %10)
  ret i8 addrspace(1)* %11
12:
  %13 = load double, double* %y
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double %13)
  ret i8 addrspace(1)* %14
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 5380)
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
define internal double @_B_ff(i1 %0, double %1, double %2) {
  %b = alloca i1
  %x = alloca double
  %y = alloca double
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, i1* %b
  store double %1, double* %x
  store double %2, double* %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = load double, double* %x
  ret double %10
11:
  %12 = load double, double* %y
  ret double %12
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
