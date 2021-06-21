declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8*
  %_3 = call i64 @_B_rem (i64 -10000, i64 0)
  store i64 %_3, i64* %_1
  %_4 = load i64, i64* %_1
  call void @_Bio__println (i64 %_4)
  store i8* null, i8** %_2
  ret void
}
define internal i64 @_B_rem (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_4 = load i64, i64* %x
  %_5 = load i64, i64* %y
  %_6 = icmp eq i64 %_5, 0
  br i1 %_6, label %L2, label %L3
L1:
  %_12 = load i64, i64* %_3
  call void @_bal_panic (i64 %_12)
  unreachable
L2:
  store i64 2, i64* %_3
  br label %L1
L3:
  %_7 = icmp eq i64 %_4, -9223372036854775808
  %_8 = icmp eq i64 %_5, -1
  %_9 = and i1 %_7, %_8
  br i1 %_9, label %L5, label %L4
L4:
  %_10 = srem i64 %_4, %_5
  store i64 %_10, i64* %_2
  br label %L6
L5:
  store i64 0, i64* %_2
  br label %L6
L6:
  %_11 = load i64, i64* %_2
  ret i64 %_11
}
