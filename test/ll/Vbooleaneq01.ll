@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
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
  %_15 = alloca i8
  %_16 = load i8*, i8** @_bal_stack_guard
  %_17 = icmp ult i8* %_15, %_16
  br i1 %_17, label %L17, label %L1
L1:
  %_18 = icmp eq i1 1, 1
  store i1 %_18, i1* %_0
  %_19 = load i1, i1* %_0
  br i1 %_19, label %L2, label %L3
L2:
  %_20 = call i8* @_bal_alloc (i64 8)
  %_21 = bitcast i8* %_20 to i64*
  store i64 4, i64* %_21, align 8
  %_22 = getelementptr i8, i8* %_20, i64 504403158265495552
  call void @_Bio__println (i8* %_22)
  store i8* null, i8** %_1
  br label %L4
L3:
  %_23 = call i8* @_bal_alloc (i64 8)
  %_24 = bitcast i8* %_23 to i64*
  store i64 5, i64* %_24, align 8
  %_25 = getelementptr i8, i8* %_23, i64 504403158265495552
  call void @_Bio__println (i8* %_25)
  store i8* null, i8** %_2
  br label %L4
L4:
  %_26 = icmp eq i1 0, 0
  store i1 %_26, i1* %_3
  %_27 = load i1, i1* %_3
  br i1 %_27, label %L5, label %L6
L5:
  %_28 = call i8* @_bal_alloc (i64 8)
  %_29 = bitcast i8* %_28 to i64*
  store i64 6, i64* %_29, align 8
  %_30 = getelementptr i8, i8* %_28, i64 504403158265495552
  call void @_Bio__println (i8* %_30)
  store i8* null, i8** %_4
  br label %L7
L6:
  %_31 = call i8* @_bal_alloc (i64 8)
  %_32 = bitcast i8* %_31 to i64*
  store i64 7, i64* %_32, align 8
  %_33 = getelementptr i8, i8* %_31, i64 504403158265495552
  call void @_Bio__println (i8* %_33)
  store i8* null, i8** %_5
  br label %L7
L7:
  %_34 = icmp ne i1 1, 1
  store i1 %_34, i1* %_6
  %_35 = load i1, i1* %_6
  br i1 %_35, label %L8, label %L9
L8:
  %_36 = call i8* @_bal_alloc (i64 8)
  %_37 = bitcast i8* %_36 to i64*
  store i64 8, i64* %_37, align 8
  %_38 = getelementptr i8, i8* %_36, i64 504403158265495552
  call void @_Bio__println (i8* %_38)
  store i8* null, i8** %_7
  br label %L10
L9:
  %_39 = call i8* @_bal_alloc (i64 8)
  %_40 = bitcast i8* %_39 to i64*
  store i64 9, i64* %_40, align 8
  %_41 = getelementptr i8, i8* %_39, i64 504403158265495552
  call void @_Bio__println (i8* %_41)
  store i8* null, i8** %_8
  br label %L10
L10:
  store i1 1, i1* %b
  %_42 = load i1, i1* %b
  %_43 = icmp eq i1 %_42, 1
  store i1 %_43, i1* %_9
  %_44 = load i1, i1* %_9
  br i1 %_44, label %L11, label %L12
L11:
  %_45 = call i8* @_bal_alloc (i64 8)
  %_46 = bitcast i8* %_45 to i64*
  store i64 10, i64* %_46, align 8
  %_47 = getelementptr i8, i8* %_45, i64 504403158265495552
  call void @_Bio__println (i8* %_47)
  store i8* null, i8** %_10
  br label %L13
L12:
  %_48 = call i8* @_bal_alloc (i64 8)
  %_49 = bitcast i8* %_48 to i64*
  store i64 11, i64* %_49, align 8
  %_50 = getelementptr i8, i8* %_48, i64 504403158265495552
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_11
  br label %L13
L13:
  store i1 0, i1* %b
  %_51 = load i1, i1* %b
  %_52 = icmp eq i1 1, %_51
  store i1 %_52, i1* %_12
  %_53 = load i1, i1* %_12
  br i1 %_53, label %L14, label %L15
L14:
  %_54 = call i8* @_bal_alloc (i64 8)
  %_55 = bitcast i8* %_54 to i64*
  store i64 12, i64* %_55, align 8
  %_56 = getelementptr i8, i8* %_54, i64 504403158265495552
  call void @_Bio__println (i8* %_56)
  store i8* null, i8** %_13
  br label %L16
L15:
  %_57 = call i8* @_bal_alloc (i64 8)
  %_58 = bitcast i8* %_57 to i64*
  store i64 13, i64* %_58, align 8
  %_59 = getelementptr i8, i8* %_57, i64 504403158265495552
  call void @_Bio__println (i8* %_59)
  store i8* null, i8** %_14
  br label %L16
L16:
  ret void
L17:
  call void @_bal_panic (i64 772)
  unreachable
}
