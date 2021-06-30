@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
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
  %_9 = alloca i8
  %_10 = load i8*, i8** @_bal_stack_guard
  %_11 = icmp ult i8* %_9, %_10
  br i1 %_11, label %L2, label %L1
L1:
  %_12 = call i64 @_B_neg (i64 17)
  store i64 %_12, i64* %_0
  %_13 = load i64, i64* %_0
  store i64 %_13, i64* %neg1
  %_14 = load i64, i64* %neg1
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 %_14, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 504403158265495552
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_1
  %_18 = call i64 @_B_neg (i64 0)
  store i64 %_18, i64* %_2
  %_19 = load i64, i64* %_2
  %_20 = call i8* @_bal_alloc (i64 8)
  %_21 = bitcast i8* %_20 to i64*
  store i64 %_19, i64* %_21, align 8
  %_22 = getelementptr i8, i8* %_20, i64 504403158265495552
  call void @_Bio__println (i8* %_22)
  store i8* null, i8** %_3
  %_23 = call i64 @_B_neg (i64 -1)
  store i64 %_23, i64* %_5
  %_24 = load i64, i64* %_5
  %_25 = call i8* @_bal_alloc (i64 8)
  %_26 = bitcast i8* %_25 to i64*
  store i64 %_24, i64* %_26, align 8
  %_27 = getelementptr i8, i8* %_25, i64 504403158265495552
  call void @_Bio__println (i8* %_27)
  store i8* null, i8** %_6
  %_28 = call i64 @_B_negneg (i64 1)
  store i64 %_28, i64* %_7
  %_29 = load i64, i64* %_7
  %_30 = call i8* @_bal_alloc (i64 8)
  %_31 = bitcast i8* %_30 to i64*
  store i64 %_29, i64* %_31, align 8
  %_32 = getelementptr i8, i8* %_30, i64 504403158265495552
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_8
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
define internal i64 @_B_neg (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  %_6 = load i64, i64* %x
  %_7 = sub i64 0, %_6
  store i64 %_7, i64* %_1
  %_8 = load i64, i64* %_1
  ret i64 %_8
  %_9 = load i64, i64* %_2
  call void @_bal_panic (i64 %_9)
  unreachable
L3:
  call void @_bal_panic (i64 2564)
  unreachable
}
define internal i64 @_B_negneg (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  %_7 = load i64, i64* %x
  %_8 = sub i64 0, %_7
  store i64 %_8, i64* %_1
  %_9 = load i64, i64* %_1
  %_10 = sub i64 0, %_9
  store i64 %_10, i64* %_2
  %_11 = load i64, i64* %_2
  ret i64 %_11
  %_12 = load i64, i64* %_3
  call void @_bal_panic (i64 %_12)
  unreachable
L3:
  call void @_bal_panic (i64 3588)
  unreachable
}
