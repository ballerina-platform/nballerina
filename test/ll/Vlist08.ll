@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Barray__push (i8*, i8*)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %v = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
L1:
  %_7 = call i8* @_bal_alloc (i64 24)
  %_8 = bitcast i8* %_7 to {i64, i64, [0 x i8*]*}*
  %_9 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_8, i64 0, i32 0
  store i64 0, i64* %_9
  %_10 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_8, i64 0, i32 1
  store i64 0, i64* %_10
  %_11 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_8, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_11
  %_12 = getelementptr i8, i8* %_7, i64 1297036692682702848
  store i8* %_12, i8** %_0
  %_13 = load i8*, i8** %_0
  store i8* %_13, i8** %v
  %_14 = load i8*, i8** %v
  %_15 = load i8*, i8** %v
  call void @_Barray__push (i8* %_14, i8* %_15)
  store i8* null, i8** %_1
  %_16 = call i8* @_bal_alloc (i64 32)
  %_17 = bitcast i8* %_16 to [4 x i8*]*
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 1, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 504403158265495552
  %_21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %_17, i64 0, i64 0
  store i8* %_20, i8** %_21
  %_22 = call i8* @_bal_alloc (i64 8)
  %_23 = bitcast i8* %_22 to i64*
  store i64 2, i64* %_23, align 8
  %_24 = getelementptr i8, i8* %_22, i64 504403158265495552
  %_25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %_17, i64 0, i64 1
  store i8* %_24, i8** %_25
  %_26 = load i8*, i8** %v
  %_27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %_17, i64 0, i64 2
  store i8* %_26, i8** %_27
  %_28 = call i8* @_bal_alloc (i64 8)
  %_29 = bitcast i8* %_28 to i64*
  store i64 4, i64* %_29, align 8
  %_30 = getelementptr i8, i8* %_28, i64 504403158265495552
  %_31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %_17, i64 0, i64 3
  store i8* %_30, i8** %_31
  %_32 = bitcast [4 x i8*]* %_17 to [0 x i8*]*
  %_33 = call i8* @_bal_alloc (i64 24)
  %_34 = bitcast i8* %_33 to {i64, i64, [0 x i8*]*}*
  %_35 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_34, i64 0, i32 0
  store i64 4, i64* %_35
  %_36 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_34, i64 0, i32 1
  store i64 4, i64* %_36
  %_37 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_34, i64 0, i32 2
  store [0 x i8*]* %_32, [0 x i8*]** %_37
  %_38 = getelementptr i8, i8* %_33, i64 1297036692682702848
  store i8* %_38, i8** %_2
  %_39 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
