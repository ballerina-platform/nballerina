@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %3 = alloca i1
  %x.1 = alloca double
  %4 = alloca double
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %27, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %m
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
  %15 = call i64 @_bal_mapping_set(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %29, label %36
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = call double @_bal_tagged_to_float(i8 addrspace(1)* %18)
  store double %19, double* %x.1
  %20 = load double, double* %x.1
  %21 = fadd double %20, 0.5
  store double %21, double* %4
  %22 = load double, double* %4
  %23 = call i8 addrspace(1)* @_bal_float_to_tagged(double %22)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %24
24:
  ret void
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %31 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %30, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %31, i8 addrspace(1)** %2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %32, i8 addrspace(1)** %x
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %34 = icmp ne i8 addrspace(1)* %33, null
  store i1 %34, i1* %3
  %35 = load i1, i1* %3
  br i1 %35, label %17, label %24
36:
  %37 = or i64 %15, 1280
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 %37)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %6
  br label %25
}
define internal void @_B_ignore(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  ret void
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076)
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
