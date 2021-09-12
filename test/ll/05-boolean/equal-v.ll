@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define internal i1 @_B_foo(i64 %0, i64 %1, i64 %2) {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %17, label %9
9:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  store i64 %2, i64* %c
  %10 = load i64, i64* %a
  %11 = load i64, i64* %b
  %12 = or i64 %10, %11
  store i64 %12, i64* %5
  %13 = load i64, i64* %5
  %14 = load i64, i64* %c
  %15 = icmp eq i64 %13, %14
  store i1 %15, i1* %4
  %16 = load i1, i1* %4
  ret i1 %16
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  %7 = call i1 @_B_foo(i64 1, i64 1, i64 2)
  store i1 %7, i1* %1
  %8 = load i1, i1* %1
  %9 = zext i1 %8 to i64
  %10 = or i64 %9, 72057594037927936
  %11 = getelementptr i8, i8 addrspace(1)* null, i64 %10
  call void @_Bio__println(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796)
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
