@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %9 = alloca i8 addrspace(1)*
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
  br i1 %19, label %30, label %34
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 504403158265495552
  br i1 %29, label %40, label %51
30:
  %31 = call double @_bal_tagged_to_float(i8 addrspace(1)* %15)
  %32 = call {i64, i1} @_bal_float_to_int(double %31)
  %33 = extractvalue {i64, i1} %32, 1
  br i1 %33, label %38, label %35
34:
  store i8 addrspace(1)* %15, i8 addrspace(1)** %2
  br label %24
35:
  %36 = extractvalue {i64, i1} %32, 0
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %36)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %2
  br label %24
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 1027)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %9
  br label %20
40:
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %25)
  store i64 %41, i64* %3
  %42 = load i64, i64* %3
  store i64 %42, i64* %i
  %43 = load i64, i64* %i
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %43)
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %45 = call i8 addrspace(1)* @_B_f(i1 0)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %5
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %47 = addrspacecast i8 addrspace(1)* %46 to i8*
  %48 = ptrtoint i8* %47 to i64
  %49 = and i64 %48, 2233785415175766016
  %50 = icmp eq i64 %49, 576460752303423488
  br i1 %50, label %59, label %63
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 1027)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %9
  br label %20
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %55 = addrspacecast i8 addrspace(1)* %54 to i8*
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, 2233785415175766016
  %58 = icmp eq i64 %57, 504403158265495552
  br i1 %58, label %69, label %74
59:
  %60 = call double @_bal_tagged_to_float(i8 addrspace(1)* %46)
  %61 = call {i64, i1} @_bal_float_to_int(double %60)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %67, label %64
63:
  store i8 addrspace(1)* %46, i8 addrspace(1)** %6
  br label %53
64:
  %65 = extractvalue {i64, i1} %61, 0
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %6
  br label %53
67:
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795)
  store i8 addrspace(1)* %68, i8 addrspace(1)** %9
  br label %20
69:
  %70 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %54)
  store i64 %70, i64* %7
  %71 = load i64, i64* %7
  store i64 %71, i64* %i
  %72 = load i64, i64* %i
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %72)
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
74:
  %75 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795)
  store i8 addrspace(1)* %75, i8 addrspace(1)** %9
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
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820)
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
