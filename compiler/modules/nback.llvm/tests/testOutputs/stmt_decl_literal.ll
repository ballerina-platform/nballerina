define i64 @test () {
  %R0 = alloca i64, align 8
  %R1 = alloca i64, align 8
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i64, align 8
  store i64 42, i64* %R0, align 8
  store i64 43, i64* %R1, align 8
  store i64 44, i64* %R2, align 8
  store i64 9223372036854775807, i64* %R3, align 8
  store i64 -9223372036854775808, i64* %R4, align 8
  ret void
}
