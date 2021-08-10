@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %8 = call i64 @_B_foo(i8 addrspace(1)* %7)
  store i64 %8, i64* %1
  %9 = load i64, i64* %1
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %9)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
11:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %2 = alloca i1
  %n.1 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %27, label %7
7:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %8, i8 addrspace(1)** %n
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 504403158265495552
  store i1 %13, i1* %2
  %14 = load i1, i1* %2
  br i1 %14, label %15, label %26
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %17 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %16)
  store i64 %17, i64* %n.1
  store i64 1, i64* %i
  br label %18
18:
  %19 = load i64, i64* %i
  %20 = icmp eq i64 %19, 0
  store i1 %20, i1* %3
  %21 = load i1, i1* %3
  br i1 %21, label %22, label %24
22:
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %n
  ret i64 -1
24:
  %25 = load i64, i64* %n.1
  ret i64 %25
26:
  ret i64 0
27:
  call void @_bal_panic(i64 1796)
  unreachable
}
