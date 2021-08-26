@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca i8 addrspace(1)*
  %f = alloca i8 addrspace(1)*
  %4 = alloca double
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %19, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 504403158265495552
  br i1 %16, label %26, label %30
17:
  %18 = load i64, i64* %6
  call void @_bal_panic(i64 %18)
  unreachable
19:
  call void @_bal_panic(i64 772)
  unreachable
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 576460752303423488
  br i1 %25, label %31, label %41
26:
  %27 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %12)
  %28 = sitofp i64 %27 to double
  %29 = call i8 addrspace(1)* @_bal_float_to_tagged(double %28)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  br label %20
30:
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  br label %20
31:
  %32 = call double @_bal_tagged_to_float(i8 addrspace(1)* %21)
  store double %32, double* %2
  %33 = load double, double* %2
  %34 = call i8 addrspace(1)* @_bal_float_to_tagged(double %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %35 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %f
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %f
  %37 = addrspacecast i8 addrspace(1)* %36 to i8*
  %38 = ptrtoint i8* %37 to i64
  %39 = and i64 %38, 2233785415175766016
  %40 = icmp eq i64 %39, 576460752303423488
  br i1 %40, label %42, label %46
41:
  store i64 1283, i64* %6
  br label %17
42:
  %43 = call double @_bal_tagged_to_float(i8 addrspace(1)* %36)
  store double %43, double* %4
  %44 = load double, double* %4
  %45 = call i8 addrspace(1)* @_bal_float_to_tagged(double %44)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
46:
  store i64 1795, i64* %6
  br label %17
}
