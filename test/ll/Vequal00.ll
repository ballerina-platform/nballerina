declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i1, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i1, align 8
  %_11 = alloca i1, align 8
  %_12 = alloca i1, align 8
  %_13 = alloca i64, align 8
  %_14 = alloca i1, align 8
  %_15 = alloca i1, align 8
  %_16 = call i1 @_B_eq (i64 1, i64 2)
  store i1 %_16, i1* %_0, align 8
  %_17 = load i1, i1* %_0, align 8
  call void @_B_printBoolean (i1 %_17)
  store i1 0, i1* %_1, align 8
  %_18 = call i1 @_B_ne (i64 2, i64 1)
  store i1 %_18, i1* %_2, align 8
  %_19 = load i1, i1* %_2, align 8
  call void @_B_printBoolean (i1 %_19)
  store i1 0, i1* %_3, align 8
  %_20 = call i1 @_B_eq (i64 2, i64 -1)
  store i1 %_20, i1* %_5, align 8
  %_21 = load i1, i1* %_5, align 8
  call void @_B_printBoolean (i1 %_21)
  store i1 0, i1* %_6, align 8
  %_22 = call i1 @_B_ne (i64 1, i64 2)
  store i1 %_22, i1* %_7, align 8
  %_23 = load i1, i1* %_7, align 8
  call void @_B_printBoolean (i1 %_23)
  store i1 0, i1* %_8, align 8
  %_24 = call i1 @_B_eq (i64 0, i64 0)
  store i1 %_24, i1* %_9, align 8
  %_25 = load i1, i1* %_9, align 8
  call void @_B_printBoolean (i1 %_25)
  store i1 0, i1* %_10, align 8
  %_26 = call i1 @_B_ne (i64 2, i64 1)
  store i1 %_26, i1* %_11, align 8
  %_27 = load i1, i1* %_11, align 8
  call void @_B_printBoolean (i1 %_27)
  store i1 0, i1* %_12, align 8
  %_28 = call i1 @_B_eq (i64 -1, i64 17)
  store i1 %_28, i1* %_14, align 8
  %_29 = load i1, i1* %_14, align 8
  call void @_B_printBoolean (i1 %_29)
  store i1 0, i1* %_15, align 8
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
define internal i1 @_B_eq (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_2 = alloca i1, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_3 = load i64, i64* %x, align 8
  %_4 = load i64, i64* %y, align 8
  %_5 = icmp eq i64 %_3, %_4
  store i1 %_5, i1* %_2, align 8
  %_6 = load i1, i1* %_2, align 8
  ret i1 %_6
}
define internal i1 @_B_ne (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_2 = alloca i1, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_3 = load i64, i64* %x, align 8
  %_4 = load i64, i64* %y, align 8
  %_5 = icmp ne i64 %_3, %_4
  store i1 %_5, i1* %_2, align 8
  %_6 = load i1, i1* %_2, align 8
  ret i1 %_6
}
