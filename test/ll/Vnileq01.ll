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
  %_6 = alloca i8*
  %_7 = alloca i1
  %_8 = alloca i8*
  %_9 = alloca i8*
  %_10 = alloca i1
  %_11 = alloca i8*
  %_12 = alloca i8*
  %_13 = alloca i1
  %b = alloca i1
  %_14 = alloca i8*
  %_15 = alloca i8
  %_16 = load i8*, i8** @_bal_stack_guard
  %_17 = icmp ult i8* %_15, %_16
  br i1 %_17, label %L12, label %L1
L1:
  call void @_B_makeNil ()
  store i8* null, i8** %_1
  %_18 = load i8*, i8** %_1
  %_19 = icmp eq i8* %_18, null
  store i1 %_19, i1* %_0
  %_20 = load i1, i1* %_0
  br i1 %_20, label %L2, label %L3
L2:
  %_21 = call i8* @_bal_alloc (i64 8)
  %_22 = bitcast i8* %_21 to i64*
  store i64 1, i64* %_22, align 8
  %_23 = getelementptr i8, i8* %_21, i64 504403158265495552
  call void @_Bio__println (i8* %_23)
  store i8* null, i8** %_2
  br label %L3
L3:
  call void @_B_makeNil ()
  store i8* null, i8** %_4
  %_24 = load i8*, i8** %_4
  %_25 = icmp eq i8* null, %_24
  store i1 %_25, i1* %_3
  %_26 = load i1, i1* %_3
  br i1 %_26, label %L4, label %L5
L4:
  %_27 = call i8* @_bal_alloc (i64 8)
  %_28 = bitcast i8* %_27 to i64*
  store i64 2, i64* %_28, align 8
  %_29 = getelementptr i8, i8* %_27, i64 504403158265495552
  call void @_Bio__println (i8* %_29)
  store i8* null, i8** %_5
  br label %L5
L5:
  %_30 = call i8* @_bal_alloc (i64 8)
  %_31 = bitcast i8* %_30 to i64*
  store i64 3, i64* %_31, align 8
  %_32 = getelementptr i8, i8* %_30, i64 504403158265495552
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_6
  call void @_B_makeNil ()
  store i8* null, i8** %_8
  %_33 = load i8*, i8** %_8
  %_34 = icmp ne i8* %_33, null
  store i1 %_34, i1* %_7
  %_35 = load i1, i1* %_7
  br i1 %_35, label %L6, label %L7
L6:
  %_36 = call i8* @_bal_alloc (i64 8)
  %_37 = bitcast i8* %_36 to i64*
  store i64 4, i64* %_37, align 8
  %_38 = getelementptr i8, i8* %_36, i64 504403158265495552
  call void @_Bio__println (i8* %_38)
  store i8* null, i8** %_9
  br label %L7
L7:
  call void @_B_makeNil ()
  store i8* null, i8** %_11
  %_39 = load i8*, i8** %_11
  %_40 = icmp ne i8* null, %_39
  store i1 %_40, i1* %_10
  %_41 = load i1, i1* %_10
  br i1 %_41, label %L8, label %L9
L8:
  %_42 = call i8* @_bal_alloc (i64 8)
  %_43 = bitcast i8* %_42 to i64*
  store i64 5, i64* %_43, align 8
  %_44 = getelementptr i8, i8* %_42, i64 504403158265495552
  call void @_Bio__println (i8* %_44)
  store i8* null, i8** %_12
  br label %L9
L9:
  %_45 = icmp ne i8* null, null
  store i1 %_45, i1* %_13
  %_46 = load i1, i1* %_13
  store i1 %_46, i1* %b
  %_47 = load i1, i1* %b
  br i1 %_47, label %L10, label %L11
L10:
  %_48 = call i8* @_bal_alloc (i64 8)
  %_49 = bitcast i8* %_48 to i64*
  store i64 6, i64* %_49, align 8
  %_50 = getelementptr i8, i8* %_48, i64 504403158265495552
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_14
  br label %L11
L11:
  ret void
L12:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_makeNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret void
L2:
  call void @_bal_panic (i64 6404)
  unreachable
}
