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
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %26, label %10
10:
  store i64 %0, i64* %x
  %11 = load i64, i64* %x
  %12 = icmp slt i64 %11, 10
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %14, label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %25
16:
  %17 = load i64, i64* %x
  %18 = icmp eq i64 %17, 10
  store i1 %18, i1* %4
  %19 = load i1, i1* %4
  br i1 %19, label %20, label %22
20:
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %24
22:
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %24
24:
  br label %25
25:
  ret void
26:
  call void @_bal_panic(i64 2308)
  unreachable
}
