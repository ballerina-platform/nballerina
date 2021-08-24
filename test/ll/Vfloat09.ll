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
  %19 = alloca double
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
  %f1 = alloca double
  %31 = alloca double
  %32 = alloca i8 addrspace(1)*
  %f2 = alloca double
  %33 = alloca double
  %34 = alloca i8 addrspace(1)*
  %35 = alloca double
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8
  %38 = load i8*, i8** @_bal_stack_guard
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %94, label %40
40:
  %41 = call double @_B_floatSub(double 1.0, double 2.0)
  store double %41, double* %1
  %42 = load double, double* %1
  %43 = call i8 addrspace(1)* @_bal_float_to_tagged(double %42)
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %44 = call double @_B_floatSub(double 1.0, double 1.0)
  store double %44, double* %3
  %45 = load double, double* %3
  %46 = call i8 addrspace(1)* @_bal_float_to_tagged(double %45)
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %47 = call double @_B_floatSub(double 0.0, double -0.0)
  store double %47, double* %5
  %48 = load double, double* %5
  %49 = call i8 addrspace(1)* @_bal_float_to_tagged(double %48)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %50 = call double @_B_floatSub(double -0.0, double 0.0)
  store double %50, double* %7
  %51 = load double, double* %7
  %52 = call i8 addrspace(1)* @_bal_float_to_tagged(double %51)
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %53 = call double @_B_floatSub(double 0.0, double 0.0)
  store double %53, double* %9
  %54 = load double, double* %9
  %55 = call i8 addrspace(1)* @_bal_float_to_tagged(double %54)
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %56 = call double @_B_floatSub(double 0x7FF8000000000000, double 1.0)
  store double %56, double* %11
  %57 = load double, double* %11
  %58 = call i8 addrspace(1)* @_bal_float_to_tagged(double %57)
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %59 = call double @_B_floatSub(double 0x7FF8000000000000, double 0x7FF8000000000000)
  store double %59, double* %13
  %60 = load double, double* %13
  %61 = call i8 addrspace(1)* @_bal_float_to_tagged(double %60)
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %62 = call double @_B_floatSub(double 0x7FF0000000000000, double 20.0)
  store double %62, double* %15
  %63 = load double, double* %15
  %64 = call i8 addrspace(1)* @_bal_float_to_tagged(double %63)
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %65 = call double @_B_floatSub(double 0xFFF0000000000000, double 0x7FF0000000000000)
  store double %65, double* %17
  %66 = load double, double* %17
  %67 = call i8 addrspace(1)* @_bal_float_to_tagged(double %66)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %68 = call double @_B_floatSub(double 0xFFF0000000000000, double 100.0)
  store double %68, double* %19
  %69 = load double, double* %19
  %70 = call i8 addrspace(1)* @_bal_float_to_tagged(double %69)
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %71 = call i8 addrspace(1)* @_bal_float_to_tagged(double -1.0)
  call void @_Bio__println(i8 addrspace(1)* %71)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  %72 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  %73 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  %74 = call i8 addrspace(1)* @_bal_float_to_tagged(double -0.0)
  call void @_Bio__println(i8 addrspace(1)* %74)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  %75 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0)
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  %76 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %76)
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  %77 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF8000000000000)
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %27
  %78 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0x7FF0000000000000)
  call void @_Bio__println(i8 addrspace(1)* %78)
  store i8 addrspace(1)* null, i8 addrspace(1)** %28
  %79 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0xFFF0000000000000)
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %29
  %80 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0xFFF0000000000000)
  call void @_Bio__println(i8 addrspace(1)* %80)
  store i8 addrspace(1)* null, i8 addrspace(1)** %30
  store double 4.0, double* %f1
  %81 = load double, double* %f1
  %82 = fsub double 46.0, %81
  store double %82, double* %31
  %83 = load double, double* %31
  %84 = call i8 addrspace(1)* @_bal_float_to_tagged(double %83)
  call void @_Bio__println(i8 addrspace(1)* %84)
  store i8 addrspace(1)* null, i8 addrspace(1)** %32
  store double 46.42, double* %f2
  %85 = load double, double* %f1
  %86 = load double, double* %f2
  %87 = fsub double %85, %86
  store double %87, double* %33
  %88 = load double, double* %33
  %89 = call i8 addrspace(1)* @_bal_float_to_tagged(double %88)
  call void @_Bio__println(i8 addrspace(1)* %89)
  store i8 addrspace(1)* null, i8 addrspace(1)** %34
  store double 0xFFF0000000000000, double* %f2
  %90 = load double, double* %f2
  %91 = fsub double %90, 2.0
  store double %91, double* %35
  %92 = load double, double* %35
  %93 = call i8 addrspace(1)* @_bal_float_to_tagged(double %92)
  call void @_Bio__println(i8 addrspace(1)* %93)
  store i8 addrspace(1)* null, i8 addrspace(1)** %36
  ret void
94:
  call void @_bal_panic(i64 1028)
  unreachable
}
define internal double @_B_floatSub(double %0, double %1) {
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
  %10 = fsub double %8, %9
  store double %10, double* %3
  %11 = load double, double* %3
  ret double %11
12:
  call void @_bal_panic(i64 8964)
  unreachable
}
