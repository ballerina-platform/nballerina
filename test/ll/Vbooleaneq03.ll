@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define internal i1 @_B_checkEquality(i1 %0, i1 %1) {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i1 %0, i1* %b1
  store i1 %1, i1* %b2
  %8 = load i1, i1* %b1
  %9 = load i1, i1* %b2
  %10 = icmp eq i1 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i1 @_B_checkInEquality(i1 %0, i1 %1) {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i1 %0, i1* %b1
  store i1 %1, i1* %b2
  %8 = load i1, i1* %b1
  %9 = load i1, i1* %b2
  %10 = icmp ne i1 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  call void @_bal_panic(i64 1796)
  unreachable
}
define void @_B_main() {
  %1 = alloca i1
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %38, label %13
13:
  %14 = call i1 @_B_checkEquality(i1 1, i1 1)
  store i1 %14, i1* %1
  %15 = load i1, i1* %1
  store i1 %15, i1* %b
  %16 = load i1, i1* %b
  br i1 %16, label %17, label %19
17:
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %21
19:
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %21
21:
  %22 = call i1 @_B_checkEquality(i1 0, i1 0)
  store i1 %22, i1* %4
  %23 = load i1, i1* %4
  store i1 %23, i1* %b
  %24 = load i1, i1* %b
  br i1 %24, label %25, label %27
25:
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6)
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %29
27:
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 7)
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %29
29:
  %30 = call i1 @_B_checkInEquality(i1 1, i1 1)
  store i1 %30, i1* %7
  %31 = load i1, i1* %7
  store i1 %31, i1* %b
  %32 = load i1, i1* %b
  br i1 %32, label %33, label %35
33:
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %37
35:
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9)
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %37
37:
  ret void
38:
  call void @_bal_panic(i64 2820)
  unreachable
}
