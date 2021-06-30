@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i64
  %_18 = alloca i64
  %_19 = alloca i8*
  %_20 = alloca i64
  %_21 = alloca i8
  %_22 = load i8*, i8** @_bal_stack_guard
  %_23 = icmp ult i8* %_21, %_22
  br i1 %_23, label %L3, label %L1
L1:
  %_24 = call i64 @_B_foo ()
  store i64 %_24, i64* %_0
  %_25 = call i64 @_B_bar ()
  store i64 %_25, i64* %_1
  %_26 = load i64, i64* %_0
  %_27 = load i64, i64* %_1
  %_28 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_26, i64 %_27)
  %_29 = extractvalue {i64, i1} %_28, 1
  br i1 %_29, label %L5, label %L4
L2:
  %_83 = load i64, i64* %_20
  call void @_bal_panic (i64 %_83)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_30 = extractvalue {i64, i1} %_28, 0
  store i64 %_30, i64* %_2
  %_31 = load i64, i64* %_2
  %_32 = call i8* @_bal_alloc (i64 8)
  %_33 = bitcast i8* %_32 to i64*
  store i64 %_31, i64* %_33, align 8
  %_34 = getelementptr i8, i8* %_32, i64 504403158265495552
  call void @_Bio__println (i8* %_34)
  store i8* null, i8** %_3
  %_35 = call i64 @_B_foo ()
  store i64 %_35, i64* %_4
  %_36 = call i64 @_B_bar ()
  store i64 %_36, i64* %_5
  %_37 = load i64, i64* %_4
  %_38 = load i64, i64* %_5
  %_39 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_37, i64 %_38)
  %_40 = extractvalue {i64, i1} %_39, 1
  br i1 %_40, label %L7, label %L6
L5:
  store i64 1025, i64* %_20
  br label %L2
L6:
  %_41 = extractvalue {i64, i1} %_39, 0
  store i64 %_41, i64* %_6
  %_42 = load i64, i64* %_6
  %_43 = call i8* @_bal_alloc (i64 8)
  %_44 = bitcast i8* %_43 to i64*
  store i64 %_42, i64* %_44, align 8
  %_45 = getelementptr i8, i8* %_43, i64 504403158265495552
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_7
  %_46 = call i64 @_B_foo ()
  store i64 %_46, i64* %_8
  %_47 = call i64 @_B_bar ()
  store i64 %_47, i64* %_9
  %_48 = load i64, i64* %_8
  %_49 = load i64, i64* %_9
  %_50 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_48, i64 %_49)
  %_51 = extractvalue {i64, i1} %_50, 1
  br i1 %_51, label %L9, label %L8
L7:
  store i64 1281, i64* %_20
  br label %L2
L8:
  %_52 = extractvalue {i64, i1} %_50, 0
  store i64 %_52, i64* %_10
  %_53 = load i64, i64* %_10
  %_54 = call i8* @_bal_alloc (i64 8)
  %_55 = bitcast i8* %_54 to i64*
  store i64 %_53, i64* %_55, align 8
  %_56 = getelementptr i8, i8* %_54, i64 504403158265495552
  call void @_Bio__println (i8* %_56)
  store i8* null, i8** %_11
  %_57 = call i64 @_B_foo ()
  store i64 %_57, i64* %_12
  %_58 = call i64 @_B_bar ()
  store i64 %_58, i64* %_13
  %_59 = load i64, i64* %_12
  %_60 = load i64, i64* %_13
  %_61 = icmp eq i64 %_60, 0
  br i1 %_61, label %L10, label %L11
L9:
  store i64 1537, i64* %_20
  br label %L2
L10:
  store i64 1794, i64* %_20
  br label %L2
L11:
  %_62 = icmp eq i64 %_59, -9223372036854775808
  %_63 = icmp eq i64 %_60, -1
  %_64 = and i1 %_62, %_63
  br i1 %_64, label %L13, label %L12
L12:
  %_65 = sdiv i64 %_59, %_60
  store i64 %_65, i64* %_14
  %_66 = load i64, i64* %_14
  %_67 = call i8* @_bal_alloc (i64 8)
  %_68 = bitcast i8* %_67 to i64*
  store i64 %_66, i64* %_68, align 8
  %_69 = getelementptr i8, i8* %_67, i64 504403158265495552
  call void @_Bio__println (i8* %_69)
  store i8* null, i8** %_15
  %_70 = call i64 @_B_foo ()
  store i64 %_70, i64* %_16
  %_71 = call i64 @_B_bar ()
  store i64 %_71, i64* %_17
  %_72 = load i64, i64* %_16
  %_73 = load i64, i64* %_17
  %_74 = icmp eq i64 %_73, 0
  br i1 %_74, label %L14, label %L15
L13:
  store i64 1793, i64* %_20
  br label %L2
L14:
  store i64 2050, i64* %_20
  br label %L2
L15:
  %_75 = icmp eq i64 %_72, -9223372036854775808
  %_76 = icmp eq i64 %_73, -1
  %_77 = and i1 %_75, %_76
  br i1 %_77, label %L17, label %L16
L16:
  %_78 = srem i64 %_72, %_73
  store i64 %_78, i64* %_18
  br label %L18
L17:
  store i64 0, i64* %_18
  br label %L18
L18:
  %_79 = load i64, i64* %_18
  %_80 = call i8* @_bal_alloc (i64 8)
  %_81 = bitcast i8* %_80 to i64*
  store i64 %_79, i64* %_81, align 8
  %_82 = getelementptr i8, i8* %_80, i64 504403158265495552
  call void @_Bio__println (i8* %_82)
  store i8* null, i8** %_19
  ret void
}
define internal i64 @_B_foo () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i64 105
L2:
  call void @_bal_panic (i64 2820)
  unreachable
}
define internal i64 @_B_bar () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i64 2
L2:
  call void @_bal_panic (i64 3844)
  unreachable
}
