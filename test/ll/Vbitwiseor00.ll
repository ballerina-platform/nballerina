@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %i = alloca i64
  %j = alloca i64
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8*
  %_11 = alloca i8
  %_12 = load i8*, i8** @_bal_stack_guard
  %_13 = icmp ult i8* %_11, %_12
  br i1 %_13, label %L2, label %L1
L1:
  store i64 5, i64* %i
  store i64 9, i64* %j
  %_14 = load i64, i64* %i
  %_15 = load i64, i64* %j
  %_16 = or i64 %_14, %_15
  store i64 %_16, i64* %_0
  %_17 = load i64, i64* %_0
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 %_17, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 144115188075855872
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_1
  store i64 9223372036854775807, i64* %i
  store i64 9223372036854775807, i64* %j
  %_21 = load i64, i64* %i
  %_22 = load i64, i64* %j
  %_23 = or i64 %_21, %_22
  store i64 %_23, i64* %_2
  %_24 = load i64, i64* %_2
  %_25 = call i8* @_bal_alloc (i64 8)
  %_26 = bitcast i8* %_25 to i64*
  store i64 %_24, i64* %_26, align 8
  %_27 = getelementptr i8, i8* %_25, i64 144115188075855872
  call void @_Bio__println (i8* %_27)
  store i8* null, i8** %_3
  store i64 -1, i64* %i
  store i64 -1, i64* %j
  %_28 = load i64, i64* %i
  %_29 = load i64, i64* %j
  %_30 = or i64 %_28, %_29
  store i64 %_30, i64* %_6
  %_31 = load i64, i64* %_6
  %_32 = call i8* @_bal_alloc (i64 8)
  %_33 = bitcast i8* %_32 to i64*
  store i64 %_31, i64* %_33, align 8
  %_34 = getelementptr i8, i8* %_32, i64 144115188075855872
  call void @_Bio__println (i8* %_34)
  store i8* null, i8** %_7
  store i64 9223372036854775807, i64* %i
  store i64 -1, i64* %j
  %_35 = load i64, i64* %i
  %_36 = load i64, i64* %j
  %_37 = or i64 %_35, %_36
  store i64 %_37, i64* %_9
  %_38 = load i64, i64* %_9
  %_39 = call i8* @_bal_alloc (i64 8)
  %_40 = bitcast i8* %_39 to i64*
  store i64 %_38, i64* %_40, align 8
  %_41 = getelementptr i8, i8* %_39, i64 144115188075855872
  call void @_Bio__println (i8* %_41)
  store i8* null, i8** %_10
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
