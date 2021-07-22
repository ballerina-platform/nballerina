define i64 @foo1(i64 %0) {
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  ret i64 %2
}
define i64 @foo2(i64 %0, i64 %1) {
  %2 = alloca i64
  %3 = alloca i64
  store i64 %0, i64* %2
  store i64 %1, i64* %3
  %4 = load i64, i64* %3
  ret i64 %4
}
define i64 @foo3(i64 %0, i64 %1, i64 %2) {
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  store i64 %0, i64* %3
  store i64 %1, i64* %4
  store i64 %2, i64* %5
  %6 = load i64, i64* %5
  ret i64 %6
}
