define i64 @main() {
  %1 = alloca i64
  store i64 42, i64* %1
  store i64 43, i64* %1
  store i64 44, i64* %1
  store i64 9223372036854775807, i64* %1
  store i64 -9223372036854775808, i64* %1
  ret void
}
