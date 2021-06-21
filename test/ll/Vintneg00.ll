declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %neg1 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = call i64 @_B_neg (i64 17)
  store i64 %_9, i64* %_0
  %_10 = load i64, i64* %_0
  store i64 %_10, i64* %neg1
  %_11 = load i64, i64* %neg1
  call void @_Bio__println (i64 %_11)
  store i8* null, i8** %_1
  %_12 = call i64 @_B_neg (i64 0)
  store i64 %_12, i64* %_2
  %_13 = load i64, i64* %_2
  call void @_Bio__println (i64 %_13)
  store i8* null, i8** %_3
  %_14 = call i64 @_B_neg (i64 -1)
  store i64 %_14, i64* %_5
  %_15 = load i64, i64* %_5
  call void @_Bio__println (i64 %_15)
  store i8* null, i8** %_6
  %_16 = call i64 @_B_negneg (i64 1)
  store i64 %_16, i64* %_7
  %_17 = load i64, i64* %_7
  call void @_Bio__println (i64 %_17)
  store i8* null, i8** %_8
  ret void
}
define internal i64 @_B_neg (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  store i64 %_0, i64* %x
  %_3 = load i64, i64* %x
  %_4 = sub i64 0, %_3
  store i64 %_4, i64* %_1
  %_5 = load i64, i64* %_1
  ret i64 %_5
  %_6 = load i64, i64* %_2
  call void @_bal_panic (i64 %_6)
  unreachable
}
define internal i64 @_B_negneg (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %x
  %_4 = load i64, i64* %x
  %_5 = sub i64 0, %_4
  store i64 %_5, i64* %_1
  %_6 = load i64, i64* %_1
  %_7 = sub i64 0, %_6
  store i64 %_7, i64* %_2
  %_8 = load i64, i64* %_2
  ret i64 %_8
  %_9 = load i64, i64* %_3
  call void @_bal_panic (i64 %_9)
  unreachable
}
