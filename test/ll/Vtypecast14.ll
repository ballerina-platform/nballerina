@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
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
  %19 = icmp eq i64 %18, 576460752303423488
  br i1 %19, label %29, label %32
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
  br i1 %28, label %42, label %52
29:
  %30 = call double @_bal_tagged_to_float(i8 addrspace(1)* %15)
  %31 = call i8 addrspace(1)* @_bal_float_to_tagged(double %30)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %2
  br label %23
32:
  %33 = addrspacecast i8 addrspace(1)* %15 to i8*
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 2233785415175766016
  %36 = icmp eq i64 %35, 504403158265495552
  br i1 %36, label %37, label %41
37:
  %38 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  %39 = sitofp i64 %38 to double
  %40 = call i8 addrspace(1)* @_bal_float_to_tagged(double %39)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %2
  br label %23
41:
  store i8 addrspace(1)* %15, i8 addrspace(1)** %2
  br label %23
42:
  %43 = call double @_bal_tagged_to_float(i8 addrspace(1)* %24)
  store double %43, double* %3
  %44 = load double, double* %3
  %45 = call i8 addrspace(1)* @_bal_float_to_tagged(double %44)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %46 = call i8 addrspace(1)* @_B_g(i1 0)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %5
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %48 = addrspacecast i8 addrspace(1)* %47 to i8*
  %49 = ptrtoint i8* %48 to i64
  %50 = and i64 %49, 2233785415175766016
  %51 = icmp eq i64 %50, 576460752303423488
  br i1 %51, label %59, label %62
52:
  store i64 1027, i64* %9
  br label %20
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %55 = addrspacecast i8 addrspace(1)* %54 to i8*
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, 2233785415175766016
  %58 = icmp eq i64 %57, 576460752303423488
  br i1 %58, label %72, label %76
59:
  %60 = call double @_bal_tagged_to_float(i8 addrspace(1)* %47)
  %61 = call i8 addrspace(1)* @_bal_float_to_tagged(double %60)
  store i8 addrspace(1)* %61, i8 addrspace(1)** %6
  br label %53
62:
  %63 = addrspacecast i8 addrspace(1)* %47 to i8*
  %64 = ptrtoint i8* %63 to i64
  %65 = and i64 %64, 2233785415175766016
  %66 = icmp eq i64 %65, 504403158265495552
  br i1 %66, label %67, label %71
67:
  %68 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %47)
  %69 = sitofp i64 %68 to double
  %70 = call i8 addrspace(1)* @_bal_float_to_tagged(double %69)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %6
  br label %53
71:
  store i8 addrspace(1)* %47, i8 addrspace(1)** %6
  br label %53
72:
  %73 = call double @_bal_tagged_to_float(i8 addrspace(1)* %54)
  store double %73, double* %7
  %74 = load double, double* %7
  %75 = call i8 addrspace(1)* @_bal_float_to_tagged(double %74)
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
76:
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
