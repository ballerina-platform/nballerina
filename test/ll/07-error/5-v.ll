@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %13, label %8
8:
  %9 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222085992))
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %11 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702562), i64 6)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %3
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_B_bar(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %8 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* %7, i64 10)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %2
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  ret i8 addrspace(1)* %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal void @_B_bar(i8 addrspace(1)* %0) {
  %err = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %err
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %err
  call void @_Bio__println(i8 addrspace(1)* %7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
