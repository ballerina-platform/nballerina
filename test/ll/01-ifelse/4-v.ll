@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal void @_B_printBranch(i64 %0) {
  %x = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %x.1 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %28, label %10
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
  br label %27
16:
  %17 = load i64, i64* %x
  %18 = icmp eq i64 %17, 10
  store i1 %18, i1* %4
  %19 = load i1, i1* %4
  br i1 %19, label %20, label %23
20:
  %21 = load i64, i64* %x
  store i64 %21, i64* %x.1
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %26
23:
  %24 = load i64, i64* %x
  store i64 %24, i64* %x.2
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %26
26:
  br label %27
27:
  ret void
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308)
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
}
