declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i64, align 8
  %R1 = alloca i64, align 8
  %R2 = alloca i1, align 8
  %R3 = alloca i1, align 8
  %R4 = alloca i1, align 8
  %R5 = alloca i1, align 8
  %R6 = alloca i1, align 8
  %R7 = alloca i1, align 8
  %R8 = alloca i64, align 8
  %R9 = alloca i1, align 8
  %R10 = alloca i1, align 8
  %R11 = alloca i1, align 8
  %R12 = alloca i1, align 8
  %R13 = alloca i1, align 8
  %R14 = alloca i1, align 8
  %R15 = alloca i1, align 8
  %R16 = alloca i1, align 8
  %R17 = alloca i64, align 8
  %R18 = alloca i1, align 8
  %R19 = alloca i1, align 8
  %R20 = alloca i64, align 8
  store i64 1, i64* %R0, align 8
  store i64 2, i64* %R1, align 8
  %R21 = load i64, i64* %R0, align 8
  %R22 = load i64, i64* %R1, align 8
  %R23 = icmp slt i64 %R21, %R22
  store i1 %R23, i1* %R2, align 8
  %R24 = load i1, i1* %R2, align 8
  call void @_B_printBoolean (i1 %R24)
  store i1 0, i1* %R3, align 8
  %R25 = call i1 @_B_greaterThan (i64 1, i64 2)
  store i1 %R25, i1* %R4, align 8
  %R26 = load i1, i1* %R4, align 8
  call void @_B_printBoolean (i1 %R26)
  store i1 0, i1* %R5, align 8
  %R27 = call i1 @_B_greaterThan (i64 2, i64 1)
  store i1 %R27, i1* %R6, align 8
  %R28 = load i1, i1* %R6, align 8
  call void @_B_printBoolean (i1 %R28)
  store i1 0, i1* %R7, align 8
  %R29 = call i1 @_B_greaterThan (i64 2, i64 -1)
  store i1 %R29, i1* %R9, align 8
  %R30 = load i1, i1* %R9, align 8
  call void @_B_printBoolean (i1 %R30)
  store i1 0, i1* %R10, align 8
  %R31 = call i1 @_B_lessThan (i64 1, i64 2)
  store i1 %R31, i1* %R11, align 8
  %R32 = load i1, i1* %R11, align 8
  call void @_B_printBoolean (i1 %R32)
  store i1 0, i1* %R12, align 8
  %R33 = call i1 @_B_lessThan (i64 0, i64 0)
  store i1 %R33, i1* %R13, align 8
  %R34 = load i1, i1* %R13, align 8
  call void @_B_printBoolean (i1 %R34)
  store i1 0, i1* %R14, align 8
  %R35 = call i1 @_B_lessThan (i64 2, i64 1)
  store i1 %R35, i1* %R15, align 8
  %R36 = load i1, i1* %R15, align 8
  call void @_B_printBoolean (i1 %R36)
  store i1 0, i1* %R16, align 8
  %R37 = call i1 @_B_lessThan (i64 -1, i64 17)
  store i1 %R37, i1* %R18, align 8
  %R38 = load i1, i1* %R18, align 8
  call void @_B_printBoolean (i1 %R38)
  store i1 0, i1* %R19, align 8
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
define internal i1 @_B_lessThan (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i1, align 8
  store i64 %R0, i64* %R2, align 8
  store i64 %R1, i64* %R3, align 8
  %R5 = load i64, i64* %R2, align 8
  %R6 = load i64, i64* %R3, align 8
  %R7 = icmp slt i64 %R5, %R6
  store i1 %R7, i1* %R4, align 8
  %R8 = load i1, i1* %R4, align 8
  ret i1 %R8
}
define internal i1 @_B_greaterThan (i64 %R0, i64 %R1) {
  %R2 = alloca i64, align 8
  %R3 = alloca i64, align 8
  %R4 = alloca i1, align 8
  store i64 %R0, i64* %R2, align 8
  store i64 %R1, i64* %R3, align 8
  %R5 = load i64, i64* %R2, align 8
  %R6 = load i64, i64* %R3, align 8
  %R7 = icmp sgt i64 %R5, %R6
  store i1 %R7, i1* %R4, align 8
  %R8 = load i1, i1* %R4, align 8
  ret i1 %R8
}
