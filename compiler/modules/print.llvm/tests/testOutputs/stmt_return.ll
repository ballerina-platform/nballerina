define i64 @foo1() {
  ret i64 42
}
define i64 @foo2() {
  %1 = alloca i64
  store i64 42, i64* %1
  %2 = load i64, i64* %1
  ret i64 %2
}
