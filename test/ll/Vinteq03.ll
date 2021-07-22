@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %35, label %13
13:
  %14 = and i64 1, 1
  store i64 %14, i64* %2
  %15 = load i64, i64* %2
  %16 = icmp eq i64 %15, 2
  store i1 %16, i1* %1
  %17 = load i1, i1* %1
  %18 = zext i1 %17 to i64
  %19 = or i64 %18, 72057594037927936
  %20 = getelementptr i8, i8 addrspace(1)* null, i64 %19
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %21 = xor i64 1, 1
  store i64 %21, i64* %5
  %22 = load i64, i64* %5
  %23 = icmp ne i64 %22, 255
  store i1 %23, i1* %4
  %24 = load i1, i1* %4
  %25 = zext i1 %24 to i64
  %26 = or i64 %25, 72057594037927936
  %27 = getelementptr i8, i8 addrspace(1)* null, i64 %26
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %28 = or i64 65535, 17
  store i64 %28, i64* %8
  %29 = load i64, i64* %8
  %30 = icmp eq i64 %29, 1000
  store i1 %30, i1* %7
  %31 = load i1, i1* %7
  %32 = zext i1 %31 to i64
  %33 = or i64 %32, 72057594037927936
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
35:
  call void @_bal_panic(i64 772)
  unreachable
}
