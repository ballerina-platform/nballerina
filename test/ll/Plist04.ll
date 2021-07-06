@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare i64 @_bal_list_set (i8*, i64, i8*)
declare i64 @_Barray__length (i8*)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %v = alloca i8*
  %_1 = alloca i64
  %i = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L3, label %L1
L1:
  %_8 = call i8* @_bal_alloc (i64 24)
  %_9 = bitcast i8* %_8 to {i64, i64, [0 x i8*]*}*
  %_10 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_9, i64 0, i32 0
  store i64 0, i64* %_10
  %_11 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_9, i64 0, i32 1
  store i64 0, i64* %_11
  %_12 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_9, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_12
  %_13 = getelementptr i8, i8* %_8, i64 1297036692682702848
  store i8* %_13, i8** %_0
  %_14 = load i8*, i8** %_0
  store i8* %_14, i8** %v
  store i64 -1, i64* %i
  %_15 = load i8*, i8** %v
  %_16 = load i64, i64* %i
  %_17 = call i8* @_bal_alloc (i64 8)
  %_18 = bitcast i8* %_17 to i64*
  store i64 0, i64* %_18, align 8
  %_19 = getelementptr i8, i8* %_17, i64 504403158265495552
  %_20 = call i64 @_bal_list_set (i8* %_15, i64 %_16, i8* %_19)
  %_21 = icmp eq i64 %_20, 0
  br i1 %_21, label %L4, label %L5
L2:
  %_29 = load i64, i64* %_4
  call void @_bal_panic (i64 %_29)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_23 = load i8*, i8** %v
  %_24 = call i64 @_Barray__length (i8* %_23)
  store i64 %_24, i64* %_2
  %_25 = load i64, i64* %_2
  %_26 = call i8* @_bal_alloc (i64 8)
  %_27 = bitcast i8* %_26 to i64*
  store i64 %_25, i64* %_27, align 8
  %_28 = getelementptr i8, i8* %_26, i64 504403158265495552
  call void @_Bio__println (i8* %_28)
  store i8* null, i8** %_3
  ret void
L5:
  %_22 = or i64 %_20, 1280
  store i64 %_22, i64* %_4
  br label %L2
}
