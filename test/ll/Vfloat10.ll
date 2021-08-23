@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca double
  %2 = alloca i8 addrspace(1)*
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca double
  %6 = alloca i8 addrspace(1)*
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %9 = alloca double
  %10 = alloca i8 addrspace(1)*
  %11 = alloca double
  %12 = alloca i8 addrspace(1)*
  %13 = alloca double
  %14 = alloca i8 addrspace(1)*
  %15 = alloca double
  %16 = alloca i8 addrspace(1)*
  %17 = alloca double
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
  %f1 = alloca double
  %28 = alloca double
  %29 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %30 = alloca double
  %31 = alloca i8 addrspace(1)*
  %32 = alloca double
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8
  %35 = load i8*, i8** @_bal_stack_guard
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %87, label %37
37:
  %38 = call double @_B_floatMul(double 3.0, double 2.0)
  store double %38, double* %1
  %39 = load double, double* %1
  %40 = call i8 addrspace(1)* @_bal_float_to_tagged(double %39)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %41 = call double @_B_floatMul(double 1.0, double 0.0)
  store double %41, double* %3
  %42 = load double, double* %3
  %43 = call i8 addrspace(1)* @_bal_float_to_tagged(double %42)
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %44 = call double @_B_floatMul(double 0.0, double -1.0)
  store double %44, double* %5
  %45 = load double, double* %5
  %46 = call i8 addrspace(1)* @_bal_float_to_tagged(double %45)
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %47 = call double @_B_floatMul(double 0.0, double -0.0)
  store double %47, double* %7
  %48 = load double, double* %7
  %49 = call i8 addrspace(1)* @_bal_float_to_tagged(double %48)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %50 = call double @_B_floatMul(double 0x7FF8000000000000, double 1.0)
  store double %50, double* %9
  %51 = load double, double* %9
  %52 = call i8 addrspace(1)* @_bal_float_to_tagged(double %51)
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %53 = call double @_B_floatMul(double 0x7FF8000000000000, double 0x7FF8000000000000)
  store double %53, double* %11
  %54 = load double, double* %11
  %55 = call i8 addrspace(1)* @_bal_float_to_tagged(double %54)
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %56 = call double @_B_floatMul(double 0x7FF0000000000000, double 20.0)
  store double %56, double* %13
  %57 = load double, double* %13
  %58 = call i8 addrspace(1)* @_bal_float_to_tagged(double %57)
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %59 = call double @_B_floatMul(double 0xFFF0000000000000, double 0x7FF0000000000000)
  store double %59, double* %15
  %60 = load double, double* %15
  %61 = call i8 addrspace(1)* @_bal_float_to_tagged(double %60)
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %62 = call double @_B_floatMul(double 0xFFF0000000000000, double 0.0)
  store double %62, double* %17
  %63 = load double, double* %17
  %64 = call i8 addrspace(1)* @_bal_float_to_tagged(double %63)
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %65 = call i8 addrspace(1)* @_bal_float_to_tagged(double 6.0)
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  %66 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %67 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %68 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  call void @_Bio__println(i8 addrspace(1)* %68)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %69 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %70 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %71 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF0000000000000)
  call void @_Bio__println(i8 addrspace(1)* %71)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %72 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0xFFF0000000000000)
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %73 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  store double 2.0, double* %f1
  %74 = load double, double* %f1
  %75 = fmul double 21.0, %74
  store double %75, double* %28
  %76 = load double, double* %28
  %77 = call i8 addrspace(1)* @_bal_float_to_tagged(double %76)
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %29
  store double 21.21, double* %f2
  %78 = load double, double* %f1
  %79 = load double, double* %f2
  %80 = fmul double %78, %79
  store double %80, double* %30
  %81 = load double, double* %30
  %82 = call i8 addrspace(1)* @_bal_float_to_tagged(double %81)
  call void @_Bio__println(i8 addrspace(1)* %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %31
  store double 0xFFF0000000000000, double* %f2
  %83 = load double, double* %f2
  %84 = fmul double %83, 2.0
  store double %84, double* %32
  %85 = load double, double* %32
  %86 = call i8 addrspace(1)* @_bal_float_to_tagged(double %85)
  call void @_Bio__println(i8 addrspace(1)* %86)
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  ret void
87:
  call void @_bal_panic(i64 1028)
  unreachable
}
define internal double @_B_floatMul(double %0, double %1) {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca double
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store double %0, double* %f1
  store double %1, double* %f2
  %8 = load double, double* %f1
  %9 = load double, double* %f2
  %10 = fmul double %8, %9
  store double %10, double* %3
  %11 = load double, double* %3
  ret double %11
12:
  call void @_bal_panic(i64 8452)
  unreachable
}
