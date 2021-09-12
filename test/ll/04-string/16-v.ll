@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_Bstring__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B_main() {
  %str = alloca i8 addrspace(1)*
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %25, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)** %str
  store i64 0, i64* %i
  br label %9
9:
  %10 = load i64, i64* %i
  %11 = icmp slt i64 %10, 9
  store i1 %11, i1* %1
  %12 = load i1, i1* %1
  br i1 %12, label %18, label %13
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %str
  %15 = call i64 @_Bstring__length(i8 addrspace(1)* %14)
  store i64 %15, i64* %3
  %16 = load i64, i64* %3
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %str
  %20 = call i8 addrspace(1)* @_B_double(i8 addrspace(1)* %19)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %2
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %21, i8 addrspace(1)** %str
  br label %22
22:
  %23 = load i64, i64* %i
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %i
  br label %9
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
define internal i8 addrspace(1)* @_B_double(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %9 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %7, i8 addrspace(1)* %8)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  ret i8 addrspace(1)* %10
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564)
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
