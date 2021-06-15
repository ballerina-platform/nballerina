declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i1, align 8
  %_6 = call i64 @_B_mod (i64 5, i64 3)
  store i64 %_6, i64* %_0, align 8
  %_7 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_7)
  store i1 0, i1* %_1, align 8
  %_8 = call i64 @_B_mod (i64 7, i64 7)
  store i64 %_8, i64* %_2, align 8
  %_9 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_9)
  store i1 0, i1* %_3, align 8
  %_10 = call i64 @_B_mod (i64 6, i64 9)
  store i64 %_10, i64* %_4, align 8
  %_11 = load i64, i64* %_4, align 8
  call void @_Bio__println (i64 %_11)
  store i1 0, i1* %_5, align 8
  ret void
}
define internal i64 @_B_mod (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_6 = load i64, i64* %x, align 8
  %_7 = load i64, i64* %y, align 8
  %_8 = icmp eq i64 %_7, 0
  br i1 %_8, label %L2, label %L3
L1:
  %_14 = load i64, i64* %_5, align 8
  call void @_bal_panic (i64 %_14)
  unreachable
L2:
  store i64 2, i64* %_5, align 8
  br label %L1
L3:
  %_9 = icmp eq i64 %_6, -9223372036854775808
  %_10 = icmp eq i64 %_7, -1
  %_11 = and i1 %_9, %_10
  br i1 %_11, label %L5, label %L4
L4:
  %_12 = srem i64 %_6, %_7
  store i64 %_12, i64* %_4, align 8
  br label %L6
L5:
  store i64 0, i64* %_4, align 8
  br label %L6
L6:
  %_13 = load i64, i64* %_4, align 8
  ret i64 %_13
}
