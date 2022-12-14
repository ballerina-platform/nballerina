define i64 @test() {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 42, ptr %1, align 4
  store i64 43, ptr %2, align 4
  store i64 44, ptr %3, align 4
  store i64 9223372036854775807, ptr %4, align 4
  store i64 -9223372036854775808, ptr %5, align 4
  ret void
}
