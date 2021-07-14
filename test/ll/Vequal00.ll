@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i32 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
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
  br i1 %15, label %48, label %16
16:
  %17 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %17, i8 addrspace(1)** %2
  %18 = call i8 addrspace(1)* @_B_mkNil()
  store i8 addrspace(1)* %18, i8 addrspace(1)** %3
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %21 = call i32 @_bal_eq(i8 addrspace(1)* %19, i8 addrspace(1)* %20)
  %22 = trunc i32 %21 to i1
  store i1 %22, i1* %1
  %23 = load i1, i1* %1
  %24 = zext i1 %23 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %27 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %6
  %28 = call i8 addrspace(1)* @_B_mkInt(i64 1)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %7
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %31 = call i32 @_bal_eq(i8 addrspace(1)* %29, i8 addrspace(1)* %30)
  %32 = trunc i32 %31 to i1
  %33 = xor i1 %32, 1
  store i1 %33, i1* %5
  %34 = load i1, i1* %5
  %35 = zext i1 %34 to i64
  %36 = or i64 %35, 72057594037927936
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %38 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %10
  %39 = call i8 addrspace(1)* @_B_mkBoolean(i1 1)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %11
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %42 = call i32 @_bal_eq(i8 addrspace(1)* %40, i8 addrspace(1)* %41)
  %43 = trunc i32 %42 to i1
  store i1 %43, i1* %9
  %44 = load i1, i1* %9
  %45 = zext i1 %44 to i64
  %46 = or i64 %45, 72057594037927936
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
48:
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
