@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %i = alloca i64
  %1 = alloca double
  %f = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %18, label %8
8:
  store i64 10, i64* %i
  %9 = load i64, i64* %i
  %10 = sitofp i64 %9 to double
  store double %10, double* %1
  %11 = load double, double* %1
  store double %11, double* %f
  %12 = load double, double* %f
  %13 = call i8 addrspace(1)* @_bal_float_to_tagged(double %12)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 9223372036854775807, i64* %i
  %14 = load i64, i64* %i
  %15 = sitofp i64 %14 to double
  store double %15, double* %3
  %16 = load double, double* %3
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double %16)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
}
