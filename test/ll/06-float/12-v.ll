@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare zeroext i1 @_bal_float_exact_eq(double, double) readonly
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
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8
  %38 = load i8*, i8** @_bal_stack_guard
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %115, label %40
40:
  store double 0x7FF8000000000000, double* %nan0
  store double 0x7FF8000000000000, double* %nan1
  store double 0x7FF0000000000000, double* %pInf
  store double 0xFFF0000000000000, double* %nInf
  %41 = call i8 addrspace(1)* @_B_exactEq(double 42.0, double 42.0)
  store i8 addrspace(1)* %41, i8 addrspace(1)** %1
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %43 = call i8 addrspace(1)* @_B_exactEq(double 1.0, double 2.0)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %3
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %45 = call i8 addrspace(1)* @_B_exactEq(double 0.0, double 0.0)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %5
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %47 = call i8 addrspace(1)* @_B_exactEq(double 0.0, double -0.0)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %7
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %49 = load double, double* %nan0
  %50 = load double, double* %nan1
  %51 = call i8 addrspace(1)* @_B_exactEq(double %49, double %50)
  store i8 addrspace(1)* %51, i8 addrspace(1)** %9
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %53 = load double, double* %nan0
  %54 = call i8 addrspace(1)* @_B_exactEq(double %53, double 1.0)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %11
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %56 = load double, double* %nan0
  %57 = load double, double* %nInf
  %58 = call i8 addrspace(1)* @_B_exactEq(double %56, double %57)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %13
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_Bio__println(i8 addrspace(1)* %59)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %60 = load double, double* %pInf
  %61 = load double, double* %nInf
  %62 = call i8 addrspace(1)* @_B_exactEq(double %60, double %61)
  store i8 addrspace(1)* %62, i8 addrspace(1)** %15
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Bio__println(i8 addrspace(1)* %63)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %64 = load double, double* %nInf
  %65 = load double, double* %pInf
  %66 = call i8 addrspace(1)* @_B_exactEq(double %64, double %65)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %17
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %68 = load double, double* %pInf
  %69 = load double, double* %pInf
  %70 = call i8 addrspace(1)* @_B_exactEq(double %68, double %69)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %19
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_Bio__println(i8 addrspace(1)* %71)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %72 = load double, double* %nInf
  %73 = load double, double* %nInf
  %74 = call i8 addrspace(1)* @_B_exactEq(double %72, double %73)
  store i8 addrspace(1)* %74, i8 addrspace(1)** %21
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  store i1 1, i1* %23
  %76 = load i1, i1* %23
  %77 = zext i1 %76 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  store i1 1, i1* %25
  %80 = load i1, i1* %25
  %81 = zext i1 %80 to i64
  %82 = or i64 %81, 72057594037927936
  %83 = getelementptr i8, i8 addrspace(1)* null, i64 %82
  call void @_Bio__println(i8 addrspace(1)* %83)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  store i1 0, i1* %27
  %84 = load i1, i1* %27
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86
  call void @_Bio__println(i8 addrspace(1)* %87)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  store i1 1, i1* %29
  %88 = load i1, i1* %29
  %89 = zext i1 %88 to i64
  %90 = or i64 %89, 72057594037927936
  %91 = getelementptr i8, i8 addrspace(1)* null, i64 %90
  call void @_Bio__println(i8 addrspace(1)* %91)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  %92 = load double, double* %nan0
  %93 = load double, double* %nan1
  %94 = call i1 @_bal_float_exact_eq(double %92, double %93)
  store i1 %94, i1* %31
  %95 = load i1, i1* %31
  %96 = zext i1 %95 to i64
  %97 = or i64 %96, 72057594037927936
  %98 = getelementptr i8, i8 addrspace(1)* null, i64 %97
  call void @_Bio__println(i8 addrspace(1)* %98)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  %99 = load double, double* %nan0
  %100 = load double, double* %nan1
  %101 = call i1 @_bal_float_exact_eq(double %99, double %100)
  %102 = xor i1 %101, 1
  store i1 %102, i1* %33
  %103 = load i1, i1* %33
  %104 = zext i1 %103 to i64
  %105 = or i64 %104, 72057594037927936
  %106 = getelementptr i8, i8 addrspace(1)* null, i64 %105
  call void @_Bio__println(i8 addrspace(1)* %106)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  %107 = load double, double* %pInf
  %108 = load double, double* %nInf
  %109 = call i1 @_bal_float_exact_eq(double %107, double %108)
  %110 = xor i1 %109, 1
  store i1 %110, i1* %35
  %111 = load i1, i1* %35
  %112 = zext i1 %111 to i64
  %113 = or i64 %112, 72057594037927936
  %114 = getelementptr i8, i8 addrspace(1)* null, i64 %113
  call void @_Bio__println(i8 addrspace(1)* %114)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  ret void
115:
  %116 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284)
  call void @_bal_panic(i8 addrspace(1)* %116)
  unreachable
}
define internal i8 addrspace(1)* @_B_exactEq(double %0, double %1) {
  %f1 = alloca double
  %f2 = alloca double
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
  store double %0, double* %f1
  store double %1, double* %f2
  %10 = load double, double* %f1
  %11 = load double, double* %f2
  %12 = call i1 @_bal_float_exact_eq(double %10, double %11)
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  store i1 %13, i1* %eq
  %14 = load double, double* %f1
  %15 = load double, double* %f2
  %16 = call i1 @_bal_float_exact_eq(double %14, double %15)
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
  ret i8 addrspace(1)* null
24:
  %25 = load i1, i1* %eq
  %26 = zext i1 %25 to i64
  %27 = or i64 %26, 72057594037927936
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27
  ret i8 addrspace(1)* %28
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 8196)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
