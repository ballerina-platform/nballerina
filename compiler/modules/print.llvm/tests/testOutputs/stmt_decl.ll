define i64 @main(i64 %0) {
  %2 = alloca i64
  %3 = alloca i64
  store i64 %0, ptr %2
  %4 = load i64, ptr %2
  store i64 %4, ptr %3
  ret void
}
