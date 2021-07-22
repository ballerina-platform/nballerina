define i64 @foo1() {
  ret i64 42
}

define i64 @foo2() {
  %1 = alloca i64, align 8
  store i64 42, i64* %1, align 4
  %2 = load i64, i64* %1, align 4
  ret i64 %2
}
