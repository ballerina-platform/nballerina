@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %v = alloca i8*
  %_1 = alloca i8*
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
  %_14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_13, i64 0, i64 0
  store i8* null, i8** %_14
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 1234567890123456789, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 504403158265495552
  %_18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_13, i64 0, i64 1
  store i8* %_17, i8** %_18
  %_19 = zext i1 1 to i64
  %_20 = or i64 %_19, 72057594037927936
  %_21 = getelementptr i8, i8* null, i64 %_20
  %_22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_13, i64 0, i64 2
  store i8* %_21, i8** %_22
  %_23 = bitcast [3 x i8*]* %_13 to [0 x i8*]*
  %_24 = call i8* @_bal_alloc (i64 24)
  %_25 = bitcast i8* %_24 to {i64, i64, [0 x i8*]*}*
  %_26 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 0
  store i64 3, i64* %_26
  %_27 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 1
  store i64 3, i64* %_27
  %_28 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 2
  store [0 x i8*]* %_23, [0 x i8*]** %_28
  %_29 = getelementptr i8, i8* %_24, i64 1297036692682702848
  store i8* %_29, i8** %_0
  %_30 = load i8*, i8** %_0
  store i8* %_30, i8** %v
  %_31 = load i8*, i8** %v
  %_32 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_31, i64 72057594037927935)
  %_33 = bitcast i8* %_32 to {i64, i64, [0 x i8*]*}*
  %_34 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_33, i64 0, i32 0
  %_35 = load i64, i64* %_34, align 8
  %_36 = icmp ult i64 2, %_35
  br i1 %_36, label %L4, label %L5
L2:
  %_75 = load i64, i64* %_8
  call void @_bal_panic (i64 %_75)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_37 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_33, i64 0, i32 2
  %_38 = load [0 x i8*]*, [0 x i8*]** %_37, align 8
  %_39 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_38, i64 0, i64 2
  %_40 = load i8*, i8** %_39, align 8
  store i8* %_40, i8** %_1
  %_41 = load i8*, i8** %_1
  call void @_Bio__println (i8* %_41)
  store i8* null, i8** %_2
  %_42 = load i8*, i8** %v
  %_43 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_42, i64 72057594037927935)
  %_44 = bitcast i8* %_43 to {i64, i64, [0 x i8*]*}*
  %_45 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_44, i64 0, i32 0
  %_46 = load i64, i64* %_45, align 8
  %_47 = icmp ult i64 1, %_46
  br i1 %_47, label %L6, label %L7
L5:
  store i64 1029, i64* %_8
  br label %L2
L6:
  %_48 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_44, i64 0, i32 2
  %_49 = load [0 x i8*]*, [0 x i8*]** %_48, align 8
  %_50 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_49, i64 0, i64 1
  %_51 = load i8*, i8** %_50, align 8
  store i8* %_51, i8** %_3
  %_52 = load i8*, i8** %_3
  call void @_Bio__println (i8* %_52)
  store i8* null, i8** %_4
  %_53 = load i8*, i8** %v
  %_54 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_53, i64 72057594037927935)
  %_55 = bitcast i8* %_54 to {i64, i64, [0 x i8*]*}*
  %_56 = getelementptr {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_55, i64 0, i32 0
  %_57 = load i64, i64* %_56, align 8
  %_58 = icmp ult i64 0, %_57
  br i1 %_58, label %L8, label %L9
L7:
  store i64 1285, i64* %_8
  br label %L2
L8:
  %_59 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_55, i64 0, i32 2
  %_60 = load [0 x i8*]*, [0 x i8*]** %_59, align 8
  %_61 = getelementptr inbounds [0 x i8*], [0 x i8*]* %_60, i64 0, i64 0
  %_62 = load i8*, i8** %_61, align 8
  store i8* %_62, i8** %_5
  %_63 = call i8* @_bal_alloc (i64 8)
  %_64 = bitcast i8* %_63 to [1 x i8*]*
  %_65 = load i8*, i8** %_5
  %_66 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_64, i64 0, i64 0
  store i8* %_65, i8** %_66
  %_67 = bitcast [1 x i8*]* %_64 to [0 x i8*]*
  %_68 = call i8* @_bal_alloc (i64 24)
  %_69 = bitcast i8* %_68 to {i64, i64, [0 x i8*]*}*
  %_70 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_69, i64 0, i32 0
  store i64 1, i64* %_70
  %_71 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_69, i64 0, i32 1
  store i64 1, i64* %_71
  %_72 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_69, i64 0, i32 2
  store [0 x i8*]* %_67, [0 x i8*]** %_72
  %_73 = getelementptr i8, i8* %_68, i64 1297036692682702848
  store i8* %_73, i8** %_6
  %_74 = load i8*, i8** %_6
  call void @_Bio__println (i8* %_74)
  store i8* null, i8** %_7
  ret void
L9:
  store i64 1541, i64* %_8
  br label %L2
}
