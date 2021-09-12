@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"lt error 1\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"lt error 2\00\00"}, align 8
@.str4 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"gt error 1\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"gt error 2\00\00"}, align 8
@.str6 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"both nan\00\00\00\00"}, align 8
@.str8 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"eq error 1\00\00"}, align 8
@.str9 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"eq error 2\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare zeroext i1 @_bal_float_eq(double, double) readonly
define void @_B_main() {
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
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %49, label %26
26:
  %27 = call i8 addrspace(1)* @_B_floatCmp(double 1.0, double 1.0)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %29 = call i8 addrspace(1)* @_B_floatCmp(double 1.0, double 2.0)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %3
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %31 = call i8 addrspace(1)* @_B_floatCmp(double 2.0, double 1.0)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %5
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %33 = call i8 addrspace(1)* @_B_floatCmp(double -1.0, double 1.0)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %7
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %35 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double -1.0)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %9
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %37 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double 0x7FF0000000000000)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %11
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %39 = call i8 addrspace(1)* @_B_floatCmp(double -0.5, double 0xFFF0000000000000)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %13
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %41 = call i8 addrspace(1)* @_B_floatCmp(double -0.0, double 0.0)
  store i8 addrspace(1)* %41, i8 addrspace(1)** %15
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %43 = call i8 addrspace(1)* @_B_floatCmp(double 0.0, double 0x7FF8000000000000)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %17
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %45 = call i8 addrspace(1)* @_B_floatCmp(double 0x7FF8000000000000, double 0.0)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %19
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %47 = call i8 addrspace(1)* @_B_floatCmp(double 0x7FF8000000000000, double 0x7FF8000000000000)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %21
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  ret void
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %50)
  unreachable
}
define internal i8 addrspace(1)* @_B_floatCmp(double %0, double %1) {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i1
  %10 = alloca i1
  %11 = alloca i1
  %12 = alloca i1
  %f1.1 = alloca double
  %13 = alloca i1
  %14 = alloca i1
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %83, label %18
18:
  store double %0, double* %f1
  store double %1, double* %f2
  %19 = load double, double* %f1
  %20 = load double, double* %f2
  %21 = fcmp olt double %19, %20
  store i1 %21, i1* %3
  %22 = load i1, i1* %3
  br i1 %22, label %23, label %38
23:
  %24 = load double, double* %f1
  %25 = load double, double* %f2
  %26 = fcmp ogt double %24, %25
  store i1 %26, i1* %4
  %27 = load i1, i1* %4
  %28 = xor i1 1, %27
  store i1 %28, i1* %5
  %29 = load i1, i1* %5
  br i1 %29, label %30, label %37
30:
  %31 = load double, double* %f1
  %32 = load double, double* %f1
  %33 = fcmp ole double %31, %32
  store i1 %33, i1* %6
  %34 = load i1, i1* %6
  br i1 %34, label %35, label %36
35:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630865516)
36:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
37:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
38:
  %39 = load double, double* %f1
  %40 = load double, double* %f2
  %41 = fcmp ogt double %39, %40
  store i1 %41, i1* %7
  %42 = load i1, i1* %7
  br i1 %42, label %43, label %58
43:
  %44 = load double, double* %f1
  %45 = load double, double* %f2
  %46 = fcmp olt double %44, %45
  store i1 %46, i1* %8
  %47 = load i1, i1* %8
  %48 = xor i1 1, %47
  store i1 %48, i1* %9
  %49 = load i1, i1* %9
  br i1 %49, label %50, label %57
50:
  %51 = load double, double* %f1
  %52 = load double, double* %f1
  %53 = fcmp oge double %51, %52
  store i1 %53, i1* %10
  %54 = load i1, i1* %10
  br i1 %54, label %55, label %56
55:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630865511)
56:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str4 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
57:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str5 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
58:
  %59 = load double, double* %f1
  %60 = load double, double* %f2
  %61 = call i1 @_bal_float_eq(double %59, double %60)
  store i1 %61, i1* %11
  %62 = load i1, i1* %11
  br i1 %62, label %63, label %82
63:
  %64 = load double, double* %f1
  %65 = call i1 @_bal_float_eq(double %64, double 0x7FF8000000000000)
  store i1 %65, i1* %12
  %66 = load i1, i1* %12
  br i1 %66, label %67, label %69
67:
  %68 = load double, double* %f1
  store double %68, double* %f1.1
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str6 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
69:
  %70 = load double, double* %f1
  %71 = load double, double* %f1
  %72 = fcmp ole double %70, %71
  store i1 %72, i1* %13
  %73 = load i1, i1* %13
  br i1 %73, label %74, label %81
74:
  %75 = load double, double* %f1
  %76 = load double, double* %f1
  %77 = fcmp oge double %75, %76
  store i1 %77, i1* %14
  %78 = load i1, i1* %14
  br i1 %78, label %79, label %80
79:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630864741)
80:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str8 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
81:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str9 to i8*) to i8 addrspace(1)*), i64 720575940379279360)
82:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488322648960623)
83:
  %84 = call i8 addrspace(1)* @_bal_panic_construct(i64 5380)
  call void @_bal_panic(i8 addrspace(1)* %84)
  unreachable
}
