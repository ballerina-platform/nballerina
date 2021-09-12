@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %mi = alloca i8 addrspace(1)*
  %ma = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %16, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 0)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %9, i8 addrspace(1)** %mi
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %mi
  store i8 addrspace(1)* %10, i8 addrspace(1)** %ma
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %ma
  %12 = call i64 @_bal_mapping_set(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* null)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %20
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 260)
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %ma
  call void @_B_ignore(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
20:
  %21 = or i64 %12, 1024
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 %21)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %3
  br label %14
}
define internal void @_B_ignore(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  ret void
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052)
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
