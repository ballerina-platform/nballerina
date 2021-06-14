define void @abort () {
}
define i64 @foo (i64 %_0, i64 %_1) {
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %_2, align 8
  store i64 %_1, i64* %_3, align 8
  %_4 = load i64, i64* %_3, align 8
  %_5 = icmp eq i64 %_4, 0
  br i1 %_5, label %L3, label %L1
L1:
  %_6 = load i64, i64* %_2, align 8
  %_7 = icmp eq i64 %_6, -9223372036854775808
  br i1 %_7, label %L2, label %L4
L2:
  %_8 = load i64, i64* %_3, align 8
  %_9 = icmp eq i64 %_8, -1
  br i1 %_9, label %L3, label %L4
L3:
  call void @abort ()
L4:
  %_10 = load i64, i64* %_2, align 8
  %_11 = load i64, i64* %_3, align 8
  %_12 = sdiv i64 %_10, %_11
  ret i64 %_12
}
