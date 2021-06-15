declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i64, align 8
  %R1 = alloca i64, align 8
  %R2 = alloca i1, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i1, align 8
  %R5 = alloca i64, align 8
  %R6 = alloca i64, align 8
  %R7 = alloca i1, align 8
  %R8 = alloca i64, align 8
  %R9 = alloca i1, align 8
  %R10 = alloca i64, align 8
  %R11 = call i64 @_B_neg (i64 17)
  store i64 %R11, i64* %R0, align 8
  %R12 = load i64, i64* %R0, align 8
  store i64 %R12, i64* %R1, align 8
  %R13 = load i64, i64* %R1, align 8
  call void @_Bio__println (i64 %R13)
  store i1 0, i1* %R2, align 8
  %R14 = call i64 @_B_neg (i64 0)
  store i64 %R14, i64* %R3, align 8
  %R15 = load i64, i64* %R3, align 8
  call void @_Bio__println (i64 %R15)
  store i1 0, i1* %R4, align 8
  %R16 = call i64 @_B_neg (i64 -1)
  store i64 %R16, i64* %R6, align 8
  %R17 = load i64, i64* %R6, align 8
  call void @_Bio__println (i64 %R17)
  store i1 0, i1* %R7, align 8
  %R18 = call i64 @_B_negneg (i64 1)
  store i64 %R18, i64* %R8, align 8
  %R19 = load i64, i64* %R8, align 8
  call void @_Bio__println (i64 %R19)
  store i1 0, i1* %R9, align 8
  ret void
}
define internal i64 @_B_neg (i64 %R0) {
  %R1 = alloca i64, align 8
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  store i64 %R0, i64* %R1, align 8
  %R4 = load i64, i64* %R1, align 8
  %R5 = sub i64 0, %R4
  store i64 %R5, i64* %R2, align 8
  %R6 = load i64, i64* %R2, align 8
  ret i64 %R6
}
define internal i64 @_B_negneg (i64 %R0) {
  %R1 = alloca i64, align 8
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i64, align 8
  store i64 %R0, i64* %R1, align 8
  %R5 = load i64, i64* %R1, align 8
  %R6 = sub i64 0, %R5
  store i64 %R6, i64* %R2, align 8
  %R7 = load i64, i64* %R2, align 8
  %R8 = sub i64 0, %R7
  store i64 %R8, i64* %R3, align 8
  %R9 = load i64, i64* %R3, align 8
  ret i64 %R9
}
