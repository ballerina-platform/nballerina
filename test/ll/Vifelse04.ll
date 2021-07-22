@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %20, label %10
10:
  %11 = call i64 @_B_foo(i64 1, i64 1)
  store i64 %11, i64* %1
  %12 = load i64, i64* %1
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %12)
  call void @_Bio__println(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %14 = call i64 @_B_foo(i64 1, i64 10)
  store i64 %14, i64* %3
  %15 = load i64, i64* %3
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %17 = call i64 @_B_foo(i64 11, i64 1)
  store i64 %17, i64* %5
  %18 = load i64, i64* %5
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
20:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %39, label %14
14:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %15 = load i64, i64* %x
  %16 = call i64 @_B_bar(i64 %15)
  store i64 %16, i64* %4
  %17 = load i64, i64* %y
  %18 = call i64 @_B_baz(i64 %17)
  store i64 %18, i64* %5
  %19 = load i64, i64* %4
  %20 = load i64, i64* %5
  %21 = icmp eq i64 %19, %20
  store i1 %21, i1* %3
  %22 = load i1, i1* %3
  br i1 %22, label %23, label %24
23:
  ret i64 0
24:
  %25 = load i64, i64* %x
  %26 = call i64 @_B_bar(i64 %25)
  store i64 %26, i64* %7
  %27 = load i64, i64* %y
  %28 = call i64 @_B_baz(i64 %27)
  store i64 %28, i64* %8
  %29 = load i64, i64* %7
  %30 = load i64, i64* %8
  %31 = icmp sgt i64 %29, %30
  store i1 %31, i1* %6
  %32 = load i1, i1* %6
  br i1 %32, label %33, label %34
33:
  ret i64 1
34:
  %35 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %43, label %40
37:
  %38 = load i64, i64* %10
  call void @_bal_panic(i64 %38)
  unreachable
39:
  call void @_bal_panic(i64 2308)
  unreachable
40:
  %41 = extractvalue {i64, i1} %35, 0
  store i64 %41, i64* %9
  %42 = load i64, i64* %9
  ret i64 %42
43:
  store i64 4097, i64* %10
  br label %37
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
  call void @_bal_panic(i64 5380)
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
  call void @_bal_panic(i64 6404)
  unreachable
}
