@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"not-float\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare zeroext i1 @_bal_float_eq(double, double) readonly
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
  br i1 %33, label %83, label %34
34:
  store double 0x7ff8000000000000, double* %nan0
  store double 0x7ff8000000000000, double* %nan1
  store double 0x7ff0000000000000, double* %pInf
  store double 0xfff0000000000000, double* %nInf
  %35 = call i8 addrspace(1)* @_B_eq(double 0x4045000000000000, double 0x4045000000000000)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %1
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %37 = call i8 addrspace(1)* @_B_eq(double 0x3ff0000000000000, double 0x4000000000000000)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %39 = call i8 addrspace(1)* @_B_eq(double 0x0, double 0x0)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %5
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %41 = call i8 addrspace(1)* @_B_eq(double 0x0, double 0x8000000000000000)
  store i8 addrspace(1)* %41, i8 addrspace(1)** %7
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %43 = load double, double* %nan0
  %44 = load double, double* %nan1
  %45 = call i8 addrspace(1)* @_B_eq(double %43, double %44)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %9
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %47 = load double, double* %nan0
  %48 = call i8 addrspace(1)* @_B_eq(double %47, double 0x3ff0000000000000)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %11
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %50 = load double, double* %nan0
  %51 = load double, double* %nInf
  %52 = call i8 addrspace(1)* @_B_eq(double %50, double %51)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %13
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %54 = load double, double* %pInf
  %55 = load double, double* %nInf
  %56 = call i8 addrspace(1)* @_B_eq(double %54, double %55)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %15
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %58 = load double, double* %nInf
  %59 = load double, double* %pInf
  %60 = call i8 addrspace(1)* @_B_eq(double %58, double %59)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %17
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %62 = load double, double* %pInf
  %63 = load double, double* %pInf
  %64 = call i8 addrspace(1)* @_B_eq(double %62, double %63)
  store i8 addrspace(1)* %64, i8 addrspace(1)** %19
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %66 = load double, double* %nInf
  %67 = load double, double* %nInf
  %68 = call i8 addrspace(1)* @_B_eq(double %66, double %67)
  store i8 addrspace(1)* %68, i8 addrspace(1)** %21
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %70 = call i8 addrspace(1)* @_B_eqAF(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), double 0x3ff0000000000000)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %23
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  call void @_Bio__println(i8 addrspace(1)* %71)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %72 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %73 = call i8 addrspace(1)* @_B_eqAF(i8 addrspace(1)* %72, double 0x3ff0000000000000)
  store i8 addrspace(1)* %73, i8 addrspace(1)** %25
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  call void @_Bio__println(i8 addrspace(1)* %74)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %75 = zext i1 0 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76
  %78 = call i8 addrspace(1)* @_B_eqFA(double 0x0, i8 addrspace(1)* %77)
  store i8 addrspace(1)* %78, i8 addrspace(1)** %27
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %27
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %80 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x4020000000000000)
  %81 = call i8 addrspace(1)* @_B_eqFA(double 0x4020000000000000, i8 addrspace(1)* %80)
  store i8 addrspace(1)* %81, i8 addrspace(1)** %29
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %29
  call void @_Bio__println(i8 addrspace(1)* %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  ret void
83:
  call void @_bal_panic(i64 1028)
  unreachable
}
define internal i8 addrspace(1)* @_B_eq(double %0, double %1) {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca i8 addrspace(1)*
  %b1 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %b2 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %28, label %9
9:
  store double %0, double* %f1
  store double %1, double* %f2
  %10 = load double, double* %f1
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double %10)
  %12 = load double, double* %f2
  %13 = call i8 addrspace(1)* @_B_eqAF(i8 addrspace(1)* %11, double %12)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %14, i8 addrspace(1)** %b1
  %15 = load double, double* %f1
  %16 = load double, double* %f2
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double %16)
  %18 = call i8 addrspace(1)* @_B_eqFA(double %15, i8 addrspace(1)* %17)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %4
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %19, i8 addrspace(1)** %b2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %22 = call i1 @_bal_string_eq(i8 addrspace(1)* %20, i8 addrspace(1)* %21)
  %23 = xor i1 %22, 1
  store i1 %23, i1* %5
  %24 = load i1, i1* %5
  br i1 %24, label %25, label %26
25:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089)
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  ret i8 addrspace(1)* %27
28:
  call void @_bal_panic(i64 7172)
  unreachable
}
define internal i8 addrspace(1)* @_B_eqAF(i8 addrspace(1)* %0, double %1) {
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
  br i1 %15, label %23, label %26
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
  call void @_bal_panic(i64 9476)
  unreachable
23:
  %24 = call double @_bal_tagged_to_float(i8 addrspace(1)* %10)
  %25 = call i1 @_bal_float_eq(double %24, double %11)
  store i1 %25, i1* %3
  br label %27
26:
  store i1 0, i1* %3
  br label %27
27:
  %28 = load i1, i1* %3
  store i1 %28, i1* %eq
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %f1
  %30 = load double, double* %f2
  %31 = addrspacecast i8 addrspace(1)* %29 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = and i64 %32, 2233785415175766016
  %34 = icmp eq i64 %33, 576460752303423488
  br i1 %34, label %35, label %39
35:
  %36 = call double @_bal_tagged_to_float(i8 addrspace(1)* %29)
  %37 = call i1 @_bal_float_eq(double %36, double %30)
  %38 = xor i1 %37, 1
  store i1 %38, i1* %4
  br label %40
39:
  store i1 1, i1* %4
  br label %40
40:
  %41 = load i1, i1* %4
  store i1 %41, i1* %neEq
  %42 = load i1, i1* %eq
  %43 = load i1, i1* %neEq
  %44 = icmp eq i1 %42, %43
  store i1 %44, i1* %5
  %45 = load i1, i1* %5
  br i1 %45, label %16, label %17
}
define internal i8 addrspace(1)* @_B_eqFA(double %0, i8 addrspace(1)* %1) {
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
  br i1 %15, label %23, label %26
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
  call void @_bal_panic(i64 12548)
  unreachable
23:
  %24 = call double @_bal_tagged_to_float(i8 addrspace(1)* %11)
  %25 = call i1 @_bal_float_eq(double %24, double %10)
  store i1 %25, i1* %3
  br label %27
26:
  store i1 0, i1* %3
  br label %27
27:
  %28 = load i1, i1* %3
  store i1 %28, i1* %eq
  %29 = load double, double* %f1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %f2
  %31 = addrspacecast i8 addrspace(1)* %30 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = and i64 %32, 2233785415175766016
  %34 = icmp eq i64 %33, 576460752303423488
  br i1 %34, label %35, label %39
35:
  %36 = call double @_bal_tagged_to_float(i8 addrspace(1)* %30)
  %37 = call i1 @_bal_float_eq(double %36, double %29)
  %38 = xor i1 %37, 1
  store i1 %38, i1* %4
  br label %40
39:
  store i1 1, i1* %4
  br label %40
40:
  %41 = load i1, i1* %4
  store i1 %41, i1* %neEq
  %42 = load i1, i1* %eq
  %43 = load i1, i1* %neEq
  %44 = icmp eq i1 %42, %43
  store i1 %44, i1* %5
  %45 = load i1, i1* %5
  br i1 %45, label %16, label %17
}
