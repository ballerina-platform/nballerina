declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i1, align 8
  %R1 = alloca i1, align 8
  %R2 = alloca i1, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i1, align 8
  %R5 = alloca i1, align 8
  %R6 = alloca i1, align 8
  %R7 = alloca i1, align 8
  %R8 = alloca i1, align 8
  %R9 = alloca i1, align 8
  %R10 = alloca i1, align 8
  %R11 = alloca i1, align 8
  %R12 = alloca i1, align 8
  %R13 = alloca i1, align 8
  %R14 = alloca i64, align 8
  %R15 = call i1 @_B_greaterThan (i1 1, i1 0)
  store i1 %R15, i1* %R0, align 8
  %R16 = load i1, i1* %R0, align 8
  call void @_B_printBoolean (i1 %R16)
  store i1 0, i1* %R1, align 8
  %R17 = call i1 @_B_greaterThan (i1 1, i1 1)
  store i1 %R17, i1* %R2, align 8
  %R18 = load i1, i1* %R2, align 8
  call void @_B_printBoolean (i1 %R18)
  store i1 0, i1* %R3, align 8
  %R19 = call i1 @_B_greaterThan (i1 0, i1 0)
  store i1 %R19, i1* %R4, align 8
  %R20 = load i1, i1* %R4, align 8
  call void @_B_printBoolean (i1 %R20)
  store i1 0, i1* %R5, align 8
  %R21 = call i1 @_B_lessThan (i1 1, i1 0)
  store i1 %R21, i1* %R6, align 8
  %R22 = load i1, i1* %R6, align 8
  call void @_B_printBoolean (i1 %R22)
  store i1 0, i1* %R7, align 8
  %R23 = call i1 @_B_lessThan (i1 0, i1 1)
  store i1 %R23, i1* %R8, align 8
  %R24 = load i1, i1* %R8, align 8
  call void @_B_printBoolean (i1 %R24)
  store i1 0, i1* %R9, align 8
  %R25 = call i1 @_B_lessThan (i1 1, i1 1)
  store i1 %R25, i1* %R10, align 8
  %R26 = load i1, i1* %R10, align 8
  call void @_B_printBoolean (i1 %R26)
  store i1 0, i1* %R11, align 8
  %R27 = call i1 @_B_lessThan (i1 0, i1 0)
  store i1 %R27, i1* %R12, align 8
  %R28 = load i1, i1* %R12, align 8
  call void @_B_printBoolean (i1 %R28)
  store i1 0, i1* %R13, align 8
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
define internal i1 @_B_lessThan (i1 %R0, i1 %R1) {
  %R2 = alloca i1, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i1, align 8
  store i1 %R0, i1* %R2, align 8
  store i1 %R1, i1* %R3, align 8
  %R5 = load i1, i1* %R2, align 8
  %R6 = load i1, i1* %R3, align 8
  %R7 = icmp ult i1 %R5, %R6
  store i1 %R7, i1* %R4, align 8
  %R8 = load i1, i1* %R4, align 8
  ret i1 %R8
}
define internal i1 @_B_greaterThan (i1 %R0, i1 %R1) {
  %R2 = alloca i1, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i1, align 8
  store i1 %R0, i1* %R2, align 8
  store i1 %R1, i1* %R3, align 8
  %R5 = load i1, i1* %R2, align 8
  %R6 = load i1, i1* %R3, align 8
  %R7 = icmp ugt i1 %R5, %R6
  store i1 %R7, i1* %R4, align 8
  %R8 = load i1, i1* %R4, align 8
  ret i1 %R8
}
