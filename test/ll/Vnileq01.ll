declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i1, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i1, align 8
  %_11 = alloca i1, align 8
  %_12 = alloca i1, align 8
  %_13 = alloca i1, align 8
  %_14 = alloca i1, align 8
  %_15 = alloca i1, align 8
  call void @_B_makeNil ()
  store i1 0, i1* %_1, align 8
  %_16 = load i1, i1* %_1, align 8
  %_17 = icmp eq i1 %_16, 0
  store i1 %_17, i1* %_0, align 8
  %_18 = load i1, i1* %_0, align 8
  br i1 %_18, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_2, align 8
  br label %L2
L2:
  call void @_B_makeNil ()
  store i1 0, i1* %_4, align 8
  %_19 = load i1, i1* %_4, align 8
  %_20 = icmp eq i1 0, %_19
  store i1 %_20, i1* %_3, align 8
  %_21 = load i1, i1* %_3, align 8
  br i1 %_21, label %L3, label %L4
L3:
  call void @_Bio__println (i64 2)
  store i1 0, i1* %_5, align 8
  br label %L4
L4:
  %_22 = icmp eq i1 0, 0
  store i1 %_22, i1* %_6, align 8
  %_23 = load i1, i1* %_6, align 8
  br i1 %_23, label %L5, label %L6
L5:
  call void @_Bio__println (i64 3)
  store i1 0, i1* %_7, align 8
  br label %L6
L6:
  call void @_B_makeNil ()
  store i1 0, i1* %_9, align 8
  %_24 = load i1, i1* %_9, align 8
  %_25 = icmp ne i1 %_24, 0
  store i1 %_25, i1* %_8, align 8
  %_26 = load i1, i1* %_8, align 8
  br i1 %_26, label %L7, label %L8
L7:
  call void @_Bio__println (i64 4)
  store i1 0, i1* %_10, align 8
  br label %L8
L8:
  call void @_B_makeNil ()
  store i1 0, i1* %_12, align 8
  %_27 = load i1, i1* %_12, align 8
  %_28 = icmp ne i1 0, %_27
  store i1 %_28, i1* %_11, align 8
  %_29 = load i1, i1* %_11, align 8
  br i1 %_29, label %L9, label %L10
L9:
  call void @_Bio__println (i64 5)
  store i1 0, i1* %_13, align 8
  br label %L10
L10:
  %_30 = icmp ne i1 0, 0
  store i1 %_30, i1* %_14, align 8
  %_31 = load i1, i1* %_14, align 8
  br i1 %_31, label %L11, label %L12
L11:
  call void @_Bio__println (i64 6)
  store i1 0, i1* %_15, align 8
  br label %L12
L12:
  ret void
}
define internal void @_B_makeNil () {
  ret void
}
