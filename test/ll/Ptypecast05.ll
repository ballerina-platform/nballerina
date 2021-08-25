@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %f = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
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
  br i1 %15, label %25, label %29
16:
  %17 = load i64, i64* %5
  call void @_bal_panic(i64 %17)
  unreachable
18:
  call void @_bal_panic(i64 772)
  unreachable
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 576460752303423488
  br i1 %24, label %30, label %35
25:
  %26 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %11)
  %27 = sitofp i64 %26 to double
  %28 = call i8 addrspace(1)* @_bal_float_to_tagged(double %27)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %2
  br label %19
29:
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2
  br label %19
30:
  %31 = call double @_bal_tagged_to_float(i8 addrspace(1)* %20)
  store double %31, double* %3
  %32 = load double, double* %3
  store double %32, double* %f
  %33 = load double, double* %f
  %34 = call i8 addrspace(1)* @_bal_float_to_tagged(double %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
35:
  store i64 1027, i64* %5
  br label %16
}
define internal i8 addrspace(1)* @_B_g() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %8, label %4
4:
  %5 = zext i1 1 to i64
  %6 = or i64 %5, 72057594037927936
  %7 = getelementptr i8, i8 addrspace(1)* null, i64 %6
  ret i8 addrspace(1)* %7
8:
  call void @_bal_panic(i64 2052)
  unreachable
}
