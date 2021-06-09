define i64 @test (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i64, align 8
  %R5 = alloca i64, align 8
  store i64 %R0, i64* %R2, align 8
  store i64 %R1, i64* %R3, align 8
  %R6 = load i64, i64* %R2, align 8
  %R7 = load i64, i64* %R3, align 8
  %R8 = call i64 @foo (i64 %R6, i64 %R7)
  store i64 %R8, i64* %R4, align 8
  %R9 = load i64, i64* %R4, align 8
  ret i64 %R9
}
define internal i64 @foo (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i64, align 8
  %R5 = alloca i64, align 8
  %R6 = alloca i64, align 8
  store i64 %R0, i64* %R2, align 8
  store i64 %R1, i64* %R3, align 8
  %R7 = load i64, i64* %R2, align 8
  %R8 = load i64, i64* %R3, align 8
  %R9 = add i64 %R7, %R8
  store i64 %R9, i64* %R4, align 8
  %R10 = load i64, i64* %R4, align 8
  store i64 %R10, i64* %R5, align 8
  %R11 = load i64, i64* %R5, align 8
  ret i64 %R11
}
