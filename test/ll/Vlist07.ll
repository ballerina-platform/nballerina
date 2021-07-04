@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Barray__push (i8*, i8*)
declare void @_Bio__println (i8*)
declare i64 @_Barray__length (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %v = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i8*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L2, label %L1
L1:
  %_8 = call i8* @_bal_alloc (i64 32)
  %_9 = bitcast i8* %_8 to [4 x i8*]*
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 1, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 504403158265495552
  %_13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %_9, i64 0, i64 0
  store i8* %_12, i8** %_13
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 2, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 504403158265495552
  %_17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %_9, i64 0, i64 1
  store i8* %_16, i8** %_17
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 3, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 504403158265495552
  %_21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %_9, i64 0, i64 2
  store i8* %_20, i8** %_21
  %_22 = call i8* @_bal_alloc (i64 8)
  %_23 = bitcast i8* %_22 to i64*
  store i64 4, i64* %_23, align 8
  %_24 = getelementptr i8, i8* %_22, i64 504403158265495552
  %_25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %_9, i64 0, i64 3
  store i8* %_24, i8** %_25
  %_26 = bitcast [4 x i8*]* %_9 to [0 x i8*]*
  %_27 = call i8* @_bal_alloc (i64 24)
  %_28 = bitcast i8* %_27 to {i64, i64, [0 x i8*]*}*
  %_29 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 0
  store i64 4, i64* %_29
  %_30 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 1
  store i64 4, i64* %_30
  %_31 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 2
  store [0 x i8*]* %_26, [0 x i8*]** %_31
  %_32 = getelementptr i8, i8* %_27, i64 1297036692682702848
  store i8* %_32, i8** %_0
  %_33 = load i8*, i8** %_0
  store i8* %_33, i8** %v
  %_34 = load i8*, i8** %v
  %_35 = call i8* @_bal_alloc (i64 8)
  %_36 = bitcast i8* %_35 to i64*
  store i64 5, i64* %_36, align 8
  %_37 = getelementptr i8, i8* %_35, i64 504403158265495552
  call void @_Barray__push (i8* %_34, i8* %_37)
  store i8* null, i8** %_1
  %_38 = load i8*, i8** %v
  call void @_Bio__println (i8* %_38)
  store i8* null, i8** %_2
  %_39 = load i8*, i8** %v
  %_40 = call i64 @_Barray__length (i8* %_39)
  store i64 %_40, i64* %_3
  %_41 = load i64, i64* %_3
  %_42 = call i8* @_bal_alloc (i64 8)
  %_43 = bitcast i8* %_42 to i64*
  store i64 %_41, i64* %_43, align 8
  %_44 = getelementptr i8, i8* %_42, i64 504403158265495552
  call void @_Bio__println (i8* %_44)
  store i8* null, i8** %_4
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
