define i64 @main(i64 %0) {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 4
  %4 = load i64, i64* %2, align 4
  store i64 %4, i64* %3, align 4
  ret void
}
