@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %v = alloca i8*
  %_2 = alloca i64
  %i = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L3, label %L1
L1:
  %_9 = call i8* @_bal_alloc (i64 24)
  %_10 = bitcast i8* %_9 to [3 x i8*]*
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 17, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 504403158265495552
  %_14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_10, i64 0, i64 0
  store i8* %_13, i8** %_14
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 42, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 504403158265495552
  %_18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_10, i64 0, i64 1
  store i8* %_17, i8** %_18
  %_19 = call i8* @_bal_alloc (i64 8)
  %_20 = bitcast i8* %_19 to i64*
  store i64 -11, i64* %_20, align 8
  %_21 = getelementptr i8, i8* %_19, i64 504403158265495552
  %_22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_10, i64 0, i64 2
  store i8* %_21, i8** %_22
  %_23 = bitcast [3 x i8*]* %_10 to [0 x i8*]*
  %_24 = call i8* @_bal_alloc (i64 24)
  %_25 = bitcast i8* %_24 to {i64, i64, [0 x i8*]*}*
  %_26 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 0
  store i64 3, i64* %_26
  %_27 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 1
  store i64 3, i64* %_27
  %_28 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 2
  store [0 x i8*]* %_23, [0 x i8*]** %_28
  %_29 = getelementptr i8, i8* %_24, i64 1297036692682702848
  store i8* %_29, i8** %_1
  %_30 = load i8*, i8** %_1
  store i8* %_30, i8** %v
  store i64 -1, i64* %i
  %_31 = load i64, i64* %i
  %_32 = load i8*, i8** %v
  %_33 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_32, i64 72057594037927935)
  %_34 = bitcast i8* %_33 to {i64, i64, [0 x i8*]*}*
  %_35 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_34, i64 0, i32 0
  %_36 = load i64, i64* %_35, align 8
  %_37 = icmp ult i64 %_31, %_36
  br i1 %_37, label %L4, label %L5
L2:
  %_43 = load i64, i64* %_5
  call void @_bal_panic (i64 %_43)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_38 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_34, i64 0, i32 2
  %_39 = load [0 x i8*]*, [0 x i8*]** %_38, align 8
  %_40 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_39, i64 0, i64 %_31
  %_41 = load i8*, i8** %_40, align 8
  store i8* %_41, i8** %_3
  %_42 = load i8*, i8** %_3
  call void @_Bio__println (i8* %_42)
  store i8* null, i8** %_4
  ret void
L5:
  store i64 1285, i64* %_5
  br label %L2
}
