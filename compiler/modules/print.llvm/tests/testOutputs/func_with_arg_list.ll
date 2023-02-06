define i64 @foo1(i64 %0) {
  %2 = alloca i64
  store i64 %0, ptr %2
  %3 = load i64, ptr %2
  ret i64 %3
}
define i64 @foo2(i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  store i64 %0, ptr %3
  store i64 %1, ptr %4
  %5 = load i64, ptr %4
  ret i64 %5
}
define i64 @foo3(i64 %0, i64 %1, i64 %2) {
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  store i64 %0, ptr %4
  store i64 %1, ptr %5
  store i64 %2, ptr %6
  %7 = load i64, ptr %6
  ret i64 %7
}
