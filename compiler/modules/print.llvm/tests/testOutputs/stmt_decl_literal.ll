define i64 @test() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  store i64 42, ptr %1
  store i64 43, ptr %2
  store i64 44, ptr %3
  store i64 9223372036854775807, ptr %4
  store i64 -9223372036854775808, ptr %5
  ret void
}
