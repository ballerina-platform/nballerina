declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = call i1 @_B_not (i1 1)
  store i1 %_4, i1* %_0, align 8
  %_5 = load i1, i1* %_0, align 8
  call void @_B_printBoolean (i1 %_5)
  store i1 0, i1* %_1, align 8
  %_6 = call i1 @_B_not (i1 0)
  store i1 %_6, i1* %_2, align 8
  %_7 = load i1, i1* %_2, align 8
  call void @_B_printBoolean (i1 %_7)
  store i1 0, i1* %_3, align 8
  ret void
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  store i1 %_0, i1* %b, align 8
  %_3 = load i1, i1* %b, align 8
  br i1 %_3, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_1, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_2, align 8
  br label %L3
L3:
  ret void
}
define internal i1 @_B_not (i1 %_0) {
  %b = alloca i1, align 8
  %_1 = alloca i1, align 8
  store i1 %_0, i1* %b, align 8
  %_2 = load i1, i1* %b, align 8
  %_3 = xor i1 1, %_2
  store i1 %_3, i1* %_1, align 8
  %_4 = load i1, i1* %_1, align 8
  ret i1 %_4
}
