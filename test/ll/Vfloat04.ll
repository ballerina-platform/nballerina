@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
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
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8
  %32 = load i8*, i8** @_bal_stack_guard
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %96, label %34
34:
  store double 0x7FF8000000000000, double* %nan0
  store double 0x7FF8000000000000, double* %nan1
  store double 0x7FF0000000000000, double* %pInf
  store double 0xFFF0000000000000, double* %nInf
  %35 = call i8 addrspace(1)* @_B_eq(double 42.0, double 42.0)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %1
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %37 = call i8 addrspace(1)* @_B_eq(double 1.0, double 2.0)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %39 = call i8 addrspace(1)* @_B_eq(double 0.0, double 0.0)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %5
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %41 = call i8 addrspace(1)* @_B_eq(double 0.0, double -0.0)
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
  %48 = call i8 addrspace(1)* @_B_eq(double %47, double 1.0)
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
  %70 = zext i1 1 to i64
  %71 = or i64 %70, 72057594037927936
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %73 = zext i1 1 to i64
  %74 = or i64 %73, 72057594037927936
  %75 = getelementptr i8, i8 addrspace(1)* null, i64 %74
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %76 = zext i1 1 to i64
  %77 = or i64 %76, 72057594037927936
  %78 = getelementptr i8, i8 addrspace(1)* null, i64 %77
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %79 = zext i1 0 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80
  call void @_Bio__println(i8 addrspace(1)* %81)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %82 = load double, double* %nan0
  %83 = load double, double* %nan1
  %84 = call i1 @_bal_float_eq(double %82, double %83)
  store i1 %84, i1* %27
  %85 = load i1, i1* %27
  %86 = zext i1 %85 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87
  call void @_Bio__println(i8 addrspace(1)* %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %89 = load double, double* %pInf
  %90 = load double, double* %nInf
  %91 = call i1 @_bal_float_eq(double %89, double %90)
  store i1 %91, i1* %29
  %92 = load i1, i1* %29
  %93 = zext i1 %92 to i64
  %94 = or i64 %93, 72057594037927936
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94
  call void @_Bio__println(i8 addrspace(1)* %95)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  ret void
96:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i8 addrspace(1)* @_B_eq(double %0, double %1) {
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
  %12 = call i1 @_bal_float_eq(double %10, double %11)
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  store i1 %13, i1* %eq
  %14 = load double, double* %f1
  %15 = load double, double* %f2
  %16 = call i1 @_bal_float_eq(double %14, double %15)
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
  call void @_bal_panic(i64 7428)
  unreachable
}
