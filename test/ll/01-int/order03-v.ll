@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8
  %27 = load i8*, i8** @_bal_stack_guard
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %30, label %29
29:
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %17
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  call void @_B_printBoolean(i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %21
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %22
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %24
  call void @_B_printBoolean(i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %25
  ret void
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
}
define internal void @_B_printBoolean(i1 %0) {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
