@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %i = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i64 @_B_loop()
  store i64 %7, i64* %1
  %8 = load i64, i64* %1
  store i64 %8, i64* %i
  %9 = load i64, i64* %i
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %9)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
11:
  call void @_bal_panic(i64 772)
  unreachable
}
define i64 @_B_loop() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %13, label %5
5:
  store i64 5, i64* %i
  br label %6
6:
  %7 = load i64, i64* %i
  %8 = icmp slt i64 %7, 10
  store i1 %8, i1* %1
  %9 = load i1, i1* %1
  br i1 %9, label %11, label %10
10:
  ret i64 -1
11:
  %12 = load i64, i64* %i
  ret i64 %12
13:
  call void @_bal_panic(i64 1796)
  unreachable
}
