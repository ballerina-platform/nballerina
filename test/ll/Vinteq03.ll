@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i8
  %_10 = load i8*, i8** @_bal_stack_guard
  %_11 = icmp ult i8* %_9, %_10
  br i1 %_11, label %L2, label %L1
L1:
  %_12 = and i64 1, 1
  store i64 %_12, i64* %_1
  %_13 = load i64, i64* %_1
  %_14 = icmp eq i64 %_13, 2
  store i1 %_14, i1* %_0
  %_15 = load i1, i1* %_0
  %_16 = zext i1 %_15 to i64
  %_17 = or i64 %_16, 72057594037927936
  %_18 = getelementptr i8, i8* null, i64 %_17
  call void @_Bio__println (i8* %_18)
  store i8* null, i8** %_2
  %_19 = xor i64 1, 1
  store i64 %_19, i64* %_4
  %_20 = load i64, i64* %_4
  %_21 = icmp ne i64 %_20, 255
  store i1 %_21, i1* %_3
  %_22 = load i1, i1* %_3
  %_23 = zext i1 %_22 to i64
  %_24 = or i64 %_23, 72057594037927936
  %_25 = getelementptr i8, i8* null, i64 %_24
  call void @_Bio__println (i8* %_25)
  store i8* null, i8** %_5
  %_26 = or i64 65535, 17
  store i64 %_26, i64* %_7
  %_27 = load i64, i64* %_7
  %_28 = icmp eq i64 %_27, 1000
  store i1 %_28, i1* %_6
  %_29 = load i1, i1* %_6
  %_30 = zext i1 %_29 to i64
  %_31 = or i64 %_30, 72057594037927936
  %_32 = getelementptr i8, i8* null, i64 %_31
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_8
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
