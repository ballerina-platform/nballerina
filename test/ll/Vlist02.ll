@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %v = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i8* @_bal_alloc (i64 24)
  %_6 = bitcast i8* %_5 to [3 x i8*]*
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 1, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 504403158265495552
  %_10 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_6, i64 0, i64 0
  store i8* %_9, i8** %_10
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 2, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 504403158265495552
  %_14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_6, i64 0, i64 1
  store i8* %_13, i8** %_14
  %_15 = zext i1 0 to i64
  %_16 = or i64 %_15, 72057594037927936
  %_17 = getelementptr i8, i8* null, i64 %_16
  %_18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_6, i64 0, i64 2
  store i8* %_17, i8** %_18
  %_19 = bitcast [3 x i8*]* %_6 to [0 x i8*]*
  %_20 = call i8* @_bal_alloc (i64 24)
  %_21 = bitcast i8* %_20 to {i64, i64, [0 x i8*]*}*
  %_22 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_21, i64 0, i32 0
  store i64 3, i64* %_22
  %_23 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_21, i64 0, i32 1
  store i64 3, i64* %_23
  %_24 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_21, i64 0, i32 2
  store [0 x i8*]* %_19, [0 x i8*]** %_24
  %_25 = getelementptr i8, i8* %_20, i64 1297036692682702848
  store i8* %_25, i8** %_0
  %_26 = load i8*, i8** %_0
  store i8* %_26, i8** %v
  %_27 = load i8*, i8** %v
  call void @_B_foo (i8* %_27)
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
define internal void @_B_foo (i8* %_0) {
  %v = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  store i8* %_0, i8** %v
  %_5 = load i8*, i8** %v
  call void @_Bio__println (i8* %_5)
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 1796)
  unreachable
}
