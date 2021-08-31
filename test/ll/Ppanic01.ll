@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222085992))
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 260)
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define internal void @_B_p(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %9 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* %8, i64 6)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %10, i8 addrspace(1)** %3
  br label %11
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
