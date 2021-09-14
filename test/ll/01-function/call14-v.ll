@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %22, label %10
10:
  %11 = call i64 @_B_foobar()
  store i64 %11, i64* %1
  %12 = load i64, i64* %1
  %13 = call i64 @_B_sum(i64 23, i64 %12)
  store i64 %13, i64* %2
  %14 = load i64, i64* %2
  %15 = call i64 @_B_baz(i64 %14)
  store i64 %15, i64* %3
  %16 = load i64, i64* %3
  %17 = call i64 @_B_bar(i64 %16)
  store i64 %17, i64* %4
  %18 = load i64, i64* %4
  %19 = call i64 @_B_foo(i64 %18)
  store i64 %19, i64* %5
  %20 = load i64, i64* %5
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
}
define internal i64 @_B_foo(i64 %0) {
  %x = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, i64* %x
  %6 = load i64, i64* %x
  ret i64 %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052)
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal i64 @_B_bar(i64 %0) {
  %x = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, i64* %x
  %6 = load i64, i64* %x
  ret i64 %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076)
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal i64 @_B_baz(i64 %0) {
  %x = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i64 %0, i64* %x
  %6 = load i64, i64* %x
  ret i64 %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100)
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal i64 @_B_foobar() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 12
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124)
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal i64 @_B_sum(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 6148)
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 6401)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
