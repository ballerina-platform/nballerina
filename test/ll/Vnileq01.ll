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
  %_8 = alloca i1
  %_9 = alloca i8*
  %_10 = alloca i8*
  %_11 = alloca i1
  %_12 = alloca i8*
  %_13 = alloca i8*
  %_14 = alloca i1
  %_15 = alloca i8*
  %_16 = alloca i8
  %_17 = load i8*, i8** @_bal_stack_guard
  %_18 = icmp ult i8* %_16, %_17
  br i1 %_18, label %L14, label %L1
L1:
  call void @_B_makeNil ()
  store i8* null, i8** %_1
  %_19 = load i8*, i8** %_1
  %_20 = icmp eq i8* %_19, null
  store i1 %_20, i1* %_0
  %_21 = load i1, i1* %_0
  br i1 %_21, label %L2, label %L3
L2:
  %_22 = call i8* @_bal_alloc (i64 8)
  %_23 = bitcast i8* %_22 to i64*
  store i64 1, i64* %_23, align 8
  %_24 = getelementptr i8, i8* %_22, i64 144115188075855872
  call void @_Bio__println (i8* %_24)
  store i8* null, i8** %_2
  br label %L3
L3:
  call void @_B_makeNil ()
  store i8* null, i8** %_4
  %_25 = load i8*, i8** %_4
  %_26 = icmp eq i8* null, %_25
  store i1 %_26, i1* %_3
  %_27 = load i1, i1* %_3
  br i1 %_27, label %L4, label %L5
L4:
  %_28 = call i8* @_bal_alloc (i64 8)
  %_29 = bitcast i8* %_28 to i64*
  store i64 2, i64* %_29, align 8
  %_30 = getelementptr i8, i8* %_28, i64 144115188075855872
  call void @_Bio__println (i8* %_30)
  store i8* null, i8** %_5
  br label %L5
L5:
  %_31 = icmp eq i8* null, null
  store i1 %_31, i1* %_6
  %_32 = load i1, i1* %_6
  br i1 %_32, label %L6, label %L7
L6:
  %_33 = call i8* @_bal_alloc (i64 8)
  %_34 = bitcast i8* %_33 to i64*
  store i64 3, i64* %_34, align 8
  %_35 = getelementptr i8, i8* %_33, i64 144115188075855872
  call void @_Bio__println (i8* %_35)
  store i8* null, i8** %_7
  br label %L7
L7:
  call void @_B_makeNil ()
  store i8* null, i8** %_9
  %_36 = load i8*, i8** %_9
  %_37 = icmp ne i8* %_36, null
  store i1 %_37, i1* %_8
  %_38 = load i1, i1* %_8
  br i1 %_38, label %L8, label %L9
L8:
  %_39 = call i8* @_bal_alloc (i64 8)
  %_40 = bitcast i8* %_39 to i64*
  store i64 4, i64* %_40, align 8
  %_41 = getelementptr i8, i8* %_39, i64 144115188075855872
  call void @_Bio__println (i8* %_41)
  store i8* null, i8** %_10
  br label %L9
L9:
  call void @_B_makeNil ()
  store i8* null, i8** %_12
  %_42 = load i8*, i8** %_12
  %_43 = icmp ne i8* null, %_42
  store i1 %_43, i1* %_11
  %_44 = load i1, i1* %_11
  br i1 %_44, label %L10, label %L11
L10:
  %_45 = call i8* @_bal_alloc (i64 8)
  %_46 = bitcast i8* %_45 to i64*
  store i64 5, i64* %_46, align 8
  %_47 = getelementptr i8, i8* %_45, i64 144115188075855872
  call void @_Bio__println (i8* %_47)
  store i8* null, i8** %_13
  br label %L11
L11:
  %_48 = icmp ne i8* null, null
  store i1 %_48, i1* %_14
  %_49 = load i1, i1* %_14
  br i1 %_49, label %L12, label %L13
L12:
  %_50 = call i8* @_bal_alloc (i64 8)
  %_51 = bitcast i8* %_50 to i64*
  store i64 6, i64* %_51, align 8
  %_52 = getelementptr i8, i8* %_50, i64 144115188075855872
  call void @_Bio__println (i8* %_52)
  store i8* null, i8** %_15
  br label %L13
L13:
  ret void
L14:
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
  call void @_bal_panic (i64 6148)
  unreachable
}
