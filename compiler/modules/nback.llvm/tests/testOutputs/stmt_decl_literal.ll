define i64 @test () {
  %_0 = alloca i64, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i64, align 8
  store i64 42, i64* %_0, align 8
  store i64 43, i64* %_1, align 8
  store i64 44, i64* %_2, align 8
  store i64 9223372036854775807, i64* %_3, align 8
  store i64 -9223372036854775808, i64* %_4, align 8
  ret void
}
