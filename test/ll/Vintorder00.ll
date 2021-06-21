declare void @_Bio__println (i64)
define void @_B_main () {
  %x = alloca i64
  %y = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i1
  %_8 = alloca i8*
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i1
  %_12 = alloca i8*
  %_13 = alloca i1
  %_14 = alloca i8*
  %_15 = alloca i64
  %_16 = alloca i1
  %_17 = alloca i8*
  store i64 1, i64* %x
  store i64 2, i64* %y
  %_18 = load i64, i64* %x
  %_19 = load i64, i64* %y
  %_20 = icmp slt i64 %_18, %_19
  store i1 %_20, i1* %_0
  %_21 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_21)
  store i8* null, i8** %_1
  %_22 = call i1 @_B_greaterThan (i64 1, i64 2)
  store i1 %_22, i1* %_2
  %_23 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_23)
  store i8* null, i8** %_3
  %_24 = call i1 @_B_greaterThan (i64 2, i64 1)
  store i1 %_24, i1* %_4
  %_25 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_25)
  store i8* null, i8** %_5
  %_26 = call i1 @_B_greaterThan (i64 2, i64 -1)
  store i1 %_26, i1* %_7
  %_27 = load i1, i1* %_7
  call void @_B_printBoolean (i1 %_27)
  store i8* null, i8** %_8
  %_28 = call i1 @_B_lessThan (i64 1, i64 2)
  store i1 %_28, i1* %_9
  %_29 = load i1, i1* %_9
  call void @_B_printBoolean (i1 %_29)
  store i8* null, i8** %_10
  %_30 = call i1 @_B_lessThan (i64 0, i64 0)
  store i1 %_30, i1* %_11
  %_31 = load i1, i1* %_11
  call void @_B_printBoolean (i1 %_31)
  store i8* null, i8** %_12
  %_32 = call i1 @_B_lessThan (i64 2, i64 1)
  store i1 %_32, i1* %_13
  %_33 = load i1, i1* %_13
  call void @_B_printBoolean (i1 %_33)
  store i8* null, i8** %_14
  %_34 = call i1 @_B_lessThan (i64 -1, i64 17)
  store i1 %_34, i1* %_16
  %_35 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_35)
  store i8* null, i8** %_17
  ret void
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i1 %_0, i1* %b
  %_3 = load i1, i1* %b
  br i1 %_3, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_1
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i8* null, i8** %_2
  br label %L3
L3:
  ret void
}
define internal i1 @_B_lessThan (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_3 = load i64, i64* %x
  %_4 = load i64, i64* %y
  %_5 = icmp slt i64 %_3, %_4
  store i1 %_5, i1* %_2
  %_6 = load i1, i1* %_2
  ret i1 %_6
}
define internal i1 @_B_greaterThan (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_3 = load i64, i64* %x
  %_4 = load i64, i64* %y
  %_5 = icmp sgt i64 %_3, %_4
  store i1 %_5, i1* %_2
  %_6 = load i1, i1* %_2
  ret i1 %_6
}
