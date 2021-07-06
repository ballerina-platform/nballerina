@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 11)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_51 = load i64, i64* %_5
  call void @_bal_panic (i64 %_51)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_0
  %_12 = call i8* @_bal_alloc (i64 24)
  %_13 = bitcast i8* %_12 to [3 x i8*]*
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 17, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 504403158265495552
  %_17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_13, i64 0, i64 0
  store i8* %_16, i8** %_17
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 42, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 504403158265495552
  %_21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_13, i64 0, i64 1
  store i8* %_20, i8** %_21
  %_22 = load i64, i64* %_0
  %_23 = call i8* @_bal_alloc (i64 8)
  %_24 = bitcast i8* %_23 to i64*
  store i64 %_22, i64* %_24, align 8
  %_25 = getelementptr i8, i8* %_23, i64 504403158265495552
  %_26 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_13, i64 0, i64 2
  store i8* %_25, i8** %_26
  %_27 = bitcast [3 x i8*]* %_13 to [0 x i8*]*
  %_28 = call i8* @_bal_alloc (i64 24)
  %_29 = bitcast i8* %_28 to {i64, i64, [0 x i8*]*}*
  %_30 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_29, i64 0, i32 0
  store i64 3, i64* %_30
  %_31 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_29, i64 0, i32 1
  store i64 3, i64* %_31
  %_32 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_29, i64 0, i32 2
  store [0 x i8*]* %_27, [0 x i8*]** %_32
  %_33 = getelementptr i8, i8* %_28, i64 1297036692682702848
  store i8* %_33, i8** %_1
  %_34 = load i8*, i8** %_1
  store i8* %_34, i8** %v
  %_35 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_36 = extractvalue {i64, i1} %_35, 1
  br i1 %_36, label %L7, label %L6
L5:
  store i64 769, i64* %_5
  br label %L2
L6:
  %_37 = extractvalue {i64, i1} %_35, 0
  store i64 %_37, i64* %_2
  %_38 = load i64, i64* %_2
  store i64 %_38, i64* %i
  %_39 = load i64, i64* %i
  %_40 = load i8*, i8** %v
  %_41 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_40, i64 72057594037927935)
  %_42 = bitcast i8* %_41 to {i64, i64, [0 x i8*]*}*
  %_43 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_42, i64 0, i32 0
  %_44 = load i64, i64* %_43, align 8
  %_45 = icmp ult i64 %_39, %_44
  br i1 %_45, label %L8, label %L9
L7:
  store i64 1025, i64* %_5
  br label %L2
L8:
  %_46 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_42, i64 0, i32 2
  %_47 = load [0 x i8*]*, [0 x i8*]** %_46, align 8
  %_48 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_47, i64 0, i64 %_39
  %_49 = load i8*, i8** %_48, align 8
  store i8* %_49, i8** %_3
  %_50 = load i8*, i8** %_3
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_4
  ret void
L9:
  store i64 1285, i64* %_5
  br label %L2
}
