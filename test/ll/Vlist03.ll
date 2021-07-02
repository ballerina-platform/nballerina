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
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i8*
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i8
  %_10 = load i8*, i8** @_bal_stack_guard
  %_11 = icmp ult i8* %_9, %_10
  br i1 %_11, label %L3, label %L1
L1:
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
  %_22 = call i8* @_bal_alloc (i64 8)
  %_23 = bitcast i8* %_22 to i64*
  store i64 -11, i64* %_23, align 8
  %_24 = getelementptr i8, i8* %_22, i64 504403158265495552
  %_25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_13, i64 0, i64 2
  store i8* %_24, i8** %_25
  %_26 = bitcast [3 x i8*]* %_13 to [0 x i8*]*
  %_27 = call i8* @_bal_alloc (i64 24)
  %_28 = bitcast i8* %_27 to {i64, i64, [0 x i8*]*}*
  %_29 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 0
  store i64 3, i64* %_29
  %_30 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 1
  store i64 3, i64* %_30
  %_31 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_28, i64 0, i32 2
  store [0 x i8*]* %_26, [0 x i8*]** %_31
  %_32 = getelementptr i8, i8* %_27, i64 1297036692682702848
  store i8* %_32, i8** %_1
  %_33 = load i8*, i8** %_1
  store i8* %_33, i8** %v
  store i64 0, i64* %i
  %_34 = load i64, i64* %i
  %_35 = load i8*, i8** %v
  %_36 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_35, i64 72057594037927935)
  %_37 = bitcast i8* %_36 to {i64, i64, [0 x i8*]*}*
  %_38 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_37, i64 0, i32 0
  %_39 = load i64, i64* %_38, align 8
  %_40 = icmp ult i64 %_34, %_39
  br i1 %_40, label %L4, label %L5
L2:
  %_70 = load i64, i64* %_8
  call void @_bal_panic (i64 %_70)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_41 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_37, i64 0, i32 2
  %_42 = load [0 x i8*]*, [0 x i8*]** %_41, align 8
  %_43 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_42, i64 0, i64 %_34
  %_44 = load i8*, i8** %_43, align 8
  store i8* %_44, i8** %_2
  %_45 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_3
  store i64 1, i64* %i
  %_46 = load i64, i64* %i
  %_47 = load i8*, i8** %v
  %_48 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_47, i64 72057594037927935)
  %_49 = bitcast i8* %_48 to {i64, i64, [0 x i8*]*}*
  %_50 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_49, i64 0, i32 0
  %_51 = load i64, i64* %_50, align 8
  %_52 = icmp ult i64 %_46, %_51
  br i1 %_52, label %L6, label %L7
L5:
  store i64 1285, i64* %_8
  br label %L2
L6:
  %_53 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_49, i64 0, i32 2
  %_54 = load [0 x i8*]*, [0 x i8*]** %_53, align 8
  %_55 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_54, i64 0, i64 %_46
  %_56 = load i8*, i8** %_55, align 8
  store i8* %_56, i8** %_4
  %_57 = load i8*, i8** %_4
  call void @_Bio__println (i8* %_57)
  store i8* null, i8** %_5
  store i64 2, i64* %i
  %_58 = load i64, i64* %i
  %_59 = load i8*, i8** %v
  %_60 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_59, i64 72057594037927935)
  %_61 = bitcast i8* %_60 to {i64, i64, [0 x i8*]*}*
  %_62 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_61, i64 0, i32 0
  %_63 = load i64, i64* %_62, align 8
  %_64 = icmp ult i64 %_58, %_63
  br i1 %_64, label %L8, label %L9
L7:
  store i64 1797, i64* %_8
  br label %L2
L8:
  %_65 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_61, i64 0, i32 2
  %_66 = load [0 x i8*]*, [0 x i8*]** %_65, align 8
  %_67 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_66, i64 0, i64 %_58
  %_68 = load i8*, i8** %_67, align 8
  store i8* %_68, i8** %_6
  %_69 = load i8*, i8** %_6
  call void @_Bio__println (i8* %_69)
  store i8* null, i8** %_7
  ret void
L9:
  store i64 2309, i64* %_8
  br label %L2
}
