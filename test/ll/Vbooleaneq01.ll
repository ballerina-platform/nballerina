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
  %_8 = alloca i8*
  %b = alloca i1
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i8*
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i8*
  %_15 = icmp eq i1 1, 1
  store i1 %_15, i1* %_0
  %_16 = load i1, i1* %_0
  br i1 %_16, label %L1, label %L2
L1:
  %_17 = call i8* @_bal_alloc (i64 8)
  %_18 = bitcast i8* %_17 to i64*
  store i64 4, i64* %_18, align 8
  %_19 = getelementptr i8, i8* %_17, i64 144115188075855872
  call void @_Bio__println (i8* %_19)
  store i8* null, i8** %_1
  br label %L3
L2:
  %_20 = call i8* @_bal_alloc (i64 8)
  %_21 = bitcast i8* %_20 to i64*
  store i64 5, i64* %_21, align 8
  %_22 = getelementptr i8, i8* %_20, i64 144115188075855872
  call void @_Bio__println (i8* %_22)
  store i8* null, i8** %_2
  br label %L3
L3:
  %_23 = icmp eq i1 0, 0
  store i1 %_23, i1* %_3
  %_24 = load i1, i1* %_3
  br i1 %_24, label %L4, label %L5
L4:
  %_25 = call i8* @_bal_alloc (i64 8)
  %_26 = bitcast i8* %_25 to i64*
  store i64 6, i64* %_26, align 8
  %_27 = getelementptr i8, i8* %_25, i64 144115188075855872
  call void @_Bio__println (i8* %_27)
  store i8* null, i8** %_4
  br label %L6
L5:
  %_28 = call i8* @_bal_alloc (i64 8)
  %_29 = bitcast i8* %_28 to i64*
  store i64 7, i64* %_29, align 8
  %_30 = getelementptr i8, i8* %_28, i64 144115188075855872
  call void @_Bio__println (i8* %_30)
  store i8* null, i8** %_5
  br label %L6
L6:
  %_31 = icmp ne i1 1, 1
  store i1 %_31, i1* %_6
  %_32 = load i1, i1* %_6
  br i1 %_32, label %L7, label %L8
L7:
  %_33 = call i8* @_bal_alloc (i64 8)
  %_34 = bitcast i8* %_33 to i64*
  store i64 8, i64* %_34, align 8
  %_35 = getelementptr i8, i8* %_33, i64 144115188075855872
  call void @_Bio__println (i8* %_35)
  store i8* null, i8** %_7
  br label %L9
L8:
  %_36 = call i8* @_bal_alloc (i64 8)
  %_37 = bitcast i8* %_36 to i64*
  store i64 9, i64* %_37, align 8
  %_38 = getelementptr i8, i8* %_36, i64 144115188075855872
  call void @_Bio__println (i8* %_38)
  store i8* null, i8** %_8
  br label %L9
L9:
  store i1 1, i1* %b
  %_39 = load i1, i1* %b
  %_40 = icmp eq i1 %_39, 1
  store i1 %_40, i1* %_9
  %_41 = load i1, i1* %_9
  br i1 %_41, label %L10, label %L11
L10:
  %_42 = call i8* @_bal_alloc (i64 8)
  %_43 = bitcast i8* %_42 to i64*
  store i64 10, i64* %_43, align 8
  %_44 = getelementptr i8, i8* %_42, i64 144115188075855872
  call void @_Bio__println (i8* %_44)
  store i8* null, i8** %_10
  br label %L12
L11:
  %_45 = call i8* @_bal_alloc (i64 8)
  %_46 = bitcast i8* %_45 to i64*
  store i64 11, i64* %_46, align 8
  %_47 = getelementptr i8, i8* %_45, i64 144115188075855872
  call void @_Bio__println (i8* %_47)
  store i8* null, i8** %_11
  br label %L12
L12:
  store i1 0, i1* %b
  %_48 = load i1, i1* %b
  %_49 = icmp eq i1 1, %_48
  store i1 %_49, i1* %_12
  %_50 = load i1, i1* %_12
  br i1 %_50, label %L13, label %L14
L13:
  %_51 = call i8* @_bal_alloc (i64 8)
  %_52 = bitcast i8* %_51 to i64*
  store i64 12, i64* %_52, align 8
  %_53 = getelementptr i8, i8* %_51, i64 144115188075855872
  call void @_Bio__println (i8* %_53)
  store i8* null, i8** %_13
  br label %L15
L14:
  %_54 = call i8* @_bal_alloc (i64 8)
  %_55 = bitcast i8* %_54 to i64*
  store i64 13, i64* %_55, align 8
  %_56 = getelementptr i8, i8* %_54, i64 144115188075855872
  call void @_Bio__println (i8* %_56)
  store i8* null, i8** %_14
  br label %L15
L15:
  ret void
}
