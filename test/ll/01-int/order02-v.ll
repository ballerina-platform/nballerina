@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %37, label %20
20:
  %21 = call i1 @_B_gte(i64 1, i64 2)
  store i1 %21, i1* %1
  %22 = load i1, i1* %1
  call void @_B_printBoolean(i1 %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %23 = call i1 @_B_gte(i64 2, i64 1)
  store i1 %23, i1* %3
  %24 = load i1, i1* %3
  call void @_B_printBoolean(i1 %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %25 = call i1 @_B_gte(i64 2, i64 -1)
  store i1 %25, i1* %5
  %26 = load i1, i1* %5
  call void @_B_printBoolean(i1 %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %27 = call i1 @_B_gte(i64 42, i64 42)
  store i1 %27, i1* %7
  %28 = load i1, i1* %7
  call void @_B_printBoolean(i1 %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %29 = call i1 @_B_lte(i64 1, i64 2)
  store i1 %29, i1* %9
  %30 = load i1, i1* %9
  call void @_B_printBoolean(i1 %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %31 = call i1 @_B_lte(i64 0, i64 0)
  store i1 %31, i1* %11
  %32 = load i1, i1* %11
  call void @_B_printBoolean(i1 %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %33 = call i1 @_B_lte(i64 2, i64 1)
  store i1 %33, i1* %13
  %34 = load i1, i1* %13
  call void @_B_printBoolean(i1 %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %35 = call i1 @_B_lte(i64 -1, i64 17)
  store i1 %35, i1* %15
  %36 = load i1, i1* %15
  call void @_B_printBoolean(i1 %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
}
define internal void @_B_printBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
define internal i1 @_B_lte(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %8 = load i64, i64* %x
  %9 = load i64, i64* %y
  %10 = icmp sle i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148)
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal i1 @_B_gte(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %8 = load i64, i64* %x
  %9 = load i64, i64* %y
  %10 = icmp sge i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 7172)
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
