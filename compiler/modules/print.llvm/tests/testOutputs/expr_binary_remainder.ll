define void @abort() {
}
define i64 @foo(i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  store i64 %0, ptr %4
  store i64 %1, ptr %5
  %6 = load i64, ptr %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9
8:
  call void @abort()
9:
  %10 = load i64, ptr %4
  %11 = icmp eq i64 %10, -9223372036854775808
  br i1 %11, label %16, label %12
12:
  %13 = load i64, ptr %4
  %14 = load i64, ptr %5
  %15 = srem i64 %13, %14
  store i64 %15, ptr %3
  br label %20
16:
  %17 = load i64, ptr %5
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %12
19:
  store i64 0, ptr %3
  br label %20
20:
  %21 = load i64, ptr %3
  ret i64 %21
}
