@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %22, label %13
13:
  %14 = call i8 addrspace(1)* @_B_f(i1 1)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %16 = addrspacecast i8 addrspace(1)* %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, 2233785415175766016
  %19 = icmp eq i64 %18, 576460752303423488
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
  %28 = icmp eq i64 %27, 504403158265495552
  br i1 %28, label %38, label %49
29:
  %30 = call double @_bal_tagged_to_float(i8 addrspace(1)* %15)
  %31 = call {i64, i1} @_bal_float_to_int(double %30)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %37, label %34
33:
  store i8 addrspace(1)* %15, i8 addrspace(1)** %2
  br label %23
34:
  %35 = extractvalue {i64, i1} %31, 0
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %2
  br label %23
37:
  store i64 1027, i64* %9
  br label %20
38:
  %39 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %24)
  store i64 %39, i64* %3
  %40 = load i64, i64* %3
  store i64 %40, i64* %i
  %41 = load i64, i64* %i
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %41)
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %43 = call i8 addrspace(1)* @_B_f(i1 0)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %5
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %45 = addrspacecast i8 addrspace(1)* %44 to i8*
  %46 = ptrtoint i8* %45 to i64
  %47 = and i64 %46, 2233785415175766016
  %48 = icmp eq i64 %47, 576460752303423488
  br i1 %48, label %56, label %60
49:
  store i64 1027, i64* %9
  br label %20
50:
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %52 = addrspacecast i8 addrspace(1)* %51 to i8*
  %53 = ptrtoint i8* %52 to i64
  %54 = and i64 %53, 2233785415175766016
  %55 = icmp eq i64 %54, 504403158265495552
  br i1 %55, label %65, label %70
56:
  %57 = call double @_bal_tagged_to_float(i8 addrspace(1)* %44)
  %58 = call {i64, i1} @_bal_float_to_int(double %57)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %64, label %61
60:
  store i8 addrspace(1)* %44, i8 addrspace(1)** %6
  br label %50
61:
  %62 = extractvalue {i64, i1} %58, 0
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62)
  store i8 addrspace(1)* %63, i8 addrspace(1)** %6
  br label %50
64:
  store i64 1795, i64* %9
  br label %20
65:
  %66 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %51)
  store i64 %66, i64* %7
  %67 = load i64, i64* %7
  store i64 %67, i64* %i
  %68 = load i64, i64* %i
  %69 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %68)
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
70:
  store i64 1795, i64* %9
  br label %20
}
define internal i8 addrspace(1)* @_B_f(i1 %0) {
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
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  ret i8 addrspace(1)* %8
9:
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.5)
  ret i8 addrspace(1)* %10
11:
  call void @_bal_panic(i64 2820)
  unreachable
}
