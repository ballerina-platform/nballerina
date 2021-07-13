@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i64 0, i64* %x
  %8 = load i64, i64* %x
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  store i64 1, i64* %x
  %10 = load i64, i64* %x
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %10)
  call void @_Bio__println(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 2, i64* %x
  %12 = load i64, i64* %x
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %12)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
14:
  call void @_bal_panic(i64 772)
  unreachable
}
