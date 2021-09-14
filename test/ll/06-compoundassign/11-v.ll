@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %17, label %9
9:
  store i64 1, i64* %x
  %10 = load i64, i64* %x
  %11 = call i64 @_B_foo(i64 %10)
  store i64 %11, i64* %1
  %12 = load i64, i64* %1
  %13 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 2, i64 %12)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %25, label %19
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = extractvalue {i64, i1} %13, 0
  store i64 %20, i64* %2
  %21 = load i64, i64* %x
  %22 = load i64, i64* %2
  %23 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %21, i64 %22)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %32, label %27
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 1537)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %5
  br label %15
27:
  %28 = extractvalue {i64, i1} %23, 0
  store i64 %28, i64* %3
  %29 = load i64, i64* %3
  store i64 %29, i64* %x
  %30 = load i64, i64* %x
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %30)
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 1537)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %5
  br label %15
}
define internal i64 @_B_foo(i64 %0) {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, i64* %i
  %8 = load i64, i64* %i
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %8, i64 3)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, i64* %2
  %17 = load i64, i64* %2
  ret i64 %17
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %3
  br label %11
}
