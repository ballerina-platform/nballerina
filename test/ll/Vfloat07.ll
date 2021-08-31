@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"not-float\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare zeroext i1 @_bal_float_exact_eq(double, double) readonly
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B_main() {
  %nan0 = alloca double
  %nan1 = alloca double
  %pInf = alloca double
  %nInf = alloca double
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8
  %32 = load i8*, i8** @_bal_stack_guard
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %82, label %34
34:
  store double 0x7FF8000000000000, double* %nan0
  store double 0x7FF8000000000000, double* %nan1
  store double 0x7FF0000000000000, double* %pInf
  store double 0xFFF0000000000000, double* %nInf
  %35 = call i8 addrspace(1)* @_B_exactEq(double 42.0, double 42.0)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %1
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %37 = call i8 addrspace(1)* @_B_exactEq(double 1.0, double 2.0)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %39 = call i8 addrspace(1)* @_B_exactEq(double 0.0, double 0.0)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %5
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %41 = call i8 addrspace(1)* @_B_exactEq(double 0.0, double -0.0)
  store i8 addrspace(1)* %41, i8 addrspace(1)** %7
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %43 = load double, double* %nan0
  %44 = load double, double* %nan1
  %45 = call i8 addrspace(1)* @_B_exactEq(double %43, double %44)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %9
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %47 = load double, double* %nan0
  %48 = call i8 addrspace(1)* @_B_exactEq(double %47, double 1.0)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %11
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %50 = load double, double* %nan0
  %51 = load double, double* %nInf
  %52 = call i8 addrspace(1)* @_B_exactEq(double %50, double %51)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %13
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %54 = load double, double* %pInf
  %55 = load double, double* %nInf
  %56 = call i8 addrspace(1)* @_B_exactEq(double %54, double %55)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %15
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %58 = load double, double* %nInf
  %59 = load double, double* %pInf
  %60 = call i8 addrspace(1)* @_B_exactEq(double %58, double %59)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %17
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %62 = load double, double* %pInf
  %63 = load double, double* %pInf
  %64 = call i8 addrspace(1)* @_B_exactEq(double %62, double %63)
  store i8 addrspace(1)* %64, i8 addrspace(1)** %19
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %66 = load double, double* %nInf
  %67 = load double, double* %nInf
  %68 = call i8 addrspace(1)* @_B_exactEq(double %66, double %67)
  store i8 addrspace(1)* %68, i8 addrspace(1)** %21
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %70 = load double, double* %nInf
  %71 = call i8 addrspace(1)* @_B_exactEqAF(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), double %70)
  store i8 addrspace(1)* %71, i8 addrspace(1)** %23
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %74 = call i8 addrspace(1)* @_B_exactEqAF(i8 addrspace(1)* %73, double 1.0)
  store i8 addrspace(1)* %74, i8 addrspace(1)** %25
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %77 = call i8 addrspace(1)* @_B_exactEqFA(double 1.0, i8 addrspace(1)* %76)
  store i8 addrspace(1)* %77, i8 addrspace(1)** %27
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %79 = call i8 addrspace(1)* @_bal_float_to_tagged(double 8.0)
  %80 = call i8 addrspace(1)* @_B_exactEqFA(double 8.0, i8 addrspace(1)* %79)
  store i8 addrspace(1)* %80, i8 addrspace(1)** %29
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %29
  call void @_Bio__println(i8 addrspace(1)* %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  ret void
82:
  %83 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %83)
  unreachable
}
define internal i8 addrspace(1)* @_B_exactEq(double %0, double %1) {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca i8 addrspace(1)*
  %b1 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %b2 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %b3 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %43, label %11
11:
  store double %0, double* %f1
  store double %1, double* %f2
  %12 = load double, double* %f1
  %13 = call i8 addrspace(1)* @_bal_float_to_tagged(double %12)
  %14 = load double, double* %f2
  %15 = call i8 addrspace(1)* @_B_exactEqAF(i8 addrspace(1)* %13, double %14)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %3
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %16, i8 addrspace(1)** %b1
  %17 = load double, double* %f1
  %18 = load double, double* %f2
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double %18)
  %20 = call i8 addrspace(1)* @_B_exactEqFA(double %17, i8 addrspace(1)* %19)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %4
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %21, i8 addrspace(1)** %b2
  %22 = load double, double* %f1
  %23 = call i8 addrspace(1)* @_bal_float_to_tagged(double %22)
  %24 = load double, double* %f2
  %25 = call i8 addrspace(1)* @_bal_float_to_tagged(double %24)
  %26 = call i8 addrspace(1)* @_B_exactEqAA(i8 addrspace(1)* %23, i8 addrspace(1)* %25)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %5
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %27, i8 addrspace(1)** %b3
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %30 = call i1 @_bal_string_eq(i8 addrspace(1)* %28, i8 addrspace(1)* %29)
  %31 = xor i1 %30, 1
  store i1 %31, i1* %6
  %32 = load i1, i1* %6
  br i1 %32, label %33, label %34
33:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848353)
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %b3
  %37 = call i1 @_bal_string_eq(i8 addrspace(1)* %35, i8 addrspace(1)* %36)
  %38 = xor i1 %37, 1
  store i1 %38, i1* %7
  %39 = load i1, i1* %7
  br i1 %39, label %40, label %41
40:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848609)
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  ret i8 addrspace(1)* %42
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 7172)
  call void @_bal_panic(i8 addrspace(1)* %44)
  unreachable
}
define internal i8 addrspace(1)* @_B_exactEqAF(i8 addrspace(1)* %0, double %1) {
  %f1 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %3 = alloca i1
  %eq = alloca i1
  %4 = alloca i1
  %neEq = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %22, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %f1
  store double %1, double* %f2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %11 = load double, double* %f2
  %12 = addrspacecast i8 addrspace(1)* %10 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 576460752303423488
  br i1 %15, label %24, label %27
16:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090)
17:
  %18 = load i1, i1* %eq
  br i1 %18, label %19, label %20
19:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780)
20:
  br label %21
21:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030)
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 10500)
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call double @_bal_tagged_to_float(i8 addrspace(1)* %10)
  %26 = call i1 @_bal_float_exact_eq(double %25, double %11)
  store i1 %26, i1* %3
  br label %28
27:
  store i1 0, i1* %3
  br label %28
28:
  %29 = load i1, i1* %3
  store i1 %29, i1* %eq
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %31 = load double, double* %f2
  %32 = addrspacecast i8 addrspace(1)* %30 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 %33, 2233785415175766016
  %35 = icmp eq i64 %34, 576460752303423488
  br i1 %35, label %36, label %40
36:
  %37 = call double @_bal_tagged_to_float(i8 addrspace(1)* %30)
  %38 = call i1 @_bal_float_exact_eq(double %37, double %31)
  %39 = xor i1 %38, 1
  store i1 %39, i1* %4
  br label %41
40:
  store i1 1, i1* %4
  br label %41
41:
  %42 = load i1, i1* %4
  store i1 %42, i1* %neEq
  %43 = load i1, i1* %eq
  %44 = load i1, i1* %neEq
  %45 = icmp eq i1 %43, %44
  store i1 %45, i1* %5
  %46 = load i1, i1* %5
  br i1 %46, label %16, label %17
}
define internal i8 addrspace(1)* @_B_exactEqFA(double %0, i8 addrspace(1)* %1) {
  %f1 = alloca double
  %f2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %eq = alloca i1
  %4 = alloca i1
  %neEq = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %22, label %9
9:
  store double %0, double* %f1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %f2
  %10 = load double, double* %f1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 576460752303423488
  br i1 %15, label %24, label %27
16:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091)
17:
  %18 = load i1, i1* %eq
  br i1 %18, label %19, label %20
19:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780)
20:
  br label %21
21:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030)
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 13572)
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call double @_bal_tagged_to_float(i8 addrspace(1)* %11)
  %26 = call i1 @_bal_float_exact_eq(double %25, double %10)
  store i1 %26, i1* %3
  br label %28
27:
  store i1 0, i1* %3
  br label %28
28:
  %29 = load i1, i1* %3
  store i1 %29, i1* %eq
  %30 = load double, double* %f1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %32 = addrspacecast i8 addrspace(1)* %31 to i8*
  %33 = ptrtoint i8* %32 to i64
  %34 = and i64 %33, 2233785415175766016
  %35 = icmp eq i64 %34, 576460752303423488
  br i1 %35, label %36, label %40
36:
  %37 = call double @_bal_tagged_to_float(i8 addrspace(1)* %31)
  %38 = call i1 @_bal_float_exact_eq(double %37, double %30)
  %39 = xor i1 %38, 1
  store i1 %39, i1* %4
  br label %41
40:
  store i1 1, i1* %4
  br label %41
41:
  %42 = load i1, i1* %4
  store i1 %42, i1* %neEq
  %43 = load i1, i1* %eq
  %44 = load i1, i1* %neEq
  %45 = icmp eq i1 %43, %44
  store i1 %45, i1* %5
  %46 = load i1, i1* %5
  br i1 %46, label %16, label %17
}
define internal i8 addrspace(1)* @_B_exactEqAA(i8 addrspace(1)* %0, i8 addrspace(1)* %1) {
  %f1 = alloca i8 addrspace(1)*
  %f2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %eq = alloca i1
  %4 = alloca i1
  %neEq = alloca i1
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %29, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %f1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %f2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %12 = call i1 @_bal_exact_eq(i8 addrspace(1)* %10, i8 addrspace(1)* %11)
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  store i1 %13, i1* %eq
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %16 = call i1 @_bal_exact_eq(i8 addrspace(1)* %14, i8 addrspace(1)* %15)
  %17 = xor i1 %16, 1
  store i1 %17, i1* %4
  %18 = load i1, i1* %4
  store i1 %18, i1* %neEq
  %19 = load i1, i1* %eq
  %20 = load i1, i1* %neEq
  %21 = icmp eq i1 %19, %20
  store i1 %21, i1* %5
  %22 = load i1, i1* %5
  br i1 %22, label %23, label %24
23:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901092)
24:
  %25 = load i1, i1* %eq
  br i1 %25, label %26, label %27
26:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780)
27:
  br label %28
28:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030)
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 16644)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
