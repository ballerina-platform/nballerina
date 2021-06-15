declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i1, align 8
  %_6 = call i64 @_B_foo (i64 1, i64 1)
  store i64 %_6, i64* %_0, align 8
  %_7 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_7)
  store i1 0, i1* %_1, align 8
  %_8 = call i64 @_B_foo (i64 1, i64 10)
  store i64 %_8, i64* %_2, align 8
  %_9 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_9)
  store i1 0, i1* %_3, align 8
  %_10 = call i64 @_B_foo (i64 11, i64 1)
  store i64 %_10, i64* %_4, align 8
  %_11 = load i64, i64* %_4, align 8
  call void @_Bio__println (i64 %_11)
  store i1 0, i1* %_5, align 8
  ret void
}
define internal i64 @_B_foo (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_9 = load i64, i64* %x, align 8
  %_10 = call i64 @_B_bar (i64 %_9)
  store i64 %_10, i64* %_3, align 8
  %_11 = load i64, i64* %y, align 8
  %_12 = call i64 @_B_baz (i64 %_11)
  store i64 %_12, i64* %_4, align 8
  %_13 = load i64, i64* %_3, align 8
  %_14 = load i64, i64* %_4, align 8
  %_15 = icmp eq i64 %_13, %_14
  store i1 %_15, i1* %_2, align 8
  %_16 = load i1, i1* %_2, align 8
  br i1 %_16, label %L1, label %L2
L1:
  ret i64 0
L2:
  %_17 = load i64, i64* %x, align 8
  %_18 = call i64 @_B_bar (i64 %_17)
  store i64 %_18, i64* %_6, align 8
  %_19 = load i64, i64* %y, align 8
  %_20 = call i64 @_B_baz (i64 %_19)
  store i64 %_20, i64* %_7, align 8
  %_21 = load i64, i64* %_6, align 8
  %_22 = load i64, i64* %_7, align 8
  %_23 = icmp sgt i64 %_21, %_22
  store i1 %_23, i1* %_5, align 8
  %_24 = load i1, i1* %_5, align 8
  br i1 %_24, label %L3, label %L4
L3:
  ret i64 1
L4:
  ret i64 -1
}
define internal i64 @_B_bar (i64 %_0) {
  %x = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  %_1 = load i64, i64* %x, align 8
  ret i64 %_1
}
define internal i64 @_B_baz (i64 %_0) {
  %x = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  %_1 = load i64, i64* %x, align 8
  ret i64 %_1
}
