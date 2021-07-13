@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %9, label %8
8:
  call void @_B_printBranch(i1 1, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_printBranch(i1 1, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_printBranch(i1 0, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_printBranch(i1 0, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
9:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_printBranch(i1 %0, i1 %1) {
  %x = alloca i1
  %y = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %27, label %10
10:
  store i1 %0, i1* %x
  store i1 %1, i1* %y
  %11 = load i1, i1* %x
  br i1 %11, label %12, label %19
12:
  %13 = load i1, i1* %y
  br i1 %13, label %14, label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %18
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %18
18:
  br label %26
19:
  %20 = load i1, i1* %y
  br i1 %20, label %21, label %23
21:
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %25
23:
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %25
25:
  br label %26
26:
  ret void
27:
  call void @_bal_panic(i64 2564)
  unreachable
}
