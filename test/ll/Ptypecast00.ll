@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %n = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  %9 = call i8 addrspace(1)* @_B_ifElse(i1 1, i1 1, i64 17)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 504403158265495552
  br i1 %14, label %18, label %23
15:
  %16 = load i64, i64* %4
  call void @_bal_panic(i64 %16)
  unreachable
17:
  call void @_bal_panic(i64 772)
  unreachable
18:
  %19 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %10)
  store i64 %19, i64* %2
  %20 = load i64, i64* %2
  store i64 %20, i64* %n
  %21 = load i64, i64* %n
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
23:
  store i64 1027, i64* %4
  br label %15
}
define internal i8 addrspace(1)* @_B_ifElse(i1 %0, i1 %1, i64 %2) {
  %t = alloca i1
  %b = alloca i1
  %n = alloca i64
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %17, label %7
7:
  store i1 %0, i1* %t
  store i1 %1, i1* %b
  store i64 %2, i64* %n
  %8 = load i1, i1* %t
  br i1 %8, label %9, label %14
9:
  %10 = load i1, i1* %b
  %11 = zext i1 %10 to i64
  %12 = or i64 %11, 72057594037927936
  %13 = getelementptr i8, i8 addrspace(1)* null, i64 %12
  ret i8 addrspace(1)* %13
14:
  %15 = load i64, i64* %n
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15)
  ret i8 addrspace(1)* %16
17:
  call void @_bal_panic(i64 2052)
  unreachable
}
