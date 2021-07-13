define void @abort () {
}
define i64 @foo (i64 %_0, i64 %_1) {
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i64
  store i64 %_0, i64* %_3
  store i64 %_1, i64* %_4
  %_5 = load i64, i64* %_4
  %_6 = icmp eq i64 %_5, 0
  br i1 %_6, label %L1, label %L2
L1:
  call void @abort ()
L2:
  %_7 = load i64, i64* %_3
  %_8 = icmp eq i64 %_7, -9223372036854775808
  br i1 %_8, label %L4, label %L3
L3:
  %_11 = load i64, i64* %_3
  %_12 = load i64, i64* %_4
  %_13 = srem i64 %_11, %_12
  store i64 %_13, i64* %_2
  br label %L6
L4:
  %_9 = load i64, i64* %_4
  %_10 = icmp eq i64 %_9, -1
  br i1 %_10, label %L5, label %L3
L5:
  store i64 0, i64* %_2
  br label %L6
L6:
  %_14 = load i64, i64* %_2
  ret i64 %_14
}
