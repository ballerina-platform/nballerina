@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %x = alloca i8*
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i1
  %_6 = alloca i8*
  %_7 = alloca i8
  %_8 = load i8*, i8** @_bal_stack_guard
  %_9 = icmp ult i8* %_7, %_8
  br i1 %_9, label %L2, label %L1
L1:
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to [1 x i8*]*
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 17, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 504403158265495552
  %_15 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_11, i64 0, i64 0
  store i8* %_14, i8** %_15
  %_16 = bitcast [1 x i8*]* %_11 to [0 x i8*]*
  %_17 = call i8* @_bal_alloc (i64 24)
  %_18 = bitcast i8* %_17 to {i64, i64, [0 x i8*]*}*
  %_19 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_18, i64 0, i32 0
  store i64 1, i64* %_19
  %_20 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_18, i64 0, i32 1
  store i64 1, i64* %_20
  %_21 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_18, i64 0, i32 2
  store [0 x i8*]* %_16, [0 x i8*]** %_21
  %_22 = getelementptr i8, i8* %_17, i64 1297036692682702848
  store i8* %_22, i8** %_0
  %_23 = load i8*, i8** %_0
  store i8* %_23, i8** %x
  %_24 = load i8*, i8** %x
  %_25 = ptrtoint i8* %_24 to i64
  %_26 = and i64 %_25, 9151314442816847872
  %_27 = icmp eq i64 %_26, 504403158265495552
  br i1 %_27, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_28 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_24, i64 72057594037927935)
  %_29 = bitcast i8* %_28 to i64*
  %_30 = load i64, i64* %_29, align 8
  %_31 = icmp eq i64 %_30, 1
  store i1 %_31, i1* %_1
  br label %L5
L4:
  store i1 0, i1* %_1
  br label %L5
L5:
  %_32 = load i1, i1* %_1
  %_33 = zext i1 %_32 to i64
  %_34 = or i64 %_33, 72057594037927936
  %_35 = getelementptr i8, i8* null, i64 %_34
  call void @_Bio__println (i8* %_35)
  store i8* null, i8** %_2
  %_36 = load i8*, i8** %x
  %_37 = zext i1 1 to i64
  %_38 = or i64 %_37, 72057594037927936
  %_39 = getelementptr i8, i8* null, i64 %_38
  %_40 = icmp ne i8* %_36, %_39
  store i1 %_40, i1* %_3
  %_41 = load i1, i1* %_3
  %_42 = zext i1 %_41 to i64
  %_43 = or i64 %_42, 72057594037927936
  %_44 = getelementptr i8, i8* null, i64 %_43
  call void @_Bio__println (i8* %_44)
  store i8* null, i8** %_4
  %_45 = load i8*, i8** %x
  %_46 = icmp eq i8* %_45, null
  store i1 %_46, i1* %_5
  %_47 = load i1, i1* %_5
  %_48 = zext i1 %_47 to i64
  %_49 = or i64 %_48, 72057594037927936
  %_50 = getelementptr i8, i8* null, i64 %_49
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_6
  ret void
}
