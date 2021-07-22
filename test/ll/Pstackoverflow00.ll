@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_f()
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
6:
  call void @_bal_panic(i64 516)
  unreachable
}
define internal void @_B_f() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_f()
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
6:
  call void @_bal_panic(i64 1540)
  unreachable
}
