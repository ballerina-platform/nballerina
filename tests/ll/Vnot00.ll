declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i1, align 8
  %R1 = alloca i1, align 8
  %R2 = alloca i1, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i64, align 8
  %R5 = call i1 @_B_not (i1 1)
  store i1 %R5, i1* %R0, align 8
  %R6 = load i1, i1* %R0, align 8
  call void @_B_printBoolean (i1 %R6)
  store i1 0, i1* %R1, align 8
  %R7 = call i1 @_B_not (i1 0)
  store i1 %R7, i1* %R2, align 8
  %R8 = load i1, i1* %R2, align 8
  call void @_B_printBoolean (i1 %R8)
  store i1 0, i1* %R3, align 8
  ret void
}
define internal void @_B_printBoolean (i1 %R0) {
  %R1 = alloca i1, align 8
  %R2 = alloca i1, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i64, align 8
  store i1 %R0, i1* %R1, align 8
  %R5 = load i1, i1* %R1, align 8
  br i1 %R5, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %R2, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %R3, align 8
  br label %L3
L3:
  ret void
}
define internal i1 @_B_not (i1 %R0) {
  %R1 = alloca i1, align 8
  %R2 = alloca i1, align 8
  store i1 %R0, i1* %R1, align 8
  %R3 = load i1, i1* %R1, align 8
  %R4 = xor i1 1, %R3
  store i1 %R4, i1* %R2, align 8
  %R5 = load i1, i1* %R2, align 8
  ret i1 %R5
}
