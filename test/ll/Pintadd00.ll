@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %INT_MAX = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  store i64 9223372036854775807, i64* %INT_MAX
  %7 = load i64, i64* %INT_MAX
  %8 = call i64 @_B_add(i64 %7, i64 1)
  store i64 %8, i64* %1
  %9 = load i64, i64* %1
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %9)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
11:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i64
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
  br i1 %12, label %19, label %16
13:
  %14 = load i64, i64* %4
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 2052)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %3
  %18 = load i64, i64* %3
  ret i64 %18
19:
  store i64 2305, i64* %4
  br label %13
}
