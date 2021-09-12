@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 13, i16 13, [20 x i8] c"positive zero\00\00\00\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 13, i16 13, [20 x i8] c"negative zero\00\00\00\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"non-zero\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_float_eq(double, double) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %8, label %7
7:
  call void @_B_foo(double 0.0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_foo(double -0.0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_foo(double 1.0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal void @_B_foo(double %0) {
  %f = alloca double
  %2 = alloca i1
  %f.1 = alloca double
  %3 = alloca i1
  %4 = alloca double
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca double
  %8 = alloca i8 addrspace(1)*
  %f.2 = alloca double
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %37, label %13
13:
  store double %0, double* %f
  %14 = load double, double* %f
  %15 = call i1 @_bal_float_eq(double %14, double 0.0)
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %17, label %34
17:
  %18 = load double, double* %f
  store double %18, double* %f.1
  %19 = load double, double* %f.1
  %20 = fdiv double 1.0, %19
  store double %20, double* %4
  %21 = load double, double* %4
  %22 = call i1 @_bal_float_eq(double %21, double 0x7FF0000000000000)
  store i1 %22, i1* %3
  %23 = load i1, i1* %3
  br i1 %23, label %24, label %25
24:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %33
25:
  %26 = load double, double* %f.1
  %27 = fdiv double 3.0, %26
  store double %27, double* %7
  %28 = load double, double* %7
  %29 = call i1 @_bal_float_eq(double %28, double 0xFFF0000000000000)
  store i1 %29, i1* %6
  %30 = load i1, i1* %6
  br i1 %30, label %31, label %32
31:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %32
32:
  br label %33
33:
  br label %36
34:
  %35 = load double, double* %f
  store double %35, double* %f.2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %36
36:
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308)
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
}
