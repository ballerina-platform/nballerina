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
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i8*
  %_7 = alloca i8
  %_8 = load i8*, i8** @_bal_stack_guard
  %_9 = icmp ult i8* %_7, %_8
  br i1 %_9, label %L2, label %L1
L1:
  %_10 = call i8* @_bal_alloc (i64 24)
  %_11 = bitcast i8* %_10 to {i64, i64, [0 x i8*]*}*
  %_12 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_11, i64 0, i32 0
  store i64 0, i64* %_12
  %_13 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_11, i64 0, i32 1
  store i64 0, i64* %_13
  %_14 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_11, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_14
  %_15 = getelementptr i8, i8* %_10, i64 1297036692682702848
  store i8* %_15, i8** %_0
  %_16 = load i8*, i8** %_0
  store i8* %_16, i8** %v
  %_17 = load i8*, i8** %v
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 0, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 504403158265495552
  call void @_Barray__push (i8* %_17, i8* %_20)
  store i8* null, i8** %_1
  %_21 = load i8*, i8** %v
  %_22 = zext i1 1 to i64
  %_23 = or i64 %_22, 72057594037927936
  %_24 = getelementptr i8, i8* null, i64 %_23
  call void @_Barray__push (i8* %_21, i8* %_24)
  store i8* null, i8** %_2
  %_25 = load i8*, i8** %v
  %_26 = call i8* @_bal_alloc (i64 8)
  %_27 = bitcast i8* %_26 to i64*
  store i64 2, i64* %_27, align 8
  %_28 = getelementptr i8, i8* %_26, i64 504403158265495552
  call void @_Barray__push (i8* %_25, i8* %_28)
  store i8* null, i8** %_3
  %_29 = load i8*, i8** %v
  call void @_Barray__push (i8* %_29, i8* null)
  store i8* null, i8** %_4
  %_30 = load i8*, i8** %v
  %_31 = call i8* @_bal_alloc (i64 8)
  %_32 = bitcast i8* %_31 to i64*
  store i64 4, i64* %_32, align 8
  %_33 = getelementptr i8, i8* %_31, i64 504403158265495552
  call void @_Barray__push (i8* %_30, i8* %_33)
  store i8* null, i8** %_5
  %_34 = load i8*, i8** %v
  call void @_Bio__println (i8* %_34)
  store i8* null, i8** %_6
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
