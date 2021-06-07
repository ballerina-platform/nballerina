define i64 @main (i64 %R0) {
  %R1 = alloca i64, align 8
  %R2 = alloca i64, align 8
  store i64 %R0, i64* %R1, align 8
  %R3 = load i64, i64* %R1, align 8
  store i64 %R3, i64* %R2, align 8
  ret void
}
