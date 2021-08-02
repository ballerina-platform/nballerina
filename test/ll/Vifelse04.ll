@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %20, label %10
10:
  %11 = call i64 @_B_foo(i64 1, i64 1)
  store i64 %11, i64* %1
  %12 = load i64, i64* %1
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %12)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %14 = call i64 @_B_foo(i64 1, i64 10)
  store i64 %14, i64* %3
  %15 = load i64, i64* %3
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %17 = call i64 @_B_foo(i64 11, i64 1)
  store i64 %17, i64* %5
  %18 = load i64, i64* %5
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
20:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %33, label %12
12:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %13 = load i64, i64* %x
  %14 = call i64 @_B_bar(i64 %13)
  store i64 %14, i64* %4
  %15 = load i64, i64* %y
  %16 = call i64 @_B_baz(i64 %15)
  store i64 %16, i64* %5
  %17 = load i64, i64* %4
  %18 = load i64, i64* %5
  %19 = icmp eq i64 %17, %18
  store i1 %19, i1* %3
  %20 = load i1, i1* %3
  br i1 %20, label %21, label %22
21:
  ret i64 0
22:
  %23 = load i64, i64* %x
  %24 = call i64 @_B_bar(i64 %23)
  store i64 %24, i64* %7
  %25 = load i64, i64* %y
  %26 = call i64 @_B_baz(i64 %25)
  store i64 %26, i64* %8
  %27 = load i64, i64* %7
  %28 = load i64, i64* %8
  %29 = icmp sgt i64 %27, %28
  store i1 %29, i1* %6
  %30 = load i1, i1* %6
  br i1 %30, label %31, label %32
31:
  ret i64 1
32:
  ret i64 -1
33:
  call void @_bal_panic(i64 2308)
  unreachable
}
define internal i64 @_B_bar(i64 %0) {
  %x = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, i64* %x
  %6 = load i64, i64* %x
  ret i64 %6
7:
  call void @_bal_panic(i64 5380)
  unreachable
}
define internal i64 @_B_baz(i64 %0) {
  %x = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, i64* %x
  %6 = load i64, i64* %x
  ret i64 %6
7:
  call void @_bal_panic(i64 6404)
  unreachable
}
