declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i1
  %_8 = alloca i1
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i1
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i8*
  %_15 = alloca i1
  %_16 = alloca i1
  %_17 = alloca i1
  %_18 = alloca i1
  %_19 = alloca i64
  %_20 = alloca i8*
  %_21 = alloca i1
  %_22 = alloca i1
  %_23 = alloca i64
  %_24 = alloca i8*
  %_25 = alloca i1
  %_26 = alloca i1
  %_27 = alloca i8*
  %_28 = alloca i1
  %_29 = alloca i1
  %_30 = alloca i8*
  %_31 = alloca i64
  %_32 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 12, i64 6)
  %_33 = extractvalue {i64, i1} %_32, 1
  br i1 %_33, label %L3, label %L2
L1:
  %_88 = load i64, i64* %_31
  call void @_bal_panic (i64 %_88)
  unreachable
L2:
  %_34 = extractvalue {i64, i1} %_32, 0
  store i64 %_34, i64* %_1
  %_35 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 15)
  %_36 = extractvalue {i64, i1} %_35, 1
  br i1 %_36, label %L5, label %L4
L3:
  store i64 1, i64* %_31
  br label %L1
L4:
  %_37 = extractvalue {i64, i1} %_35, 0
  store i64 %_37, i64* %_2
  %_38 = load i64, i64* %_1
  %_39 = load i64, i64* %_2
  %_40 = icmp eq i64 %_38, %_39
  store i1 %_40, i1* %_0
  %_41 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_41)
  store i8* null, i8** %_3
  %_42 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 2)
  %_43 = extractvalue {i64, i1} %_42, 1
  br i1 %_43, label %L7, label %L6
L5:
  store i64 1, i64* %_31
  br label %L1
L6:
  %_44 = extractvalue {i64, i1} %_42, 0
  store i64 %_44, i64* %_5
  %_45 = load i64, i64* %_5
  %_46 = icmp ne i64 5, %_45
  store i1 %_46, i1* %_4
  %_47 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_47)
  store i8* null, i8** %_6
  %_48 = icmp slt i64 5, 9
  store i1 %_48, i1* %_8
  %_49 = icmp sgt i64 5, 2
  store i1 %_49, i1* %_9
  %_50 = load i1, i1* %_8
  %_51 = load i1, i1* %_9
  %_52 = icmp eq i1 %_50, %_51
  store i1 %_52, i1* %_7
  %_53 = load i1, i1* %_7
  call void @_B_printBoolean (i1 %_53)
  store i8* null, i8** %_10
  %_54 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 3)
  %_55 = extractvalue {i64, i1} %_54, 1
  br i1 %_55, label %L9, label %L8
L7:
  store i64 1, i64* %_31
  br label %L1
L8:
  %_56 = extractvalue {i64, i1} %_54, 0
  store i64 %_56, i64* %_12
  %_57 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 2, i64 4)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L11, label %L10
L9:
  store i64 1, i64* %_31
  br label %L1
L10:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_13
  %_60 = load i64, i64* %_12
  %_61 = load i64, i64* %_13
  %_62 = icmp sle i64 %_60, %_61
  store i1 %_62, i1* %_11
  %_63 = load i1, i1* %_11
  call void @_B_printBoolean (i1 %_63)
  store i8* null, i8** %_14
  %_64 = icmp sge i64 1, 5
  store i1 %_64, i1* %_17
  %_65 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 2)
  %_66 = extractvalue {i64, i1} %_65, 1
  br i1 %_66, label %L13, label %L12
L11:
  store i64 1, i64* %_31
  br label %L1
L12:
  %_67 = extractvalue {i64, i1} %_65, 0
  store i64 %_67, i64* %_19
  %_68 = load i64, i64* %_19
  %_69 = icmp sge i64 %_68, 3
  store i1 %_69, i1* %_18
  %_70 = load i1, i1* %_17
  %_71 = load i1, i1* %_18
  %_72 = icmp eq i1 %_70, %_71
  store i1 %_72, i1* %_16
  %_73 = load i1, i1* %_16
  %_74 = icmp ne i1 %_73, 0
  store i1 %_74, i1* %_15
  %_75 = load i1, i1* %_15
  call void @_B_printBoolean (i1 %_75)
  store i8* null, i8** %_20
  %_76 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 7, i64 1)
  %_77 = extractvalue {i64, i1} %_76, 1
  br i1 %_77, label %L15, label %L14
L13:
  store i64 1, i64* %_31
  br label %L1
L14:
  %_78 = extractvalue {i64, i1} %_76, 0
  store i64 %_78, i64* %_23
  %_79 = load i64, i64* %_23
  %_80 = icmp eq i64 %_79, 8
  store i1 %_80, i1* %_22
  %_81 = load i1, i1* %_22
  %_82 = icmp ne i1 %_81, 0
  store i1 %_82, i1* %_21
  %_83 = load i1, i1* %_21
  call void @_B_printBoolean (i1 %_83)
  store i8* null, i8** %_24
  %_84 = icmp eq i1 0, 0
  store i1 %_84, i1* %_25
  %_85 = load i1, i1* %_25
  call void @_B_printBoolean (i1 %_85)
  store i8* null, i8** %_27
  %_86 = icmp eq i1 0, 0
  store i1 %_86, i1* %_28
  %_87 = load i1, i1* %_28
  call void @_B_printBoolean (i1 %_87)
  store i8* null, i8** %_30
  ret void
L15:
  store i64 1, i64* %_31
  br label %L1
}
define internal void @_B_printBoolean (i1 %_0) {
  %x = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i1 %_0, i1* %x
  %_3 = load i1, i1* %x
  br i1 %_3, label %L1, label %L2
L1:
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 1, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 144115188075855872
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_1
  br label %L3
L2:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 0, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 144115188075855872
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_2
  br label %L3
L3:
  ret void
}
