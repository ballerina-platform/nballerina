@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
declare i8 addrspace(1)* @_Berror__message(i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %err = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i64 4)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %9, i8 addrspace(1)** %err
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %err
  %11 = call i8 addrspace(1)* @_Berror__message(i8 addrspace(1)* %10)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %12, i8 addrspace(1)** %s
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
