@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %i = alloca i64
  %j = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %33, label %12
12:
  store i64 5, i64* %i
  store i64 9, i64* %j
  %13 = load i64, i64* %i
  %14 = load i64, i64* %j
  %15 = and i64 %13, %14
  store i64 %15, i64* %1
  %16 = load i64, i64* %1
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 9223372036854775807, i64* %i
  store i64 9223372036854775807, i64* %j
  %18 = load i64, i64* %i
  %19 = load i64, i64* %j
  %20 = and i64 %18, %19
  store i64 %20, i64* %3
  %21 = load i64, i64* %3
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  store i64 -1, i64* %i
  store i64 -1, i64* %j
  %23 = load i64, i64* %i
  %24 = load i64, i64* %j
  %25 = and i64 %23, %24
  store i64 %25, i64* %5
  %26 = load i64, i64* %5
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %26)
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  store i64 9223372036854775807, i64* %i
  store i64 -1, i64* %j
  %28 = load i64, i64* %i
  %29 = load i64, i64* %j
  %30 = and i64 %28, %29
  store i64 %30, i64* %7
  %31 = load i64, i64* %7
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
}
