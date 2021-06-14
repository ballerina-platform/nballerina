declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i1, align 8
  %R1 = alloca i1, align 8
  %R2 = call i1 @_B_foo ()
  store i1 %R2, i1* %R0, align 8
  %R3 = load i1, i1* %R0, align 8
  call void @_B_printBoolean (i1 %R3)
  store i1 0, i1* %R1, align 8
  ret void
}
define internal i1 @_B_foo () {
  %R0 = alloca i1, align 8
  %R1 = alloca i1, align 8
  %R2 = call i1 @_B_bar (i64 1)
  store i1 %R2, i1* %R0, align 8
  %R3 = load i1, i1* %R0, align 8
  %R4 = xor i1 1, %R3
  store i1 %R4, i1* %R1, align 8
  %R5 = load i1, i1* %R1, align 8
  br i1 %R5, label %L1, label %L2
L1:
  ret i1 1
L2:
  ret i1 0
}
define internal i1 @_B_bar (i64 %R0) {
  %R1 = alloca i64, align 8
  %R2 = alloca i1, align 8
  store i64 %R0, i64* %R1, align 8
  %R3 = load i64, i64* %R1, align 8
  %R4 = icmp eq i64 %R3, 1
  store i1 %R4, i1* %R2, align 8
  %R5 = load i1, i1* %R2, align 8
  ret i1 %R5
}
define internal void @_B_printBoolean (i1 %R0) {
  %R1 = alloca i1, align 8
  %R2 = alloca i1, align 8
  %R3 = alloca i1, align 8
  store i1 %R0, i1* %R1, align 8
  %R4 = load i1, i1* %R1, align 8
  br i1 %R4, label %L1, label %L2
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
