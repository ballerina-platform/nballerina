declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
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
  %_19 = call i8* @_bal_alloc (i64 8)
  %_20 = bitcast i8* %_19 to i64*
  store i64 1, i64* %_20, align 8
  %_21 = getelementptr i8, i8* %_19, i64 144115188075855872
  call void @_Bio__println (i8* %_21)
  store i8* null, i8** %_2
  br label %L2
L2:
  call void @_B_makeNil ()
  store i8* null, i8** %_4
  %_22 = load i8*, i8** %_4
  %_23 = icmp eq i8* null, %_22
  store i1 %_23, i1* %_3
  %_24 = load i1, i1* %_3
  br i1 %_24, label %L3, label %L4
L3:
  %_25 = call i8* @_bal_alloc (i64 8)
  %_26 = bitcast i8* %_25 to i64*
  store i64 2, i64* %_26, align 8
  %_27 = getelementptr i8, i8* %_25, i64 144115188075855872
  call void @_Bio__println (i8* %_27)
  store i8* null, i8** %_5
  br label %L4
L4:
  %_28 = icmp eq i8* null, null
  store i1 %_28, i1* %_6
  %_29 = load i1, i1* %_6
  br i1 %_29, label %L5, label %L6
L5:
  %_30 = call i8* @_bal_alloc (i64 8)
  %_31 = bitcast i8* %_30 to i64*
  store i64 3, i64* %_31, align 8
  %_32 = getelementptr i8, i8* %_30, i64 144115188075855872
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_7
  br label %L6
L6:
  call void @_B_makeNil ()
  store i8* null, i8** %_9
  %_33 = load i8*, i8** %_9
  %_34 = icmp ne i8* %_33, null
  store i1 %_34, i1* %_8
  %_35 = load i1, i1* %_8
  br i1 %_35, label %L7, label %L8
L7:
  %_36 = call i8* @_bal_alloc (i64 8)
  %_37 = bitcast i8* %_36 to i64*
  store i64 4, i64* %_37, align 8
  %_38 = getelementptr i8, i8* %_36, i64 144115188075855872
  call void @_Bio__println (i8* %_38)
  store i8* null, i8** %_10
  br label %L8
L8:
  call void @_B_makeNil ()
  store i8* null, i8** %_12
  %_39 = load i8*, i8** %_12
  %_40 = icmp ne i8* null, %_39
  store i1 %_40, i1* %_11
  %_41 = load i1, i1* %_11
  br i1 %_41, label %L9, label %L10
L9:
  %_42 = call i8* @_bal_alloc (i64 8)
  %_43 = bitcast i8* %_42 to i64*
  store i64 5, i64* %_43, align 8
  %_44 = getelementptr i8, i8* %_42, i64 144115188075855872
  call void @_Bio__println (i8* %_44)
  store i8* null, i8** %_13
  br label %L10
L10:
  %_45 = icmp ne i8* null, null
  store i1 %_45, i1* %_14
  %_46 = load i1, i1* %_14
  br i1 %_46, label %L11, label %L12
L11:
  %_47 = call i8* @_bal_alloc (i64 8)
  %_48 = bitcast i8* %_47 to i64*
  store i64 6, i64* %_48, align 8
  %_49 = getelementptr i8, i8* %_47, i64 144115188075855872
  call void @_Bio__println (i8* %_49)
  store i8* null, i8** %_15
  br label %L12
L12:
  ret void
}
define internal void @_B_makeNil () {
  ret void
}
