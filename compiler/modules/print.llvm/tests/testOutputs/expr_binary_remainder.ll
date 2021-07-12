define void @abort () {
}
define i64 @foo (i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  store i64 %0, i64* %4
  store i64 %1, i64* %5
  %6 = load i64, i64* %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9
8:
  call void @abort ()
9:
  %10 = load i64, i64* %4
  %11 = icmp eq i64 %10, -9223372036854775808
  br i1 %11, label %12, label %13
13:
  %14 = load i64, i64* %4
  %15 = load i64, i64* %5
  %16 = srem i64 %14, %15
  store i64 %16, i64* %3
  br label %17
12:
  %18 = load i64, i64* %5
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %13
20:
  store i64 0, i64* %3
  br label %17
17:
  %21 = load i64, i64* %3
  ret i64 %21
}
