@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_foo(i64 10)
  store i64 %7, i64* %1
  %8 = load i64, i64* %1
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
10:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i64 %0) {
  %x = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %i.1 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %22, label %9
9:
  store i64 %0, i64* %x
  %10 = load i64, i64* %x
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %10, i64 1)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %29, label %23
13:
  %14 = load i64, i64* %i
  store i64 %14, i64* %i.1
  %15 = load i64, i64* %i.1
  %16 = call i64 @_B_foo(i64 %15)
  store i64 %16, i64* %4
  %17 = load i64, i64* %4
  ret i64 %17
18:
  %19 = load i64, i64* %i
  ret i64 %19
20:
  %21 = load i64, i64* %5
  call void @_bal_panic(i64 %21)
  unreachable
22:
  call void @_bal_panic(i64 1796)
  unreachable
23:
  %24 = extractvalue {i64, i1} %11, 0
  store i64 %24, i64* %2
  %25 = load i64, i64* %2
  store i64 %25, i64* %i
  %26 = load i64, i64* %i
  %27 = icmp ne i64 %26, 0
  store i1 %27, i1* %3
  %28 = load i1, i1* %3
  br i1 %28, label %13, label %18
29:
  store i64 2049, i64* %5
  br label %20
}
