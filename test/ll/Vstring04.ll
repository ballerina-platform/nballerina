@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  %9 = call i8 addrspace(1)* @_B_toAny(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 720575940379279360
  br i1 %14, label %18, label %21
15:
  %16 = load i64, i64* %4
  call void @_bal_panic(i64 %16)
  unreachable
17:
  call void @_bal_panic(i64 772)
  unreachable
18:
  store i8 addrspace(1)* %10, i8 addrspace(1)** %2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %19, i8 addrspace(1)** %s
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
21:
  store i64 1027, i64* %4
  br label %15
}
define internal i8 addrspace(1)* @_B_toAny(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  ret i8 addrspace(1)* %6
7:
  call void @_bal_panic(i64 2052)
  unreachable
}
