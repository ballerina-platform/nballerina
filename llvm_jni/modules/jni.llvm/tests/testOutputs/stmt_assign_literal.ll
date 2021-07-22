define i64 @main() {
  %1 = alloca i64, align 8
  store i64 42, i64* %1, align 4
  store i64 43, i64* %1, align 4
  store i64 44, i64* %1, align 4
  store i64 9223372036854775807, i64* %1, align 4
  store i64 -9223372036854775808, i64* %1, align 4
  ret void
}
