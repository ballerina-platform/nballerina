@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %7)
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
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796)
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
