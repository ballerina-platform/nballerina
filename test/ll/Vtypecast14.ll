@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %22, label %13
13:
  %14 = call i8 addrspace(1)* @_B_g(i1 1)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %16 = addrspacecast i8 addrspace(1)* %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, 2233785415175766016
  %19 = icmp eq i64 %18, 504403158265495552
  br i1 %19, label %29, label %33
20:
  %21 = load i64, i64* %9
  call void @_bal_panic(i64 %21)
  unreachable
22:
  call void @_bal_panic(i64 772)
  unreachable
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 576460752303423488
  br i1 %28, label %34, label %44
29:
  %30 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  %31 = sitofp i64 %30 to double
  %32 = call i8 addrspace(1)* @_bal_float_to_tagged(double %31)
  store i8 addrspace(1)* %32, i8 addrspace(1)** %2
  br label %23
33:
  store i8 addrspace(1)* %15, i8 addrspace(1)** %2
  br label %23
34:
  %35 = call double @_bal_tagged_to_float(i8 addrspace(1)* %24)
  store double %35, double* %3
  %36 = load double, double* %3
  %37 = call i8 addrspace(1)* @_bal_float_to_tagged(double %36)
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %38 = call i8 addrspace(1)* @_B_g(i1 0)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %5
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %40 = addrspacecast i8 addrspace(1)* %39 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 504403158265495552
  br i1 %43, label %51, label %55
44:
  store i64 1027, i64* %9
  br label %20
45:
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %47 = addrspacecast i8 addrspace(1)* %46 to i8*
  %48 = ptrtoint i8* %47 to i64
  %49 = and i64 %48, 2233785415175766016
  %50 = icmp eq i64 %49, 576460752303423488
  br i1 %50, label %56, label %60
51:
  %52 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %39)
  %53 = sitofp i64 %52 to double
  %54 = call i8 addrspace(1)* @_bal_float_to_tagged(double %53)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %6
  br label %45
55:
  store i8 addrspace(1)* %39, i8 addrspace(1)** %6
  br label %45
56:
  %57 = call double @_bal_tagged_to_float(i8 addrspace(1)* %46)
  store double %57, double* %7
  %58 = load double, double* %7
  %59 = call i8 addrspace(1)* @_bal_float_to_tagged(double %58)
  call void @_Bio__println(i8 addrspace(1)* %59)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
60:
  store i64 1283, i64* %9
  br label %20
}
define internal i8 addrspace(1)* @_B_g(i1 %0) {
  %isInt = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %11, label %5
5:
  store i1 %0, i1* %isInt
  %6 = load i1, i1* %isInt
  br i1 %6, label %7, label %9
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  ret i8 addrspace(1)* %8
9:
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double 5.5)
  ret i8 addrspace(1)* %10
11:
  call void @_bal_panic(i64 2052)
  unreachable
}
