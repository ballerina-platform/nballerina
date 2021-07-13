@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %8, label %7
7:
  call void @_B_printBranch(i64 5)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_printBranch(i64 10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_printBranch(i64 15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
8:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_printBranch(i64 %0) {
  %x = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  store i64 %0, i64* %x
  %9 = load i64, i64* %x
  %10 = icmp slt i64 %9, 10
  store i1 %10, i1* %2
  %11 = load i1, i1* %2
  br i1 %11, label %12, label %14
12:
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %16
16:
  ret void
17:
  call void @_bal_panic(i64 2308)
  unreachable
}
