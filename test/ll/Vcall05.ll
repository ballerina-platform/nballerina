@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %16, label %8
8:
  %9 = call i64 @_B_getArg1()
  store i64 %9, i64* %1
  %10 = call i64 @_B_getArg2()
  store i64 %10, i64* %2
  %11 = load i64, i64* %1
  %12 = load i64, i64* %2
  %13 = call i64 @_B_foo(i64 %11, i64 %12)
  store i64 %13, i64* %3
  %14 = load i64, i64* %3
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
16:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i64 %0, i64 %1) {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %i
  store i64 %1, i64* %j
  %9 = load i64, i64* %i
  %10 = load i64, i64* %j
  %11 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %19, label %16
13:
  %14 = load i64, i64* %4
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 1796)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %3
  %18 = load i64, i64* %3
  ret i64 %18
19:
  store i64 2049, i64* %4
  br label %13
}
define internal i64 @_B_getArg1() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 2
5:
  call void @_bal_panic(i64 2820)
  unreachable
}
define internal i64 @_B_getArg2() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 4
5:
  call void @_bal_panic(i64 3844)
  unreachable
}
