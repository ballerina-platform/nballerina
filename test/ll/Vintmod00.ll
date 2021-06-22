declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = call i64 @_B_mod (i64 5, i64 3)
  store i64 %_6, i64* %_0
  %_7 = load i64, i64* %_0
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 %_7, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 144115188075855872
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_1
  %_11 = call i64 @_B_mod (i64 7, i64 7)
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  %_13 = call i8* @_bal_alloc (i64 8)
  %_14 = bitcast i8* %_13 to i64*
  store i64 %_12, i64* %_14, align 8
  %_15 = getelementptr i8, i8* %_13, i64 144115188075855872
  call void @_Bio__println (i8* %_15)
  store i8* null, i8** %_3
  %_16 = call i64 @_B_mod (i64 6, i64 9)
  store i64 %_16, i64* %_4
  %_17 = load i64, i64* %_4
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 %_17, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 144115188075855872
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_5
  ret void
}
define internal i64 @_B_mod (i64 %_0, i64 %_1) {
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
