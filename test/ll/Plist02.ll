@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %v = alloca i8*
  %i = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
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
  store i64 0, i64* %i
  %_14 = load i64, i64* %i
  %_15 = load i8*, i8** %v
  %_16 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_15, i64 72057594037927935)
  %_17 = bitcast i8* %_16 to {i64, i64, [0 x i8*]*}*
  %_18 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_17, i64 0, i32 0
  %_19 = load i64, i64* %_18, align 8
  %_20 = icmp ult i64 %_14, %_19
  br i1 %_20, label %L4, label %L5
L2:
  %_26 = load i64, i64* %_3
  call void @_bal_panic (i64 %_26)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_21 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_17, i64 0, i32 2
  %_22 = load [0 x i8*]*, [0 x i8*]** %_21, align 8
  %_23 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_22, i64 0, i64 %_14
  %_24 = load i8*, i8** %_23, align 8
  store i8* %_24, i8** %_1
  %_25 = load i8*, i8** %_1
  call void @_Bio__println (i8* %_25)
  store i8* null, i8** %_2
  ret void
L5:
  store i64 1285, i64* %_3
  br label %L2
}
