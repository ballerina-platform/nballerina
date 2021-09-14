@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define internal i64 @_B_lower() {
  %u = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %9, label %5
5:
  store i64 2, i64* %u
  %6 = load i64, i64* %u
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  call void @_Bio__println(i8 addrspace(1)* %7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %8 = load i64, i64* %u
  ret i64 %8
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal i64 @_B_upper() {
  %u = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %9, label %5
5:
  store i64 5, i64* %u
  %6 = load i64, i64* %u
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  call void @_Bio__println(i8 addrspace(1)* %7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %8 = load i64, i64* %u
  ret i64 %8
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %24, label %8
8:
  %9 = call i64 @_B_lower()
  store i64 %9, i64* %1
  %10 = call i64 @_B_upper()
  store i64 %10, i64* %2
  %11 = load i64, i64* %1
  store i64 %11, i64* %i
  br label %12
12:
  %13 = load i64, i64* %i
  %14 = load i64, i64* %2
  %15 = icmp slt i64 %13, %14
  store i1 %15, i1* %3
  %16 = load i1, i1* %3
  br i1 %16, label %18, label %17
17:
  ret void
18:
  %19 = load i64, i64* %i
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %19)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %21
21:
  %22 = load i64, i64* %i
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %i
  br label %12
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100)
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
}
