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
  %x = alloca i64
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i8*
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i8*
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L14, label %L1
L1:
  %_15 = icmp eq i64 17, 17
  store i1 %_15, i1* %_0
  %_16 = load i1, i1* %_0
  br i1 %_16, label %L2, label %L3
L2:
  %_17 = call i8* @_bal_alloc (i64 8)
  %_18 = bitcast i8* %_17 to i64*
  store i64 17, i64* %_18, align 8
  %_19 = getelementptr i8, i8* %_17, i64 144115188075855872
  call void @_Bio__println (i8* %_19)
  store i8* null, i8** %_1
  br label %L4
L3:
  %_20 = call i8* @_bal_alloc (i64 8)
  %_21 = bitcast i8* %_20 to i64*
  store i64 0, i64* %_21, align 8
  %_22 = getelementptr i8, i8* %_20, i64 144115188075855872
  call void @_Bio__println (i8* %_22)
  store i8* null, i8** %_2
  br label %L4
L4:
  %_23 = icmp ne i64 21, 21
  store i1 %_23, i1* %_3
  %_24 = load i1, i1* %_3
  br i1 %_24, label %L5, label %L6
L5:
  %_25 = call i8* @_bal_alloc (i64 8)
  %_26 = bitcast i8* %_25 to i64*
  store i64 0, i64* %_26, align 8
  %_27 = getelementptr i8, i8* %_25, i64 144115188075855872
  call void @_Bio__println (i8* %_27)
  store i8* null, i8** %_4
  br label %L7
L6:
  %_28 = call i8* @_bal_alloc (i64 8)
  %_29 = bitcast i8* %_28 to i64*
  store i64 21, i64* %_29, align 8
  %_30 = getelementptr i8, i8* %_28, i64 144115188075855872
  call void @_Bio__println (i8* %_30)
  store i8* null, i8** %_5
  br label %L7
L7:
  store i64 42, i64* %x
  %_31 = load i64, i64* %x
  %_32 = icmp eq i64 %_31, 42
  store i1 %_32, i1* %_6
  %_33 = load i1, i1* %_6
  br i1 %_33, label %L8, label %L9
L8:
  %_34 = call i8* @_bal_alloc (i64 8)
  %_35 = bitcast i8* %_34 to i64*
  store i64 42, i64* %_35, align 8
  %_36 = getelementptr i8, i8* %_34, i64 144115188075855872
  call void @_Bio__println (i8* %_36)
  store i8* null, i8** %_7
  br label %L10
L9:
  %_37 = call i8* @_bal_alloc (i64 8)
  %_38 = bitcast i8* %_37 to i64*
  store i64 0, i64* %_38, align 8
  %_39 = getelementptr i8, i8* %_37, i64 144115188075855872
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_8
  br label %L10
L10:
  %_40 = load i64, i64* %x
  %_41 = icmp ne i64 42, %_40
  store i1 %_41, i1* %_9
  %_42 = load i1, i1* %_9
  br i1 %_42, label %L11, label %L12
L11:
  %_43 = call i8* @_bal_alloc (i64 8)
  %_44 = bitcast i8* %_43 to i64*
  store i64 0, i64* %_44, align 8
  %_45 = getelementptr i8, i8* %_43, i64 144115188075855872
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_10
  br label %L13
L12:
  %_46 = call i8* @_bal_alloc (i64 8)
  %_47 = bitcast i8* %_46 to i64*
  store i64 42, i64* %_47, align 8
  %_48 = getelementptr i8, i8* %_46, i64 144115188075855872
  call void @_Bio__println (i8* %_48)
  store i8* null, i8** %_11
  br label %L13
L13:
  ret void
L14:
  call void @_bal_panic (i64 4)
  unreachable
}
