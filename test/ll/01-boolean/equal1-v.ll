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
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %13, label %12
12:
  call void @_B_printEq(i1 1, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_printEq(i1 1, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_printEq(i1 0, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_printEq(i1 0, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  call void @_B_printNotEq(i1 1, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  call void @_B_printNotEq(i1 1, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  call void @_B_printNotEq(i1 0, i1 1)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  call void @_B_printNotEq(i1 0, i1 0)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal void @_B_printEq(i1 %0, i1 %1) {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %19, label %9
9:
  store i1 %0, i1* %b1
  store i1 %1, i1* %b2
  %10 = load i1, i1* %b1
  %11 = load i1, i1* %b2
  %12 = icmp eq i1 %10, %11
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  br i1 %13, label %14, label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %18
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %18
18:
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
define internal void @_B_printNotEq(i1 %0, i1 %1) {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %19, label %9
9:
  store i1 %0, i1* %b1
  store i1 %1, i1* %b2
  %10 = load i1, i1* %b1
  %11 = load i1, i1* %b2
  %12 = icmp ne i1 %10, %11
  store i1 %12, i1* %3
  %13 = load i1, i1* %3
  br i1 %13, label %14, label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %18
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %18
18:
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148)
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
