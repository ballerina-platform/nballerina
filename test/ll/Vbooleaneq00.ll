declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i1, align 8
  call void @_B_printEq (i1 1, i1 1)
  store i1 0, i1* %_0, align 8
  call void @_B_printEq (i1 1, i1 0)
  store i1 0, i1* %_1, align 8
  call void @_B_printEq (i1 0, i1 1)
  store i1 0, i1* %_2, align 8
  call void @_B_printEq (i1 0, i1 0)
  store i1 0, i1* %_3, align 8
  call void @_B_printNotEq (i1 1, i1 1)
  store i1 0, i1* %_4, align 8
  call void @_B_printNotEq (i1 1, i1 0)
  store i1 0, i1* %_5, align 8
  call void @_B_printNotEq (i1 0, i1 1)
  store i1 0, i1* %_6, align 8
  call void @_B_printNotEq (i1 0, i1 0)
  store i1 0, i1* %_7, align 8
  ret void
}
define internal void @_B_printEq (i1 %_0, i1 %_1) {
  %b1 = alloca i1, align 8
  %b2 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  store i1 %_0, i1* %b1, align 8
  store i1 %_1, i1* %b2, align 8
  %_5 = load i1, i1* %b1, align 8
  %_6 = load i1, i1* %b2, align 8
  %_7 = icmp eq i1 %_5, %_6
  store i1 %_7, i1* %_2, align 8
  %_8 = load i1, i1* %_2, align 8
  br i1 %_8, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_3, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_4, align 8
  br label %L3
L3:
  ret void
}
define internal void @_B_printNotEq (i1 %_0, i1 %_1) {
  %b1 = alloca i1, align 8
  %b2 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  store i1 %_0, i1* %b1, align 8
  store i1 %_1, i1* %b2, align 8
  %_5 = load i1, i1* %b1, align 8
  %_6 = load i1, i1* %b2, align 8
  %_7 = icmp ne i1 %_5, %_6
  store i1 %_7, i1* %_2, align 8
  %_8 = load i1, i1* %_2, align 8
  br i1 %_8, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_3, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_4, align 8
  br label %L3
L3:
  ret void
}
