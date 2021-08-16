@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
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
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %41, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.375)
  %18 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.375)
  %19 = call i8 addrspace(1)* @_B_aa(i1 1, i8 addrspace(1)* %17, i8 addrspace(1)* %18)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %21 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.375)
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.375)
  %23 = call i8 addrspace(1)* @_B_aa(i1 0, i8 addrspace(1)* %21, i8 addrspace(1)* %22)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %3
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %25 = call i8 addrspace(1)* @_bal_float_to_tagged(double 17.75)
  %26 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.75)
  %27 = call i8 addrspace(1)* @_B_fa(i1 1, i8 addrspace(1)* %25, i8 addrspace(1)* %26)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %5
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %29 = call i8 addrspace(1)* @_bal_float_to_tagged(double 17.75)
  %30 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.75)
  %31 = call i8 addrspace(1)* @_B_fa(i1 0, i8 addrspace(1)* %29, i8 addrspace(1)* %30)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %7
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %33 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  %34 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  %35 = call i8 addrspace(1)* @_B_ff(i1 1, i8 addrspace(1)* %33, i8 addrspace(1)* %34)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %9
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %37 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  %38 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  %39 = call i8 addrspace(1)* @_B_ff(i1 0, i8 addrspace(1)* %37, i8 addrspace(1)* %38)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %11
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
41:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i8 addrspace(1)* @_B_aa(i1 %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2) {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, i1* %b
  store i8 addrspace(1)* %1, i8 addrspace(1)** %x
  store i8 addrspace(1)* %2, i8 addrspace(1)** %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  ret i8 addrspace(1)* %10
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  ret i8 addrspace(1)* %12
13:
  call void @_bal_panic(i64 3076)
  unreachable
}
define internal i8 addrspace(1)* @_B_fa(i1 %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2) {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, i1* %b
  store i8 addrspace(1)* %1, i8 addrspace(1)** %x
  store i8 addrspace(1)* %2, i8 addrspace(1)** %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  ret i8 addrspace(1)* %10
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  ret i8 addrspace(1)* %12
13:
  call void @_bal_panic(i64 5380)
  unreachable
}
define internal i8 addrspace(1)* @_B_ff(i1 %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2) {
  %b = alloca i1
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i1 %0, i1* %b
  store i8 addrspace(1)* %1, i8 addrspace(1)** %x
  store i8 addrspace(1)* %2, i8 addrspace(1)** %y
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  ret i8 addrspace(1)* %10
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  ret i8 addrspace(1)* %12
13:
  call void @_bal_panic(i64 7684)
  unreachable
}
