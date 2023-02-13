define void @abort() {
}
define i64 @foo(i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  store i64 %0, ptr %3
  store i64 %1, ptr %4
  %5 = load i64, ptr %4
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7
7:
  %8 = load i64, ptr %3
  %9 = icmp eq i64 %8, -9223372036854775808
  br i1 %9, label %10, label %14
10:
  %11 = load i64, ptr %4
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %14
13:
  call void @abort()
14:
  %15 = load i64, ptr %3
  %16 = load i64, ptr %4
  %17 = sdiv i64 %15, %16
  ret i64 %17
}
