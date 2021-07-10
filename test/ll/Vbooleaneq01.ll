@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i8*
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
  store i1 %_19, i1* %b
  %_20 = load i1, i1* %b
  br i1 %_20, label %L2, label %L3
L2:
  %_21 = call i8* @_bal_alloc (i64 8)
  %_22 = bitcast i8* %_21 to i64*
  store i64 4, i64* %_22, align 8
  %_23 = getelementptr i8, i8* %_21, i64 504403158265495552
  call void @_Bio__println (i8* %_23)
  store i8* null, i8** %_1
  br label %L4
L3:
  %_24 = call i8* @_bal_alloc (i64 8)
  %_25 = bitcast i8* %_24 to i64*
  store i64 5, i64* %_25, align 8
  %_26 = getelementptr i8, i8* %_24, i64 504403158265495552
  call void @_Bio__println (i8* %_26)
  store i8* null, i8** %_2
  br label %L4
L4:
  %_27 = icmp eq i1 0, 0
  store i1 %_27, i1* %_3
  %_28 = load i1, i1* %_3
  store i1 %_28, i1* %b
  %_29 = load i1, i1* %b
  br i1 %_29, label %L5, label %L6
L5:
  %_30 = call i8* @_bal_alloc (i64 8)
  %_31 = bitcast i8* %_30 to i64*
  store i64 6, i64* %_31, align 8
  %_32 = getelementptr i8, i8* %_30, i64 504403158265495552
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_4
  br label %L7
L6:
  %_33 = call i8* @_bal_alloc (i64 8)
  %_34 = bitcast i8* %_33 to i64*
  store i64 7, i64* %_34, align 8
  %_35 = getelementptr i8, i8* %_33, i64 504403158265495552
  call void @_Bio__println (i8* %_35)
  store i8* null, i8** %_5
  br label %L7
L7:
  %_36 = icmp ne i1 1, 1
  store i1 %_36, i1* %_6
  %_37 = load i1, i1* %_6
  store i1 %_37, i1* %b
  %_38 = load i1, i1* %b
  br i1 %_38, label %L8, label %L9
L8:
  %_39 = call i8* @_bal_alloc (i64 8)
  %_40 = bitcast i8* %_39 to i64*
  store i64 8, i64* %_40, align 8
  %_41 = getelementptr i8, i8* %_39, i64 504403158265495552
  call void @_Bio__println (i8* %_41)
  store i8* null, i8** %_7
  br label %L10
L9:
  %_42 = call i8* @_bal_alloc (i64 8)
  %_43 = bitcast i8* %_42 to i64*
  store i64 9, i64* %_43, align 8
  %_44 = getelementptr i8, i8* %_42, i64 504403158265495552
  call void @_Bio__println (i8* %_44)
  store i8* null, i8** %_8
  br label %L10
L10:
  store i1 1, i1* %b
  %_45 = load i1, i1* %b
  %_46 = icmp eq i1 %_45, 1
  store i1 %_46, i1* %_9
  %_47 = load i1, i1* %_9
  br i1 %_47, label %L11, label %L12
L11:
  %_48 = call i8* @_bal_alloc (i64 8)
  %_49 = bitcast i8* %_48 to i64*
  store i64 10, i64* %_49, align 8
  %_50 = getelementptr i8, i8* %_48, i64 504403158265495552
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_10
  br label %L13
L12:
  %_51 = call i8* @_bal_alloc (i64 8)
  %_52 = bitcast i8* %_51 to i64*
  store i64 11, i64* %_52, align 8
  %_53 = getelementptr i8, i8* %_51, i64 504403158265495552
  call void @_Bio__println (i8* %_53)
  store i8* null, i8** %_11
  br label %L13
L13:
  store i1 0, i1* %b
  %_54 = load i1, i1* %b
  %_55 = icmp eq i1 1, %_54
  store i1 %_55, i1* %_12
  %_56 = load i1, i1* %_12
  br i1 %_56, label %L14, label %L15
L14:
  %_57 = call i8* @_bal_alloc (i64 8)
  %_58 = bitcast i8* %_57 to i64*
  store i64 12, i64* %_58, align 8
  %_59 = getelementptr i8, i8* %_57, i64 504403158265495552
  call void @_Bio__println (i8* %_59)
  store i8* null, i8** %_13
  br label %L16
L15:
  %_60 = call i8* @_bal_alloc (i64 8)
  %_61 = bitcast i8* %_60 to i64*
  store i64 13, i64* %_61, align 8
  %_62 = getelementptr i8, i8* %_60, i64 504403158265495552
  call void @_Bio__println (i8* %_62)
  store i8* null, i8** %_14
  br label %L16
L16:
  ret void
L17:
  call void @_bal_panic (i64 772)
  unreachable
}
