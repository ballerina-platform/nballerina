@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %f = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %18, label %9
9:
  %10 = call i8 addrspace(1)* @_B_g()
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 504403158265495552
  br i1 %15, label %26, label %30
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 576460752303423488
  br i1 %25, label %31, label %36
26:
  %27 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %11)
  %28 = sitofp i64 %27 to double
  %29 = call i8 addrspace(1)* @_bal_float_to_tagged(double %28)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %2
  br label %20
30:
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2
  br label %20
31:
  %32 = call double @_bal_tagged_to_float(i8 addrspace(1)* %21)
  store double %32, double* %3
  %33 = load double, double* %3
  store double %33, double* %f
  %34 = load double, double* %f
  %35 = call i8 addrspace(1)* @_bal_float_to_tagged(double %34)
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 1027)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %5
  br label %16
}
define internal i8 addrspace(1)* @_B_g() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %6, label %4
4:
  %5 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  ret i8 addrspace(1)* %5
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052)
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
