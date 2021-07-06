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
  %_12 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 11)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L5, label %L4
L2:
  %_74 = load i64, i64* %_8
  call void @_bal_panic (i64 %_74)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %_0
  %_15 = call i8* @_bal_alloc (i64 24)
  %_16 = bitcast i8* %_15 to [3 x i8*]*
  %_17 = call i8* @_bal_alloc (i64 8)
  %_18 = bitcast i8* %_17 to i64*
  store i64 17, i64* %_18, align 8
  %_19 = getelementptr i8, i8* %_17, i64 504403158265495552
  %_20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_16, i64 0, i64 0
  store i8* %_19, i8** %_20
  %_21 = call i8* @_bal_alloc (i64 8)
  %_22 = bitcast i8* %_21 to i64*
  store i64 42, i64* %_22, align 8
  %_23 = getelementptr i8, i8* %_21, i64 504403158265495552
  %_24 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_16, i64 0, i64 1
  store i8* %_23, i8** %_24
  %_25 = load i64, i64* %_0
  %_26 = call i8* @_bal_alloc (i64 8)
  %_27 = bitcast i8* %_26 to i64*
  store i64 %_25, i64* %_27, align 8
  %_28 = getelementptr i8, i8* %_26, i64 504403158265495552
  %_29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_16, i64 0, i64 2
  store i8* %_28, i8** %_29
  %_30 = bitcast [3 x i8*]* %_16 to [0 x i8*]*
  %_31 = call i8* @_bal_alloc (i64 24)
  %_32 = bitcast i8* %_31 to {i64, i64, [0 x i8*]*}*
  %_33 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_32, i64 0, i32 0
  store i64 3, i64* %_33
  %_34 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_32, i64 0, i32 1
  store i64 3, i64* %_34
  %_35 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_32, i64 0, i32 2
  store [0 x i8*]* %_30, [0 x i8*]** %_35
  %_36 = getelementptr i8, i8* %_31, i64 1297036692682702848
  store i8* %_36, i8** %_1
  %_37 = load i8*, i8** %_1
  store i8* %_37, i8** %v
  store i64 0, i64* %i
  %_38 = load i64, i64* %i
  %_39 = load i8*, i8** %v
  %_40 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_39, i64 72057594037927935)
  %_41 = bitcast i8* %_40 to {i64, i64, [0 x i8*]*}*
  %_42 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_41, i64 0, i32 0
  %_43 = load i64, i64* %_42, align 8
  %_44 = icmp ult i64 %_38, %_43
  br i1 %_44, label %L6, label %L7
L5:
  store i64 769, i64* %_8
  br label %L2
L6:
  %_45 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_41, i64 0, i32 2
  %_46 = load [0 x i8*]*, [0 x i8*]** %_45, align 8
  %_47 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_46, i64 0, i64 %_38
  %_48 = load i8*, i8** %_47, align 8
  store i8* %_48, i8** %_2
  %_49 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_49)
  store i8* null, i8** %_3
  store i64 1, i64* %i
  %_50 = load i64, i64* %i
  %_51 = load i8*, i8** %v
  %_52 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_51, i64 72057594037927935)
  %_53 = bitcast i8* %_52 to {i64, i64, [0 x i8*]*}*
  %_54 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_53, i64 0, i32 0
  %_55 = load i64, i64* %_54, align 8
  %_56 = icmp ult i64 %_50, %_55
  br i1 %_56, label %L8, label %L9
L7:
  store i64 1285, i64* %_8
  br label %L2
L8:
  %_57 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_53, i64 0, i32 2
  %_58 = load [0 x i8*]*, [0 x i8*]** %_57, align 8
  %_59 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_58, i64 0, i64 %_50
  %_60 = load i8*, i8** %_59, align 8
  store i8* %_60, i8** %_4
  %_61 = load i8*, i8** %_4
  call void @_Bio__println (i8* %_61)
  store i8* null, i8** %_5
  store i64 2, i64* %i
  %_62 = load i64, i64* %i
  %_63 = load i8*, i8** %v
  %_64 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_63, i64 72057594037927935)
  %_65 = bitcast i8* %_64 to {i64, i64, [0 x i8*]*}*
  %_66 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_65, i64 0, i32 0
  %_67 = load i64, i64* %_66, align 8
  %_68 = icmp ult i64 %_62, %_67
  br i1 %_68, label %L10, label %L11
L9:
  store i64 1797, i64* %_8
  br label %L2
L10:
  %_69 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_65, i64 0, i32 2
  %_70 = load [0 x i8*]*, [0 x i8*]** %_69, align 8
  %_71 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_70, i64 0, i64 %_62
  %_72 = load i8*, i8** %_71, align 8
  store i8* %_72, i8** %_6
  %_73 = load i8*, i8** %_6
  call void @_Bio__println (i8* %_73)
  store i8* null, i8** %_7
  ret void
L11:
  store i64 2309, i64* %_8
  br label %L2
}
