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
  br i1 %7, label %L1, label %L2
L1:
  call void @abort ()
L2:
  %8 = load i64, i64* %4
  %9 = icmp eq i64 %8, -9223372036854775808
  br i1 %9, label %L4, label %L3
L3:
  %10 = load i64, i64* %4
  %11 = load i64, i64* %5
  %12 = srem i64 %10, %11
  store i64 %12, i64* %3
  br label %L6
L4:
  %13 = load i64, i64* %5
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %L5, label %L3
L5:
  store i64 0, i64* %3
  br label %L6
L6:
  %15 = load i64, i64* %3
  ret i64 %15
}
