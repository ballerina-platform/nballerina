declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  %x = alloca i64
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i8*
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i8*
  %_12 = icmp eq i64 17, 17
  store i1 %_12, i1* %_0
  %_13 = load i1, i1* %_0
  br i1 %_13, label %L1, label %L2
L1:
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 17, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 144115188075855872
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_1
  br label %L3
L2:
  %_17 = call i8* @_bal_alloc (i64 8)
  %_18 = bitcast i8* %_17 to i64*
  store i64 0, i64* %_18, align 8
  %_19 = getelementptr i8, i8* %_17, i64 144115188075855872
  call void @_Bio__println (i8* %_19)
  store i8* null, i8** %_2
  br label %L3
L3:
  %_20 = icmp ne i64 21, 21
  store i1 %_20, i1* %_3
  %_21 = load i1, i1* %_3
  br i1 %_21, label %L4, label %L5
L4:
  %_22 = call i8* @_bal_alloc (i64 8)
  %_23 = bitcast i8* %_22 to i64*
  store i64 0, i64* %_23, align 8
  %_24 = getelementptr i8, i8* %_22, i64 144115188075855872
  call void @_Bio__println (i8* %_24)
  store i8* null, i8** %_4
  br label %L6
L5:
  %_25 = call i8* @_bal_alloc (i64 8)
  %_26 = bitcast i8* %_25 to i64*
  store i64 21, i64* %_26, align 8
  %_27 = getelementptr i8, i8* %_25, i64 144115188075855872
  call void @_Bio__println (i8* %_27)
  store i8* null, i8** %_5
  br label %L6
L6:
  store i64 42, i64* %x
  %_28 = load i64, i64* %x
  %_29 = icmp eq i64 %_28, 42
  store i1 %_29, i1* %_6
  %_30 = load i1, i1* %_6
  br i1 %_30, label %L7, label %L8
L7:
  %_31 = call i8* @_bal_alloc (i64 8)
  %_32 = bitcast i8* %_31 to i64*
  store i64 42, i64* %_32, align 8
  %_33 = getelementptr i8, i8* %_31, i64 144115188075855872
  call void @_Bio__println (i8* %_33)
  store i8* null, i8** %_7
  br label %L9
L8:
  %_34 = call i8* @_bal_alloc (i64 8)
  %_35 = bitcast i8* %_34 to i64*
  store i64 0, i64* %_35, align 8
  %_36 = getelementptr i8, i8* %_34, i64 144115188075855872
  call void @_Bio__println (i8* %_36)
  store i8* null, i8** %_8
  br label %L9
L9:
  %_37 = load i64, i64* %x
  %_38 = icmp ne i64 42, %_37
  store i1 %_38, i1* %_9
  %_39 = load i1, i1* %_9
  br i1 %_39, label %L10, label %L11
L10:
  %_40 = call i8* @_bal_alloc (i64 8)
  %_41 = bitcast i8* %_40 to i64*
  store i64 0, i64* %_41, align 8
  %_42 = getelementptr i8, i8* %_40, i64 144115188075855872
  call void @_Bio__println (i8* %_42)
  store i8* null, i8** %_10
  br label %L12
L11:
  %_43 = call i8* @_bal_alloc (i64 8)
  %_44 = bitcast i8* %_43 to i64*
  store i64 42, i64* %_44, align 8
  %_45 = getelementptr i8, i8* %_43, i64 144115188075855872
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_11
  br label %L12
L12:
  ret void
}
