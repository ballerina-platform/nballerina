@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_div(i64 8, i64 2)
  store i64 %7, i64* %1
  %8 = load i64, i64* %1
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
10:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_div(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %16
12:
  %13 = load i64, i64* %4
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 1796)
  unreachable
15:
  store i64 2050, i64* %4
  br label %12
16:
  %17 = icmp eq i64 %9, -9223372036854775808
  %18 = icmp eq i64 %10, -1
  %19 = and i1 %17, %18
  br i1 %19, label %23, label %20
20:
  %21 = sdiv i64 %9, %10
  store i64 %21, i64* %3
  %22 = load i64, i64* %3
  ret i64 %22
23:
  store i64 2049, i64* %4
  br label %12
}
