@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
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
  %19 = icmp eq i64 %18, 504403158265495552
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
  %28 = icmp eq i64 %27, 504403158265495552
  br i1 %28, label %46, label %57
29:
  %30 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %30)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %2
  br label %23
32:
  %33 = addrspacecast i8 addrspace(1)* %15 to i8*
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 2233785415175766016
  %36 = icmp eq i64 %35, 576460752303423488
  br i1 %36, label %37, label %41
37:
  %38 = call double @_bal_tagged_to_float(i8 addrspace(1)* %15)
  %39 = call {i64, i1} @_bal_float_to_int(double %38)
  %40 = extractvalue {i64, i1} %39, 1
  br i1 %40, label %45, label %42
41:
  store i8 addrspace(1)* %15, i8 addrspace(1)** %2
  br label %23
42:
  %43 = extractvalue {i64, i1} %39, 0
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %43)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %2
  br label %23
45:
  store i64 1027, i64* %9
  br label %20
46:
  %47 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %24)
  store i64 %47, i64* %3
  %48 = load i64, i64* %3
  store i64 %48, i64* %i
  %49 = load i64, i64* %i
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %49)
  call void @_Bio__println(i8 addrspace(1)* %50)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %51 = call i8 addrspace(1)* @_B_f(i1 0)
  store i8 addrspace(1)* %51, i8 addrspace(1)** %5
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %53 = addrspacecast i8 addrspace(1)* %52 to i8*
  %54 = ptrtoint i8* %53 to i64
  %55 = and i64 %54, 2233785415175766016
  %56 = icmp eq i64 %55, 504403158265495552
  br i1 %56, label %64, label %67
57:
  store i64 1027, i64* %9
  br label %20
58:
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %60 = addrspacecast i8 addrspace(1)* %59 to i8*
  %61 = ptrtoint i8* %60 to i64
  %62 = and i64 %61, 2233785415175766016
  %63 = icmp eq i64 %62, 504403158265495552
  br i1 %63, label %81, label %86
64:
  %65 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %52)
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %6
  br label %58
67:
  %68 = addrspacecast i8 addrspace(1)* %52 to i8*
  %69 = ptrtoint i8* %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = icmp eq i64 %70, 576460752303423488
  br i1 %71, label %72, label %76
72:
  %73 = call double @_bal_tagged_to_float(i8 addrspace(1)* %52)
  %74 = call {i64, i1} @_bal_float_to_int(double %73)
  %75 = extractvalue {i64, i1} %74, 1
  br i1 %75, label %80, label %77
76:
  store i8 addrspace(1)* %52, i8 addrspace(1)** %6
  br label %58
77:
  %78 = extractvalue {i64, i1} %74, 0
  %79 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %78)
  store i8 addrspace(1)* %79, i8 addrspace(1)** %6
  br label %58
80:
  store i64 1795, i64* %9
  br label %20
81:
  %82 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %59)
  store i64 %82, i64* %7
  %83 = load i64, i64* %7
  store i64 %83, i64* %i
  %84 = load i64, i64* %i
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %84)
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
86:
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
