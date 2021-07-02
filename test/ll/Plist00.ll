@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %v = alloca i8*
  %i = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L3, label %L1
L1:
  %_8 = call i8* @_bal_alloc (i64 24)
  %_9 = bitcast i8* %_8 to [3 x i8*]*
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 17, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 504403158265495552
  %_13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_9, i64 0, i64 0
  store i8* %_12, i8** %_13
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 42, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 504403158265495552
  %_17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_9, i64 0, i64 1
  store i8* %_16, i8** %_17
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 -11, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 504403158265495552
  %_21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_9, i64 0, i64 2
  store i8* %_20, i8** %_21
  %_22 = bitcast [3 x i8*]* %_9 to [0 x i8*]*
  %_23 = call i8* @_bal_alloc (i64 24)
  %_24 = bitcast i8* %_23 to {i64, i64, [0 x i8*]*}*
  %_25 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_24, i64 0, i32 0
  store i64 3, i64* %_25
  %_26 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_24, i64 0, i32 1
  store i64 3, i64* %_26
  %_27 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_24, i64 0, i32 2
  store [0 x i8*]* %_22, [0 x i8*]** %_27
  %_28 = getelementptr i8, i8* %_23, i64 1297036692682702848
  store i8* %_28, i8** %_1
  %_29 = load i8*, i8** %_1
  store i8* %_29, i8** %v
  store i64 3, i64* %i
  %_30 = load i64, i64* %i
  %_31 = load i8*, i8** %v
  %_32 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_31, i64 72057594037927935)
  %_33 = bitcast i8* %_32 to {i64, i64, [0 x i8*]*}*
  %_34 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_33, i64 0, i32 0
  %_35 = load i64, i64* %_34, align 8
  %_36 = icmp ult i64 %_30, %_35
  br i1 %_36, label %L4, label %L5
L2:
  %_42 = load i64, i64* %_4
  call void @_bal_panic (i64 %_42)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_37 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_33, i64 0, i32 2
  %_38 = load [0 x i8*]*, [0 x i8*]** %_37, align 8
  %_39 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_38, i64 0, i64 %_30
  %_40 = load i8*, i8** %_39, align 8
  store i8* %_40, i8** %_2
  %_41 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_41)
  store i8* null, i8** %_3
  ret void
L5:
  store i64 1285, i64* %_4
  br label %L2
}
