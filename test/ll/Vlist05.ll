@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare i64 @_Barray__length (i8*)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %v = alloca i8*
  %_1 = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  %_6 = call i8* @_bal_alloc (i64 24)
  %_7 = bitcast i8* %_6 to [3 x i8*]*
  %_8 = zext i1 1 to i64
  %_9 = or i64 %_8, 72057594037927936
  %_10 = getelementptr i8, i8* null, i64 %_9
  %_11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_7, i64 0, i64 0
  store i8* %_10, i8** %_11
  %_12 = zext i1 0 to i64
  %_13 = or i64 %_12, 72057594037927936
  %_14 = getelementptr i8, i8* null, i64 %_13
  %_15 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_7, i64 0, i64 1
  store i8* %_14, i8** %_15
  %_16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_7, i64 0, i64 2
  store i8* null, i8** %_16
  %_17 = bitcast [3 x i8*]* %_7 to [0 x i8*]*
  %_18 = call i8* @_bal_alloc (i64 24)
  %_19 = bitcast i8* %_18 to {i64, i64, [0 x i8*]*}*
  %_20 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_19, i64 0, i32 0
  store i64 3, i64* %_20
  %_21 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_19, i64 0, i32 1
  store i64 3, i64* %_21
  %_22 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_19, i64 0, i32 2
  store [0 x i8*]* %_17, [0 x i8*]** %_22
  %_23 = getelementptr i8, i8* %_18, i64 1297036692682702848
  store i8* %_23, i8** %_0
  %_24 = load i8*, i8** %_0
  store i8* %_24, i8** %v
  %_25 = load i8*, i8** %v
  %_26 = call i64 @_Barray__length (i8* %_25)
  store i64 %_26, i64* %_1
  %_27 = load i64, i64* %_1
  %_28 = call i8* @_bal_alloc (i64 8)
  %_29 = bitcast i8* %_28 to i64*
  store i64 %_27, i64* %_29, align 8
  %_30 = getelementptr i8, i8* %_28, i64 504403158265495552
  call void @_Bio__println (i8* %_30)
  store i8* null, i8** %_2
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
