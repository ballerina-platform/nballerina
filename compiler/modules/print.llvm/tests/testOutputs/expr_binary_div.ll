define void @abort() {
}
define i64 @foo(i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  store i64 %0, i64* %3
  store i64 %1, i64* %4
  %5 = load i64, i64* %4
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8
8:
  %9 = load i64, i64* %3
  %10 = icmp eq i64 %9, -9223372036854775808
  br i1 %10, label %11, label %12
11:
  %13 = load i64, i64* %4
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %7, label %12
7:
  call void @abort()
12:
  %15 = load i64, i64* %3
  %16 = load i64, i64* %4
  %17 = sdiv i64 %15, %16
  ret i64 %17
}
