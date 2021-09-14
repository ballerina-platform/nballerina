@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %9, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222085992), i64 3)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_B_p(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_p(i8 addrspace(1)* %0) {
  %e = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %e
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %e
  store i8 addrspace(1)* %7, i8 addrspace(1)** %2
  br label %8
8:
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
