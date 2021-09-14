@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %result = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call i8 addrspace(1)* @_B_err(i1 1)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %result
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  call void @_B_display(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %12 = call i8 addrspace(1)* @_B_err(i1 0)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %13, i8 addrspace(1)** %result
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  call void @_B_display(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
define internal void @_B_display(i8 addrspace(1)* %0) {
  %result = alloca i8 addrspace(1)*
  %2 = alloca i1
  %result.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %result.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %21, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %result
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 792633534417207296
  store i1 %13, i1* %2
  %14 = load i1, i1* %2
  br i1 %14, label %15, label %17
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  store i8 addrspace(1)* %16, i8 addrspace(1)** %result.1
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620702562))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %20
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  store i8 addrspace(1)* %18, i8 addrspace(1)** %result.2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %result.2
  call void @_B_p(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %20
20:
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820)
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
define internal void @_B_p(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal i8 addrspace(1)* @_B_err(i1 %0) {
  %ok = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %12, label %6
6:
  store i1 %0, i1* %ok
  %7 = load i1, i1* %ok
  br i1 %7, label %8, label %9
8:
  ret i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630863215)
9:
  %10 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098313193684234094), i64 29)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %2
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  ret i8 addrspace(1)* %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148)
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
