define void @abort () {
}
define i64 @foo (i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  store i64 %0, i64* %3
  store i64 %1, i64* %4
  %5 = load i64, i64* %4
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %L3, label %L1
L1:
  %7 = load i64, i64* %3
  %8 = icmp eq i64 %7, -9223372036854775808
  br i1 %8, label %L2, label %L4
L2:
  %9 = load i64, i64* %4
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %L3, label %L4
L3:
  call void @abort ()
L4:
  %11 = load i64, i64* %3
  %12 = load i64, i64* %4
  %13 = sdiv i64 %11, %12
  ret i64 %13
}
