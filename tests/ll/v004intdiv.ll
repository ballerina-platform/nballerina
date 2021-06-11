declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i64, align 8
  %R1 = alloca i1, align 8
  %R2 = alloca i64, align 8
  %R3 = call i64 @_B_div (i64 8, i64 2)
  store i64 %R3, i64* %R0, align 8
  %R4 = load i64, i64* %R0, align 8
  call void @_Bio__println (i64 %R4)
  store i1 0, i1* %R1, align 8
  ret void
}
define internal i64 @_B_div (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i64, align 8
  %R5 = alloca i64, align 8
  store i64 %R0, i64* %R2, align 8
  store i64 %R1, i64* %R3, align 8
  %R6 = load i64, i64* %R2, align 8
  %R7 = load i64, i64* %R3, align 8
  %R8 = sdiv i64 %R6, %R7
  store i64 %R8, i64* %R4, align 8
  %R9 = load i64, i64* %R4, align 8
  ret i64 %R9
}
