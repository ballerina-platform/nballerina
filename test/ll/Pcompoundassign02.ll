@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
define void @_B_main() {
  %INT_MIN = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  store i64 -9223372036854775808, i64* %INT_MIN
  %7 = load i64, i64* %INT_MIN
  %8 = icmp eq i64 -1, 0
  br i1 %8, label %12, label %13
9:
  %10 = load i64, i64* %2
  call void @_bal_panic(i64 %10)
  unreachable
11:
  call void @_bal_panic(i64 260)
  unreachable
12:
  store i64 770, i64* %2
  br label %9
13:
  %14 = icmp eq i64 %7, -9223372036854775808
  %15 = icmp eq i64 -1, -1
  %16 = and i1 %14, %15
  br i1 %16, label %20, label %17
17:
  %18 = sdiv i64 %7, -1
  store i64 %18, i64* %1
  %19 = load i64, i64* %1
  store i64 %19, i64* %INT_MIN
  ret void
20:
  store i64 769, i64* %2
  br label %9
}
