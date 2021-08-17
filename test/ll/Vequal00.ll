@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %45, label %16
16:
  %17 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %17, i8 addrspace(1)** %2
  %18 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %18, i8 addrspace(1)** %3
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %21 = call i1 @_bal_exact_eq(i8 addrspace(1)* %19, i8 addrspace(1)* %20)
  store i1 %21, i1* %1
  %22 = load i1, i1* %1
  %23 = zext i1 %22 to i64
  %24 = or i64 %23, 72057594037927936
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %26 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %6
  %27 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %7
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %30 = call i1 @_bal_exact_eq(i8 addrspace(1)* %28, i8 addrspace(1)* %29)
  %31 = xor i1 %30, 1
  store i1 %31, i1* %5
  %32 = load i1, i1* %5
  %33 = zext i1 %32 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %36 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %10
  %37 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %11
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %40 = call i1 @_bal_exact_eq(i8 addrspace(1)* %38, i8 addrspace(1)* %39)
  store i1 %40, i1* %9
  %41 = load i1, i1* %9
  %42 = zext i1 %41 to i64
  %43 = or i64 %42, 72057594037927936
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
45:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkNil() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i8 addrspace(1)* null
5:
  call void @_bal_panic(i64 2308)
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
  call void @_bal_panic(i64 3332)
  unreachable
}
define internal i8 addrspace(1)* @_B_mkBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %10, label %5
5:
  store i1 %0, i1* %b
  %6 = load i1, i1* %b
  %7 = zext i1 %6 to i64
  %8 = or i64 %7, 72057594037927936
  %9 = getelementptr i8, i8 addrspace(1)* null, i64 %8
  ret i8 addrspace(1)* %9
10:
  call void @_bal_panic(i64 4356)
  unreachable
}
