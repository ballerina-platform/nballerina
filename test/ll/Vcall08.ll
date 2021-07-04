@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Barray__push (i8*, i8*)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  call void @_B_test1 ()
  store i8* null, i8** %_0
  call void @_B_test2 ()
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 1284)
  unreachable
}
define internal void @_B_test1 () {
  %_0 = alloca i8*
  %x = alloca i8*
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
  store i8* %_13, i8** %x
  %_14 = load i8*, i8** %x
  %_15 = call i8* @_B_foo (i8* %_14)
  store i8* %_15, i8** %_1
  %_16 = load i8*, i8** %_1
  %_17 = call i8* @_bal_alloc (i64 8)
  %_18 = bitcast i8* %_17 to i64*
  store i64 1, i64* %_18, align 8
  %_19 = getelementptr i8, i8* %_17, i64 504403158265495552
  call void @_Barray__push (i8* %_16, i8* %_19)
  store i8* null, i8** %_2
  %_20 = load i8*, i8** %x
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_3
  ret void
L2:
  call void @_bal_panic (i64 2564)
  unreachable
}
define internal void @_B_test2 () {
  %_0 = alloca i8*
  %x = alloca i8*
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
  store i8* %_13, i8** %x
  %_14 = load i8*, i8** %x
  %_15 = call i8* @_B_foo (i8* %_14)
  store i8* %_15, i8** %_1
  %_16 = load i8*, i8** %_1
  %_17 = call i8* @_bal_alloc (i64 8)
  %_18 = bitcast i8* %_17 to i64*
  store i64 2, i64* %_18, align 8
  %_19 = getelementptr i8, i8* %_17, i64 504403158265495552
  call void @_Barray__push (i8* %_16, i8* %_19)
  store i8* null, i8** %_2
  %_20 = load i8*, i8** %x
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_3
  ret void
L2:
  call void @_bal_panic (i64 4100)
  unreachable
}
define internal i8* @_B_foo (i8* %_0) {
  %x = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i8* %_0, i8** %x
  %_4 = load i8*, i8** %x
  ret i8* %_4
L2:
  call void @_bal_panic (i64 5636)
  unreachable
}
