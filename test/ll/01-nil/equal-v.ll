@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %16, label %8
8:
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_makeNil()
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %11 = icmp eq i8 addrspace(1)* %9, %10
  store i1 %11, i1* %1
  %12 = load i1, i1* %1
  br i1 %12, label %13, label %15
13:
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %15
15:
  ret void
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
}
define internal void @_B_makeNil() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret void
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564)
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
