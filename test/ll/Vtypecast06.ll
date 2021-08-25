@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i8 addrspace(1)*
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %f = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %18, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 576460752303423488
  br i1 %15, label %19, label %29
16:
  %17 = load i64, i64* %5
  call void @_bal_panic(i64 %17)
  unreachable
18:
  call void @_bal_panic(i64 772)
  unreachable
19:
  %20 = call double @_bal_tagged_to_float(i8 addrspace(1)* %11)
  store double %20, double* %1
  %21 = load double, double* %1
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %23 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %f
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 576460752303423488
  br i1 %28, label %30, label %34
29:
  store i64 1283, i64* %5
  br label %16
30:
  %31 = call double @_bal_tagged_to_float(i8 addrspace(1)* %24)
  store double %31, double* %3
  %32 = load double, double* %3
  %33 = call i8 addrspace(1)* @_bal_float_to_tagged(double %32)
  call void @_Bio__println(i8 addrspace(1)* %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
34:
  store i64 1795, i64* %5
  br label %16
}
