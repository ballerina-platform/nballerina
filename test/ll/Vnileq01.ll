declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i1
  %_9 = alloca i8*
  %_10 = alloca i8*
  %_11 = alloca i1
  %_12 = alloca i8*
  %_13 = alloca i8*
  %_14 = alloca i1
  %_15 = alloca i8*
  call void @_B_makeNil ()
  store i8* null, i8** %_1
  %_16 = load i8*, i8** %_1
  %_17 = icmp eq i8* %_16, null
  store i1 %_17, i1* %_0
  %_18 = load i1, i1* %_0
  br i1 %_18, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_2
  br label %L2
L2:
  call void @_B_makeNil ()
  store i8* null, i8** %_4
  %_19 = load i8*, i8** %_4
  %_20 = icmp eq i8* null, %_19
  store i1 %_20, i1* %_3
  %_21 = load i1, i1* %_3
  br i1 %_21, label %L3, label %L4
L3:
  call void @_Bio__println (i64 2)
  store i8* null, i8** %_5
  br label %L4
L4:
  %_22 = icmp eq i8* null, null
  store i1 %_22, i1* %_6
  %_23 = load i1, i1* %_6
  br i1 %_23, label %L5, label %L6
L5:
  call void @_Bio__println (i64 3)
  store i8* null, i8** %_7
  br label %L6
L6:
  call void @_B_makeNil ()
  store i8* null, i8** %_9
  %_24 = load i8*, i8** %_9
  %_25 = icmp ne i8* %_24, null
  store i1 %_25, i1* %_8
  %_26 = load i1, i1* %_8
  br i1 %_26, label %L7, label %L8
L7:
  call void @_Bio__println (i64 4)
  store i8* null, i8** %_10
  br label %L8
L8:
  call void @_B_makeNil ()
  store i8* null, i8** %_12
  %_27 = load i8*, i8** %_12
  %_28 = icmp ne i8* null, %_27
  store i1 %_28, i1* %_11
  %_29 = load i1, i1* %_11
  br i1 %_29, label %L9, label %L10
L9:
  call void @_Bio__println (i64 5)
  store i8* null, i8** %_13
  br label %L10
L10:
  %_30 = icmp ne i8* null, null
  store i1 %_30, i1* %_14
  %_31 = load i1, i1* %_14
  br i1 %_31, label %L11, label %L12
L11:
  call void @_Bio__println (i64 6)
  store i8* null, i8** %_15
  br label %L12
L12:
  ret void
}
define internal void @_B_makeNil () {
  ret void
}
