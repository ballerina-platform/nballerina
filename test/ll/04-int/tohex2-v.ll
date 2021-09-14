@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_Bint__toHexString(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %43, label %20
20:
  store i64 42, i64* %i
  %21 = load i64, i64* %i
  %22 = call i8 addrspace(1)* @_Bint__toHexString(i64 %21)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %23, i8 addrspace(1)** %s
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %26 = call i1 @_bal_string_eq(i8 addrspace(1)* %25, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860594))
  store i1 %26, i1* %3
  %27 = load i1, i1* %3
  %28 = zext i1 %27 to i64
  %29 = or i64 %28, 72057594037927936
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %31 = call i8 addrspace(1)* @_Bint__toHexString(i64 0)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %5
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %33 = call i8 addrspace(1)* @_Bint__toHexString(i64 -1)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %7
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %35 = call i8 addrspace(1)* @_Bint__toHexString(i64 255)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %9
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %37 = call i8 addrspace(1)* @_Bint__toHexString(i64 -170)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %11
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %39 = call i8 addrspace(1)* @_Bint__toHexString(i64 9223372036854775807)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %13
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %41 = call i8 addrspace(1)* @_Bint__toHexString(i64 -9223372036854775808)
  store i8 addrspace(1)* %41, i8 addrspace(1)** %15
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %44)
  unreachable
}
