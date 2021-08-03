@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %42, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 30)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %27 = call i64 @_B_div(i64 120, i64 3)
  store i64 %27, i64* %8
  %28 = call i64 @_B_div(i64 16, i64 4)
  store i64 %28, i64* %9
  %29 = load i64, i64* %8
  %30 = load i64, i64* %9
  %31 = call i64 @_B_div(i64 %29, i64 %30)
  store i64 %31, i64* %10
  %32 = call i64 @_B_div(i64 400, i64 20)
  store i64 %32, i64* %11
  %33 = call i64 @_B_div(i64 100, i64 10)
  store i64 %33, i64* %12
  %34 = load i64, i64* %11
  %35 = load i64, i64* %12
  %36 = call i64 @_B_div(i64 %34, i64 %35)
  store i64 %36, i64* %13
  %37 = load i64, i64* %10
  %38 = load i64, i64* %13
  %39 = call i64 @_B_div(i64 %37, i64 %38)
  store i64 %39, i64* %14
  %40 = load i64, i64* %14
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %40)
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  ret void
42:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_div(i64 %0, i64 %1) {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %i
  store i64 %1, i64* %j
  %9 = load i64, i64* %i
  %10 = load i64, i64* %j
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %16
12:
  %13 = load i64, i64* %4
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 3588)
  unreachable
15:
  store i64 3842, i64* %4
  br label %12
16:
  %17 = icmp eq i64 %9, -9223372036854775808
  %18 = icmp eq i64 %10, -1
  %19 = and i1 %17, %18
  br i1 %19, label %23, label %20
20:
  %21 = sdiv i64 %9, %10
  store i64 %21, i64* %3
  %22 = load i64, i64* %3
  ret i64 %22
23:
  store i64 3841, i64* %4
  br label %12
}
