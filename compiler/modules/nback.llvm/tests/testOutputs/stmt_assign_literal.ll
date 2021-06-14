define i64 @main () {
  %_0 = alloca i64, align 8
  store i64 42, i64* %_0, align 8
  store i64 43, i64* %_0, align 8
  store i64 44, i64* %_0, align 8
  store i64 9223372036854775807, i64* %_0, align 8
  store i64 -9223372036854775808, i64* %_0, align 8
  ret void
}
