@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i32 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %30, label %9
9:
  %10 = call i8 addrspace(1)* @_B_mkInt(i64 2)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %12, i8 addrspace(1)** %y
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %15 = call i32 @_bal_eq(i8 addrspace(1)* %13, i8 addrspace(1)* %14)
  %16 = trunc i32 %15 to i1
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  %18 = zext i1 %17 to i64
  %19 = or i64 %18, 72057594037927936
  %20 = getelementptr i8, i8 addrspace(1)* null, i64 %19
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %23 = call i32 @_bal_eq(i8 addrspace(1)* %21, i8 addrspace(1)* %22)
  %24 = trunc i32 %23 to i1
  %25 = xor i1 %24, 1
  store i1 %25, i1* %4
  %26 = load i1, i1* %4
  %27 = zext i1 %26 to i64
  %28 = or i64 %27, 72057594037927936
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
30:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkInt(i64 %0) {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  call void @_bal_panic(i64 2564)
  unreachable
}
