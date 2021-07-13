define i64 @test() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  store i64 42, i64* %1
  store i64 43, i64* %2
  store i64 44, i64* %3
  store i64 9223372036854775807, i64* %4
  store i64 -9223372036854775808, i64* %5
  ret void
}
