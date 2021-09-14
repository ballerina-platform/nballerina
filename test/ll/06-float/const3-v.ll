@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare zeroext i1 @_bal_float_eq(double, double) readonly
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %37, label %18
18:
  %19 = call i8 addrspace(1)* @_B_eq(double 0x7FF8000000000000, double 0x7FF8000000000000)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %21 = call i8 addrspace(1)* @_B_eq(double 0x7FF0000000000000, double 0xFFF0000000000000)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %3
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %23 = call i8 addrspace(1)* @_B_eq(double -0.0, double 0.0)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %5
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %25 = call i8 addrspace(1)* @_B_eq(double 0x7FF8000000000000, double 0x7FF0000000000000)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %7
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %27 = call i8 addrspace(1)* @_B_eq(double 0x7FF8000000000000, double 0xFFF0000000000000)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %9
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %29 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %30 = zext i1 1 to i64
  %31 = or i64 %30, 72057594037927936
  %32 = getelementptr i8, i8 addrspace(1)* null, i64 %31
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %33 = zext i1 0 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %36 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
}
define internal i8 addrspace(1)* @_B_eq(double %0, double %1) {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca i1
  %eq = alloca i1
  %4 = alloca i1
  %neEq = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %29, label %9
9:
  store double %0, double* %f1
  store double %1, double* %f2
  %10 = load double, double* %f1
  %11 = load double, double* %f2
  %12 = call i1 @_bal_float_eq(double %10, double %11)
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  store i1 %13, i1* %eq
  %14 = load double, double* %f1
  %15 = load double, double* %f2
  %16 = call i1 @_bal_float_eq(double %14, double %15)
  %17 = xor i1 %16, 1
  store i1 %17, i1* %4
  %18 = load i1, i1* %4
  store i1 %18, i1* %neEq
  %19 = load i1, i1* %eq
  %20 = load i1, i1* %neEq
  %21 = icmp eq i1 %19, %20
  store i1 %21, i1* %5
  %22 = load i1, i1* %5
  br i1 %22, label %23, label %24
23:
  ret i8 addrspace(1)* null
24:
  %25 = load i1, i1* %eq
  %26 = zext i1 %25 to i64
  %27 = or i64 %26, 72057594037927936
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27
  ret i8 addrspace(1)* %28
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 6916)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
