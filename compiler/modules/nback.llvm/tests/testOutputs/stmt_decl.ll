define i64 @main (i64 %_0) {
  %_1 = alloca i64, align 8
  %_2 = alloca i64, align 8
  store i64 %_0, i64* %_1, align 8
  %_3 = load i64, i64* %_1, align 8
  store i64 %_3, i64* %_2, align 8
  ret void
}
